---
layout: post
title:  "Wi-Fi Hacking: Tools"
date:   2019-08-09 11:03:01 -0400
categories: Wifi Tools
---
##### [Return Home](https://thegetch.github.io/penetration/testing/resources/2020/07/24/Home/)

[Click here](https://thegetch.github.io/PenetrationTestingResources/WiFiHacking) for Wi-Fi- hacking guides.

### [hcxdumptool](https://github.com/ZerBea/hcxdumptool)

Small tool to capture packets from wlan devices. After capturing, upload the "uncleaned" cap here (https://wpa-sec.stanev.org/?submit) to see if your ap or the client is vulnerable by using common wordlists. Convert the cap to hccapx and/or to WPA-PMKID-PBKDF2 hashline (16800) with hcxpcaptool (hcxtools) and check if wlan-key or plainmasterkey was transmitted unencrypted.
