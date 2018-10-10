# Automating external certificate infrastructure
## Goal
With the release of Puppet 6 the Puppetserver now supports external certificate authorities. This is a major step forward regarding security of the certificate inside the Puppet eco system. However configuring and setting up a certificate authority can be a complex and daunting task. The vision of this project is to automate this progress and thus make self hosted certificate authorities more accessable to everyone.

Because everything in my hearth scream opensource of course this project has to be open-source and use a opensource certificate authority. There are not many arround there which have all the features an enterprise might need of a certificate authority. The best possible opensource certificate authority out there is EJBCA. To incorperate the vision in the real plan this projects aims to create a puppet module which has security defaults and deploys a certificate authority without requiring a lot of setup.

## Success!

When is this project successfull?
 * Delivered before the end of the contributor summit online (14 november 2018)
 * Being able to automatically roll out a certificate authority (including 1 root and 1 intermediate CA) with a minimal effort to setup
 * A high quality code base (all code must comply with the puppet language style guide and must contain unit tests and acceptance tests) 
 * The project should atleast be able to run on Debian

Some optional feature:
 * Supporting multiple OSses
 * Creating tasks/script/resources to automatically replace the Puppet root certificate with a generate certificate from EJBCA.

## Team members
As for now, I am working on this alone, but I can of course use some help. Speak to me on slack (nickname 'romke' in the community slack).