---
layout: post
title:  "OSCP: My Experience - Part 3"
date:   2019-08-12 11:03:01 -0400
categories: OSCP Offsec
---

This post is part three of a series, as seen below:

* [Part 1: PWK Syllabus](https://thegetch.github.io/oscp/offsec/2019/08/09/OSCPJourney/)
* [Part 2: Tool Enumeration](https://thegetch.github.io/oscp/offsec/2019/08/10/OSCPJourneyPart2/)
* **[Part 3: Penetration Testing Topics](https://thegetch.github.io/oscp/offsec/2019/08/12/OSCPJourneyPart3/)**
    * [Shell Exploitation](https://thegetch.github.io/oscp/offsec/2019/08/12/OSCPJourneyPart3#Shell_Exploitation)
    * [Buffer Overflow](https://thegetch.github.io/oscp/offsec/2019/08/12/OSCPJourneyPart3#Buffer_Overflow)
    * [Windows Privilege Escalation](https://thegetch.github.io/oscp/offsec/2019/08/12/OSCPJourneyPart3#winPrivX)
    * [Linux Privilege Escalation](https://thegetch.github.io/oscp/offsec/2019/08/12/OSCPJourneyPart3#linPrivX)
    * [Practice VMs](https://thegetch.github.io/oscp/offsec/2019/08/12/OSCPJourneyPart3#practiceVMs)
* Part 4: Course, Lab, and Exam Overview
* Part 5: OSCP Takeaway

This post focuses on exploitation topics that helped me greatly with the course and lab. See references below:

<a name="Shell_Exploitation"></a>
**Shell Exploitation**
* Reverse shell cheat sheet:
  * <http://pentestmonkey.net/cheat-sheet/shells/reverse-shell-cheat-sheet>
* Using reverse shells with different tools:
  * <http://www.lanmaster53.com/2011/05/7-linux-shells-using-built-in-tools/>
* Creating Metasploit Payloads:
  * <https://netsec.ws/?p=331>
* Understand difference between a reserve shell and a bind shell

<a name="Buffer_Overflow"></a>
**Buffer Overflow**
* Exploit Writing: Stack Based Overflows:
  * <https://www.corelan.be/index.php/2009/07/19/exploit-writing-tutorial-part-1-stack-based-overflows/>
* Intro to Exploit Development:
  * <http://www.fuzzysecurity.com/tutorials/expDev/1.html>

First, it’s all about getting shellz. There are a number of ways in the lab to exploit a machine to get it to send you back a shell. I used netcat and multi/handler predominately for catching shells, but there were a number of times that I needed to get creative with how to receive a shell. The [reverse shell cheat sheet](http://pentestmonkey.net/cheat-sheet/shells/reverse-shell-cheat-sheet) and lanmaster’s “[Using reverse shells with different tools](http://www.lanmaster53.com/2011/05/7-linux-shells-using-built-in-tools/)” helped point me in the right direction.

The “[Creating Metasploit Payloads](https://netsec.ws/?p=331)” link is a great resource for how to use msfvenom. When I went through the OSCP, any payload created with msfvenom was allowed on the exam. I’m not sure that will always be the case, so make sure to check the [Exam Guide](https://support.offensive-security.com/oscp-exam-guide/) when you go through, especially when dealing with anything Metasploit, cause I've heard they might've changed (as of August 2019, msfvenom payloads are allowed).

For Buffer Overflows, above are the two tutorials I used to get familiar with them. There are tons more around the Internet to practice with. The OSCP course teaches you how to do one with step-by-step instructions, so from my experience, not too much before hand knowledge is required, but obviously it helps.

Side note, something I used to always remember backwards:
**Bind shell** is a type of shell in which the target machine opens up a listener on the victim machine and waits for an incoming connection. The attacker then connects to the victim machine’s listener.
A **reverse shell** is a type of shell in which the target machine communicates back to the attacking machine. The attacking machine has a listener port on which it receives the connection.

The next two topics both deal with privilege escalation:

<a name="winPrivX"></a>
**Windows Privilege Escalation**
* Windows Privilege Escalation Fundamentals:
    * <http://www.fuzzysecurity.com/tutorials/16.html>
* Encyclopedia Of Windows Privilege Escalation Video:
    * <https://www.youtube.com/watch?v=kMG8IsCohHA>
* Level UP conference talk on Windows privX:
    * <https://www.youtube.com/watch?v=PC_iMqiuIRQ>
* Great script for finding exploits for vulnerable Windows targets:
    * <https://github.com/GDSSecurity/Windows-Exploit-Suggester>

<a name="linPrivX"></a>
**Linux Privilege Escalation**
* Basic Linux Privilege Escalation:
  * <https://blog.g0tmi1k.com/2011/08/basic-linux-privilege-escalation/>
* Linux privX talk:
  * <https://www.youtube.com/watch?v=dk2wsyFiosg>
* Privilege escalation enumeration scripts:
    * Great scripts for finding exploits for vulnerable Linux targets:
        * <http://www.securitysift.com/download/linuxprivchecker.py>
        * <https://penturalabs.wordpress.com/2013/08/26/linux-exploit-suggester/>
    * Great script for finding exploits for vulnerable Unix targets:
      * <http://pentestmonkey.net/tools/audit/unix-privesc-check>

Privilege Escalation is something I had trouble with until I found these resources. Often I would get a low privileged shell and have no clue what to do next. Reading through the tutorials and watching the videos helped establish a stepping stone for me to learn how to properly enumerate while having a low privileged shell. The scripts also really helped push me in the right direction.

Part of the high level checklist I created to guide me through privilege escalation included:
1. Checking for kernel or OS exploits.
2. CHECKING RUNNING SERVICES. What is installed and running on the target? Is there a local exploit available for that service?
3. Looking for misconfigured file permissions (those checker scripts are great for this). Is there something readable/writeable to me that shouldn't be? For example: should I be able to write to a file owned by user/group root? Probably not. What about scheduled task/cron jobs? Can I use those somehow?
4. Lastly, I would just look around for any files that maybe have a password in them. Example: SQL/Apache config files. Did someone leave a password lying around that I could use?

I've included a ton of information in this post, so lastly, I'll leave you will the best way to learn everything that was just outlined: practice.

<a name="practiceVMs"></a>
**Practice VMs**

Below are VMs that can be found on VulnHub. These machines are similar to those found in the PWK lab and OSCP exam.
* Beginner friendly
  * [Kioptrix: Level 1 (#1)](https://www.vulnhub.com/entry/kioptrix-level-1-1,22/)
  * [Kioptrix: Level 1.1 (#2)](https://www.vulnhub.com/entry/kioptrix-level-11-2,23/)
  * [Kioptrix: Level 1.2 (#3)](https://www.vulnhub.com/entry/kioptrix-level-12-3,24/)
  * [Kioptrix: Level 1.3 (#4)](https://www.vulnhub.com/entry/kioptrix-level-13-4,25/)
  * [FristiLeaks: 1.3](https://www.vulnhub.com/entry/fristileaks-13,133/)
  * [Stapler: 1](https://www.vulnhub.com/entry/stapler-1,150/)
  * [PwnLab: init](https://www.vulnhub.com/entry/pwnlab-init,158/)
* Intermediate
  * [Kioptrix: 2014](https://www.vulnhub.com/entry/kioptrix-2014-5,62/)
  * [Brainpan: 1](https://www.vulnhub.com/entry/brainpan-1,51/)
  * [Mr-Robot: 1](https://www.vulnhub.com/entry/mr-robot-1,151/)
  * [HackLAB: Vulnix](https://www.vulnhub.com/entry/hacklab-vulnix,48/)
  * [SkyTower: 1](https://www.vulnhub.com/entry/skytower-1,96/)
  * [IMF](https://www.vulnhub.com/entry/imf-1,162/)
* Others
  * [VulnOS: 2](https://www.vulnhub.com/entry/vulnos-2,147/)
  * [SickOs: 1.2](https://www.vulnhub.com/entry/sickos-12,144/)
  * [/dev/random: scream](https://www.vulnhub.com/entry/devrandom-scream,47/)
  * [pWnOS: 2.0](https://www.vulnhub.com/entry/pwnos-20-pre-release,34/)
  * [SecOS](https://www.vulnhub.com/entry/secos-1,88/)
  * [Simple](https://www.vulnhub.com/entry/sectalks-bne0x03-simple,141/)
  * [Quaoar](https://www.vulnhub.com/entry/hackfest2016-quaoar,180/)
  * [Freshly](https://www.vulnhub.com/entry/tophatsec-freshly,118/)
  * [Sedna](https://www.vulnhub.com/entry/hackfest2016-sedna,181/)
  * [Zorz](https://www.vulnhub.com/entry/tophatsec-zorz,117/)

If you get to the point where comfortable rooting these, you’re more than prepared for the lab.

Continue to [Part 4: Course, Lab, and Exam Overview (TBD)](#).
