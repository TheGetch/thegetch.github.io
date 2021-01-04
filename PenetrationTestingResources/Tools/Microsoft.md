---
layout: post
title:  "Microsoft Attacks: Tools"
date:   2019-08-09 11:03:01 -0400
categories: OS Command Injection Injections
---
##### [Return Home](https://thegetch.github.io/penetration/testing/resources/2020/07/24/Home/)

---

### [kerberoast](https://github.com/nidem/kerberoast)

Kerberoast is a series of tools for attacking MS Kerberos implementations. Below is a brief overview of what each tool does.

### [Responder/MultiRelay](https://github.com/lgandx/Responder/)

Responder an LLMNR, NBT-NS and MDNS poisoner. It will answer to specific NBT-NS (NetBIOS Name Service) queries based on their name suffix (see: http://support.microsoft.com/kb/163409). By default, the tool will only answer to File Server Service request, which is for SMB.
The concept behind this is to target our answers, and be stealthier on the network. This also helps to ensure that we don't break legitimate NBT-NS behavior. You can set the -r option via command line if you want to answer to the Workstation Service request name suffix.
