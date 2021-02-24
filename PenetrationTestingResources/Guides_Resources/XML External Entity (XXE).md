---
layout: post
title:  "XML External Entity"
date:   2019-08-09 11:03:01 -0400
categories: XML External Entity
---

##### [Return Home](https://thegetch.github.io/penetration/testing/resources/2020/07/24/Home/)

---

### [Web Security Academy: XXE Injection](https://portswigger.net/web-security/xxe)

In this section, we'll explain what XML external entity injection is, describe some common examples, explain how to find and exploit various kinds of XXE injection, and summarize how to prevent XXE injection attacks.

### [From blind XXE to root-level file read access](https://www.honoki.net/2018/12/from-blind-xxe-to-root-level-file-read-access/)

On a recent bug bounty adventure, I came across an XML endpoint that responded interestingly to attempted XXE exploitation. The endpoint was largely undocumented, and the only reference to it that I could find was an early 2016 post from a distraught developer in difficulties.
Below, I will outline the thought process that helped me make sense of what I encountered, and that in the end allowed me to elevate what seemed to be a medium-criticality vulnerability into a critical finding.

### [Out-of-band XML External Entity (OOB-XXE)](https://www.acunetix.com/blog/articles/band-xml-external-entity-oob-xxe/)

As with many types of attacks, you can divide XML External Entity attacks (XXE attacks) into two types: in-band and out-of-band. In-band XXE attacks are more common and let the attacker receive an immediate response to the XXE payload. In the case of out-of-band XXE attacks (also called blind XXE), there is no immediate response from the web application. To learn about in-band XXE vulnerabilities and attacks, read the following article: What Are XML External Entity (XXE) Attacks.

### [Exploiting XXE with local DTD files](https://mohemiv.com/all/exploiting-xxe-with-local-dtd-files/)

This little technique can force your blind XXE to output anything you want!
