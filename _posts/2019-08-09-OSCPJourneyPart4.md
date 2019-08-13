---
layout: post
title:  "OSCP: My Experience - Part 4"
date:   2019-08-12 11:03:01 -0400
categories: OSCP Offsec
---

This post is part four in a series, as seen below:

* [Part 1: PWK Syllabus](https://thegetch.github.io/oscp/offsec/2019/08/09/OSCPJourney/)
* [Part 2: Tool Enumeration](https://thegetch.github.io/oscp/offsec/2019/08/10/OSCPJourneyPart2/)
* [Part 3: Penetration Testing Topics](https://thegetch.github.io/oscp/offsec/2019/08/12/OSCPJourneyPart3/)
* **[Part 4: Course, Lab, and Exam Overview](https://thegetch.github.io/oscp/offsec/2019/08/12/OSCPJourneyPart4/)**
  * [The Course: Penetration Testing with Kali Linux](https://thegetch.github.io/oscp/offsec/2019/08/12/OSCPJourneyPart4#theCourse)
  * [The Lab](https://thegetch.github.io/oscp/offsec/2019/08/12/OSCPJourneyPart4#theLab)
  * [The Exam](https://thegetch.github.io/oscp/offsec/2019/08/12/OSCPJourneyPart4#theExam)
  * [Tips](https://thegetch.github.io/oscp/offsec/2019/08/12/OSCPJourneyPart4#tips)
* [Part 5: OSCP Takeaway](https://thegetch.github.io/oscp/offsec/2019/08/12/OSCPJourneyPart5/)

Now let's actually talk about the prerequisite for the OSCP exam, the Penetration Testing with Kali Linux course.

The course can be split into two parts. 1) The book and videos, and 2) time in the lab.

<a name="theCourse"></a>
**The Course: Penetration Testing with Kali Linux**

The book and associated videos are generally gaged towards beginners. Despite the difficult reputation the certification has as a whole, about 80% of the book is very much for beginners that may have never used Linux or the tools described. They start from the very basics and walk you through every exploitation step.

The videos follow the book fairly closely. Some books examples differ from examples in the videos, so I recommend following along in the book while watching the videos and doing both the video and book examples. Some exercises in the book and videos make use of a Windows target, which they provide a Windows VM to you and has an unlimited number of reverts to a base snapshot, so it’s a great place to practice stuff they teach in the book.

The downside to the books and videos being beginner geared, they do not set you up for the lab that well. I’m not saying don’t do them; if you’re a beginner or struggling with the lab, read cover to cover and watch every minute of the videos. Just be aware that even after completing both the book and videos 100%, the lab will still be challenging and present you with scenarios not touched upon in the book. This is where my original plan I had going into the course I mentioned in a previous post failed and why I recommend jumping into the labs as soon as possible, even if you can't exploit anything at first. Getting your feet wet and getting practice with the enumeration being taught throughout the course will help much more than trying to jump into the lab after completing the book and videos thinking you're ready to hack all the things.

<a name="theLab"></a>
**The Lab**

And thus, the lab is where the real learning happens. It’s the meat of the course. You can pay for 30, 60, or 90 days of lab time with your initial signup purchase. All purchase options come with the book and videos and an exam attempt.

To access the lab, you VPN into it with credentials provided by them. Connecting drops you into the “public” network environment. There are additional networks, but they are not directly routable from the public network. Different techniques are required to access those networks.

The public network consists of dozens of machines of differing OS’s, software, exploitation paths, etc. All students work within the same network, so you may bump into someone else working on a machine. My recommendation is always revert a machine before going after it, cause you might uncover someone else’s exploitation chain and spoil the box for yourself.

You have a eight (8) reverts a day in case you have an exploit that either crashes the machine or if another student has already hacked it and left spoilers all over.
Each machine has a proof.txt file on the desktop. These files are the goal, although the real goal is to achieve the highest privilege level possible, since sometimes the proof.txt files are accessible through exploits that don’t give you a root shell, although most of the time you get proof by getting root.

Note: All this information can be found here: <https://support.offensive-security.com/pwk-network-intro-guide/#pwk-network-introduction-guide>

Always document every step you take when exploiting a machine. There’s nothing worse than hitting enter on your final exploit only to find out another student reverted the machine and you don’t remember the exact steps to get back to you final exploit.

Also, just to be aware, 100% completion of the lab is possible, but very time consuming. If your goal is to complete the lab completely before taking the test, be aware and opt for more initial lab time. From my experience, there were generally two types of main goals for students: 1) Root every machine in the public network except the “select few” hardest machines, or 2) Root only those “select few” machines in the public network. There are 3 or 4 machines that fall into that category. I went the route of rooting every machine except those select few, and can say it did work for me for exam preparation.

<a name="theExam"></a>
**The Exam**

Similar to the lab, you get VPN credentials to connect to the exam network. In the exam network, there are several machines of varying difficulty. OffSec provides instructions on what is required to pass. Some machines, just like in the lab, require gaining a low level shell first for partial points, and then you must escalate your privileges to gain full points.

Metasploit can be used on one machine. This is helpful for when you know the path of exploitation for a machine, but can’t quite get it. If there’s a Metasploit module for it, don’t be afraid to use it. For example, I had a machine that I knew the service that needed to be exploited to gain a low priv shell, and I even already knew the exploit needed for privilege escalation, but I couldn’t for the life of me get that initial low priv shell. Metasploit had a module, so I used it and got the low priv shell. PrivX was straightforward from there for a root shell and full points.

As I mentioned, each machine is worth a different number of points. If you get only a low-priv shell on a machine, you'll still get some points for the machine, so low-priv shells are still very much worth it even if you can’t get root, since points are points.

You have 24 hours to gain 70 points which is a passing grade. Read and re-read the [exam guide](https://support.offensive-security.com/oscp-exam-guide/) a few days before your exam. Make sure you know what they want, how they want it, and what can lose you points.

After the exam time ends, you have an additional 24 hours to write-up and submit the pen test report. On the OffSec site, they provide a template as an example for what they’re looking for. I highly recommend you use it. Copy their template and input your exam data into it.
* https://www.offensive-security.com/pwk-online/PWKv1-REPORT.doc (Microsoft Word)
* https://www.offensive-security.com/pwk-online/PWKv1-REPORT.odt (OpenOffice/LibreOffice)

Also be sure to read their [reporting guide](https://support.offensive-security.com/#!pwk-reporting.md).

Additionally, you can get up to five (5) extra points for submitting completed exercises from the book/videos and a report for no less than ten (10) exploited lab machines. Both reports are needed in order to get the extra five (5) points. I recommend writing these up before you start the exam. It’s good practice for when you have to do the write-up for the exam, and saves time when you’re writing up the exam report. See their [exam guide](https://support.offensive-security.com/oscp-exam-guide/) for more details.

<a name="tips"></a>
**Tips**

Overview:
1. Time is crucial! Prepare beforehand.
  * The exam is very much a time management exercise. Prepare. Create scripts to automate things you do for every machine.
2. Note taking is a must!!!
  * Take notes during the course. I took detailed notes on every exploit I did for lab machines. Detailed notes will really help save time during the exam.
3. Have a good methodology and create a template.
  * Goes along with taking notes: create a good methodology! It is vital when it comes to the exam and the time restriction. I recommend creating a exam template outline of everything that needs to be done should you come across a certain service.
4. Create scripts for things you do over and over again.
  * Create scripts for things you will do for any machine, i.e. nmap top port scan, using nmap NSE scripts for HTTP services, enum4linux, etc.
5. Enumeration is key.
  * A lot of people ask in the student forums, when should they consider themselves ready for the exam. Some people say its when you can hack the three-four hardest lab machines. Others say its after you’ve hacked >80% of the machines in the lab. Either way, it’s all about honing enumeration. Anytime I got stuck on a machine, or if I was reading through the forums and saw others saying they were stuck, it was almost always because we missed something during enumeration, missing a critical detail that would’ve given a shell in minutes. Practice enumeration with those VulnHub machines as well as the machines in the lab! Getting good at enumeration really helps when taking the exam.
6. Take breaks.
  * Take breaks. Period. Make a break schedule before going into the exam and stick to it.
7. Don’t hammer a single machine too long. Move on.
  * Walking away or moving to another machine and coming back to the tough one later helps you see it with new eyes. This is a common piece of advice for any hard problem, but it definitely helps here.
8. Try harder!
  * And of course, try harder :-)


Continue to [Part 5: OSCP Takeaway (TBD)](#).
