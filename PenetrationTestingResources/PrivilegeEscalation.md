---
layout: post
title:  "Privilege Escalation"
date:   2019-08-09 11:03:01 -0400
categories: Privilege Escalation PrivX
---
##### [Return Home](https://thegetch.github.io/penetration/testing/resources/2020/07/24/Home/)

[Click here](https://thegetch.github.io/PenetrationTestingResources/PrivilegeEscalationTools) for Privilege Escalation tools.

### [Windows Privilege Escalation Fundamentals](http://www.fuzzysecurity.com/tutorials/16.html)

Contrary to common perception Windows boxes can be really well locked down if they are configured with care. On top of that the patch time window of opportunity is small. So let's dig into the dark corners of the Windows OS and see if we can get SYSTEM.

### [Basic Linux Privilege Escalation](https://blog.g0tmi1k.com/2011/08/basic-linux-privilege-escalation/)

Enumeration is the key.
(Linux) privilege escalation is all about:
* 	Collect - Enumeration, more enumeration and some more enumeration.
* 	Process - Sort through data, analyze and prioritization.
* 	Search - Know what to search for and where to find the exploit code.
* 	Adapt - Customize the exploit, so it fits. Not every exploit work for every system "out of the box".
* 	Try - Get ready for (lots of) trial and error.

### [Oracle Privilege Escalation via Deserialization](http://obtruse.syfrtext.com/2018/07/oracle-privilege-escalation-via.html)

Oracle Database is vulnerable to user privilege escalation via a java deserialization vector that bypasses built in Oracle JVM security.  Proper exploitation can allow an attacker to gain shell level access on the server and SYS level access to the database.

### [The Memory Sinkhole - Unleashing An X86 Design Flaw Allowing Universal Privilege Escalation](https://www.youtube.com/watch?v=lR0nh-TdpVg)

In x86, beyond ring 0 lie the more privileged realms of execution, where our code is invisible to AV, we have unfettered access to hardware, and can trivially preempt and modify the OS. The architecture has heaped layers upon layers of protections on these negative rings, but 40 years of x86 evolution have left a labyrinth of forgotten backdoors into the ultra-privileged modes. Lost in this byzantine maze of decades-old architecture improvements and patches, there lies a design flaw that's gone unnoticed for 20 years. In one of the most bizarre and complex vulnerabilities we've ever seen, we'll release proof-of-concept code exploiting the vast, unexplored wasteland of forgotten x86 features, to demonstrate how to jump malicious code from the paltry ring 0 into the deepest, darkest realms of the processor. Best of all, we'll do it with an architectural 0-day built into the silicon itself, directed against a uniquely vulnerable string of code running on every single system.

### [Encyclopaedia Of Windows Privilege Escalation](https://www.youtube.com/watch?v=kMG8IsCohHA)

Getting a shell on a box is only the beginning of the journey. While there are a number of things still possible to a low privileged user, a higher level of access is generally required for reboot persistence, or access to important information. Take a trip along the many paths of privilege escalation once you have obtained command execution. This talk will be your guide, as it explains different methods of increasing your level of access. Techniques will include methods applicable to unpatched boxes, as well as fully patched systems that may be vulnerable to configuration and deployment issues commonly seen on Windows boxes.

### [Level Up! Practical Windows Privilege Escalation](https://www.youtube.com/watch?v=PC_iMqiuIRQ)

For attackers, obtaining access to a Windows workstation with limited privileges can really put a damper on your day. Low privileged access can be a roadblock for even the most skilled "undocumented administrators". Local administrator access to a windows machine within an active directory domain often results in the ability to compromise the whole domain. This talk will walk through how attackers and defenders can learn to identify and exploit practical Windows privilege escalation vectors on the Windows 7 OS.

### [It's Too Funky In Here04 Linux privilege escalation for fun profit and all around mischief](https://www.youtube.com/watch?v=dk2wsyFiosg)

Linux systems are everywhere. With the increased adoption of IoT devices, the number of Linux systems in a corporate network environments is increasing at an unprecedented rate. But most penetration testers and red team members today lack the skills to find their own privilege escalations in custom environments. In this session, we'll examine opportunities for privilege escalation that can vault you from zero to hero in a few easy steps. Whether your Linux foo is strong or weak, you are sure to learn at least a few new tricks.

### [Hot Potato – Windows Privilege Escalation](https://foxglovesecurity.com/2016/01/16/hot-potato/)

Hot Potato (aka: Potato) takes advantage of known issues in Windows to gain local privilege escalation in default configurations, namely NTLM relay (specifically HTTP->SMB relay) and NBNS spoofing.

### [Windows Privilege Escalation Cheatsheet for OSCP](https://www.hackingdream.net/2020/03/windows-privilege-escalation-cheatsheet-for-oscp.html)

Cheatsheet for Windows privX, geared towards use on the OSCP

### [GTFOBins](https://gtfobins.github.io/)

GTFOBins is a curated list of Unix binaries that can be exploited by an attacker to bypass local security restrictions.
