---
layout: post
title:  "AV Bypassing"
date:   2021-10-11 09:29:01 -0400
categories: AV Bypassing AntiVirus
---

##### [Return Home](https://thegetch.github.io/penetration/testing/resources/2020/07/24/Home/)

---

### [# Bypassing Defender on modern Windows 10 systems](https://www.purpl3f0xsecur1ty.tech/2021/03/30/av_evasion.html)

PEN-300 taught me a lot about modern antivirus evasion techniques. It was probably one of the more fun parts of the course, because we did a lot of cool things in C# and learned to bypass modern-day AV. While the information provided was solid, I found that some of the things taught did not bypass Windows Defender. In this write-up, I will show you how I combined several techniques that I learned, along with some of MSFvenom’s own features, to finally get a working Meterpreter shell on a Windows 10 VM in my home lab.

### [The dying knight in the shiny armour](https://aptw.tf/2021/08/21/killing-defender.html)

With Administrator level privileges and without interacting with the GUI, it’s possible to prevent Defender from doing its job while keeping it alive and without disabling tamper protection by redirecting the `\Device\BootDevice` NT symbolic link which is part of the NT path from where Defender’s WdFilter driver binary is loaded. This can also be used to make Defender load an arbitrary driver, which no tool succeeds in locating, but it does not survive reboots. The code to do that is in APTortellini’s Github repository [unDefender](https://github.com/APTortellini/unDefender).