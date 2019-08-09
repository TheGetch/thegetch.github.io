### kerberoast

Kerberoast is a series of tools for attacking MS Kerberos implementations. Below is a brief overview of what each tool does.
 
https://github.com/nidem/kerberoast

### Responder/MultiRelay

Responder an LLMNR, NBT-NS and MDNS poisoner. It will answer to specific NBT-NS (NetBIOS Name Service) queries based on their name suffix (see: http://support.microsoft.com/kb/163409). By default, the tool will only answer to File Server Service request, which is for SMB.
The concept behind this is to target our answers, and be stealthier on the network. This also helps to ensure that we don't break legitimate NBT-NS behavior. You can set the -r option via command line if you want to answer to the Workstation Service request name suffix.
 
https://github.com/lgandx/Responder/
