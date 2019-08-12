---
layout: post
title:  "Offensive Security Certified Professional (OSCP): My Experience"
date:   2019-08-09 11:03:01 -0400
categories: OSCP Offsec
---

This post focuses on my experience with the [Penetration Testing with Kali Linux (PWK)](https://www.offensive-security.com/information-security-training/penetration-testing-training-kali-linux/) course and the associated [Offensive Security Certified Professional (OSCP)](https://www.offensive-security.com/information-security-certifications/oscp-offensive-security-certified-professional/) certification exam, both offered by [Offensive Security](https://www.offensive-security.com/).

I passed my OSCP certification exam attempt back in February 2017. I accumulated a ton of resources when preparing for the exam and the associated PWK course that helped me tremendously. A lot of the resources came from other people who had taken the exam and posted about it in a blog. So, I figured it's about time to post my experience with it and all the resources that helped me. Hopefully it'll prove useful to someone somewhere.

Below are the topics I’ll be touching upon. I do want to emphasize that everything included in this post is based off of my experiences going through the course and exam. Don’t think you have to use all the examples or references I give in order to be prepared or pass. What worked for me might not work for you. Each person will have an experience unique to them.

* [Part 1: PWK Syllabus](https://thegetch.github.io/oscp/offsec/2019/08/09/OSCPJourney/)
* [Part 2: Tool Enumeration](https://thegetch.github.io/oscp/offsec/2019/08/10/OSCPJourneyPart2/)
  * [Linux and bash](https://thegetch.github.io/oscp/offsec/2019/08/10/OSCPJourneyPart2#linux_bash)
  * [Netcat/Ncat and Nmap](https://thegetch.github.io/oscp/offsec/2019/08/10/OSCPJourneyPart2#nc_nmap)
  * [Metasploit Framework](https://thegetch.github.io/oscp/offsec/2019/08/10/OSCPJourneyPart2#metasploit)
* [Part 3: Penetration Testing Topics](https://thegetch.github.io/oscp/offsec/2019/08/10/OSCPJourneyPart3/)
  * [Shell Exploitation](https://thegetch.github.io/oscp/offsec/2019/08/10/OSCPJourneyPart3#Shell_Exploitation)
  * [Buffer Overflow](https://thegetch.github.io/oscp/offsec/2019/08/10/OSCPJourneyPart3#Buffer_Overflow)
  * [Windows Privilege Escalation](https://thegetch.github.io/oscp/offsec/2019/08/10/OSCPJourneyPart3#winPrivX)
  * [Linux Privilege Escalation](https://thegetch.github.io/oscp/offsec/2019/08/10/OSCPJourneyPart3#linPrivX)
  * [Practice VMs](https://thegetch.github.io/oscp/offsec/2019/08/10/OSCPJourneyPart3#practiceVMs)
* Part 4: Course, Lab, and Exam Overview
* Part 5: OSCP Takeaway

The purpose of this post is simply to provide insight into the OSCP, i.e. what’s expected, things that could be good to know prior, how the course is laid out, etc., as well as to hopefully provide some resources that may be of assistance in being a stepping stone for people considering the course or are already about to begin their own OSCP journey. Mainly, my goal is to try and show that the OSCP is nothing to be afraid of, despite its infamy for being difficult.

I'll start Part 1 right off the bat. The PWK Syllabus is freely available here, <https://www.offensive-security.com/documentation/penetration-testing-with-kali.pdf>, or see below for a quick breakdown of the chapters:

- Chapter 1: Getting Comfortable with Kali Linux
- Chapter 2: Essential Tools
- Chapter 3: Passive Information Gathering
- Chapter 4: Active Information Gathering
- Chapter 5: Vulnerability Scanning
- Chapter 6: Buffer Overflows
- Chapter 7 & 8: buffer overflow examples
- Chapter 9: Working with Exploits
- Chapter 10: File Transfer
- Chapter 11: Privilege Escalation
- Chapter 12: Client-Side Attacks
- Chapter 13: Web Application Attacks
- Chapter 14: Password Attacks
- Chapter 15: Port Redirection and Tunneling
- Chapter 16: The Metasploit Framework
- Chapter 17: Bypassing Antivirus Software
- Chapter 18: Penetration Test Breakdown

Throughout the next couple of posts, examples will be included for resources I used to prepare. As I said previously, anything I outline will show my methodology for studying; my examples are not the only resources out there. If you follow the course syllabus linked above, which actually gives a wealth of information about the course, including chapter titles and all the tools that are taught in the course, you can deduce what will be learned, how you can try to prepare for the course, and thus begin to develop your own methodology. Everyone’s going to prepare and learn differently, but that’s really the key point of OSCP: to learn how to learn and prove you can teach yourself within a time limit.

Continue to [Part 2: Tool Enumeration](https://thegetch.github.io/oscp/offsec/2019/08/10/OSCPJourneyPart2/).
