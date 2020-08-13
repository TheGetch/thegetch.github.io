---
layout: post
title:  "File Upload Restrictions Bypass"
date:   2020-07-23 03:48:01 -0400
categories: File Uploads
---
##### [Return Home](https://thegetch.github.io/penetration/testing/resources/2020/07/24/Home/)

### [File Upload Restrictions](https://www.exploit-db.com/docs/english/45074-file-upload-restrictions-bypass.pdf)

During  penetration  testing  engagements,  You  may  have seen  unrestricted File Upload which can grants you an access to the server to execute malicious codes, however, it’s not that easy to do so in some cases where you have to bypass file upload restrictions and filtrations which can make it a bit challenging to finally get the job done. This paper will discuss the methods of how the web application handles this process and how it validates the files that are being sent to the server and how to bypass these validations.

### [Null byte attacks are alive and well](https://portswigger.net/blog/null-byte-attacks-are-alive-and-well)

Null byte attacks against web and other applications are nothing new. Later in this post, I will describe two cases that may nonetheless be unfamiliar to some readers.
