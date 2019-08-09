---
layout: post
title:  "Cross-Site Scripting"
date:   2019-08-09 11:03:01 -0400
categories: Cross-Site Scripting XSS
---
##### [Return Home](https://thegetch.github.io/penetration/testing/resources/2019/08/09/Home/)

### Web Security Academy: Cross-site scripting

In this section, we'll explain what cross-site scripting is, describe the different varieties of cross-site scripting vulnerabilities, and spell out how to find and prevent cross-site scripting. 

<https://portswigger.net/web-security/cross-site-scripting>

### XSS without HTML: Client-Side Template Injection with AngularJS

Naive use of the extremely popular JavaScript framework AngularJS is exposing numerous websites to Angular Template Injection. This relatively low profile sibling of server-side template injection can be combined with an Angular sandbox escape to launch cross-site scripting (XSS) attacks on otherwise secure sites. Until now, there has been no publicly known sandbox escape affecting Angular 1.3.1+ and 1.4.0+. This post will summarize the core concepts of Angular Template Injection, then show the development of a fresh sandbox escape affecting all modern Angular versions.

<https://portswigger.net/blog/xss-without-html-client-side-template-injection-with-angularjs>

### Adapting AngularJS payloads to exploit real world applications

Every experienced pentester knows there is a lot more to XSS than - filtering, encoding, browser-quirks and WAFs all team up to keep things interesting. AngularJS Template Injection is no different. In this post, we will examine how we adapted template injection payloads to bypass filtering and encoding and exploit Piwik and Uber.

<https://portswigger.net/blog/adapting-angularjs-payloads-to-exploit-real-world-applications>

### DOM based AngularJS sandbox escapes

Last year in XSS Without HTML: Client-Side Template Injection with AngularJS we showed that naive use of the AngularJS framework exposes websites to Cross-Site Scripting (XSS) attacks, given a suitable sandbox escape. In this post, I'll look at how to develop a sandbox escape that works in a previously unexploitable context - the order by filter. I’ve written up the entire exploit development process including various techniques that didn’t quite work out.

<https://portswigger.net/blog/dom-based-angularjs-sandbox-escapes>

### XSS Attacks 

Listing of XSS attacks. 

<http://htmlpurifier.org/live/smoketests/xssAttacks.php>
