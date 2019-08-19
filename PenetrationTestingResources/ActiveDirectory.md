---
layout: post
title:  "Active Directory"
date:   2019-08-09 11:03:01 -0400
categories: Active Directory
---
##### [Return to Main Page](https://thegetch.github.io/penetration/testing/resources/2019/08/09/Home/)

[Click here](https://thegetch.github.io/PenetrationTestingResources/ActiveDirectoryTools) for Active Directory attack tools.

### [118 Attacking ADFS Endpoints with PowerShell](https://www.youtube.com/watch?v=oTyLdAUjw30)

Active Directory Federation Services (ADFS) has become increasingly popular in the last few years. As a penetration tester, I'm seeing organizations opening themselves up to attacks on ADFS endpoints across the Internet. Manually completing attacks against these endpoints can be tedious. The current native Microsoft management tools are handy, but what if we weaponized them. During this talk, I will show you how to identify domains that support ADFS, confirm email addresses for users of the domain, and help you guess passwords for those users. We'll cover how you can set up your own hosted ADFS domain (on the cheap), and use it to attack other federated domains. On top of that, we'll show you how you can wrap all of the native functionality with PowerShell to automate your attacks. This talk should give penetration testers an overview on how they can start leveraging ADFS endpoints during a penetration test.

### [Scanning for Active Directory Privileges & Privileged Accounts](https://paper.tuisec.win/detail/b21c671ef0496b9)

Active Directory Recon is the new hotness since attackers, Red Teamers, and penetration testers have realized that control of Active Directory provides power over the organization.
I covered ways to enumerate permissions in AD using PowerView (written by Will @harmj0y) during my Black Hat & DEF CON talks in 2016 from both a Blue Team and Red Team perspective.

### [Penetration Testing Active Directory, Part I](https://hausec.com/2019/03/05/penetration-testing-active-directory-part-i/)

I’ve had several customers come to me before a pentest and say they think they’re in a good shape because their vulnerability scan shows no critical vulnerabilities and that they’re ready for a pentest, which then leads me to getting domain administrator in fifteen minutes by just exploiting misconfigurations in AD.

### [Penetration Testing Active Directory, Part II](https://hausec.com/2019/03/12/penetration-testing-active-directory-part-ii/)

In the previous article, I obtained credentials to the domain three different ways. For most of this part of the series, I will use the rsmith user credentials, as they are low-level, forcing us to do privilege escalation.

### [Bloodhound 101](https://blog.zsec.uk/bloodhound-101/)

Bloodhound is a tool for enumeration of an active directory environment. It maps out relationships between active directory objects and is useful for Pentesting and Red Teaming....
