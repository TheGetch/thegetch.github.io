---
layout: post
title:  "Privilege Escalation: Tools"
date:   2019-08-09 11:03:01 -0400
categories: Privilege Escalation Tools PrivX
---
##### [Return Home](https://thegetch.github.io/penetration/testing/resources/2020/07/24/Home/)

[Click here](https://thegetch.github.io/PenetrationTestingResources/PrivilegeEscalation) for Privilege Escalation guides.

### [Windows Exploit Dowser](https://github.com/akabe1/windows_exploit_dowser)

Windows Exploit Dowser is a python script which could be useful in penetration testing or security gaming (CTF) activities to identify the available public exploits (for Privilege Escalation and Remote Code Execution vulnerabilities) afflicting the target Windows OS specified by user (all Windows version are supported).

### [Windows Exploit Suggester - Next Generation](https://github.com/bitsadmin/wesng)

WES-NG is a tool based on the output of Windows' systeminfo utility which provides the list of vulnerabilities the OS is vulnerable to, including any exploits for these vulnerabilities. Every Windows OS between Windows XP and Windows 10, including their Windows Server counterparts, is supported.

### [windows-privesc-check](https://github.com/pentestmonkey/windows-privesc-check)

Windows-privesc-check is standalone executable that runs on Windows systems. It tries to find misconfigurations that could allow local unprivileged users to escalate privileges to other users or to access local apps (e.g. databases).

### [Windows-Exploit-Suggester](https://github.com/GDSSecurity/Windows-Exploit-Suggester)

This tool compares a targets patch levels against the Microsoft vulnerability database in order to detect potential missing patches on the target. It also notifies the user if there are public exploits and Metasploit modules available for the missing bulletins.

### [linuxprivchecker](https://www.securitysift.com/download/linuxprivchecker.py)

### [unix-privesc-check](http://pentestmonkey.net/tools/audit/unix-privesc-check)

Unix-privesc-checker is a script that runs on Unix systems (tested on Solaris 9, HPUX 11, Various Linuxes, FreeBSD 6.2).  It tries to find misconfigurations that could allow local unprivileged users to escalate privileges to other users or to access local apps (e.g. databases).

### [LinEnum](https://www.rebootuser.com/?p=1758)

LinEnum will automate many of the checks that I’ve documented in the Local Linux Enumeration & Privilege Escalation Cheatsheet. It’s a very basic shell script that performs over 65 checks, getting anything from kernel information to locating possible escalation points such as potentially useful SUID/GUID files and Sudo/rhost mis-configurations and more.
