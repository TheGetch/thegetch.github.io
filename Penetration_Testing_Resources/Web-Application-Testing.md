### Burp 2.0 Launching Scans

PortSwigger blog about setting up and launching basic scans in Burp 2.0's new scan engine. 
 
https://portswigger.net/blog/launching-scans

### Cracking the Lens: Targeting HTTP's hidden attack-surface

Modern websites are browsed through a lens of transparent systems built to enhance performance, extract analytics and supply numerous additional services. This almost invisible attack surface has been largely overlooked for years. 

In this paper, I'll show how to use malformed requests and esoteric headers to coax these systems into revealing themselves and opening gateways into our victim's networks. I'll share how by combining these techniques with a little Bash I was able to thoroughly perforate DoD networks, trivially earn over $30k in vulnerability bounties, and accidentally exploit my own ISP. 
 
https://portswigger.net/blog/cracking-the-lens-targeting-https-hidden-attack-surface
https://www.youtube.com/watch?v=zP4b3pw94s0&feature=youtu.be

### XSS without HTML: Client-Side Template Injection with AngularJS

Naive use of the extremely popular JavaScript framework AngularJS is exposing numerous websites to Angular Template Injection. This relatively low profile sibling of server-side template injection can be combined with an Angular sandbox escape to launch cross-site scripting (XSS) attacks on otherwise secure sites. Until now, there has been no publicly known sandbox escape affecting Angular 1.3.1+ and 1.4.0+. This post will summarize the core concepts of Angular Template Injection, then show the development of a fresh sandbox escape affecting all modern Angular versions.

https://portswigger.net/blog/xss-without-html-client-side-template-injection-with-angularjs 

### Hidden directories and files as a source of sensitive information about web application

Hidden directories and files left accidentally on the web server might be a very valuable source of sensitive information. There can be a lot of hidden information in web application root folder: source code version systems folders and files (.git, .gitignore, .svn), project configuration files (.npmrc, package.json, .htaccess), custom configuration files with common extensions like config.json, config.yml, config.xml and many, many others.

https://medium.com/@_bl4de/hidden-directories-and-files-as-a-source-of-sensitive-information-about-web-application-84e5c534e5ad

### XMLHttpRequest Based CSRF Test 1.0

Hackers are continuously looking to find vulnerabilities in systems and exploit them for nefarious gains. Over the years, there have been thousands of attacks targeting multiple weaknesses that coders and developers inadvertently wrote in their programs. One such example which we will analyze in detail in this post is a cross-site request forgery (CSRF) attack exploiting a weakness in a XMLHttpRequest (XHR) technology.

https://www.paladion.net/blogs/xmlhttprequest-based-csrf-test-1-0-part-1