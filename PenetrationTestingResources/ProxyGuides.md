---
layout: post
title:  "Proxy Guides"
date:   2019-08-09 11:03:01 -0400
categories: Proxy
---
##### [Return Home](https://thegetch.github.io/penetration/testing/resources/2020/07/24/Home/)

### [Changing proxychains' "hardcoded" DNS server](http://carnal0wnage.attackresearch.com/2013/09/changing-proxychains-hardcoded-dns.html)

If you've ever used proxychains to push things through Meterpreter, one of the most annoying things is its "hardcoded" DNS setting for 4.2.2.2, if the org that you are going after doesn't allow this out of their network, or if you are trying to resolve an internal asset, you're SOL. After a ton of googling and annoyed head slams into walls every time I forget where this is I've finally decided to make a note of it.
