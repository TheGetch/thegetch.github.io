---
layout: post
title:  "XML External Entity"
date:   2019-08-09 11:03:01 -0400
categories: XML External Entity
---
##### [Return Home](https://thegetch.github.io/penetration/testing/resources/2019/08/09/Home/)

### Web Security Academy: XXE Injection

In this section, we'll explain what XML external entity injection is, describe some common examples, explain how to find and exploit various kinds of XXE injection, and summarize how to prevent XXE injection attacks. 

<https://portswigger.net/web-security/xxe>

### From blind XXE to root-level file read access

On a recent bug bounty adventure, I came across an XML endpoint that responded interestingly to attempted XXE exploitation. The endpoint was largely undocumented, and the only reference to it that I could find was an early 2016 post from a distraught developer in difficulties.
Below, I will outline the thought process that helped me make sense of what I encountered, and that in the end allowed me to elevate what seemed to be a medium-criticality vulnerability into a critical finding.

<https://www.honoki.net/2018/12/from-blind-xxe-to-root-level-file-read-access/>
