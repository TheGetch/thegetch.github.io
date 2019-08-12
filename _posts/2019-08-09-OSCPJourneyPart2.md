---
layout: post
title:  "OSCP: My Experience - Part 2"
date:   2019-08-10 11:03:01 -0400
categories: OSCP Offsec
---

This post is part two of a series, as seen below:

* [Part 1: PWK Syllabus](https://thegetch.github.io/oscp/offsec/2019/08/09/OSCPJourney/)
* **[Part 2: Tool Enumeration](https://thegetch.github.io/oscp/offsec/2019/08/10/OSCPJourneyPart2/)**
  * [Linux and bash](https://thegetch.github.io/oscp/offsec/2019/08/10/OSCPJourneyPart2#linux_bash)
  * [Netcat/Ncat and Nmap](https://thegetch.github.io/oscp/offsec/2019/08/10/OSCPJourneyPart2#nc_nmap)
  * [Metasploit Framework](https://thegetch.github.io/oscp/offsec/2019/08/10/OSCPJourneyPart2#metasploit)
* [Part 3: Penetration Testing Topics](https://thegetch.github.io/oscp/offsec/2019/08/12/OSCPJourneyPart3/)
* Part 4: Course, Lab, and Exam Overview
* Part 5: OSCP Takeaway

This entire next part can really be summed up with two words: research and practice! Or as OffSec would say, try harder.

If you’re afraid you’re not or will not be prepared enough for the course, the main bullets listed throughout this post are the list of things you should either already have a basic knowledge of before starting the course, or you should get yourself familiar with before starting the course. You can start the course without knowing any of these, as they do teach the basics from the ground up, but it will definitely cause you to need a lot more time reading the book, watching the videos, and doing your own research before a solid basic understanding is gained.

For reference, I put minor research into these things before starting the course, thus I ended up totaling 150 days of lab time before I took the exam, since I had to do a fair chunk of my learning from their course material. I don’t think I even entered the lab for the first 30 days cause my original plan going into the course was to soak up everything in the books and videos, thinking that would prepare me for the lab. I wouldn’t recommend doing this. As good as the course materials are, jump into the lab as soon as possible. I’ll be going into what makes up the course and the lab in later slides, and will explain my reasoning for this view.

Let's dive in...

The first thing to know is Linux and bash. This ones a little obvious cause the course is called Pen Testing with Kali Linux, so you’ll be spending a good amount of time at a Linux terminal. Below are some references that helped me become more familiar using and understanding Linux and bash.

<a name="linux_bash"></a>
**Linux and Bash**
* Linux command guide:
  * <http://linuxcommand.org/>
* Pseudo-courses and exercises for Linux:
  * <https://linuxjourney.com/>
* Great Bash reference:
  * <http://www.tldp.org/LDP/Bash-Beginners-Guide/html/>
* Explains what commands do:
  * <https://www.explainshell.com/>
* OverTheWire: Bandit:
  * <http://overthewire.org/wargames/bandit/>
* OverTheWire: Natas:
  * <http://overthewire.org/wargames/natas/>

The next few tools are critical and I’m sure most everyone reading this is very familiar with them: Netcat/ncat and nmap. These tools are very important for the enumeration process, which is most of what you’ll be doing in the lab and on the exam. Almost every person asking for help on the student forums is given the response, “you need to enumerate more”. Proper knowledge of netcat and nmap will help with the enumeration process greatly.

<a name="nc_nmap"></a>
**Netcat/Ncat and nmap**
* Cannot do course without these tools.
* Detailed enumeration guide:
  * <http://www.0daysecurity.com/penetration-testing/enumeration.html>
* Nmap scripts:
  * <https://nmap.org/nsedoc/>
* Defcon talk on nmap:
  * <https://www.youtube.com/watch?v=Hk-21p2m8YY>
* Nmap man page:
  * <https://nmap.org/book/man.html>

Although there are restrictions to using Metasploit on the exam, it can be used freely in the lab.

<a name="metasploit"></a>
**Metasploit Framework**
* Security Tube Metasploit Framework (Course):
  * <http://www.securitytube.net/groups?operation=view&groupId=10>
* Offensive Security’s Metasploit Unleashed (self-paced course):
  * <https://www.offensive-security.com/metasploit-unleashed/>

My experience with learning and using Metasploit was that it helped me learn to identify possibly vulnerable services. When I first started the course, I had no hacking/pen testing experience, so it was difficult to identify what was vulnerable and then how to exploit it. Metasploit helped me get my foot in the door. I could use its modules to identify the vulnerability and then the exploit module needed to gain access. After I became more comfortable with enumeration, I used it less and less, until not at all. Looking back I wonder if it was purely psychological. I felt useless in the lab despite knowing there were 40+ purposely vulnerable machines and yet I couldn’t get access anywhere. Using Metasploit and getting that first root shell boosted my confidence (despite the fact Metasploit basically did all the work), but it certainly gave me enough hope to keep pushing forward. Discouragement can certainly be the number one enemy for some going through the OSCP.

But this was simply my experience with using the tool. Be careful, as good as it is to learn the tool, given the exam restrictions, you will not pass the exam if your reliance on Metasploit is strong. This translates into real life pen testing as well though. You simply can’t improve as a pen testers if Metasploit modules (or other automated tools) are all that are used during a test. Because of these reasons, I saw a number of people within the course forums that refused to even touch Metasploit given the exam restrictions and the fear of reliance.

Now that I convinced everyone to not use Metasploit, OffSec has a fantastic and free [Metasploit course](https://www.offensive-security.com/metasploit-unleashed/>) (also listed above) that I referenced throughout my time in the course.

There are tons of other tools that can be used in addition to the tools I listed (and I encourage you to do so!). But if you're coming at penetration testing in general from a beginners standpoint, then knowledge of the tools above are a must.

Continue to [Part 3: Penetration Testing Topics](https://thegetch.github.io/oscp/offsec/2019/08/12/OSCPJourneyPart3/).
