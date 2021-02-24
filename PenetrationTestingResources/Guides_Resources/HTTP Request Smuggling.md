---
layout: post
title:  "HTTP Request Smuggling"
date:   2020-07-23 03:51:01 -0400
categories: HTTP Smuggling Desync
---

##### [Return Home](https://thegetch.github.io/penetration/testing/resources/2020/07/24/Home/)

---

### [HTTP Desync Attacks: Request Smuggling Reborn](https://portswigger.net/research/http-desync-attacks-request-smuggling-reborn)

HTTP requests are traditionally viewed as isolated, standalone entities. In this paper, I'll explore forgotten techniques for remote, unauthenticated attackers to smash through this isolation and splice their requests into others, through which I was able to play puppeteer with the web infrastructure of numerous commercial and military systems, rain exploits on their visitors, and harvest over $70k in bug bounties.

### [HTTP Request Smuggling + IDOR](https://hipotermia.pw/bb/http-desync-idor)

HTTP Request Smuggling or HTTP Desync is one of the trendy vulnerabilities of the moment and one of my favorites, because it allows you to greatly increase the severity of most common bugs. Here, in this first of a series of HTTP Request Smuggling chained vulnerabilities I've found, I'll explain how I chained it with a inoffensive IDOR to retrieve some user highly confidential information.

### [Account takeover via HTTP Request Smuggling](https://hipotermia.pw/bb/http-desync-account-takeover)

This is my second write-up about detecting and exploiting HTTP Request Smuggling by chaining different bugs with it to get critical vulnerabilities, you can find my first write-up here: HTTP Request Smuggling + IDOR.
This time I faced a vulnerable TE.CL system and by chaining an internal header disclosure and an open redirect I was able to get an account takeover of any user.
