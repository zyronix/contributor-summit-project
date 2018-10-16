# Design
This document describes the design of this modules. 

## Classes
The structure is quite simple at first. It uses the common 'install, config & service' structure.
 1. The install class can only contain code for installing EJBCA
 2. The config class can only contain code for configuring EJBCA
 3. The service class can only contain code for manging the service of EJBCA (if required)

EJBCA requires an application service, like JBoss. The design of the module is so to make sure that more application services can be supported. Thus every applications service itselfs get a main class (in the case of Jboss: ejbca::jboss) which on its run calls the install, config and service classes for JBoss.

There is only one param class, which should also contain the code for the application service. It is inheritet by the main class.

## Defined types
Defined type should be named after the function as it resides in EJBCA. So certificate profiles will be called: ejbca::certificate_profile. Every function must be a sperate defined_type.
