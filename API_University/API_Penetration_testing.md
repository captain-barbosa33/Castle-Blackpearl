# API_Penetration_testing

# Setting Up Kali Linux and More

## **Install a Hypervisor (VMware)**

Download and install VMware to host your Kali Linux VM.

[https://www.vmware.com/go/getplayer-win](https://www.vmware.com/go/getplayer-win)

### **Install Kali Linux**

Download and Install the Kali VMWare 64-bit VM.

[https://www.kali.org/get-kali/#kali-virtual-machines](https://www.kali.org/get-kali/#kali-virtual-machines)

For additional help with installation, please read the Kali.org docs ([https://www.kali.org/docs/installation/](https://www.kali.org/docs/installation/)).

User: kali

Pass: kali

### **Update Kali**

Once you have your Kali VM up and running, open the Kali Linux Terminal and use the following commands to update your system:

$ sudo apt update -y

$ sudo apt upgrade -y

$ sudo apt dist-upgrade -y

### **Update User Accounts**

When starting a new operating system it is always a great idea to update default credentials:

$ sudo passwd kali    (enter in a new more complex password)

$ sudo useradd -m hapihacker

$ sudo usermod -a -G sudo hapihacker

$ sudo chsh -s /bin/zsh hapihacker

### **Burp Suite Community Edition**

Burp Suite should come stock with the latest version of Kali, but if it does not then use the following command:

$ sudo apt-get install burpsuite -y

Download Jython ([https://www.jython.org/download.html](https://www.jython.org/download.html)) and add the .jar file to the Extender Options:

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/uShnJZrYSwObdQdeTKgn_Setup1.PNG)

Under the Extender BApp Store search for Autorize and install the extension.

### **Foxy Proxy Standard**

While Firefox is open use the shortcut **CTRL+Shift+A** or navigate to [https://addons.mozilla.org/en-US/firefox/addon](https://addons.mozilla.org/en-US/firefox/addon).

1. Search for FoxyProxy Standard.
2. Add FoxyProxy to Firefox.
3. Install FoxyProxy Standard and add it to your browser.
4. Click the fox icon at the top-right corner of your browser (next to the URL) and select Options.
5. Select Proxies >Add New Proxy >Manual Proxy Configuration.
6. Add 127.0.0.1 as the host IP address.
7. Update the port to 8080 (Burp Suite’s default proxy settings).
8. Under the General tab, rename the proxy to **BurpSuite**.
9. Add a second new proxy:
    1. Add 127.0.0.1 as the host IP address.
    2. Update the port to 5555
    3. Under the General tab, rename the proxy to **Postman**

### **Burp Suite Certificate**

1. Start Burp Suite.
2. Open your browser of choice.
3. Using FoxyProxy, select the BurpSuite proxy. Navigate to [http://burpsuite](http://burpsuite/) and click the CA Certificate. This should initiate the download of the Burp Suite CA certificate.
4. Save the certificate somewhere you can find it.
5. Open your browser and import the certificate. In Firefox, open Preferences and use the search bar to look up certificates. Import the certificate.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/pNXd3clsQOySA6FP6NLQ_Capturecert.PNG)
    
6. In Chrome, open Settings, use the search bar to look up certificates,select More>Manage Certificates>Authorities, and import the certificate. If you do not see the BurpSuite cacert.der certificate. (You may need to expand the file type options to “DER” or “All files").
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/94VQmADbSqCAZbaz2zKT_Capturecert2.PNG)
    

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/eu50S2KuTmuIdfHu47Q3_Capturecert3.PNG)

Now that you have the PortSwigger CA certificate added to your browser, you should be able to intercept traffic without experiencing issues.

### **MITMweb Certificate Setup**

Now we will also import the cert for MITMweb through a very similar process.

1. Stop burpsuite (it's listening on 8080 and mitmweb needs that to work)
2. Start mitmweb from the terminal:$mitmweb
3. Use FoxyProxy in Firefox to send traffic to the BurpSuite proxy (8080).
4. Using Firefox Visit mitm.it.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/2tR5PEZbQLU0Oh8rNK7E_cert101.PNG)
    
5. Download the mitmproxy-ca-cert.pem for Firefox.
6. Return to the Firefox certificates (see Burp Suite Certificate instructions).
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/94VQmADbSqCAZbaz2zKT_Capturecert2.PNG)
    
7. Import the MITMweb (mitmproxy-ca-cert.pem) certificate.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/mEXrG0xJSQeDsjpAWqR5_Capturecert4.PNG)
    

### **Install Postman**

$ sudo wget https://dl.pstmn.io/download/latest/linux64 -O postman-linux-x64.tar.gz && sudo tar -xvzf postman-linux-x64.tar.gz -C /opt && sudo ln -s /opt/Postman/Postman /usr/bin/postman

### **Install mitmproxy2swagger**

```
$ sudo pip3 install mitmproxy2swagger

```

### **Install Git**

$ sudo apt-get install git

**Install Docker**

$ sudo apt-get install docker.io docker-compose

### **Install Go**

$ sudo apt install golang-go

### **The JSON Web Token Toolkit v2**

$ cd /opt

$ sudo git clone [https://github.com/ticarpi/jwt_tool](https://github.com/ticarpi/jwt_tool)

$ cd jwt_tool

$ python3 -m pip install termcolor cprint pycryptodomex requests

**(Optional) Make an alias for jwt_tool.py**

$ sudo chmod +x jwt_tool.py

$ sudo ln -s /opt/jwt_tool/jwt_tool.py /usr/bin/jwt_tool

### **Install Sublime Text**

**Install the GPG key:**

$ wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null

**Select the Stable channel:**

$echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

**Update apt sources and install Sublime Text:**

$sudo apt-get update

$sudo apt-get install sublime-text

### **Install Kiterunner**

$ sudo git clone  [https://github.com/assetnote/kiterunner.git](https://github.com/assetnote/kiterunner.git)

$ cd kiterunner

$ sudo make build

$ sudo ln -s /opt/kiterunner/dist/kr /usr/bin/kr

### **Install Arjun**

$ sudo git clone [https://github.com/s0md3v/Arjun.git](https://github.com/s0md3v/Arjun.git)

### **Install OWASP ZAP**

$ sudo apt install zaproxy

Once ZAP is installed, make sure to navigate to the Manage Add-Ons (CTRL+U). Make sure to apply updates for the Fuzzer and OpenAPI Support.

### **Useful Wordlists**

**SecLists ([https://github.com/danielmiessler/SecLists](https://github.com/danielmiessler/SecLists))**

$ sudo wget -c https://github.com/danielmiessler/SecLists/archive/master.zip -O SecList.zip \

&& sudo unzip SecList.zip \

&& sudo rm -f SecList.zip

**Hacking-APIs ([https://github.com/hAPI-hacker/Hacking-APIs](https://github.com/hAPI-hacker/Hacking-APIs))**

$ sudo wget -c [https://github.com/hAPI-hacker/Hacking-APIs/archive/refs/heads/main.zip](https://github.com/hAPI-hacker/Hacking-APIs/archive/refs/heads/main.zip) -O HackingAPIs.zip \

&& sudo unzip HackingAPIs.zip \

&& sudo rm -f HackingAPIs.zip

Once you have these tools installed and updated you should be ready to proceed to the next module.

# API Hacking Lab

[APIsec.ai](http://apisec.ai/) has hosted an API hacking lab that you can use to practice your skills.

crAPI can be found at [crapi.apisec.ai](http://crapi.apisec.ai/)

vAPI can be found at [vapi.apisec.ai](http://vapi.apisec.ai/)

# **The Completely Ridiculous API (crAPI)**

[https://github.com/OWASP/crAPI](https://github.com/OWASP/crAPI)

**`$mkdir ~/lab`**

**`$cd ~/lab`**

**`#sudo curl -o docker-compose.yml https://raw.githubusercontent.com/OWASP/crAPI/main/deploy/docker/docker-compose.yml`**

**`$ sudo docker-compose pull`**

**`$ sudo docker-compose -f docker-compose.yml --compatibility up -d`**

If you are having issues installing this locally, you can try the development version described here [https://github.com/OWASP/crAPI](https://github.com/OWASP/crAPI) OR target the one that is hosted by APIsec.

Once the installation is finished, you should be able to check to make sure crAPI is running by using a web browser and navigating to [http://127.0.0.1:8888](http://127.0.0.1:8888/) (crAPI landing page) or [http://127.0.0.1:8025](http://127.0.0.1:8025/)  (crAPI Mailhog Server). When you are done using/testing crAPI, you can stop it with docker-compose by using the following command:

$sudo docker-compose stop

# **`vAPI`**

vAPI will be used for many of the assessments throughout this course. Although APIsec will be hosting vAPI, it may be useful to have a local version for testing.

vAPI: [https://github.com/roottusk/vapi](https://github.com/roottusk/vapi)

```
$cd ~/lab
$sudo git clonehttps://github.com/roottusk/vapi.git
$cd /vapi
$sudo docker-compose up -d

Once vAPI is running you can navigate to http://127.0.0.1/vapi to get to the vAPI home page. One important thing to note is that vAPI comes with a prebuilt Postman collection and environment. You can access these in the vAPI/postman folder.

```

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/H29aKnQQRDOJpNBHHGJv_postman1.png)

You can import these into Postman to be prepared for testing for future assessments. Simply open Postman, select the Import button (top right), and select the two vAPI JSON documents (see above image). Finally, confirm the import and select the Import button.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/7hfeGAPTtuy1XsdNnUqg_postman2.png)

One more thing to note about vAPI is that the Resources folder contains secrets that will be necessary to complete certain attacks. The resources folder can be found here.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/H9dTPd6TRsWCNxIAQVDX_postman3.png)

There are many labs that are available to test out the tools and techniques that you learn in this course. Check out some of these other vulnerable labs:

**Portswigger**

- [Web Security Academy](https://portswigger.net/web-security)

**TryHackMe**

- [Bookstore](https://tryhackme.com/room/bookstoreoc) (free)
- [IDOR](https://tryhackme.com/room/idor) (paid)
- [GraphQL](https://tryhackme.com/room/carpediem1) (paid)

[**HackTheBox](https://www.hackthebox.com/hacker/hacking-labs) (Retired Machines)**

- Craft
- Postman
- JSON
- Node
- Help

**Github (Vulnerable Apps)**

- [Pixi](https://github.com/DevSlop/Pixi)
- [REST API Goat](https://github.com/optiv/rest-api-goat)
- [DVWS-node](https://github.com/snoopysecurity/dvws-node)
- [Websheep](https://github.com/marmicode/websheep)

# API Reconnaissance

## **Introduction**

In order to target APIs, you must first be able to find them. In this module, we will learn how to uncover the API attack surface of a target using passive and active reconnaissance techniques.

How an API is meant to be consumed will determine how easily it can be found. Public APIs are meant to be easily found and used by end-users. Public APIs may be entirely public without authentication or be meant for use by authenticated users. Authentication for a public API primarily depends on the sensitivity of the data that is handled. If a public API only handles public information then there is no need for authentication, in most other instances authentication will be required. Public APIs are meant to be consumed by end-users. In order to facilitate this, API providers share documentation that serves as an instruction manual for a given API. This documentation should be end-user friendly and relatively straightforward to find.

**Partner APIs** are intended to be used exclusively by partners of the provider. These might be harder to find if you are not a partner. Partner APIs may be documented, but documentation is often limited to the partner.

**Private APIs** are intended for use, privately, within an organization. These APIs are often documented less than partner APIS, if at all, and if any documentation exists it is even harder to find.

In all instances where API documentation is unavailable, you will need to know how to reverse engineer API requests. We will cover reverse engineering in a follow-up module. For now, we will focus on detecting APIs and using them as described within discovered documentation.

## **Web API Indicators**

APIs meant for consumer use are meant to be easily discovered. Typically, the API provider will market their API to developers who want to be consumers. So, it will often be very easy to find APIs, just by using a web application as an end-user. The goal here is to find APIs to attack and this can be accomplished by discovering the API itself or the API documentation. If you can find the target's API and documentation as an end-user then mission accomplished, you have successfully discovered an API.

Another way to find an API provided by a target is to look around the target's landing page. Look through a landing page for links to API or development portal. When searching for APIs there are several signs that will indicate that you have discovered the existence of a web API. Be on the lookout for obvious URL naming schemes:

[https://target-name.com/api/v1](https://target-name.com/api/v1)

[https://api.target-name.com/v1](https://api.target-name.com/v1)

[https://target-name.com/docs](https://target-name.com/v1)

[https://dev.target-name.com/rest](https://target-name.com/v1)

Look for API indicators within directory names like:

*/api, /api/v1, /v1, /v2, /v3, /rest, /swagger, /swagger.json, /doc, /docs, /graphql, /graphiql, /altair, /playground*

Also, subdomains can also be indicators of web APIs:

**api**.target-name.com

**uat**.target-name.com

**dev**.target-name.com

**developer**.target-name.com

**test**.target-name.com

Another indicator of web APIs is the HTTP request and response headers. The use of JSON or XML can be a good indicator that you have discovered an API.

*HTTP Request and Response Headers containing "Content-Type: application/json, application/xml"*

*Also, watch for HTTP Responses that include statements like:{"message": "Missing Authorization token"}*

One of the most obvious indicators of an API would be through information gathered using third-Party Sources like Github and API directories.

Gitub: [https://github.com/](https://github.com/)

Postman Explore: [https://www.postman.com/explore/apis](https://www.postman.com/explore/apis)

ProgrammableWeb API Directory: [https://www.programmableweb.com/apis/directory](https://www.programmableweb.com/apis/directory)

APIs Guru: [https://apis.guru/](https://apis.guru/)

Public APIs Github Project: [https://github.com/public-apis/public-apis](https://github.com/public-apis/public-apis)

RapidAPI Hub: [https://rapidapi.com/search/](https://rapidapi.com/search/)

When searching for a target's APIs use a target's web application as it was designed. Use a browser go to the web application and see if an API is advertised. Once you have an idea of how the web app functions, dig deeper by deploying passive and active reconnaissance techniques.

## Passive Reconnaissance

**Passive API Reconnaissance** is the act of obtaining information about a target without directly interacting with the target’s systems. When you take this approach, your goal is to find and document public information about your target’s attack surface.

Typically, passive reconnaissance leverages open-source intelligence (OSINT), which is data collected from publicly available sources. You will be on the hunt for API endpoints, exposed credentials, version information, API documentation, and information about the API’s business purpose. Any discovered API endpoints will become your targets later, during active reconnaissance. Credential-related information will help you test as an authenticated user or, better, as an administrator. Version information will help inform you about potential improper assets and other past vulnerabilities. API documentation will tell you exactly how to test the target API. Finally, discovering the API’s business purpose can provide you with insight into potential business logic flaws.

As you are collecting OSINT, it is entirely possible you will stumble upon a critical data exposure, such as API keys, credentials, JSON Web Tokens (JWT), and other secrets that would lead to an instant win. Other high-risk findings would include leaked PII or sensitive user data such as SSN, full names, email addresses, and credit card information. These sorts of findings should be documented and reported immediately because they present a valid critical weakness.

Now we will check out a few passive reconnaissance techniques that can be leveraged to discover APIs. Including Google Dorking, Git Dorking, API Repositories, the Way Back Machine, and Shodan.

## **Google Dorking**

Even without any Dorking techniques, finding an API as an end-user could be as easy as a quick search.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/3QiE3ZaXRLWKOYwRfCre_redditapisearch.png)

*Google Search for Reddit's API.*

However, sometimes you may not get the exact results you were hoping for. If you are getting too many irrelevant results then you could deploy some Google Dorking techniques to more effectively discover APIs.

| **Google Dorking Query** | **Expected results** |
| --- | --- |
| inurl:"/wp-json/wp/v2/users" | Finds all publicly available WordPress API user directories. |
| intitle:"index.of" intext:"api.txt" | Finds publicly available API key files. |
| inurl:"/api/v1" intext:"index of /" | Finds potentially interesting API directories. |
| ext:php inurl:"api.php?action=" | Finds all sites with a XenAPI SQL injection vulnerability. (This query was posted in 2016; four years later, there are currently 141,000 results.) |
| intitle:"index of" api_key OR "api key" OR apiKey -pool | This is one of my favorite queries. It lists potentially exposed API keys. |

## ****

## **GitDorking**

Regardless of whether your target performs its own development, it’s worth checking GitHub (www.github.com) for sensitive information disclosure. Developers use GitHub to collaborate on software projects. Searching GitHub for OSINT could reveal your target’s API capabilities, documentation, and secrets, such as API keys, passwords, and tokens, which could prove useful during an attack. Similar to Google Dorking, with GitHub, you can specify parameters like:

**filename**:swagger.json

**extension**: .json

Begin by searching GitHub for your target organization’s name paired with potentially sensitive types of information, such as “api key,” "api keys", "apikey", "authorization: Bearer", "access_token", "secret", or “token.” Then investigate the various GitHub repository tabs to discover API endpoints and potential weaknesses. Analyze the source code in the Code tab, find bugs in the Issues tab, and review proposed changes in the Pull requests tab.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/vJHflsacRw6gsCDkbd2c_GithubExposed.png)

Code contains the current source code, readme files, and other files. This tab will provide you with the name of the last developer who committed to the given file, when that commit happened, contributors, and the actual source code.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/Dn6kLSBGmQ2mI5S484Ao_GithubCode.png)

Using the Code tab, you can review the code in its current form or use ctrl-F to search for terms that may interest you (such as API, key, and secret). Additionally, view historical commits to the code by using the History button found near the top-right corner of the above image.  If you came across an issue or comment that led you to believe there were once vulnerabilities associated with the code, you can look for historical commits to see if the vulnerabilities are still viewable.

When looking at a commit, use the Split button to see a side-by-side comparison of the file versions to find the exact place where a change to the code was made.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/I7Zza4TSRgG0dQ5NFdQg_GithubHistory.png)

The Split button (top right of the above image) allows you to separate the previous code (left) and the updated code (right). Here, you can see a commit to an application that removed the Google Maps API key from the code, revealing both the key and the API endpoint it was used for.

The Issues tab is a space where developers can track bugs, tasks, and feature requests. If an issue is open, there is a good chance that the vulnerability is still live within the code (see Figure 6-9).

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/S0xHhF3QWyPOOVFIewWQ_GithubIssue.png)

This is an example, of an open GitHub issue that provides the exact location of an exposed API key in the code of an application. If the issue is closed, note the date of the issue and then search the commit history for any changes around that time.

The Pull requests tab is a place that allows developers to collaborate on changes to the code. If you review these proposed changes, you might sometimes get lucky and find an API exposure that is in the process of being resolved. As this change has not yet been merged with the code, we can easily see that the API key is still exposed under the Files changed tab. The Files changed tab reveals the section of code the developer is attempting to change.

If you don’t find weaknesses in a GitHub repository, use it instead to develop the profile of your target. Take note of programming languages in use, API endpoint information, and usage documentation, all of which will prove useful moving forward.

## **TruffleHog**

TruffleHog is a great tool for automatically discovering exposed secrets. You can simply use the following Docker run to initiate a TruffleHog scan of your target's Github.

$ sudo docker run -it -v "$PWD:/pwd" trufflesecurity/trufflehog:latest github --org=target-name

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/01s4gYuoQmq9GgdZg4oG_TruffleHogv3.png)

In the above example, you can see that the org that was targeted was Venmo and the results of the scan indicate URLs that should be investigated for potentially leaked secrets. In addition to searching Github, TruffleHog can also be used to search for secrets in other sources like Git, Gitlab, Amazon S3, filesystem, and Syslog. To explore these other options use the "-h" flag. For additional information check out [https://github.com/trufflesecurity/trufflehog](https://github.com/trufflesecurity/trufflehog).

# **API Directories**

Programmableweb.com is a go-to source for API-related information ([https://www.programmableweb.com/apis/directory](https://www.programmableweb.com/apis/directory)). To learn about APIs, you can use their API University. To gather information about your target, use the API Directory, a searchable database of over 23,000 APIs. Expect to find API endpoints, version information, business logic information, the status of the API, source code, SDKs, articles, API documentation, and a changelog.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/Pl5zVW8Rde4fCFd32jz3_twilioapidirectory.png)

*Twilio API page on programmableweb.com.*

Click through the various tabs in the directory listing and note the information you find. To see the API endpoint location, portal location, and authentication model. To see information about the APIs version history, select a specific version listed under the Versions tab. In this case, both the portal and endpoint links lead to API documentation as well. In the case of Twilio, you can see all the specs related to the current version of the REST API.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/8Zn6Z9PIRse67JCxJz8s_twilioapidirectory2.png)

*The Twilio specs page on programmableweb.com.*

On the Twilio specs page, you can learn all sorts of useful information about the API. For instance, the API endpoint URL is listed, the forum for the API, the developer support URL, the authentication model, and more are all listed on this page. At the bottom of the Specs page, you can also see articles related to the API and developers of the API, all of which could prove useful when attacking the API.

## **Shodan**

Shodan is the go-to search engine for devices accessible from the internet. Shodan regularly scans the entire IPv4 address space for systems with open ports and makes their collected information public on https://shodan.io. You can use Shodan to discover external-facing APIs and get information about your target’s open ports, making it useful if you have only an IP address or organization’s name to work from. Like with Google dorks, you can search Shodan casually by entering your target’s domain name or IP addresses; alternatively, you can use search parameters like you would when writing Google queries. The following table shows some useful Shodan queries.

| **Shodan Queries** | **Purpose** |
| --- | --- |
| hostname:"targetname.com" | Using hostname will perform a basic Shodan search for your target’s domain name. This should be combined with the following queries to get results specific to your target. |
| "content-type: application/json" | APIs should have their content-type set to JSON or XML. This query will filter results that respond with JSON. |
| "content-type: application/xml" | This query will filter results that respond with XML. |
| "200 OK" | You can add "200 OK" to your search queries to get results that have had successful requests. However, if an API does not accept the format of Shodan’s request, it will likely issue a 300 or 400 response. |
| "wp-json" | This will search for web applications using the WordPress API. |

## ****

## ****

# **The Wayback Machine**

The Wayback Machine is an archive of various web pages over time. This is great for passive API reconnaissance because this allows you to check out historical changes to your target. If, for example, the target once advertised a partner API on their landing page, but now hides it behind an authenticated portal, then you might be able to spot that change using the Wayback Machine. Another use case would be to see changes to existing API documentation. If the API has not been managed well over time, then there is a chance that you could find retired endpoints that still exist even though the API provider believes them to be retired. These are known as Zombie APIs. Zombie APIs fall under the Improper Assets Management vulnerability on the OWASP API Security Top 10 list. Finding and comparing historical snapshots of API documentation can simplify testing for Improper Assets Management.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/FGPF2fPT8ysfQHtTHQbk_Wayback1.PNG)

Check for differences between the API documentation. Later, when you are actively testing the API, make sure to test using old endpoints,

## **Conclusion**

In this module, we covered some basic techniques that can be deployed to gather about your target's API attack surface. The first step to hacking a target's APIs is to uncover as much information about them as possible. Using these reconnaissance techniques can not only help you discover the existence of APIs, but can also lead to critical vulnerability findings. Next we will focus on active recon techniques.

## Active Reconnaissance

Active reconnaissance is the process of interacting directly with the target primarily through the use of scanning. We will use our recon to search for our target's APIs and any useful information.

During this process you will be scanning systems, enumerating open ports, and finding ports that have services using HTTP. Once you have found systems hosting HTTP, you can open a web browser and investigate the web application. You could find an API being advertised to end users or you may have to dig deeper. Finally, you can scan the web app for API-related directories. Essentially, you will be building out the target's API attack surface. During active recon we will use tools like: nmap, OWASP Amass, gobuster, kiterunner, and DevTools.

**Nmap**

Nmap is a powerful tool for scanning ports, searching for vulnerabilities, enumerating services, and discovering live hosts. For API discovery, you should run two Nmap scans in particular: general detection and all port. The Nmap general detection scan uses default scripts (-sC) and service enumeration (-sV) against a target and then saves the output in three formats for later review (-oX for XML, -oN for Nmap, -oG for greppable, or -oA for all three):

$ nmap -sC -sV [target address or network range] -oA nameofoutput

The Nmap all-port scan will quickly check all 65,535 TCP ports for running services, application versions, and host operating system in use:

$ nmap -p- [target address] -oA allportscan

As soon as the general detection scan begins returning results, kick off the all-port scan. Then begin your hands-on analysis of the results. You’ll most likely discover APIs by looking at the results related to HTTP traffic and other indications of web servers. Typically, you’ll find these running on ports 80 and 443, but an API can be hosted on all sorts of different ports. Once you discover a web server, you can perform HTTP enumeration using a Nmap NSE script (use -p to specify which ports you'd like to test).

```
$ nmap -sV --script=http-enum <target> -p 80,443,8000,8080
```

**OWASP Amass**

OWASP Amass is a command-line tool that can map a target’s external network by collecting OSINT from over 55 different sources. You can set it to perform passive or active scans. If you choose the active option, Amass will collect information directly from the target by requesting its certificate information. Otherwise, it collects data from search engines (such as Google, Bing, and HackerOne), SSL certificate sources (such as GoogleCT, Censys, and FacebookCT), search APIs (such as Shodan, AlienVault, Cloudflare, and GitHub), and the web archive Wayback.

### **Making the most of Amass with API Keys**

Before diving into using Amass, we should make the most of it by adding API keys to it. Let's obtain a few free API keys to enhance our Amass scans.

First, we can see which data sources are available for Amass (paid and free) by running:

$ amass enum -list

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/eex0psZsSx2Zyd9ekGIl_ActiveDiscovery1.PNG)

Next, we will need to create a config file to add our API keys to.

**`$ sudo curl https://raw.githubusercontent.com/OWASP/Amass/master/examples/config.ini >~/.config/amass/config.ini`**

Now we can update the config.ini. I will demonstrate the process for adding API keys with Censys. Simply visit [https://censys.io/register](https://censys.io/register) and register for a free account. Make sure to use a valid email because you will have to verify for access to your free account.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/ZMWysMVxSPp9CREpENjU_ActiveDiscovery2.PNG)

Once you have obtained your API ID and Secret, edit the config.ini file and add the credentials to the file.

**`$ sudo nano ~/.config/amass/config.ini`**

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/XYQwwA4JTwWOF7CH0d3T_ActiveDiscovery3.PNG)

Also, as with any credentials make sure not to share them like I just did. If you did share them then simply use the "Reset My API Secret" button back on Censys.io. You can repeat this process with many free accounts and API keys, then you will make OWASP Amass into a powerhouse for API reconnaissance.

**`$ amass enum -active -d target-name.com |grep api`**

legacy-api.target-name.com

api1-backup.target-name.com

api3-backup.target-name.com

This scan could reveal many unique API subdomains, including legacy-api.target-name.com. An API endpoint named legacy could be of particular interest because it seems to indicate an improper asset management vulnerability.

Amass has several useful command-line options. Use the intel command to collect SSL certificates, search reverse Whois records, and find ASN IDs associated with your target. Start by providing the command with target IP addresses

$ amass intel -addr [target IP addresses]

If this scan is successful, it will provide you with domain names. These domains can then be passed to intel with the whois option to perform a reverse Whois lookup:

$ amass intel -d [target domain] –whois

This could give you a ton of results. Focus on the interesting results that relate to your target organization. Once you have a list of interesting domains, upgrade to the enum subcommand to begin enumerating subdomains. If you specify the **-**passive option, Amass will refrain from directly interacting with your target:

$ amass enum -passive -d [target domain]

The active enum scan will perform much of the same scan as the passive one, but it will add domain name resolution, attempt DNS zone transfers, and grab SSL certificate information:

$ amass enum -active -d [target domain]

To up your game, add the -brute option to brute-force subdomains, -w to specify the API_superlist wordlist, and then the -dir option to send the output to the directory of your choice:

$ amass enum -active -brute -w /usr/share/wordlists/API_superlist -d [target domain] -dir [directory name]

## **Directory Brute-force with Gobuster**

Gobuster can be used to brute-force URIs and DNS subdomains from the command line. (If you prefer a graphical user interface, check out OWASP’s Dirbuster.) In Gobuster, you can use wordlists for common directories and subdomains to automatically request every item in the wordlist and send them to a web server and filter the interesting server responses. The results generated from Gobuster will provide you with the URL path and the HTTP status response codes. (While you can brute-force URIs with Burp Suite’s Intruder, Burp Community Edition is much slower than Gobuster.)

Whenever you’re using a brute-force tool, you’ll have to balance the size of the wordlist and the length of time needed to achieve results. Kali has directory wordlists stored under /usr/share/wordlists/dirbuster that are thorough but will take some time to complete. Instead, you can use an API-related wordlist, which will speed up your Gobuster scans since the wordlist is relatively short and only contains directories related to APIs.

The following example uses an API-specific wordlist to find the directories on an IP address:

$ gobuster dir -u target-name.com:8000 -w /home/hapihacker/api/wordlists/common_apis_160

========================================================

Gobuster

by OJ Reeves (@TheColonial) & Christian Mehlmauer (@firefart)

========================================================

[+] Url:                     http://192.168.195.132:8000

[+] Method:                  GET

[+] Threads:                 10

[+] Wordlist:                /home/hapihacker/api/wordlists/common_apis_160

[+] Negative Status codes:   404

[+] User Agent:              gobuster

[+] Timeout:                 10s

========================================================

09:40:11 Starting gobuster in directory enumeration mode

========================================================

/api                (Status: 200) [Size: 253]

/admin                (Status: 500) [Size: 1179]

/admins               (Status: 500) [Size: 1179]

/login                (Status: 200) [Size: 2833]

/register             (Status: 200) [Size: 2846]

Once you find API directories like the /api directory shown in this output, either by crawling or brute force, you can use Burp to investigate them further. Gobuster has additional options, and you can list them using the -h option:

$ gobuster dir -h

If you would like to ignore certain response status codes, use the option -b. If you would like to see additional status codes, use -x. You could enhance a Gobuster search with the following:

$ gobuster dir -u

://targetaddress/ -w /usr/share/wordlists/api_list/common_apis_160 -x 200,202,301 -b 302

Gobuster provides a quick way to enumerate active URLs find API paths.

## ****

## **Kiterunner**

Kiterunner is an excellent tool that was developed and released by Assetnote. Kiterunner is currently the best tool available for discovering API endpoints and resources. While directory brute force tools like Gobuster/Dirbuster/ work to discover URL paths, it typically relies on standard HTTP GET requests. Kiterunner will not only use all HTTP request methods common with APIs (GET, POST, PUT, and DELETE) but also mimic common API path structures. In other words, instead of requesting GET /api/v1/user/create, Kiterunner will try POST /api/v1/user/create, mimicking a more realistic request.

You can perform a quick scan of your target’s URL or IP address like this:

$ kr scan HTTP://127.0.0.1 -w ~/api/wordlists/data/kiterunner/routes-large.kite

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/nXzTsPZ8R6C79ghxe2DO_ActiveDiscovery10.PNG)

As you can see, Kiterunner will provide you with a list of interesting paths. The fact that the server is responding uniquely to requests to certain /api/ paths indicates that the API exists.

Note that we conducted this scan without any authorization headers, which the target API likely requires. I will demonstrate how to use Kiterunner with authorization headers in Chapter 7.

If you want to use a text wordlist rather than a .kite file, use the brute option with the text file of your choice:

$ kr brute <target> -w ~/api/wordlists/data/automated/nameofwordlist.txt

If you have many targets, you can save a list of line-separated targets as a text file and use that file as the target. You can use any of the following line-separated URI formats as input:

Test.com

Test2.com:443

http://test3.com

http://test4.com

http://test5.com:8888/api

One of the coolest Kiterunner features is the ability to replay requests. Thus, not only will you have an interesting result to investigate, you will also be able to dissect exactly why that request is interesting. In order to replay a request, copy the entire line of content into Kiterunner, paste it using the kb replay option, and include the wordlist you used:

$ kr kb replay "GET     414 [    183,    7,   8]

://192.168.50.35:8888/api/privatisations/count 0cf6841b1e7ac8badc6e237ab300a90ca873d571" -w

~/api/wordlists/data/kiterunner/routes-large.kite

Running this will replay the request and provide you with the HTTP response. You can then review the contents to see if there is anything worthy of investigation. I normally review interesting results and then pivot to testing them using Postman and Burp Suite.

## **DevTools**

DevTools contains some highly underrated web application hacking tools. The following steps will help you easily and systematically filter through thousands of lines of code in order to find sensitive information in page sources. Begin by opening your target page, and then open DevTools with F12 or ctr-shift-I. Adjust the DevTools window until you have enough space to work with. Select the Network tab and then refresh the page (CTRL+r).

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/KAIntko1RBud1q6MVwBQ_ActiveDiscovery5.PNG)

You can use the filter tool to search for any term you would like, such as "API", "v1", or "graphql". This is a quick way to find API endpoints in use. You can also leave the Devtools Network tab open while you perform actions on the web page. For example, let's check out what happens if we leave the DevTools open while we authenticate to crAPI. You should see a new request pop up. At this point, you can dive deeper into the request by right-clicking on one of the requests and selecting "Edit and Resend".

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/JHIANpvkSDONA1eM3T0S_ActiveDiscovery7.PNG)

This will allow you to check out the request in the browser, edit the headers/request body, and send it back to the API provider. Although this is a great DevTools feature, you may want to move into a browser that was meant for interacting with APIs. You can use DevTools to migrate individual requests over to Postman using cURL.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/dKkYPAvmRTM4i4y825GQ_ActiveDiscovery7-5.PNG)

Once you have copied the desired request, open Postman. Select Import and click on the "Raw text" tab. Paste in the cURL request and select import.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/NPybx1iQaeK63RN9bsTz_ActiveDiscovery8.PNG)

Once the request has been imported it will have all of the necessary headers and the request body necessary to make additional requests in Postman. This is a great way to quickly interact with an API and interact with a single API request. To automatically build out a more complete Postman Collection check out the next module which is on Reverse Engineering an API.

Reconnaissance is extremely important when testing APIs. Discovering API endpoints is a necessary first step when attacking APIs. Good recon also has the added benefit of potentially providing you with the keys to the castle in the form of API keys, passwords, tokens, and other useful information disclosures.

## Quiz

**Question 1**

**Which of these headers is the best indicator of a web API?**

**Content-encoding: gzip**

**Content-Type: text/javascript**

**Cross-Origin-Resource-Policy: cross-origin**

**Content-Type: application/json**

Correct answer.

**Question 2**

**Which tool is best for exploring old versions of API documentation?**

**GitHub**

**Kiterunner**

**Shodan**

**The Wayback Machine**

Correct answer.

**Nmap**

**Question 3**

**Which Amass command will actively scan a target?**

**$amass intel -d example.com**

**$amass -h**

**$amass viz -maltego**

**$amass enum -active -brute -w /usr/share/wordlists/API_superlist -d example.com -dir [directory name]**

Correct answer.

**Question 4**

**What attributes are associated with Partner APIs?**

**Only exposed internally and API is likely unrestricted**

**Documentation is public and access to the API is likely restricted**

**Documentation may not be public and access to the API is likely restricted**

Correct answer.

**Usage payments are required and rate limiting is enforced**

**Question 5**

**Which of the following attributes are associated with Private APIs?**

**They are intended for use by partners**

**Usually requires JSON Web Tokens for authorization**

**Out of all the API types, documentation could be the most difficult to find**

Correct answer.

**Should not require reverse engineering when testing**

**Question 6**

**Which of the following tools is the worst for passively detecting APIs?**

**Nmap**

Correct answer.

**Google**

**GitHub**

**Shodan**

**Question 7**

**Which of the following tools would be best for actively detecting APIs?**

**Wireshark**

**GitHub**

**Shodan**

**Kiterunner**

Correct answer.

**Question 8**

**How can DevTools help analyze APIs?**

**Directory brute force**

**By attacking the API through HTML**

**The network module can reveal API endpoints**

Correct answer.

**You can use DevTools to automatically scan APIs for vulnerabilities**

**Question 9**

**What information about APIs can be discovered through passive reconnaissance techniques?**

**API Documentation**

**Exposed API keys**

**Usernames**

**All of the above**

Correct answer.

**Question 10**

**Which of the following tools cannot help discover endpoints without a specification file?**

**Kiterunner**

**Netcat**

Correct answer.

**Gobuster**

**Burp Suite**

# Reverse Engineering and API

In this module, I will discuss a process that can be used to reverse engineer an API. If an API is not documented or the documentation is unavailable to you, then you will need to build out your own collection of requests. I will demonstrate two different methods that can be deployed to build out our own collection. First, we will use Postman to collect API requests and manually build out a collection. This method often requires more time but is worth knowing in case you are in a pinch. The second method we will learn is to automatically build out an API specification using mitmproxy2swagger.

# **Building a Collection in Postman**

In the instance where there is no documentation and no specification file, you will have to reverse-engineer the API based on your interactions with it. Mapping an API with several endpoints and a few methods can quickly grow into quite a large attack surface. To manage this process, build the requests under a collection in order to thoroughly hack the API. Postman can help you keep track of all of these requests. There are two ways to manually reverse engineer an API with Postman. One way is by constructing each request. While this can be a bit cumbersome, it will allow you to add the precise requests you care about. The other way is to proxy web traffic through Postman, and then use it to capture a stream of requests. This process makes it much easier to construct requests within Postman, but you’ll have to remove or ignore unrelated requests. Later in this module, we'll review a great way to automatically document APIs with mitmproxy2swagger.

First, let's launch Postman.

$ postman

Next, create a Workspace to save your collections in. For this course, we will use the ACE workspace.

To build your own collection in Postman with the Proxy, use the Capture Requests button, found at the bottom right of the Postman window.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/V5C8ANdETAeCgv6MABrC_Reverse1.PNG)

In the Capture requests window, select Enable proxy. The port should match with the number that is set up in FoxyProxy (5555). Next, enable the Postman Proxy, add your target URL to the "URL must contain" field, and click the Start Capture button.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/0Dn6R31mSkcUAVQP0vaA_Reverse2.PNG)

Open up your web browser, navigate to crAPI's landing page, and use FoxyProxy to enable the Postman option. Now you can meticulously use the web app as intended. Meticulous, because you want to capture every single bit of functionality available within the application. This means using all of the features of the target. Click on links, register for an account, sign in to the account, visit your profile, post comments in a forum, etc. Essentially click all the things, update information where you can, and explore the web app in its entirety. How thorough you use the web app will have a domino effect on what endpoints and requests you will later test. For example, if you were to perform the various actions of the web app, but forgot to test the community endpoints then you will have a blindspot in the API attack surface.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/cyO2LccsSH2oTymcoqca_Reverse3.PNG)

For example, make sure to perform all of the actions on the my-profile page:

- add a profile picture
- upload a personal video
- change the account email address
- use the three horizontal dots to find additional options to:
    - change video
    - change video name
    - share video with community

Also, use the crAPI MailHog server to get the most out of this app. The MailHog server is located on port 8025 and will be used for registering user vehicles, resetting passwords, and where "change email" tokens are sent.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/RvbXZkznTXesyqp0W16y_Reverse4.PNG)

Once you have captured all of the features you can find with manual exploration then you will want to Stop the Proxy. Next, it is time to build the crAPI collection.  First, create a new collection by selecting the new button (top left side of Postman) and then choose Collection.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/kznOoCoQRKwnauhqLCpa_Reverse5.PNG)

Go ahead and rename the collection to **crAPI Proxy Collection**. Navigate back to the Proxy debug session and open up the Requests tab.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/X4WQgyYSQ7eUohdrgHeQ_Reverse6.PNG)

Select all of the requests that you captured and use the "add to Collection" link highlighted above. Select the crAPI Proxy Collection and organize the requests by Endpoints. With all of the captured requests added to the crAPI Proxy Collection, you can organize the collection by renaming all of the requests and grouping similar requests into folders. Before you get too far into this exercise, I would recommend checking out the automated documentation instructions below.

## **Automatic Documentation**

First, we will begin by proxying all web application traffic using mitmweb.

Simply use a terminal and run:

$ mitmweb

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/6KuYXxA4RqKE8PzXIvPn_mitmproxy.png)

This will create a proxy listener using port 8080. You can then open a browser and use FoxyProxy to proxy your browser to port 8080 using our Burp Suite option.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/1pY8hBghTnNH9r97h1Yi_FoxyProxySet.png)

Once the proxy is set up, you can once again use the target web application as it was intended.

*Note: if you are reverse engineering crapi.apisec.ai you may run into certificate issues if you have not yet added the mitmweb cert. Please return back to Kali Linux and More MITMweb Certificate Setup for instructions.*

Every request that is created from your actions will be captured by the mitmweb proxy. You can see the captured traffic by using a browser to visit the mitmweb web server located at http://127.0.0.1:8081.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/cfW71QnfSeCLslFvzQgA_mitmproxybrowser.png)

Continue to explore the target web application until there is nothing left to do. Once you have exhausted what can be done with your target web app, return to the mitmweb web server and click **File > Save** to save the captured requests.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/eEp9PvDRHedaSZsYqI8g_mitmproxySave.png)

Selecting **Save** will create a file called flows. We can use the "flows" file to create our own API documentation. Using a great tool called mitmproxy2swagger, we will be able to transform our captured traffic into an Open API 3.0 YAML file that can be viewed in a browser and imported as a collection into Postman.

First, run the following:

$sudo mitmproxy2swagger -i /Downloads/flows -o spec.yml -p [http://crapi.apisec.ai](http://crapi.apisec.ai/) -f flow

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/4TryEayCTsCoLdiBTsZS_mitmproxy2swaggerStep1.png)

After running this you will need to edit the spec.yml file to see if mitmproxy2swagger has ignored too many endpoints. Checking out spec.yml reveals that several endpoints were ignored and the title of the file can be updated. You can use Nano or another tool like Sublime to edit the spec.yml.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/file-uploads/site/2147573912/products/8d6d771-264-58b8-25bd-8b38006ce63_Sublime1.PNG)

Update the YAML file so that "ignore:" is removed from the endpoints that you want to include. If you're are using Sublime, you can simply select all of the endpoints that you want to edit (hold CTRL while selecting) and then use (CTRL+Shift+L) to perform a simultaneous multi-line edit.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/file-uploads/site/2147573912/products/037086f-8eaa-10c-d0a1-df108333e75_Sublime2.PNG)

Make sure to **only remove "ignore:"**. Removing spacing or the "-" can result in the script failing to work.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/file-uploads/site/2147573912/products/614fdfd-8fb0-7e8-ba68-2f5823cabc_Sublime4.PNG)

Note that the "title" has been updated to "crAPI Swagger" and that the endpoints no longer contain "ignore:". Once your docs look similar to the image above, make sure to run the script once more. This second run will correct the format and spacing.  This time around you can add the "--examples" flag to enhance your API documentation.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/y7ouQ9QSQoS0LHJr9yuT_mitmproxy2swaggerStep3.png)

After running mitmproxy2swagger successfully a second time through, your reverse-engineered documentation should be ready. You can validate the documentation by visiting [https://editor.swagger.io/](https://editor.swagger.io/) and by importing your spec file into the Swagger Editor. Use **File>Import file** and select your spec.yml file. If everything has gone as planned then you should see something like the image below. This is a pretty good indication of success, but to be sure we can also import this file as a Postman Collection that way we can prepare to attack the target API.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/3bNj0h5nQPyQELqabkNv_crapiSwagger1.png)

To import this file as a collection we will need to open Postman. At the top left of your Postman Workspace, you can click the "Import" button. Next, select the spec.yml file and import the collection.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/KzKQLRSXRdNpGtwrtdSo_mitmproxy2swaggerStep4.png)

Once you import the file you should see a relatively straightforward API collection that can be used to analyze the target API and exploit with future attacks.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/u4Ukhy2OQGGqO6qJYQA5_crapiCollection.png)

With a collection prepared, you should now be ready to use the target API as it was designed. This will enable you to see the various endpoints and understand what is required to make successful requests. In the next module, we will begin working with the API and learn to analyze various requests and responses.

# Using APIs and Excessive data exposure

Now that you know how to find live APIs and the relevant documentation, we will briefly review using an API as it was intended and how you can discover excessive data exposure. The next step in our API hacking process will be to use documentation to authenticate to the target API and begin forming requests.

Although API documentation is straightforward, there are a few elements to look out for. The ****overview ****is ****typically the first section of API documentation. Generally found at the beginning of the doc, it will provide a high-level introduction to how to connect and use the API. In addition, it could contain information about authentication and rate-limiting.

Review the documentation for functionality, or the actions that you can take using the given API. These will be represented by a combination of an HTTP method (GET, PUT, POST, DELETE) and an endpoint. Every organization’s APIs will be different, but you can expect to find functionality related to user account management, options to upload and download data, different ways to request information, and so on.

When making a request to an endpoint, make sure you note the request requirements. Requirements could include some form of authentication, parameters, path variables, headers, and information included in the body of the request. The API documentation should tell you what it requires of you and mention which part of the request that information belongs in. If the documentation provides examples, use them to help you. Typically, you can replace the example values with the ones you’re looking for. The table below describes some of the conventions often used in these examples.

### **API Documentation Conventions**

| Convention | Example | Meaning |
| --- | --- | --- |
| : or {} | /user/:id
/user/{id}
/user/2727
/account/:username
/account/{username}
/account/scuttleph1sh | The colon or curly brackets are used by some APIs to indicate a path variable. In other words, “:id” represents the variable for an ID number and “{username}” represents the account username you are trying to access. |
| [] | /api/v1/user?find=[name]
 
 | Square brackets indicate that the input is optional. |
| || | “blue” || “green” || “red” | Double bars represent different possible values that can be used. |

Understanding documentation conventions will help you create well-formed requests and troubleshoot instances where the API doesn't respond as expected. To better understand API documentation, let's take the reverse-engineered crAPI Swagger specs and import this into Postman. Using the Swagger Editor (https://editor .swagger.io), import the crAPI Swagger file that we created in the previous module. In the crAPI Swagger specification, we can see there are several different paths for endpoints starting with /identity, /community, and /workshop.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/tvmP92upTSKuuzFbal4A_UsingAPI1.PNG)

Using the Swagger Editor allows us to have a visual representation of our target's API endpoints. By browsing through and expanding the requests you can see the endpoint, parameters, request body, and example responses.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/cajspgGBROmR18GBQaTz_UsingAPI2.PNG)

The crAPI POST request above requires JSON values sent over the request body and the expectation is that those values will be in the form of a string. Reviewing documentation also gives us the opportunity to see the purpose of the various endpoints as well as some of the naming schemes used for data objects. Reviewing the documentation will lead you to interesting requests to target in your attacks. Even at this stage, you could discover potential vulnerabilities like Excessive Data Exposure.

# **Editing Postman Collection Variables**

When you start working with a new collection in Postman it is always a good idea to get a lay of the land, by checking out the collection variables. You can check on your Postman collection variables by using the collection editor.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/j96Inp9PR2mEM4Zz1I9L_UsingAPI8.PNG)

You can get to the collection editor by using your crAPI Swagger collection, selecting the three circles on the right side of a collection, and choosing "Edit". Selecting the Variables tab will show us that the variable "baseUrl" is used.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/YZWAKkLHTMySimU9EzyF_UsingAPI10.PNG)

Make sure that the baseUrl Current Value matches up with the URL to your target. If your target is localhost then it should match the image above. If your target is the ACE lab then the current value should be http://crapi.apisec.ai. Once you have updated a value in the editor, you will need to use the Save button found at the top right of Postman.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/qySSCGnSGJmbUtASYUpQ_UsingAPI11.PNG)

# **Updating Postman Collection Authorization**

In order to use Postman to make authorized API requests, we will need to add a valid token to our requests. This can be done for all of the requests within a collection by adding an authorization method to the collection. Using the Authorization tab, within the collection editor, we will need to select the right type for authorization. For crAPI, this will be a Bearer Token.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/asqDlJ4OR4qY9bg8ak1b_UsingAPI9.PNG)

Tokens are usually provided after a successful authentication attempt. For crAPI, we will be able to obtain a Bearer Token once we successfully authenticate with the POST request to /identity/api/auth/login.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/1XtUYT0FRJe0ZLeYI2aZ_UsingAPI12.PNG)

Navigate to the POST login request in your collection and update the values for "email" and "password" to match up with the account you created. If you don't remember, then you will need to go back and register for an account. Once you have successfully authenticated you should receive a response containing a Bearer token like the one seen above.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/PPWP8Yq8SqqPdjBEmK4h_UsingAPI13.PNG)

Copy the token found within the quotes and paste that value into the collection editor's authorization tab. Make sure to save the update to the collection. Now you should now be able to use the crAPI API as an authorized user and make successful requests using Postman.

# **OWASP API 3: Excessive Data Exposure**

Excessive Data Exposure occurs when an API provider sends back a full data object, typically depending on the client to filter out the information that they need. From an attacker's perspective, the security issue here isn't that too much information is sent, instead, it is more about the sensitivity of the sent data. This vulnerability can be discovered as soon as you are able to start making requests. API requests of interest include user accounts, forum posts, social media posts, and information about groups (like company profiles).

Ingredients for excessive data exposure:

- A response that includes more information than what was requested
- Sensitive Information that can be leveraged in more complex attacks

If an API provider responds with an entire data object, then the first thing that could tip you off to excessive data exposure is simply the size of the response.

**Request**

GET /api/v1/user?=CloudStrife

**Response**

200 OK HTTP 1.1

- -snip--

{"id": "5501",

"fname": "Cloud",

"lname": "Strife",

"privilege": "user",

"representative": [

"name": "Don Coreneo",

"id": "2203",

"email": "dcorn@gmail.com",

"privilege": "admin",

"MFA": false      ]

}

In the response, we see that not only is the requested user's information provided but so is the data about the administrator who created the user's account. Including the administrator's information in a request like this is an example of excessive data exposure because it goes beyond what was requested and exposes sensitive information like the name, email, role, and multifactor status of the admin.

Now if we return to crAPI, let's look through the specification using the Swagger Editor to see if we can spot any potential interesting requests. Since we are looking for data that is returned to us our focus will be on the crAPI GET requests. The first of these requests listed in the crAPI Swagger docs is GET /identity/api/v2/user/dashboard.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/T1xPrikRYGXHldfjZ0ts_UsingAPI3.PNG)

The purpose of this request is to populate a user's dashboard. There is plenty of interesting information, but the information here is going to be specific to the requester, based on their access token. This does give us an idea of some of the object key naming schemes and potentially sensitive information to search for. Information like "id", "name", "email", "number", "available_credit", and "role" would all be interesting to discover about other users. So, we should look through other requests to see if any include any of these.

If you think through the different types of endpoints (/identity, /community, and /workshop), consider which of these is likely to involve the information of other users. Community sounds like something that would involve other users, so let's check out an associated GET request.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/1Zyr5SxHSgq1IBYjv1J9_UsingAPI4.PNG)

This GET request is used to update the community forum. Check out some of the data that is returned:

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/lkwPK1QOTuhy0sOGGoGT_UsingAPI5.PNG)

In this forum post, an "author" object with "nickname", "email", and "vehicleid" is returned. This could be interesting. Now, this is a great example to see what is visually represented in a web browser versus what exists within the API response behind the scenes.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/x385f6RkTTdgluIktSTi_UsingAPI6.PNG)

As you can see, none of the interesting sensitive information can be found in the community forum. However, if we intercept the API requests that populate the recent posts to the forum we will find that the provider is sending over a full data object depending on the client to filter out the sensitive information. Depending on the client to filter information will not stop us from being able to capture sensitive data.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/DM563qiCTrCUoZGtZa7X_UsingAPI7.PNG)

Using Burp Suite's Repeater for the GET request to /community/api/v2/community/posts/recent reveals all of the sensitive data we were hoping to find. This instance of Excessive Data Exposure reveals usernames, emails, IDs, and vehicle IDs all of which may prove handy in additional attacks.

Now you should have a pretty good idea about how to start using an API as it was intended. It really helps to how an API will respond to failed and successful requests. Get an idea of the various functions intended by the API, so that you can better understand where to focus your attacking efforts. Remember that at this stage, you can already discover crucial vulnerabilities.

# Scanning APIs

Once you have discovered an API and used it as it was intended, you can proceed to perform a baseline vulnerability scan. A good reason to perform your testing in this order is to avoid having any of your scans set off a security control like a WAF that results in your traffic being blocked.  Ideally, a vulnerability scan will help you find weaknesses that you can then test, confirm, and exploit. Realistically, vulnerability scans are rarely 100% accurate and rarely if ever, identify all of the issues present. So, we will not use vulnerability scans to determine all of the weaknesses an app has, but instead, we will use the scan results to help guide and focus our testing.

When vulnerability scans are applied generically to web APIs the most common outcome is to receive false-negative results. False-negative results take place when vulnerability scans do not detect or report existing problems. For most organizations, this can result in a false sense of security because the scans came back with no evidence of any present weaknesses. The current state of many free and paid vulnerability scanners is that they were not designed for web APIs and often do not detect many of the vulnerabilities listed on the OWASP API Security Top 10. These vulnerability scanners, however, do a decent job at detecting [API7:2019 Security Misconfiguration](https://github.com/OWASP/API-Security/blob/master/2019/en/src/0xa7-security-misconfiguration.md). Security misconfiguration includes missing system patches, unnecessary features enabled, lack of secure transit encryption, weak security headers, verbose error messages, and Cross-Origin Resource Sharing (CORS) policy misconfigurations. In this module, our focus will be on configuring OWASP ZAP to thoroughly discover API security misconfigurations and to get the most out of a vulnerability scanner.

First, if you'd like to see how a generic scan can result in false-negative results, you can experience this for yourself. You can do this by scanning crAPI with Nikto, a web application vulnerability scanner. Open a terminal and run:

$nikto -h [http://crapi.apisec.ai](http://crapi.apisec.ai/)

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/1JfV14LsRYGj7k5utleN_Niktoscan.png)

If you run this scan then you should notice a couple of things. The Nikto scan discloses that the web app server is running the OpenResty platform with the version. In addition, X-Frame-Options and X-XSS-Protection headers are missing or misconfigured. Besides these findings, the results are missing the gambit of API-related vulnerabilities that crAPI contains. Keep in mind that the crAPI application was designed with all of the OWASP API Security Top 10 vulnerabilities.

# **Scanning APIs with OWASP ZAP**

Like Nikto, a generic automated OWASP ZAP scan will run into the same problems with false-negative findings. However, you can configure a ZAP scan to better work with web APIs. The first thing that we will do is to run an unauthenticated scan of the attack surface. We can plug in the target URL, but to improve these results and to make sure we hit everything, we can import the target's API specification file.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/3QhpAQLTQqG1Sb8MPTft_ScanningAPIs1.PNG)

You can do this by selecting import and choosing the relevant specification file. For crAPI, select the specs.yml file that we made when reverse engineering crAPI and make sure to add the URL that you are expecting (http://crapi.apisec.ai or http://127.0.0.1:8888).

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/oEsdxfxQGiPyRW2Nxobg_ScanningAPIs2.PNG)

After adding the file path and target URL select import. Now you can see the Sites window filled with the target's endpoints and API requests.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/2APuCeXwS6S6Npz32QhO_ScanningAPIs3.PNG)

You can right-click on the root, in this instance [http://crapi.apisec.ai,](http://crapi.apisec.ai,/) and choose to do an active scan. Once this scan completes you can find the results under the Alerts tab. Here you will typically find security misconfiguration affecting the target host.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/tXyxubIySxasnFlUXUtw_ScanningAPIs5.PNG)

The next step that you can take to improve the scan results is to perform authenticated scanning. The easiest way to perform authenticated scanning is to use the Manual Explore option.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/FMTNLZyOSGKGoPJABPJ4_ScanningAPIs7.PNG)

Set the URL to your target, make sure the HUD is enabled, and choose "Launch Browser".

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/Ac8Y0rHqSqile9WdaoWu_ScanningAPIs8.PNG)

Once you choose to manually explore, you should see the HUD launch in a browser. Here you can select "Continue to your target". Similar, to the work we did during the "Reverse Engineering APIs" module, we will go through and use the web application as an end-user.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/967oh1osRLeGnyntOPWb_ScanningAPIs9.PNG)

Perform all of those actions again. Sign up for another account, sign in, and use the various features. Make sure to use the HUD to perform certain actions. At the top left of the HUD, you can add your target to the scope of testing. Once you have authenticated to the app and performed a baseline set of actions you can perform an active scan.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/WkGjSKhARZKFnh8sCMho_ScanningAPIs11.PNG)

On the right-hand side of the HUD, you can set the Attack Mode to On. This will begin scanning and performing authenticated testing of the target. Depending on the scale of the web application that you are targeting, this scan could take a while.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/xZQvLSUcSQue7u0Gzmew_ScanningAPIs12.PNG)

As you can see above, there are many more interesting findings than the initial generic scan that was run. From here you should investigate the results. Work through them and determine which are actual findings and which are false positives. One important thing to note is that crAPI is vulnerable to all of the OWASP API Security Top 10. Based on the current findings from scanning we can see that Security Misconfigurations and Injection vulnerabilities may be present. Even with authenticated scanning, we are missing many of the other vulnerabilities present in the app, which is why we will need to build out additional testing techniques in upcoming modules. Next, we will focus our testing efforts on the top two OWASP API Security Top 10 topics, authentication, and authorization.

# API Authentication Attacks

### Classic Authentication Attack

Classic authentication attacks include techniques that have been around for a while like brute forcing and password spraying. Both of these attacks are different methods of guessing username and password combinations. These are vulnerabilities that are inherent anytime basic authentication is deployed. To authenticate using this basic authentication, the consumer issues a request containing a username and password, then the provider performs a check to make sure that the combination matches records stored in a database. As we know, RESTful APIs do not maintain a state, so if the API were to leverage basic authentication across all endpoints, then a username and password would have to be issued every time. Instead, the provider may leverage basic authentication once using an authentication portal, then upon providing the correct credentials, a token would be issued to be used in subsequent requests. Let’s check out crAPI for an example of this process.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/AwLw7oI5TzeeirccxdXT_AuthenticationAttacks1.PNG)

Thus, providers typically use basic authentication only as part of an initial login process. This is exactly what we have seen with crAPI. Following a successful POST request to /identity/api/auth/login users are provided with a Bearer Token. The classic authentication attacks in this section include password brute-force attacks with base64 encoding, password reset brute-force, and password spraying.

## **Password Brute-Force Attacks**

One of the more straightforward methods for gaining access to an API is performing a brute-force attack. Brute-forcing an API’s authentication is not very different from any other brute-force attack, except you’ll send the request to an API endpoint, the payload will often be in JSON, and the authentication values may require base64 encoding.

One of the best ways to fine-tune your brute-force attack is to generate passwords specific to your target.  To do this, you could leverage the information revealed in an excessive data exposure vulnerability, like the one you found in the Endpoint Analysis module, to compile a username and password list. The excess data could reveal technical details about the user’s account, such as whether the user was using multifactor authentication, whether they had a default password, and whether the account has been activated. If the excess data involved information about the user, you could feed it to tools that can generate large, targeted password lists for brute-force attacks.

For more information about creating targeted password lists, check out the Mentalist app (https://github.com/sc0tfree/mentalist) or the Common User Passwords Profiler (https://github.com/Mebus/cupp).

To actually perform the brute-force attack once you have a suitable wordlist, you can use tools such as Burp Suite’s Intruder or Wfuzz. The following example uses Wfuzz with an old, well-known password list, rockyou.txt. Rockyou.txt does come as a standard wordlist on Kali Linux, however, it is currently zipped with Gzip. You can unzip rockyou.txt using the following command.

$gzip -d /usr/share/wordlists/rockyou.txt.gz

Before, we dive into using WFuzz let's treat this like a real test. Earlier we discovered an excessive data exposure vulnerability with a request to the crAPI community forum. Let's gather email addresses from that request to perform a password.

To start out with WFuzz, access the help menu and read the options to get a better idea of what can be done with this tool.

$wfuzz --help

Important items to note for API testing include the headers option (-H), hide responses (--hc, --hl, --hw, --hh), and POST body requests (-d). All of these will be useful when fuzzing APIs. We will need to specify the content-type headers for APIs which will be 'Content-Type: application/json' for crAPI. The POST body for the crAPI login is '{"email":"a@email.com","password":"FUZZ"}'. Notice that FUZZ is the WFuzz attack position. Finally, if we are getting many irrelevant responses we can clean up our attack by hiding certain responses. For the following brute force attack, it is recommended that you only attack your own lab environment. If many students attempted brute force attacks against the hosted labs, it could cause the apps to fail.

$ wfuzz -d '{"email":"a@email.com","password":"FUZZ"}' -H 'Content-Type: application/json' -z file,/usr/share/wordlists/rockyou.txt -u http://127.0.0.1:8888/identity/api/auth/login --hc 405 ================================================================== ID Response Lines Word Chars Payload ================================================================== 000000007: 200 0 L 1 W 225 Ch "Password1!" 000000005: 400 0 L 34 W 474 Ch "win"

The -d option allows you to fuzz content that is sent in the body of a POST request. The curly brackets that follow contain the POST request body. To discover the request format used in this example, I attempted to authenticate to a web application using a browser, and then I captured the authentication attempt and replicated its structure here. In this instance, the web app issues a POST request with the parameters "email" and "password". The structure of this body will change for each API. In this example, you can see that we’ve specified a known email and used the FUZZ parameter as the password. The --hc option hides responses with certain response codes. This is useful if you often receive the same status code, word length, and character count in many requests. If you know what a typical failure response looks like for your target, there is no need to see hundreds or thousands of that same response. The –hc option helps you filter out the responses you don’t want to see. In the tested instance, the typical failed request results in a 405 status code, but this may also differ with each API. Next, the -H option lets you add a header to the request. Some API providers may respond with an HTTP 415 Unsupported Media Type error code if you don’t include the Content -Type:application/json header when sending JSON data in the request body. Once your request has been sent, you can review the results on the command line. If your –hc Wfuzz option has worked out, your results should be fairly easy to read. Otherwise, status codes in the 200s and 300s should be good indicators that you have successfully brute-forced credentials.

## **Password Spraying**

Many security controls could prevent you from successfully brute-forcing an API’s authentication. A technique called password spraying can evade many of these controls by combining a long list of users with a short list of targeted passwords. Let’s say you know that an API authentication process has a lockout policy in place and will only allow 10 login attempts. You could craft a list of the nine most likely passwords (one less password than the limit) and use these to attempt to log in to many user accounts. When you’re password spraying, large and outdated wordlists like rockyou.txt won’t work. There are way too many unlikely passwords in such a file to have any success. Instead, craft a short list of likely passwords, taking into account the constraints of the API provider’s password policy, which you can discover during reconnaissance. Most password policies likely require a minimum character length, upper- and lowercase letters, and perhaps a number or special character. Use passwords that are simple enough to guess but complex enough to meet basic password requirements (generally a minimum of eight characters, a symbol, upper- and lowercase letters, and a number). The first type includes obvious passwords like QWER!@#$, Password1!, and the formula Season+Year+Symbol (such as Winter2021!, Spring2021?, Fall2021!, and Autumn2021?). The second type includes more advanced passwords that relate directly to the target, often including a capitalized letter, a number, a detail about the organization, and a symbol. Here is a short password-spraying list I might generate if I were attacking an endpoint for Twitter employees: Summer2022! Spring2022! QWER!@#$ March212006! July152006! Twitter@2022 JPD1976! [Dorsey@2022](mailto:Dorsey@2021)

The real key to password spraying is to maximize your user list. The more usernames you include, the higher your odds of compromising a user account with a bad password. Build a user list during your reconnaissance efforts or by discovering excessive data exposure vulnerabilities. Let's revisit the crAPI excessive data exposure that we discovered earlier in the course.

Postman Screenshot of Excessive Data Exposure.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/DoOMnCRoTMKs3JW0ny1Q_classicauth8.PNG)

At the top right of the Postman Response pane, select "Save this Response" and then "Save to a file". Save the response containing an excessive data exposure as "response.json".

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/XzF8TuRxmP2jJnJUx0wI_classicauth9.PNG)

Next, you can use the power of grep and regular expressions to pull emails from the saved JSON response.

$grep -oe "[a-zA-Z0-9._]\+@[a-zA-Z]\+.[a-zA-Z]\+" response.json

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/Caok1enSA2ImyEnx14sQ_classicauth1.PNG)

Using this grep command should pull everything out of a file that resembles an email. Then you can save those captured emails to a file and use that file as a payload in Burp Suite. You can then use a command like **sort -u** to get rid of duplicate emails.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/Vuru9fDrTPCumgiKmLgr_classicauth10.PNG)

In Burp Suite’s Intruder, you can set up this attack in a similar manner to the standard brute-force attack, except you’ll use both a list of users and a list of passwords. Choose the cluster bomb attack type and set the attack positions around the username and password as seen below.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/5Mn8meMnSrS0uOknheYG_classicauth2.PNG)

Notice that the first attack position is set to replace the username in front of @email.com, which you can do if you’ll only be testing for users within a specific email domain. Next, add the list of collected users as the first payload set and a short list of passwords as your second payload set. Once your payloads are configured, you’re ready to perform a password-spraying attack.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/tmVBtpaRS7yI3pB4i66i_classicauth11.PNG)

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/XdFiVq8dQGuLAp7PGPAM_classicauth4.PNG)

When you’re analyzing the results, it helps if you have an idea of what a standard successful login looks like. If you’re unsure, search for anomalies in the lengths and response codes returned. Most web applications respond to successful login results with an HTTP status code in the 200s or 300s and the response length of successful responses will be different than unsuccessful responses.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/BROE3AStTqWI3C73sAHK_classicauth5.PNG)

You can see a successful password-spraying attempt that has two anomalous features: a status code of 200 and a response length of 698. To help spot anomalies using Intruder, you can sort the results by status code or response length.

### **Note on Base64 Encoding**

Some APIs will base64-encode authentication payloads sent in an API request. There are many reasons to do this, but it’s important to know that security is not one of them. You can easily bypass this minor inconvenience. If you test an authentication attempt and notice that an API is encoding to base64, it is likely making a comparison to base64-encoded credentials on the backend. This means you should adjust your fuzzing attacks to include base64 payloads using Burp Suite Intruder, which can both encode and decode base64 values.

You can decode them by highlighting the payload, right-clicking, and selecting Base64-decode (or the shortcut CTRL-SHIFT-B). This will reveal the payload so that you can see how it is formatted. To perform, say, a password-spraying attack using base64 encoding, begin by selecting the attack positions. In this case, we’ll select the base64- encoded password from the request. Next, add the payload set; we’ll use the passwords listed in the previous section. Now, in order to encode each password before it is sent in a request, we must use a payload-processing rule. Under the Payloads tab is an option to add such a rule. Select Add>Encoded>Base64-encode and then click OK. Your payload-processing window should look like this.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/tCAhOd1QlGRxphRs1oBA_classicauth6.PNG)

Once your payload processing rule is in place, you can perform an attack as normal. When you are reviewing anomalous results, you can simply use CTRL+Shift+B or use the convert selection option by highlighting and right-clicking the payload.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/wQ2ZI4B0S3u8KiWbE9lZ_classicauth7.PNG)

In the next section, we will focus our efforts on analyzing and attacking API Tokens.

### API Token Attacks

## **Token Analysis**

When implemented correctly, tokens can be an excellent tool that can be used to authenticate and authorize users. However, if anything goes wrong when generating, processing, or handling tokens, they can become our keys to the kingdom.

In this section, we will take a look at the process that can be used with Burp Suite to analyze tokens. Using this process can help you identify predictable tokens and aid in token forgery attacks. To analyze tokens we will take our crAPI API authentication request and proxy it over to Burp Suite.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/nd3qXFW7QH6FbSKD9JXf_APIToken9.PNG)

Next, you will need to right-click on the request and forward it over to Sequencer. In Sequencer, we will be able to have Burp Suite send thousands of requests to the provider and perform an analysis of the tokens received in response. This analysis could demonstrate that a weak token creation process is in use.

Navigate to the Sequencer tab and select the request that you forwarded. Here we can use the Live Capture to interact with the target and get live tokens back in a response to be analyzed. To make this process work, you will need to define the custom location of the token within the response. Select the Configure button to the right of Custom Location. Highlight the token found within quotations and click OK.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/9Wong3kdSiUldvMBVsa8_APIToken10.PNG)

Once the token has been defined then you can Start live capture. At this point, you can either wait for the capture to process thousands of requests or use the Analyze now button to see results sooner.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/YyDwKWp3SaaNZ6Jk8G1i_APIToken11.PNG)

Using Sequencer against crAPI shows that the tokens generated seem to have enough randomness and complexity to not be predictable. Just because your target sends you a seemingly complex token, does not mean that it is safe from token forgery. Sequencer is great at showing that some complex tokens are actually very predictable. If an API provider is generating tokens sequentially then even if the token were 20 plus characters long, it could be the case that many of the characters in the token do not actually change. Making it easy to predict and create our own valid tokens.

To see what an analysis of a poor token generation process looks like perform an analysis of the "bad tokens" located on the Hacking APIs Github repository ([https://raw.githubusercontent.com/hAPI-hacker/Hacking-APIs/main/bad_tokens](https://raw.githubusercontent.com/hAPI-hacker/Hacking-APIs/main/bad_tokens)). This time around we will use the Manual load option, to provide our own set of bad tokens.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/ITRLN0MQNegrXA6cn97r_APIToken12.PNG)

If you use the Analyze Now button and let Sequencer run its analysis. Check out the Character-level analysis which reveals that the 12 alpha-numeric token uses the same characters for the first 8 positions. The final three characters of these tokens have some variation. Taking note of the final three characters of these tokens you can notice that the possibilities consist of two lower-case letters followed by a number (aa#). With this information, you could brute-force all of the possibilities in under 7,000 requests. Then you can take these tokens and make requests to an endpoint like */identity/api/v2/user/dashboard.*  Based on the results of your requests, search through the usernames and emails to find users that you would like to attack.

## **JWT Attacks**

JSON Web Tokens (JWTs) are one of the most prevalent API token types because they operate across a wide variety of programming languages, including Python, Java, Node.js, and Ruby. These tokens are susceptible to all sorts of misconfiguration mistakes that can leave the tokens vulnerable to several additional attacks. These attacks could provide you with sensitive information, grant you basic unauthorized access, or even administrative access to an API. This module will guide you through a few attacks you can use to test and break poorly implemented JWTs.

JWTs consist of three parts, all of which are base64 encoded and separated by periods: the header, payload, and signature. JWT.io is a free web JWT debugger that you can use to check out these tokens. You can spot a JWT because they consist of three periods and begin with "ey". They begin with "ey" because that is what happens when you base64 encode a curly bracket followed by a quote, which is the way that a decoded JWT always begins.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/ECaM1KVCSFK59Lk84dh3_APIToken2.PNG)

Here you can see the example JWT:

eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6ImhhcGloYWNrZXIiLCJpYXQiOjE1MTYyMzkwMjJ9.U1Agy_OvIULTQwBrYx0dlWVzcBqcI90no2pAcoy4-uo

We can take this JWT and decode the individual parts. The header is the first segment. You can simply echo that part of the token and base64 decode it to see what the header contains:

**`$ echo eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9|base64 -d{"alg":"HS256","typ":"JWT"}`**

The algorithm (alg) used for this token is HS256 and the token type (typ) is JWT. Next, we can do the same with the payload:

**`$ echo eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6ImhhcGloYWNrZXIiLCJpYXQiOjE1MTYyMzkwMjJ9|base64 -d{"sub":"1234567890","name":"hapihacker","iat":1516239022}`**

Now, this token only contains the subject (sub), the username (name), and the time that the token was issued at (iat). More information could be contained in the body, in fact, whatever the provider would like to add here they can. A JWT body can be a great source of information disclosure. Consider a JWT that contains the username, email, password, and role all hiding behind one base64 decode. If we run the same command for the JWT signature we will see the following:

**`$ echo U1Agy_OvIULTQwBrYx0dlWVzcBqcI90no2pAcoy4-uo|base64 -dSP base64: invalid input`**

Finally, the signature is the output of HMAC used for token validation and generated with the algorithm specified in the header. To create the signature, the API base64-encodes the header and payload and then applies the hashing algorithm and a secret. The secret can be in the form of a password or a secret string, such as a 256-bit key. Without knowledge of the secret, the payload of the JWT will remain encoded.

**`HMACSHA256( base64UrlEncode(header) + "." + base64UrlEncode(payload), secret)`**

If you would like to learn more about JWTs, check out [https://jwt.io/introduction](https://jwt.io/introduction).

If you’ve captured another user’s JWT or maybe discovered a leaked token during reconnaissance, you can try sending it to the provider and pass it off as your own. There is a chance that the leaked token has not yet expired and can be passed off as your own. You could use this token in requests to gain access to the API as the user specified in the payload. More commonly, though, you’ll obtain a JWT by authenticating to an API and the provider will respond with a JWT. In order to obtain a JWT from crAPI, we will need to leverage our authentication request.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/KLm0YxhSJqLNA996u7NQ_APIToken1.PNG)

The token we receive back from crAPI doesn't necessarily say "JWT: anywhere, but we can easily spot the "ey" and three segments separated by periods. The first step to attacking a JWT is to decode and analyze it. If we take this token and add it to the JWT debugger this is what we see.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/GIea6TT5Q6qAwky9M56n_APIToken3.PNG)

In this example, we can see the algorithm is set to HS512, the email of our account, iat, exp, and the current signature is invalid. If we were able to compromise the signature secret then we should be able to sign our own JWT and potentially gain access to any valid user's account. Next, we will learn how to use automated tooling to help us with various JWT attacks.

## **Automating JWT attacks with JWT_Tool**

The JSON Web Token Toolkit or JWT_Tool is a great command line tool that we can use for analyzing and attacking JWTs. With this, we will be able to analyze JWTs, scan for weaknesses, forge tokens, and brute-force signature secrets. If you followed along during the setup module you should be able to use the jwt_tool alias to see the usage options:

$jwt_tool

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/qj5xhsy1REKeeXMFhe8R_APIToken6.PNG)

Some of the options to note include:

- h to show more verbose help options
- t to specify the target URL
- M to specify the scan mode
    - pb to perform a playbook audit (default tests)
    - at to perform all tests
- rc to add request cookies
- rh to add request headers
- rc to add request cookies
- pd to add POST data

Also, make sure to check out the Wiki for more information [https://github.com/ticarpi/jwt_tool/wiki](https://github.com/ticarpi/jwt_tool/wiki) .

To perform a baseline analysis of a JWT simply use jwt_tool along with your captured JWT to see information similar to the JWT Debugger.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/dXvREvE5QPqQsuYj27Nu_APIToken4.PNG)

As you can see, jwt_tool makes the header and payload values nice and clear. Additionally, jwt_tool has a “Playbook Scan” that can be used to target a web application and scan for common JWT vulnerabilities. You can run this scan by using the following:

**`$ jwt_tool -t http://target-name.com/ -rh "Authorization: Bearer JWT_Token" -M pb`**

In the case of crAPI we will run:

**`$jwt_tool -t http://127.0.0.1:8888/identity/api/v2/user/dashboard -rh "Authorization: Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ1c2VyYWFhQGVtYWlsLmNvbSIsImlhdCI6MTY1ODUwNjQ0NiwiZXhwIjoxNjU4NTkyODQ2fQ.BLMqSjLZQ9P2cxcUP5UCAmFKVMjxhlB4uVeIu2__6zoJCJoFnDqTqKxGfrMcq1lMW97HxBVDnYNC7eC-pl0XYQ" -M pb`**

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/6kF9yBftQIKxVSbWRZff_APIToken5.PNG)

During this scan for common misconfiguration, JWT_Tool tested the various claims found within the JWT (sub, iat, exp)

### **The None Attack**

If you ever come across a JWT using "none" as its algorithm, you’ve found an easy win. After decoding the token, you should be able to clearly see the header, payload, and signature. From here, you can alter the information contained in the payload to be whatever you’d like. For example, you could change the username to something likely used by the provider’s admin account (like root, admin, administrator, test, or adm), as shown here: { "username": "root", "iat": 1516239022 } Once you’ve edited the payload, use Burp Suite’s Decoder to encode the payload with base64; then insert it into the JWT. Importantly, since the algorithm is set to "none", any signature that was present can be removed. In other words, you can remove everything following the third period in the JWT. Send the JWT to the provider in a request and check whether you’ve gained unauthorized access to the API.

### **The Algorithm Switch Attack**

There is a chance the API provider isn’t checking the JWTs properly. If this is the case, we may be able to trick a provider into accepting a JWT with an altered algorithm. One of the first things you should attempt is sending a JWT without including the signature. This can be done by erasing the signature altogether and leaving the last period in place, like this: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJoYWNrYXBpcy5pbyIsImV4cCI6IDE1ODM2Mzc0ODgsInVzZ XJuYW1lIjoiU2N1dHRsZXBoMXNoIiwic3VwZXJhZG1pbiI6dHJ1ZX0. If this isn’t successful, attempt to alter the algorithm header field to "none". Decode the JWT, update the "alg" value to "none", base64-encode the header, and send it to the provider. To simplify this process, you can also use the jwt_tool to quickly create a token with the algorithm switched to none.

**`$ jwt_tool eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ1c2VyYWFhQGVtYWlsLmNvbSIsImlhdCI6MTY1ODg1NTc0MCwiZXhwIjoxNjU4OTQyMTQwfQ._EcnSozcUnL5y9SFOgOVBMabx_UAr6Kg0Zym-LH_zyjReHrxU_ASrrR6OysLa6k7wpoBxN9vauhkYNHepOcrlA -X a`**

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/sgoingGnRZ2Y7RwYu5xF_APIToken7.PNG)

```

```

If successful, pivot back to the None attack. However, if we try this with crAPI, the attack is not successful. You can also use JWT_Tool to create a none token.

A more likely scenario than the provider accepting no algorithm is that they accept multiple algorithms. For example, if the provider uses RS256 but doesn’t limit the acceptable algorithm values, we could alter the algorithm to HS256. This is useful, as RS256 is an asymmetric encryption scheme, meaning we need both the provider’s private key and a public key in order to accurately hash the JWT signature. Meanwhile, HS256 is symmetric encryption, so only one key is used for both the signature and verification of the token. If you can discover and obtain the provider’s RS256 public key then switch the algorithm from RS256 to HS256, there is a chance you may be able to leverage the RS256 public key as the HS256 key.  It uses the format jwt_tool TOKEN -X k -pk public-key.pem, as shown below. You will need to save the captured public key as a file on your attacking machine (You can simulate this attack by taking any public key and saving it as public-key-pem).

$ jwt_tool eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ1c2VyYWFhQGVtYWlsLmNvbSIsImlhdCI6MTY1ODg1NTc0MCwiZXhwIjoxNjU4OTQyMTQwfQ._EcnSozcUnL5y9SFOgOVBMabx_UAr6Kg0Zym-LH_zyjReHrxU_ASrrR6OysLa6k7wpoBxN9vauhkYNHepOcrlA -X k -pk public-key-pem

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/EjdckbmdRds9jtFtPQuV_APIToken8.PNG)

Once you run the command, JWT_Tool will provide you with a new token to use against the API provider. If the provider is vulnerable, you’ll be able to hijack other tokens, since you now have the key required to sign tokens. Try repeating the process, this time creating a new token based on other API users (other discovered users or generic admin users).

### **JWT Crack Attack**

The JWT Crack attack attempts to crack the secret used for the JWT signature hash, giving us full control over the process of creating our own valid JWTs. Hash-cracking attacks like this take place offline and do not interact with the provider. Therefore, we do not need to worry about causing havoc by sending millions of requests to an API provider. You can use JWT_Tool or a tool like Hashcat to crack JWT secrets. You’ll feed your hash cracker a list of words. The hash cracker will then hash those words and compare the values to the original hashed signature to determine if one of those words was used as the hash secret. If you’re performing a long-term brute-force attack of every character possibility, you may want to use the dedicated GPUs that power Hashcat instead of JWT_Tool. That being said, JWT_Tool can still test 12 million passwords in under a minute. First, let's use Crunch, a password-generating tool, to create a list of all possible character combinations to use against crAPI.

$crunch 5 5 -o crAPIpw.txt

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/i1ehRKgXTCmcjlbXPOgw_APIToken14.PNG)

We can use this password file that contains all possible character combinations created for 5 character passwords against our crAPI token. To perform a JWT Crack attack using JWT_Tool, use the following command: $ jwt_tool TOKEN -C -d /wordlist.txt The -C option indicates that you’ll be conducting a hash crack attack, and the -d option specifies the dictionary or wordlist you’ll be using against the hash. JWT_Tool will either return “CORRECT key!” for each value in the dictionary or indicate an unsuccessful attempt with “key not found in dictionary.”

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/8UQdy9aeRQ23dlWZlTIz_APIToken15.PNG)

Now that we have the correct secret key that is used to sign crAPI's tokens, we should be able can generate our own trusted tokens. To test out our new abilities, you can either create a second user account in crAPI or use an email that you have already discovered. I have created an account named "superadmin".

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/FODOQw7DTwC3kHmuja8Z_APIToken17.PNG)

You can add your user token to the JWT debugger, add the newly discovered secret, and update the "sub" claim to any email that has registered to crAPI.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/vpYghHEQ66YKkhLNVMJQ_APIToken18.PNG)

Use the token that you generated in the debugger and add it to your Postman Collection. Make a request to an endpoint that will prove your access such as GET /identity/api/v2/user/dashboard.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/ANGMgdURImqiRbga6ZBt_APIToken18.PNG)

Congrats!

# Exploiting the API Authorization

### Introduction

In this module you will learn how to test for authorization vulnerabilities including BOLA - Broken Object Level Authorization and BFLA - Broken Function Level Authorization.

An API’s authentication process is meant to validate that users are who they claim to be. An API's authorization is meant to allow users to access the data they are permitted to access. In other words, UserA should only be able to access UserA's resources and UserA should not be able to access UserB's resources. API providers have been pretty good about requiring authentication when necessary, but there has been a tendency to overlook controls beyond the hurdle of authentication. Authorization vulnerabilities are so common for APIs that the OWASP security project included two authorization vulnerabilities on its top ten list, Broken Object Level Authorization (BOLA) and Broken Function Level Authorization (BFLA).

RESTful APIs are stateless, so when a consumer authenticates to these APIs, no session is created between the client and server. Instead, the API consumer must prove their identity within every request sent to the API provider’s web server.  Authorization weaknesses are present within the access control mechanisms of an API. An API consumer should only have access to the resources they are authorized to access. BOLA vulnerabilities occur when an API provider does not restrict access to access to resources. BFLA vulnerabilities are present when an API provider does not restrict the actions that can be used to manipulate the resources of other users. I like to think of these in terms of fintech APIs. BOLA is the ability for UserA to see UserB's bank account balance and BFLA is the ability to for UserA to transfer funds from UserB's account back to UserA.

### Broken Object Level Authorization

When authorization controls are lacking or missing, UserA will be able to request UserB’s (along with many other) resources. APIs use values, such as names or numbers, to identify various objects. When we discover these object IDs, we should test to see if we can interact with the resources of other users when unauthenticated or authenticated as a different user. The first step toward exploiting BOLA is to seek out the requests that are the most likely candidates for authorization weaknesses.

When hunting for BOLA there are three ingredients needed for successful exploitation.

1. Resource ID: a resource identifier will be the value used to specify a unique resource. This could be as simple as a number, but will often be more complicated.
2. Requests that access resources. In order to test if you can access another user's resource, you will need to know the requests that are necessary to obtain resources that your account should not be authorized to access.
3. Missing or flawed access controls. In order to exploit this weakness, the API provider must not have access controls in place. This may seem obvious, but just because resource IDs are predictable, does not mean there is an authorization vulnerability present.

The third item on the list is something that must be tested, while the first two are things that we can seek out in API documentation and within a collection of requests. Once you have the combination of these three ingredients then you should be able to exploit BOLA and gain unauthorized access to resources.

## ****

## **Finding Resource IDs and Requests**

You can test for authorization weaknesses by understanding how an API’s resources are structured and then attempting to access resources you shouldn’t be able to access. By detecting patterns within API paths and parameters, you might be able to predict other potential resources. The bold resource IDs in the following API requests should catch your attention:

- GET /api/resource/**1**
- GET /user/account/find?**user_id=15**
- POST /company/account/**Apple**/balance
- POST /admin/pwreset/account/**90**

In these instances, you can probably guess other potential resources, like the following, by altering the bold values:

- GET /api/resource/**3**
- GET /user/account/find?user_id=**23**
- POST /company/account/**Google**/balance
- POST /admin/pwreset/account/**111**

In these simple examples, you’ve performed an attack by merely replacing the bold items with other numbers or words. If you can successfully access the information you shouldn’t be authorized to access, you have discovered an authorization vulnerability.

Here are a few ideas for

requests that could be good targets for an authorization test.

## ****

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/expdzRMeT7oYzCVtiZAC_Authz3.PNG)

Let’s check out crAPI and see what sorts of IDs are used to identify resources. We can do this by checking out the documentation and by making requests to the API.

## **Searching for BOLA**

First, let's think about the purpose of our target app and review the documentation. Thinking through the purpose of the app will give you a conceptual overview and help aim your sights. Ask questions like: What can you do with this app? Do you get your own profile? Can you upload files? Do you have an account balance? Is there any part of the app that has data specific to your account? Questions like these will help you search through the available requests and find a starting point for discovering requests that access resources. If we ask these questions about crAPI then you should come up with the following:

- crAPI is an application designed for new vehicle purchases. The app also allows a user to purchase items through a storefront, message other users in a public forum, and update their own user profile.
- Yes, crAPI lets users have their own profile. A user's profile contains a picture, basic user information (name, email, phone number), and a personal video.
- crAPI users have the ability to upload a profile picture and a personal video.
- Parts of the app that are specific to a user's account include
    - The user dashboard with the user's vehicle added
    - The user's profile
    - The user's past orders in the shop
    - The user's posts in the community forum

Now that we have a better idea of the purpose of the app, we should seek out requests that can provide us with relevant resources. If you remember back to the module covering Excessive Data Exposure, then there should be one request that stands out.

- **GET /identity/api/v2/videos/:id?video_id=589320.0688146055**
- **GET /community/api/v2/community/posts/w4ErxCddX4TcKXbJoBbRMf**
- **GET /identity/api/v2/vehicle/{resourceID}/location**

Note that the second request here is for public information. This request retrieves a specific request on the public crAPI forum. As far as BOLA goes, this request has the first two ingredients, but this request functions as designed by sharing public information with a group. So, no authorization is necessary for crAPI users to access this data.

## **Authorization Testing Strategy**

When searching for authorization vulnerabilities the most effective way to find authorization weaknesses is to create two accounts and perform A-B testing. The A-B testing process consists of:

1. Create a UserA account.
2. Use the API and discover requests that involve resource IDs as UserA.
3. Document requests that include resource IDs and should require authorization.
4. Create a UserB account.
5. Obtaining a valid UserB token and attempt to access UserA's resources.

You could also do this by using UserB's resources with a UserA token. In the case of the previously mentioned requests, we should make successful requests as UserA then create a UserB account, update to the UserB token, and attempt to make the requests using UserA's resource IDs. We've already been through the account creation process several times, so I will skip ahead to a request that looks interesting.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/Cw2hcLuT4a9xb7aSzjXw_Authz5.PNG)

This request looks interesting from a BOLA perspective because it is a request for a location that is based on the complex-looking vehicle ID. As UserB, I've gone through the crAPI interface and registered a vehicle. I then used the "Refresh Location" button on the web app to trigger the above request.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/J1eeUJyqS3mi2l0G1IXU_Authz6.PNG)

To make things easier for this attack capture the UserB request with Burp Suite.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/OSrAuKbdTm68zifCUqvn_Authz7.PNG)

Next, perform the BOLA attack by replacing UserB's token with UserA's token and see if you can make a successful request.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/w4M6Wsu0Rm9XXNjTFHMr_Authz8.PNG)

Success! UserA's token is able to make a successful request and capture the GPS location of UserB's car along with their vehicleLocation ID and fullName.

In the GET request to the /community/api/v2/community/posts/recent, we discovered that the forum has excessive data exposure. One sensitive piece of data that was exposed was the vehicleID. At first glance, a developer could think that an ID of this complexity (a 32 alphanumeric token) does not require authorization security controls, something along the lines of security through obscurity. However, the complexity of this token would only help prevent or delay a brute-force attack. Leveraging the earlier discovered excessive data exposure vulnerability and combining it with this BOLA vulnerability is a real pro move. It provides a strong PoC and drives home the point of how severe these vulnerabilities really are.

### Broken Function Level Authorization

Where BOLA is all about accessing resources that do not belong to you, BFLA is all about performing unauthorized actions. BFLA vulnerabilities are common for requests that perform actions of other users. These requests could be lateral actions or escalated actions. Lateral actions are requests that perform actions of users that are the same role or privilege level. Escalated actions are requests that perform actions that are of an escalated role like an administrator. The main difference between hunting for BFLA is that you are looking for functional requests. This means that you will be testing for various HTTP methods, seeking out actions of other users that you should not be able to perform.

If you think of this in terms of a social media platform, an API consumer should be able to delete their own profile picture, but they should not be able to delete other users' profile pictures. The average user should be able to create or delete their own account, but they likely shouldn't be able to perform administrative actions for other user accounts. For BFLA we will be hunting for very similar requests to BOLA.

1. Resource ID: a resource identifier will be the value used to specify a unique resource.
2. Requests that perform authorized actions. In order to test if you can access another update, delete, or otherwise alter other the resources of other users.
3. Missing or flawed access controls. In order to exploit this weakness, the API provider must not have access controls in place.

Notice that the hunt for BFLA looks familiar, the main difference is that we will be seeking out functional requests. When we are thinking of CRUD (create, read, update, and delete), BFLA will mainly concern requests that are used to update, delete, and create resources that we should not be authorized to. For APIs that means that we should scrutinize requests that utilize POST, PUT, DELETE, and potentially GET with parameters.  We will need to search through the API documentation and/or collection for requests that involve altering the resources of other users. So, if we can find requests that create, update, and delete resources specified by a resource ID then we will be on the right track. If the API you are attacking includes administrative requests or even separate admin documentation, then those will be key to see if you are able to successfully request those admin actions as a non-admin user.

Let's return to our crAPI collection to see which requests are worth testing for BFLA. The first three requests I found in our collection were these:

- **POST /workshop/api/shop/orders/return_order?order_id=5893280.0688146055**
- **POST /community/api/v2/community/posts/w4ErxCddX4TcKXbJoBbRMf/comment**
- **PUT /identity/api/v2/user/videos/:id**

When attacking sometimes you will need to put on your black hat thinking cap and determine what can be accomplished by successful exploitation. In the POST request to return an order, a successful exploit of this would result in having the ability to return anyone's orders. This could wreak havoc on a business that depends on sales with a low return rate. An attacker could cause a fairly severe disruption to the business. In the PUT request, there could be the potential to create, update, delete any user's videos. This would be disruptive to user accounts and cause a loss of trust in the security of the organization. Not to mention the potential social engineering implications, imagine an attacker being able to upload videos as any other user on whichever social media platform.

The purpose of the **POST /community/api/v2/community/posts/w4ErxCddX4TcKXbJoBbRMf/comment** request is to add a comment to an existing post. This will not alter the content of anyone else's post. So, while at first glance this appeared to be a potential target, this request fulfills a business purpose and does not expose the target organization to any significant risk. So, we will not dedicate any more time to testing this request.

With BFLA we will perform a very similar test to BOLA. However, we will go one step further from A-B testing. For BFLA we will perform A-B-A testing. The reason is with BFLA there is a potential to alter another user's resources. So when performing testing there is a chance that we receive a successful response indicating that we have altered another user's resources, but to have a stronger PoC we will want to verify with the victim's account. So, we make valid requests as UserA, switch out to our UserB token, attempt to make requests altering UserA's resources, and return to UserA's account to see if we were successful.

**Please take note: When successful, BFLA attacks can alter the data of other users. This means that accounts and documents that are important to the organization you are testing could be on the line. DO NOT brute force BFLA attacks, instead, use your secondary account to safely attack your own resources. Deleting other users' resources in a production environment will likely be a violation of most rules of engagement for bug bounty programs and penetration tests.**

The two requests that look interesting for a BFLA attack include the return order request and the PUT request to update the video names. Both of these requests should require authorization to access resources that belong to the given user. Let's focus on the request to update video names.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/fxM3prtBSzKWiBfCH36I_Authz9.PNG)

In the captured request we can see that UserA's video is specified by the resource ID "757".

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/grUU8iWLTnG6dNaMKMPp_Authz10.PNG)

Now if we change the request so that we are using UserB's token and attempt to update the video name, we should be able to see if this request is vulnerable to a BFLA attack.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/tBYOcg0KRhi3DQENvK15_Authz11.PNG)

As we can see in the attack, the API provider response is strange. Although we requested to update UserA's video, the server issued a successful response. However, the successful response indicated that UserB updated the name to the video identified as 758, UserB's video. So, this request does not seem to be vulnerable even though the response behavior was strange. Strange behavior from an app response is always worth further investigation. We should investigate other request methods that can be used for this request.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/TAMib5qQmaVM8omLOEjk_Authz12.PNG)

Replacing PUT with DELETE illicit's a very interesting response, "This is an admin function. Try to access the admin API". In all of our testing, up to this point, we have not come across an admin API, so this is really intriguing. If we analyze the current request **DELETE /identity/api/v2/user/videos/758** there does seem like one obvious part of the path that we could alter. What if we try updating the request to DELETE /identity/api/v2/**admin**/videos/758, so that we replace "user" with "admin"?

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/0QWlHfabSD2AxT7QJQYz_Authz13.PNG)

Success! We have now discovered an admin path and we have exploited a BFLA weakness by deleting another user's video.

Congratulations on performing successful authorization testing and exploitation. This attack is so great because the impact is often severe, while the technique is pretty straightforward. Authorization vulnerabilities continue to be the most common API vulnerabilities, so be vigilant in testing for these.

# Improper Asset Management

In the Analyzing API Endpoints module, we created a Postman collection for crAPI. In this module, we will use this collection to test for Improper Assets Management.

Testing for Improper Assets Management is all about discovering unsupported and non-production versions of an API. Often times an API provider will update services and the newer version of the API will be available over a new path like the following:

- api.target.com/v3
- /api/v2/accounts
- /api/v3/accounts
- /v2/accounts

API versioning could also be maintained as a header:

- *Accept: version=2.0*
- *Accept api-version=3*

In addition versioning could also be set within a query parameter or request body.

- /api/accounts?ver=2
- POST /api/accounts{"ver":1.0,"user":"hapihacker"}

In these instances, earlier versions of the API may no longer be patched or updated. Since the older versions lack this support, they may expose the API to additional vulnerabilities. For example, if v3 of an API was updated to fix a vulnerability to injection attacks, then there are good odds that requests that involve v1 and v2 may still be vulnerable.

Non-production versions of an API include any version of the API that was not meant for end-user consumption. Non-production versions could include:

- api.test.target.com
- api.uat.target.com
- beta.api.com
- /api/private
- /api/partner
- /api/test

The discovery of non-production versions of an API might not be treated with the same security controls as the production version. Once we have discovered an unsupported version of the API, we will test for additional weaknesses. Similar to unsupported software vulnerabilities, improper assets management vulnerabilities are an indication that there is a greater chance for weaknesses to be present. Finding versions that are not included in API documentation will be at best a vulnerability for insufficient technical documentation ([CWE-1059](https://cwe.mitre.org/data/definitions/1059.html)) and at worst a gateway to more severe findings and the compromise of the provider.

**If you haven’t done so already, build a crAPI Postman collection and obtain a valid token. See the Setup module for instructions.**

# **Finding Improper Assets Management Vulnerabilities**

You can discover mass assignment vulnerabilities by finding interesting parameters in API documentation and then adding those parameters to requests. Look for parameters involved in user account properties, critical functions, and administrative actions. Intercepting API requests and responses could also reveal parameters worthy of testing. Additionally, you can guess parameters or fuzz them in API requests that accept user input. I recommend seeking out registration processes that allow you to create and/or edit account variables.

# **Improper Assets Management Testing**

Now we can start by fuzzing requests across the entire API for the presence of other versions. Then we will pivot to focusing our testing based on our findings. When it comes to Improper Assets Management vulnerabilities, it is always a good idea to test from both unauthenticated and authenticated perspectives.

1. Understand the baseline versioning information of the API you are testing. Make sure to check out the path, parameters, and headers for any versioning information.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/S72WcsuQbeN8lqXzc46C_IAM1.PNG)
    
2. To get better results from the Postman Collection Runner, we’ll configure a test using the Collection Editor. Select the crAPI collection options, choose Edit, and select the Tests tab. Add a test that will detect when a status code 200 is returned so that anything that does not result in a 200 Success response may stick out as anomalous. You can use the following test:`pm.test("Status code is 200", function () { pm.response.to.have.status(200); })`
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/8vpiMIOTSJCbTvYQywkr_IAM2.PNG)
    
3. Run an unauthenticated baseline scan of the crAPI collection with the Collection Runner. Make sure that "Save Responses" is checked as seen below.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/jUdhPEQdQymPkG21pimA_IAM6.PNG)
    
4. Review the results from your unauthenticated baseline scan to have an idea of how the API provider responds to requests using supported production versioning.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/z5SzbIF0RkGh5tcV9b4m_IAM5.PNG)
    
5. Next, use "Find and Replace" to turn the collection's current versions into a variable. Make sure to do this for all versions, in the case of crAPI that means **v2** and **v3**. Type the current version into "Find", update "Where" to the targeted collection, and update "Replace With" to a variable.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/bGq8FL27ST25xkG7YL3n_IAM3.PNG)
    
6. Open Postman and navigate to the environmental variables (use the eye icon located at the top right of Postman as a shortcut). *Note, we are using environmental variables so that this test can be accessed and reused for other API collections.* Add a variable named "ver" to your Postman environment and set the initial value to "v1". Now you can update to test for various versioning-related paths such as v1, v2, v3, mobile, internal, test, and uat. As you come across different API versions expand this list of variables.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/RVVSH2FOTtWszQ1LyPze_IAM4.PNG)
    
7. Now that the environmental variable is set to **v1** use the collection runner again and investigate the results. You can drill down into any of the requests by clicking on them. The "check-otp" request was getting a 500 response before and now it is 404. It is worth noting the difference, but when a resource does not exist, then this would actually be expected behaviour.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/ejK6mnsHT7GbCJqiKBw2_IAM7.PNG)
    
8. If requests to paths that do not exist result in Success 200 responses, we’ll have to look out for other indicators to use to detect anomalies. Update the environmental variable to v2. Although most of the requests were already set to v2, it is worth testing because check-otp was previously set to v3.Once again, run the collection runner with the new value set and review the results.The **/v2** request for **check-otp** is now receiving the same response as the original baseline request (to /v3). Since the request for **/v1** received a *404 Not Found*, this response is really interesting. Since the request to /v2 is not a 404 and instead mirrors the response to /v3, this is a good indication that we have discovered an Improper Assets Management vulnerability. This is an interesting finding, but what is the full impact of this vulnerability?
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/Z8MlwBtQ6FblK9HoA7Mg_IAM8.PNG)
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/DzWdP3b7QK6dDmS6R6nZ_IAM9.PNG)
    
9. Investigating the password reset request further will show that an HTTP 500 error is issued using the /v3 path because the application has a control that limits the number of times you can attempt to send the one-time passcode (OTP). Sending too many requests to **/v3** will result in a different 500 response.As seen from the browser:As seen using Postman:Sending the same request to /v2 also results in an HTTP 500 error, but the response is slightly larger. It may be worth viewing the two responses back in Burp Suite Comparer to see the spot differences. Notice how the response on the left has the message that indicates we guessed wrong but can try again. The request on the right indicates a new status that comes up after too many attempts have been made. The /v2 password reset request responds with the body (left):{"message":"Invalid OTP! Please try again..","status":500}The /v3 password reset request responds with the body (right):{"message":"ERROR..","status":500}The impact of this vulnerability is that /v2 does not have a limitation on the number of times we can guess the OTP. With a four-digit OTP, we should be able to brute force the OTP within 10,000 requests.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/eTYLZDY9R3GlBhLy40BY_IAM10.PNG)
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/MDRNJQk4SyaIByCujc77_IAM11.PNG)
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/B6dwiXPTKx625GCmMGg8_IAM12.PNG)
    
10. To test this it is recommended that you use WFuzz, since Burp Suite CE will be throttled. First, make sure to issue a password reset request to your target email address. On the crAPI landing page select "Forgot Password?". Then enter a valid target email address and click "Send OTP".
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/6Broj7xNSDOqiZfFYtmA_IAM13.PNG)
    
11. Now an OTP is issued and we should be able to brute force the code using WFuzz. By brute forcing this request, you should see the successful code that was used to change the target's password to whatever you would like. In the attack below, I update the password to "NewPassword1". Once you receive a successful response, you should be able to login with the target's email address and the password that you choose. `$ wfuzz -d '{"email":"hapihacker@email.com", "otp":"FUZZ","password":"NewPassword1"}' -H 'Content-Type: application/json' -z file,/usr/share/wordlists/SecLists-master/Fuzzing/4-digits-0000-9999.txt -u http://crapi.apisec.ai/identity/api/auth/v2/check-otp --hc 500`Within 10,000 requests, you’ll receive a 200 response indicating your victory. Congrats, on taking this Improper Assets Management vulnerability to the next level! Since we got sidetracked with this interesting finding during unauthenticated testing, I recommend returning to the crAPI collection and performing the same tests as an authenticated user.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/RWgS2x0SRSdu2GfFgouz_IAM14.PNG)
    

# Mass Assignment Attacks

Mass Assignment vulnerabilities are present when an attacker is able to overwrite object properties that they should not be able to. A few things need to be in play for this to happen. An API must have requests that accept user input, these requests must be able to alter values not available to the user, and the API must be missing security controls that would otherwise prevent the user input from altering data objects. The classic example of a mass assignment is when an attacker is able to add parameters to the user registration process that escalate their account from a basic user to an administrator. The user registration request may contain key-values for username, email address, and password. An attacker could intercept this request and add parameters like "isadmin": "true". If the data object has a corresponding value and the API provider does not sanitize the attacker's input then there is a chance that the attacker could register their own admin account.

# **Finding Mass Assignment Vulnerabilities**

One of the ways that you can discover mass assignment vulnerabilities by finding interesting parameters in API documentation and then adding those parameters to requests. Look for parameters involved in user account properties, critical functions, and administrative actions.

Additionally, make sure to use the API as it was designed so that you can study the parameters that are used by the API provider. Doing this will help you understand the names and spelling conventions of the parameters that your target uses. If you find parameters used in some requests, you may be able to leverage those in your mass assignment attacks in other requests.

You can also test for mass assignment blind by fuzzing parameter values within requests. Mass assignment attacks like this will be necessary when your target API does not have documentation available. Essentially, you will need to capture requests that accept user input and use tools to brute force potential parameters. I recommend starting out your search for mass assignment vulnerabilities by testing your target's account registration process if there is one. Account registration is normally one of the first components of an API that accept user input. Once registration has been tested then you will need to target other requests that accept user input. In the next few minutes, we will analyze our crAPI collection to see what other requests make for interesting targets.

The challenge with mass assignment attacks is that there is very little consistency in the parameters used between API providers. That being said, if the API provider has some method for, say, designating accounts as administrators, they may also have some convention for creating or updating variables to make a user an administrator. Fuzzing can speed up your search for mass assignment vulnerabilities, but unless you understand your target’s variables, this technique can be a shot in the dark. Let's target crAPI for mass assignment vulnerabilities.

# **Testing Account Registration for Mass Assignment**

Let's intercept the account registration request for crAPI.

1. While using a browser, submit data for creating a new account. Enter your email and password into the form. Set FoxyProxy to proxy traffic to Burp Suite.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/bBPZiv9OQXe8IPvetw56_MA1.PNG)
    
2. Submit the form to create an account and make sure the request was intercepted with Burp Suite.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/y4cAWxOLTCmWQglFjmSe_MA2.PNG)
    
3. Send the intercepted request to Repeater. Before submitting any attacks, send a successful request to have a baseline understanding of how the API responds to an expected request.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/5Dx0FR19RG2qKhtyquOg_MA3.PNG)
    
4. Next, test the registration process for mass assignment. The simplest form of this attack is to upgrade an account to an administrator role by adding a variable that the API provider likely uses to identify admins. If you have access to admin documentation then there is a good chance that the parameters will be included in the registration requests. You can then use the discovered parameters to see if the API has any security controls preventing you from escalating a user account to an admin account. If you do not have admin docus, then you can do a simple test by including other key-values to the JSON POST body, such as:"isadmin": true,"isadmin":"true","admin": 1,"admin": true, Any of these may cause the API to respond in a unique way indicating success or failure.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/uyN67TJTNe36mLlcH6Tw_MA6.PNG)
    
5. Once you attempt to a mass assignment attack on your target, you will need to analyze how the API responds. In the case of crAPI, there is no unique response when additional parameters are added to the request. There are no indications that the user account was changed in any way.
6. Another way to test more options would be to send this over to Intruder and place attack positions around the new key and value that you want to test. In our case, this would be **isadmin** and **true**. Set the attack type to cluster bomb and add payloads for positions 1 and 2. Run this and review the results for anything unique. In the case of crAPI, the registration process does not respond in any way that indicates it is vulnerable to mass assignment. There are several tools out there that can fuzz for mass assignment vulnerabilities, but since we are using Burp Suite it is worth checking out Param Miner.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/vO8TmsEPRwuXEImM3MNP_MA4.PNG)
    

# **Fuzzing for Mass Assignment with Param Miner**

1. Make sure you have Param Miner installed as an extension to Burp Suite CE.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/1JzY2pCMQbmln51Omg3X_MA5.PNG)
    
2. Right-click on a request that you would like to mine for parameters. Select Extensions > Param Miner > Guess params > Guess JSON parameter. Feel free to experiment with the other options!
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/O5NDlXkFScK12mcI3fYP_MA7.PNG)
    
3. Set the Param Miner options that you would like and click OK when you are done. Check out the unofficial documentation for an additional explanation of the options ([https://github.com/nikitastupin/param-miner-doc](https://github.com/nikitastupin/param-miner-doc)).
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/Zmv85unbTMmSzlraULBg_MA8.PNG)
    
4. Navigate back to Extender-Extensions and select Parm Miner. Next, select the Output tab and wait for results to populate this area.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/5PtTnKVNQpez4cOTgdup_MA9.PNG)
    
5. If any new parameters are detected, insert them back into the original request and fuzz for results.

# **Other Mass Assignment Vectors**

Mass assignment attacks go beyond making attempts to become an administrator. You could also use mass assignment to gain unauthorized access to other organizations, for instance. If your user objects include an organizational group that allows access to company secrets or other sensitive information, you can attempt to gain access to that group. In this example, we’ve added an "org" variable to our request and turned its value into an attack position we could then fuzz in Burp Suite:

POST /api/v1/register

- -snip--

{

"username":"hAPI_hacker",

"email":"hapi@hacker.com",

"org": "§CompanyA§",

"password":"Password1!"

}

If you can assign yourself to other organizations, you will likely be able to gain unauthorized access to the other group’s resources. To perform such an attack, you’ll need to know the names or IDs used to identify the companies in requests. If the "org" value was a number, you could brute-force its value, like when testing for BOLA, to see how the API responds.

Do not limit your search for mass assignment vulnerabilities to the account registration process. Other API functions are capable of being vulnerable. Test other endpoints used for updating accounts, updating group information, user profiles, company profiles, and any other requests where you may be able to assign yourself additional access.

# **Hunting for Mass Assignment**

As with many other API attacks, we will start hunting for this vulnerability by analyzing the target API collection. Remember, mass assignment is all about binding user input to data objects. So, when you analyze a collection that you are targeting you will need to find requests that:

- Accept user input
- Have the potential to modify objects

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/jNSLM1n3RonguO5mcPtP_MA10.PNG)

After reviewing the crAPI collection, two requests stick out to me as interesting.

**POST /workshop/api/merchant/contact_mechanic**

**POST /workshop/api/shop/orders**

Both of these requests involve user input and have the potential to modify objects.

Similar to authorization testing, I recommend creating a new collection just for mass assignment testing. This way we can test out interesting requests without damaging the original collection. Make sure when duplicating requests to update unresolved variables.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/xcmJPdWT2WVNq0P4FOQ2_MA11.PNG)

You can update unresolved variables at the collection level or by selecting "Add new variable". In this case, add the base URL variable value and select the collection that this is relevant to.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/jCYGcViJTxalESgrS8Gc_MA12.PNG)

Get a better understanding of the requests that you've targeted. Once again, use the API as it was intended. Sometimes the scope of an API security test can be so large that it helps to be reminded of the purpose of a single request. If it is not clear from the perspective of the API collection, then it can be helpful to return to the web app.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/IV6jxOZtTD6uXPvuNLSc_MA13.PNG)

When we return to the web app and intercept the requests involved with the workshop, we see that the **POST /workshop/api/shop/orders** request is involved in the process used for purchasing products from the crAPI store. This request is even more interesting now that we know what an important role it plays for the target organization.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/ZbAjAnXSTi6rDATrXIIP_MA14.PNG)

Again, we can attempt to guess key values to use in this attack or use Param Miner. Try this out. Unfortunately, neither attempts come up interesting. Although we do not have documentation for crAPI, we can learn more about "product_id" in other requests. Another request that is involved in the workshop store is **GET /workshop/api/shop/products**.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/z6H4v34wSeOQ9HW7R5uG_MA16.PNG)

Checking this request out reveals the full catalog of store products along with the product id, name, price, and image URL. If we could submit user data to products there would be a great opportunity to leverage a mass assignment attack. If we were able to submit data here we would be able to create our own products with our own prices. However, this request uses the GET method and is only for requesting data not altering it. Well, how do the crAPI administrators manage the products page? Perhaps they use PUT or POST to submit products to this endpoint and it wouldn't be the first time that we have discovered a BFLA vulnerability with this target. Always try to leverage vulnerability findings in other requests when testing a target organization. Chances are if the secure development practices of an organization fall short in one aspect of the application, they likely fall short in other areas.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/RzVK3nP5TPmwWjCrm5bN_MA17.PNG)

Sending a POST request to /workshop/api/shop/products yields very interesting results! The API responds with suggested fields for a POST request, which is an indication that this request is vulnerable to BFLA. If we are able to submit requests to alter or create store products, then we will be able to confirm that it is also vulnerable to Mass Assignment.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/8sTs3qtSSLa4fBKwXYsQ_MA18.PNG)

The request to add our own product is successful! The API responds with Status 200 and the information that was submitted. We can also navigate to the web app to verify our results.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/coDWlXwyRzGhEjTNi0YZ_MA19.PNG)

So, we can create our own product items, but how can we exploit this vulnerability to the next level? What if we were to make the price a negative number?

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/CiyWHFk0TMqY9yBUvaFp_MA20.PNG)

The API responds back with a new product that has a negative value for the price. If we go back and purchase this item now, we should see a pretty great proof of concept for this exploit in the form of a new account balance.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/vqKr7wjqRLqbHC8ikmQ4_MA21.PNG)

Congratulations on exploiting a mass assignment vulnerability! This one took experimentation, pivoting, and combining weaknesses discovered in other areas of the API. This level of analysis and effort to exploit an API vulnerability is what will help you level up your API hacking skills.

# Exploiting SSRF

Server-Side Request Forgery (SSRF) is a vulnerability that takes place when an application retrieves remote resources without validating user input. An attacker can supply their own input, in the form of a URL, to control the remote resources that are retrieved by the targeted server. When you have control over what resources a server requests then you can gain access to sensitive data or worse completely compromise a vulnerable host. SSRF is number 10 on the 2021 OWASP Top 10 list and is a growing threat to APIs.

# **SSRF Impact**

The impact of this vulnerability is that an attacker would be able to leverage the target server to perform and process requests that they supply. The attacker could supply URLs that expose private data, scan the target's internal network, or compromise the target through remote code execution. Note that bug bounties payouts for SSRF are driven based on the impact that can be demonstrated with a proof of concept. In other words, make sure to experiment with your SSRF findings and see what can be compromised with them.

To drive the point home check out the bug bounty rewards for SSRF guidelines on Facebook ([https://m.facebook.com/whitehat/payout_guidelines/ssrf/](https://m.facebook.com/whitehat/payout_guidelines/ssrf/)):

### **Payouts**

- $40,000 - SSRF in production and reading the response (must include canary in your report)
- $30,000 - Blind SSRF in production and **not** reading the response (must trigger the canary alert)
- $10,000 - Hitting arbitrary endpoints within a corporate network (e.g. through an unpatched CVE on a third-party system)
- $1,000 - If you can only hit a small number of endpoints within the corporate network (e.g. a small set of hosts or loopback only)

As you can see, the more that you can do with an SSRF finding, the greater the impact and the higher the reward.

# **Types of SSRF**

There are two types of SSRF vulnerabilities, In-Band SSRF and Blind SSRF. In Band SSRF, means that the server responds with the resources specified by the end user. If the attacker specifies the payload as [http://google.com](http://google.com/) to a server with an In-Band SSRF vulnerability the server would make the request and respond to the attacker with information served from google.com. Blind SSRF takes place when the attacker supplies a URL and the server makes the request but does not send information from the specified URL back to the attacker. In the case of Blind SSRF, you would need a web server that will capture the request from the target to prove that you forced the server to make the request.

## **In-Band SSRF Example**

For an In-Band SSRF, a URL is specified as an attack. The request is sent and the content of your supplied URL is displayed back to you in a response.

**Intercepted Request:**

`*POST api/v1/store/products*`

`*headers…*`

`*{*`

`*"inventory":"http://store.com/api/v3/inventory/item/12345"*`

`*}*`

**Attack:**

`*POST api/v1/store/products*`

`*headers…*`

`*{*`

`*"inventory":"**§http://localhost/secrets§"***`

}

**Response:**

HTTP/1.1 200 OK

headers...

**{**

**"secret_token":"crapi-admin"**

**}**

Once you have discovered an In-Band SSRF vulnerability you could leverage control over the URL to scan the internal network environment, gather sensitive information from the localhost, or attempt to perform a remote code execution attack.

## **Blind SSRF Example**

Blind (or Out of Band) SSRF takes place when a vulnerable server performs a request from user input but does not send a response back to the user indicating a successful attack. The app does not provide an unusual response to the user, but the server does make the request to the URL specified by the attacker. In this case, to know if the request was made you will need to have some control over the web server that is specified in the attack.

**Intercepted Request:**

`*POST api/v1/store/products*`

`*headers…*`

`*{*`

`*"inventory":"http://store.com/api/v3/inventory/item/12345"*`

}

**Attack**:

`*POST api/v1/store/products*`

`*headers…*`

`*{*`

`*"inventory:"**§http://localhost/secrets§"***`

}

**Response:**

HTTP/1.1 200 OK

headers...

{}

In this case, the response is returned and we do not have any indication that the server is vulnerable. Instead of [http://localhost/secrets](http://localhost/secrets), we will need to provide the URL to a web server that will let us see if a request is actually made. Burp Suite Pro has a great tool called Burp Suite Collaborator. Collaborator can be leveraged to set up a web server that will provide us with the details of any requests that are made to our random URL. To stick with free tools, we will leverage [http://webhook.site](http://webhook.site/). You can also use one of these other free sites:

- [http://pingb.in/](http://pingb.in/)
- [https://requestbin.com/](https://requestbin.com/)
- [https://canarytokens.org/](https://canarytokens.org/)

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/UHz28Z8BT8i3ZOFGS1xg_ssrf2.PNG)

By navigating to webhook.site a random URL will be created. You can then use that randomized URL as a payload and track it to see if any requests are made to it. So, our Blind SSRF attack would look more like this.

**Attack**:

`*POST api/v1/store/products*`

`*headers…*`

`*{*`

`*"inventory":"**§[https://webhook.site/306b30f8-2c9e-4e5d-934d-48426d03f5c0](https://webhook.site/306b30f8-2c9e-4e5d-934d-48426d03f5c0)§"***`

}

Once we submit this request we will not depend on the response, instead, we will check webhook.site for any new requests.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/ZJM875zQSICtbtxnT6W1_ssrf3.PNG)

I chose to demonstrate SSRF using webhook.site because it is free, does not require an account, and allows you to create custom responses. You can use the edit button (top right) to create your own custom response.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/MkztTx9GR8WL60cnAKDx_ssrf4.PNG)

In the response body, I have emulated what could be a web server that could be a part of the crAPI architecture. This URL can be leveraged for both In-Band and Blind SSRF attacks.

Now that we have reviewed typical SSRF attacks, you will need to know the types of requests to look for when searching for vulnerabilities.

# **Ingredients for SSRF**

When targeting an API for SSRF vulnerabilities, you will want to look for requests that have any of the following:

- Include full URLs in the POST body or parameters
- Include URL paths (or partial URLs) in the POST body or parameters
- Headers that include URLs like Referer
- Allows for user input that may result in a server retrieving resources

Let's search the crAPI collection for potential targets. When reviewing the collection we can see three potential requests that involve URLs.

- **POST /community/api/v2/community/posts**
- **POST /workshop/api/shop/orders/return_order?order_id=4000**
- **POST workshop/api/merchant/contact_mechanic**

These three requests each allow for user input that might be processed and some include Referer headers. The community forum post allows for any authorized user to submit a title and post to the community board. It might be a stretch, but perhaps there is some content filter involved that would submit a request to any provided URL. The return_order and contact_mechanic requests both involve URLs in some way. The return_order request doesn't seem like an obvious choice, however, the response includes a URL. Testing this request will include trying to manipulate the URL that is sent in the response. Finally, the contact_mechanic request seems like the most obvious request, because the captured request contains a URL for the "Mechanic API".

# **Testing for SSRF**

1. Either using Postman or the web browser, proxy the requests that you are targeting to Burp Suite.
2. Next, send the request over to Repeater to get an idea of a typical response.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/IIcdakknQ7y3KjFakNwZ_ssrf5.PNG)
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/mQzAVhkrTO2Rfoumy9Rt_ssrf6.PNG)
    
3. In the case of the return_order request, we are able to return an item once. If we attempt to return the item twice then we will receive a response that the item has already been returned.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/yCTiwfUTTvCKxvKjQGmo_ssrf7.PNG)
    
4. In order to successfully test this request we will need a valid order_id. So, we will need to purchase several items in order to be able to make several requests to return an item. Use the POST /workshop/api/shop/orders request to purchase several items. If you need to increase your account balance, return to the Mass Assignment exploit. Purchase enough items, so that you can attempt several attacks.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/Mg93ujzSVyb0MeTJFXcw_ssrf8.PNG)
    
5. To test this successfully we will need to change the attack type to Pitchfork. Note that Pitchfork allows us to pair separate payloads together. In the case of this request, we will want to pair a valid order_id with an SSRF payload. This will allow us to increase the item_id while simultaneously sending over various attack attempts.
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/hIDoWht0RfWW60zFfSdT_ssrf9.PNG)
    
6. Set the first payload to valid order_id numbers. Set the second payload to potentially interesting URLs including your webhook.site URL. For additional SSRF payload ideas check out [PayloadAllTheThings SSRF List](https://github.com/swisskyrepo/PayloadsAllTheThings/tree/master/Server%20Side%20Request%20Forgery).
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/YGjcoz6XSxmzhQ5KK0iC_ssrf10.PNG)
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/J6R516giR0G2dLNZGO9B_ssrf11.PNG)
    
7. Review the results. Look for anomalies and any indication within the response that indicate that we were able to control the remote resources processed by the server. In this case, there is no indication in the response.Next, make sure to check the webhook.site and see if a blind SSRF attack was successful. Again, the URL was not requested and this request does not appear to be vulnerable. Notice the requests shows 0/500 and the message "Waiting for first request...".
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/Z79Q0RK9Q4mKQa09HsF3_ssrf12.PNG)
    
    ![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/DQe3MF8aThyrpztmuWZy_ssrf14.PNG)
    

Let's try this out on the contact_mechanic request. Set the attack position, copy and paste the payloads you previously used for URLs, and send the attack. Review the results and see if there is anything interesting.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/rCAq7jpJRwabZ2rzmXVH_ssrf15.PNG)

Sure enough, the localhost requests fail, but the other URLs provided are successful. As far as reviewing for anomalies, we can see that there are a variety of status codes and response lengths. Upon reviewing the responses from the successful requests, we can see that the remote resources we requested were sent back over the API request.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/wrsbVrSBRrmtndHVIgfd_ssrf16.PNG)

We can also verify that a request was made from the server by visiting our webhook.site page.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/WtZCOd2TStefkvaIIhYK_ssrf13.PNG)

Congratulations, you have successfully exploited an SSRF vulnerability! If we return back to the Facebook SSRF bounty guideline, this would be an instance where the SSRF is in production, the response is sent back to us, and we have evidence of the request being made to the web server. In other words, maximum rewards!

# Injection Vulnerabilities

Before you can inject a payload using an API, you must uncover the best requests to attack. The best way to discover these injection points is by fuzzing and then analyzing the responses you receive. I have mentioned fuzzing before, but you should have a strong understanding of what is meant by this. Fuzzing APIs is the process of sending various types of input to an endpoint to provoke an unintended response. The payloads used for fuzzing include symbols, numbers, system commands, SQL queries, NoSQL queries, emojis, hexadecimal, boolean statements, and more. Essentially, you want any payload that the API may not be programmed to handle to cause the API to send a verbose response or to cause the application to behave adversely. If an endpoint does not sanitize or validate user input then the right payload could cause a verbose response, a delay in processing time, an internal server error, or an error with the database.

You should attempt fuzzing against all potential inputs and especially within the following:

- Headers
- Query string parameters
- Parameters in POST/PUT requests

Your approach to fuzzing should depend on how much information you know about your target. If you’re not worried about making noise, you could send a variety of fuzzing inputs likely to cause an issue in many possible supporting technologies. The more you know about the API, the more you can focus your attacks and increase your chance of finding a vulnerability. This is where your reconnaissance efforts will really pay off. If you know what database the application uses, what operating system is running on the web server, or the programming language in which the app was written, you’ll be able to submit targeted payloads aimed at detecting vulnerabilities in those particular technologies.

After sending your fuzzing requests, search for responses that contain a verbose error message or some other failure to properly handle the request. In particular, look for any indication that your payload bypassed security controls and was interpreted as a command, either at the operating system, programming, or database level. This response could be as obvious as a message such as “SQL Syntax Error” or something more subtle like taking a little more time to process a request. You could even receive an entire verbose error dump that can provide you with plenty of details about the host. As we know from working with crAPI throughout this course is that if you find a weakness in one endpoint, chances are that weakness is present in other endpoints. So when a request from one endpoint reveals a useful detail make sure to leverage that information in requests to other endpoints.

# **Discovering Injection Vulnerabilities**

Before you can exploit an injection vulnerability you will need to know where to fuzz and what to fuzz with. The art of fuzzing is knowing the right payload to send in the right requests with the right tools. The right payload can be guessed or narrowed down based on reconnaissance efforts. The right requests often are those that include user input, but there it can also be worth fuzzing headers and the URL path of other requests. The right tools depend on the fuzzing strategy that is deployed. Start by casting a wide net across an entire API and then narrow in the focus of your attack. In this module, we will use Postman to fuzz wide across the entire API collection, and then we will use Burp Suite along with Wfuzz to fuzz deep into individual requests. Fuzzing is all about requesting the unexpected. When reviewing API documentation, if the API is expecting a certain type of input (number, string, boolean value) send:

- A very large number
- A very large string
- A negative number
- A string (instead of a number or boolean value)
- Random characters
- Boolean values
- Meta characters

By sending over this input we are testing the limits of the target's input validation. If a certain type of input causes a verbose error or causes a delayed response then you could be on the trail of an injection vulnerability.

# **SQL Injection Metacharacters**

SQL Metacharacters are characters that SQL treats as functions rather than data. For example, -- is a metacharacter that tells the SQL interpreter to ignore the following input because it is a comment. If an API endpoint does not filter SQL syntax from API requests, any SQL queries passed to the database from the API will execute.

SQL injection, allows a remote attacker to interact with the application’s backend SQL database. With this access, an attacker could obtain or delete sensitive data such as credit card numbers, usernames, passwords, and other gems. In addition, an attacker could leverage SQL database functionality to bypass authentication, exfiltrate private data, and gain system access. By requesting the unexpected, you could to discover a situation the developers didn’t predict, and the database might return an error in the response. These errors are often verbose, revealing sensitive information about the database.

When looking for requests to target for database injections, seek out those that allow client input and can be expected to interact with a database. Here are some SQL metacharacters that can cause some issues:

`'`

`''`

`;%00`

`-`

`- -`

`""`

`;`

`' OR '1`

`' OR 1 -- -`

`" OR "" = "`

`" OR 1 = 1 -- -`

`' OR '' = '`

`OR 1=1`

All of these symbols and queries are meant to cause problems for SQL queries. A null byte like ;%00 could cause a verbose SQL-related error to be sent as a response. The OR 1=1 is a conditional statement that literally means “or the following statement is true,” and it results in a true condition for the given SQL query. Single and double quotes are used in SQL to indicate the beginning and ending of a string, so quotes could cause an error or a unique state. Imagine that the backend is programmed to handle the API authentication process with a SQL query like the following, which is a SQL authentication query that checks for username and password:

SELECT * FROM userdb WHERE username = 'hAPI_hacker' AND password = 'Password1!'

The query retrieves the values hAPI_hacker and Password1! from the user input. If, instead of a password, we supplied the API with the value ' OR 1=1-- -, the SQL query might instead look like this:

SELECT * FROM userdb WHERE username = 'hAPI_hacker' OR 1=1-- -

This would be interpreted as selecting the user with a true statement and skipping the password requirement, as it has been commented out. The query no longer checks for a password at all, and the user is granted access. The attack can be performed to both the username and password fields. In a SQL query, the dashes (--) represent the beginning of a single-line comment. This turns everything within the following query line into a comment that will not be processed. Single and double quotes can be used to escape the current query to cause an error or to append your own SQL query.

# **NoSQL Injection**

APIs commonly use NoSQL databases due to how well they scale with the architecture designs common among APIs. Also, NoSQL injection techniques aren’t as well-known as their structured counterparts. Due to this one small fact, you might be more likely to find NoSQL injections.

As you hunt, remember that NoSQL databases do not share as many commonalities as the different SQL databases do. NoSQL is an umbrella term that means the database does not use SQL. Therefore, these databases have unique structures, modes of querying, vulnerabilities, and exploits. Practically speaking, you’ll conduct many similar attacks and target similar requests, but your actual payloads will vary. The following are common NoSQL metacharacters you could send in an API request to manipulate the database:

`$gt`

`{"$gt":""}`

`{"$gt":-1}`

$ne

`{"$ne":""}`

`{"$ne":-1}`

`$nin`

`{"$nin":1}`

`{"$nin":[1]}`

`{"$where":  "sleep(1000)"}`

$gt is a MongoDB NoSQL query operator that selects documents that are greater than the provided value. The $ne query operator selects documents where the value is not equal to the provided value. The $nin operator is the “not in” operator, used to select documents where the field value is not within the specified array. Many of the others in the list contain symbols that are meant to cause verbose errors or other interesting behavior, such as bypassing authentication or waiting 10 seconds.

# **OS Injection**

Operating system command injection is similar to the other injection attacks we’ve covered in this chapter, but instead of, say, database queries, you’ll inject a command separator and operating system commands. When you’re performing operating system injection, it helps a great deal to know which operating system is running on the target server. Make sure you get the most out of your Nmap scans during reconnaissance in an attempt to glean this information.

As with all other injection attacks, you’ll begin by finding a potential injection point. Operating system command injection typically requires being able to leverage system commands that the application has access to or escaping the application altogether. Some key places to target include URL query strings, request parameters, and headers, as well as any request that has thrown unique or verbose errors (especially those containing any operating system information) during fuzzing attempts.

Characters such as the following all act as command separators, which enable a program to pair multiple commands together on a single line. If a web application is vulnerable, it would allow an attacker to add command separators to existing command and then follow it with additional operating system commands:

`|`

`||`

`&`

`&&`

`'`

`"`

`;`

`'"`

If you don’t know a target’s underlying operating system, put your API fuzzing skills to work by using two payload positions: one for the command separator followed by a second for the operating system command. The table below is a small list of potential operating system commands to use.

**Common Operating System Commands to Use in Injection Attacks**

| Operating system | Command |
| --- | --- |
| Windows | **ipconfig** shows the network configuration.
**dir** prints the contents of a directory.
**ver** prints the operating system and version.
**whoami** prints the current user. |
| *nix (Linux and Unix) | **ifconfig** shows the network configuration.
**ls** prints the contents of a directory.
**pwd** prints the current working directory.
**whoami** prints the current user. |

# **Fuzzing Wide with Postman**

Postman really shines when it comes to testing an entire API collection thanks to the Collection Runner. Whereas, Burp Suite CE and WFuzz are much better at digging into individual requests. Since there are so many places for an injection vulnerability to hide it helps to cast a wide net across a collection for weaknesses with Postman and then transition to other tools. We will be testing so many requests that I recommend duplicating the entire collection so that we can add variables throughout the collection. This will continue to maintain the integrity of the original collection and let us develop a baseline of expected responses.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/aA6AoJ0QzWfh0DK1k32g_Injection2.PNG)

I have renamed the duplicate collection to crAPI_Swagger Fuzz. We can create a fuzzing environment that can be reused from one collection to another.

# **Injection Targets**

For injection targets, we will begin by casting a wide net and seeing which requests respond in interesting ways. Let's target many of the requests that include user input. With this in mind, I have selected the following requests.

- PUT videos by id
- GET videos by id
- POST change-email
- POST verify-email-token
- POST login
- GET location
- POST check-otp
- POST posts
- POST validate-coupon
- POST orders

Now let's use the original collection (crAPI_Swagger) and use the collection runner on our selected requests to develop our baseline. Remember that when you use the Collection runner you can select the requests that you want to test and you can **save the responses**. Select the above 10 requests. Note, the baseline of requests and responses should contain well-formed requests and expected responses. We should not have a collection that fails because of authorization or because the resources are not found. The collection should be in a state where things primarily function as expected. Once again, using the Status 200 test set up in previous modules, update your token and run the entire collection to see what your baseline looks like. Take note of how many requests pass and fail.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/sDzM7qtWSvKa6BNRL8K1_Injection8.PNG)

In this baseline, we can see that there were:

- **Three** 200 Success responses
- **Three** requests received 500 Internal Server Error
- **Three** 404 Not Found
- **One** 403 Forbidden

You can explore the variety of reasons that each response was sent, but if you have well-formed requests then proceed. Now that we have a baseline, let's update our environment with some fuzzing variables.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/Wpg8VfVJS5S3LRwUW2j6_Injection4.PNG)

Now depending on information from reconnaissance, you may want to start with a specific fuzzing variable. However, it is easy enough to update the values of the variables, so I will stick with {{fuzz}}. Now go through the requests that you are targeting and add fuzzing variables where user input is found.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/DJAB2Nl4Rz6i5UCMKth0_Injection3.PNG)

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/9oUm8Qz7SZmlPcrByvHC_Injection7.PNG)

Now run the collection with the fuzz variable set throughout the targeted requests and investigate the results for anomalies.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/scIfFU2ROa1TEWl8uU4L_Injection9.PNG)

In this test the total count was:

- **One** 200 Success
- **Four** 500 Internal Server Error
- **Three** 404 Not Found
- **One** 400 Bad Request

In this case, one request passed which should be interesting enough to explore the response. Sure enough, the community request did not have any issues, and posted the fuzzing variables in a community post. Also, make sure to explore the "Failed" results for anything anomalous or interesting. In the case of fuzzing you could find a verbose error message. Reviewing these results did not come up with anything interesting. Next, we will repeat this process with updated fuzzing variables.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/wz5nfYTTy2CgMDpggVJs_Injection10.PNG)

Simply update the current value of fuzz with a new test, then use the collection runner, and review the results for anomalies.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/AKQonp3dRciEz9BsvvFP_Injection11.PNG)

Sure enough, we see very similar results. In this test the total count was:

- **One** 200 Success
- **Four** 500 Internal Server Error
- **Two** 404 Not Found
- **Three** 400 Bad Request

The community post was successful while the others failed in similar ways. There was some deviation in the number of 400 Bad Requests, but after investigating those results the responses were expected. This is exactly what you would hope to see, a new baseline developing. When we fuzz with certain types of input the application behaves in an expected way. Therefore, if we see update our fuzz variable to the right value then any changes will be much more obvious. Up to this point, we have tried a SQL injection test and an OS injection test. Let's try a NoSQL injection test.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/5GA2lmARRM6hok5xwtDy_Injection13.PNG)

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/sjMMlvTxTHKeqmORhwMZ_Injection14.PNG)

At first glance, this test is slightly different. The community post was not successful and upon reviewing the failed results we see the count has changed:

- **One** 500 Internal Server Error
- **Eight** 400 Bad Request
- **One**  422 Unprocessable Entity

The variation in the results here is worthy of investigation, especially with the new response. First, the request to the forum that was successful is now a 400 with the response body,

{"error": "invalid character '$' after object key:value pair"}

The POST validate-coupon request has the 422 Unprocessable Entity response and also contains the same error in the response body.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/EojSxlYpQaW4xVdUgQrw_Injection15.PNG)

These two requests are worth exploring further in Burp Suite. Proxy these two requests to Burp Suite and send the captured requests to Intruder.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/file-uploads/site/2147573912/products/1347bf6-6115-120-45b2-bbb4ffab3352_injection18.PNG)

Using Intruder, update the attack positions for the two requests that you are targeting.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/file-uploads/site/2147573912/products/7fca450-53ab-b1e-af13-6fa13fc6f2_injection17.PNG)

Since the NoSQL payload was the one that triggered an anomaly, update Intruder with a NoSQL payload list. Try this attack with Payload Encoding turned on/off to see if you notice a difference in the responses. Send the attack.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/file-uploads/site/2147573912/products/fb4e86a-2de2-1b6d-44ea-ef52402f3a_injection19.PNG)

Now we are receiving several "200 Success" responses and we have obtained valid coupon codes for sending true statements to the database. We have successfully exploited a NoSQL vulnerability! Next, let's check out how this would be performed with WFuzz.

# **Fuzzing Deep with WFuzz**

To perform this attack with Wfuzz, you will need to build out the request. I suggest using the Burp Suite save to file so that you can easily copy and paste to the terminal. Using Repeater, you can right-click on the request that you would like to target and select "copy to file".

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/file-uploads/site/2147573912/products/7ac1c3-40ac-61d-7ea0-3c56a5601df5_injection20.PNG)

Next, you can open a second window and use cat on the file that you saved from Burp Suite.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/file-uploads/site/2147573912/products/530baff-fcb2-efe2-066a-01642d68c2d5_injection21.PNG)

You can start building out the WFuzz attack. For additional information about WFuzz, use:

$wfuzz --help

Start by specifying the payload that you will use with **-z**. Use **-H** to add necessary headers like "Content-Type:application/json" and the authorization token. Then use **-d** to specify the post body. When you are using quotes in a post body, you will need to use backslashes (\) for those to show up in the request. Finally, add the URL that you are targeting.

`$ wfuzz -z file,usr/share/wordlists/nosqli  -H "Authorization: Bearer TOKEN" -H "Content-Type: application/json" -d "{\"coupon_code\":FUZZ} http://crapi.apisec.ai/community/api/v2/coupon/validate-coupon`

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/file-uploads/site/2147573912/products/d5f1c6-8c48-8755-1a3b-f1aee8bd443_injection22.PNG)

Once you have a successful attack, you can add filtering options to your requests. This will help make the response very clear when there is a successful attack. In the case of this request, we know that we are looking for responses that come back with a 200 status code. Use the show code option **--sc 200** to filter out the results.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/file-uploads/site/2147573912/products/dfa0bbb-0d34-addd-d7c-4001e162fd0_injection23.PNG)

Success! Congratulations on performing an injection attack!

Before you go, check out the following advice if you need to troubleshoot you WFuzz attacks. Since WFuzz attacks can get large and complicated, I recommend getting comfortable with proxying traffic to Burp Suite. Use the -p localhost:8080 option with Burp Suite set to Intercept Requests.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/file-uploads/site/2147573912/products/36a887-6ddf-2c-a507-742417c37c0_injection24.PNG)

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/file-uploads/site/2147573912/products/e817b5-ced6-ab-8e70-63815edfca1_injection25.PNG)

With the request in Burp Suite, you can see exactly what is being sent by WFuzz and troubleshoot from there. For example, see what happens if you do not add backslashes to the quotes around coupon_code.

# Evasion Maneuvers

Many APIs in the wild will not be exploited as easily as the deliberately vulnerable applications that we've been up against in this course. Often times security controls like web applications firewalls (WAFs) and rate-limiting can block your attacks. Security controls may differ from one API provider to the next, but at a high level, they will have some threshold for malicious activity that will trigger a response. WAFs, for example, can be triggered by a wide variety of things, like:

- Too many requests for resources that do not exist.
- Too many requests within a certain amount of time
- Common attack attempts, like SQL injection and XSS attacks
- Abnormal behavior, like tests for authorization vulnerabilities

Evading security controls is a process of trial and error. Some security controls may not advertise their presence with response headers; instead, they may wait in secret for your misstep. The following measures can be effective at evading or bypassing these restrictions.

## **String Terminators**

Null bytes and other combinations of symbols are often interpreted as string terminators used to end a string. If these symbols are not filtered out, they could terminate the API security control filters that may be in place. When you are able to successfully send a null byte it is interpreted by many back-end programming languages as a signifier to stop processing. If the null byte is processed by a back-end program that validates user input, then the security control could be bypassed because it stops processing the following input. Here is a list of potential string terminators you can use:

%00

0x00

//

;

%

!

?

[]

%5B%5D

%09

%0a

%0b

%0c

%0e

String terminators can be placed in different parts of the request, like the path or POST body, to attempt to bypass any restrictions in place. For example, in the following injection attack to the user profile endpoint, the null bytes entered into the payload could bypass filtering

POST /api/v1/user/profile/update

[…]

{

“uname”: “hapihacker”

“pass”: "%00'OR 1=1"

}

In this example, input validation measures might be bypassed due to the null byte placed before the SQL injection attempt.

## ****

## **Case Switching**

Sometimes API security controls are pretty easy to beat. If a security control is built around the literal spelling and case of the components within a request, then case switching can be an effective technique to bypass the controls. Case switching is the literal switching of the case of the letters within the URL path or payload. For example, take the following POST requests. Let’s say you were targeting a social media site by attempting an IDOR attack against a uid parameter in the following POST request:

POST /api/myprofile

[…]

{uid=§0001§}

An API may leverage rate-limiting to only allow 100 requests per minute. Based on the length of the uid value, you know that to brute force it you’ll need to send 10,000 requests to exhaust all possibilities. To bypass rate-limiting or other WAF controls you may be able to simply alter the URL path by switching upper- and lower-case letters in the path:

POST /api/myProfile

POST /api/MyProfile

POST /aPi/MypRoFiLe

Each of these path iterations could cause the API provider to handle the request differently, potentially bypassing the rate limit. In some cases, a control like rate-limiting may disappear completely with a different spelling or the new spelling may have its own renewed rate limit. In the case where rate-limiting is no longer applied, you can just send over as many requests as you need to the endpoint with the casing switched. In the case where rate-limiting is renewed, you could use the BurpSuite Pitchfork attack to pair a certain number of attacks to a certain number of brute-force attempts.

For example:

POST /api/myprofile paired with uid 001 - 100

POST /api/Myprofile paired with uid 101 - 200

POST /api/mYprofile paired with uid 201 - 300

If you were using Burp Suite’s Intruder for this attack, you could set the Attack Type to Pitchfork and use the same value for both payload positions. This tactic allows you to use the smallest number of requests required to brute force the uid.

## **Encoding Payloads**

To take your WAF-bypassing attempts to the next level, try encoding payloads. Encoded payloads can often trick WAFs while still being processed by the target application or database. Even if the WAF or an input-validation measure blocks certain characters or strings, they might miss encoded versions of those characters. Alternatively, you could also try double encoding your attacks.

Imagine that the API provider has a control in place that provides one round of decoding to requests that are received.

URL Encoded Payload: %27%20%4f%52%20%31%3d%31%3b

API Provider URL Decoder: ' OR 1=1;

WAF Rules detect a fairly obvious SQL Injection attack and block the payload.

Double URL Encoded Payload: %25%32%37%25%32%30%25%34%66%25%35%32%25%32%30%25%33%31%25%33%64%25%33%31%25%33%62

API Provider URL Decoder: %27%20%4f%52%20%31%3d%31%3b

This could perhaps pass by a bad WAF rule to later be decoded and interpreted. Let's check out how we can practically apply evasive techniques to our attacks with Burp Suite and WFuzz.

## **Payload Processing with Burp Suite**

Once you’ve discovered a successful method of bypassing a WAF, it’s time to leverage the functionality built into your fuzzing tools to automate your evasive attacks. Let’s start with Burp Suite’s Intruder. Under the Intruder Payloads option is a section called Payload Processing that allows you to add rules that Burp will apply to each payload before it is sent.

The Add button will let you add various rules to each payload, like a prefix, a suffix, encoding, hashing, and custom input. It can also match and replace various characters.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/Lc9XrEHQSQqQe3srFQEn_Evasion1.PNG)

Let’s say you discovered you could bypass a WAF by adding a null byte before and after a URL-encoded payload. In order to send a wordlist of injection attacks, the list would need to bypass the WAF. You could either edit the wordlist to match the requirements to bypass the WAF or you could add processing rules.

For our example, we’ll need to create three rules. Burp Suite applies the payload-processing rules from top to bottom, so if we don’t want the null bytes to be encoded, for example, we’ll need to first encode the payload and then add the null bytes.

If you have followed along, your payload processing rules should match the following.

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/qDzcT4JSUkAVWywCB1NQ_Evasion2.PNG)

To test your payload processing, launch an attack and review the request payloads.

POST /api/v3/user?id=%00%75%6e%64%65%66%69%6e%65%64%00

POST /api/v3/user?id=%00%75%6e%64%65%66%00

POST /api/v3/user?id=%00%28%6e%75%6c%6c%29%00

Check the payload column of your attack to make sure the payloads have been processed properly.

## **Evasion with Wfuzz**

Wfuzz also has some great capabilities for payload processing. You can find its payload processing documentation under the advanced section at [https://wfuzz.readthedocs.io/](https://wfuzz.readthedocs.io/).

If you need to encode a payload, you’ll need to know the name of the encoder you want to use. To see a list of all Wfuzz encoders, use the following:

$ wfuzz -e encoders

- A sample of the available Wfuzz encoders

| Category | Name | Summary |
| --- | --- | --- |
| hashes | base64 | Encodes the given string using base64 |
| url | urlencode | Replaces special characters in strings using the %xx escape. Letters, digits, and the characters '_.-' are never quoted. |
| default | random_upper | Replaces random characters in strings with capitals letters |
| hashes | md5 | Applies a MD5 hash to the given string |
| default | none | Returns all characters without changes |
| default | hexlify | Converts every byte of data to its corresponding two-digit hex representation |

Next, to use an encoder, add a comma to the payload and specify its name:

`$ wfuzz -z file,wordlist/api/common.txt,**base64** [http://hapihacker.com/FUZZ](http://hapihacker.com/FUZZ)`

In this example, every payload would be base64-encoded before being sent in a request.

The encoder feature can also be used with multiple encoders. To have a payload processed multiple encoders specify them with a hyphen. For example, if you were to have a single payload “TEST” with the encoding applied like this:

`$ wfuzz -z list,TEST,**base64-md5-none**`

Then you would receive one payload encoded to base64, another payload encoded by MD5, and a final payload in its original form (none=not encoded). This would result in three different payloads. Note that if you had three payloads, using a hyphen for three encoders would send nine total requests like this:

`$ wfuzz -z list,a-b-c,**base64-md5-none** -u [http://hapihacker.com/api/v2/FUZZ](http://hapihacker.com/api/v2/FUZZ)`

000000002:   404        0 L      2 W        155 Ch      "0cc175b9c0f1b6a831c399e269772661"

000000005:   404        0 L      2 W        155 Ch      "92eb5ffee6ae2fec3ad71c777531578f"

000000008:   404        0 L      2 W        155 Ch      "4a8a08f09d37b73795649038408b5f33"

000000004:   404        0 L      2 W        127 Ch      "Yg=="

000000007:   404        0 L      2 W        127 Ch      "Yw=="

000000001:   404        0 L      2 W        127 Ch      "YQ=="

000000003:   404        0 L      2 W        124 Ch      "a"

000000006:   404        0 L      2 W        124 Ch      "b"

000000009:   404        0 L      2 W        124 Ch      "c"

In this case, the list of payloads was individually processed three different times. Each letter (a, b, and c)  was base64 encoded, hashed with md5, and sent in the original form.

If, instead, you want each payload to be processed by multiple encoders, separate the encoders with an @ sign:

![](https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/site/2147573912/products/dyyhWcR2ipYsoLizBTQA_Evasion3.PNG)

In this example, Wfuzz would first create an MD5 hash of the payload (TEST1) and then base64 encode it twice. These Burp Suite and Wfuzz options will help you process your attacks in ways that help you sneak past whatever security controls stand in your way. To dive deeper into the topic of WAF bypassing, I recommend checking out the incredible Awesome-WAF GitHub repo ([https://github.com/0xInfection/Awesome-WAF](https://github.com/0xInfection/Awesome-WAF)), where you’ll find a ton of great information.

In the final lesson, we will combine the previously discussed techniques together into a masterful API attack.

# Combining Techniques

All of our testing efforts rely on Information we collect about our targets. API information disclosures can often appear to be insignificant, but these are the clues that eventually lead us toward exploitation. The fact that public APIs are meant to be self-service means that there is an essence of convenience that can be found with just about every API.

At every step of the API hacking methodology, we are looking for information that will guide us toward exposed secrets, attack surface discovery, endpoint functionality, and vulnerabilities. The information that we find will be the most common ingredient that we will combine with all other techniques. Since this is the case, make sure to invest your time in passive and active information gathering.

This lesson is brief, but combining multiple techniques together is what will help you find critical vulnerabilities, increase the impact of your bounties, and more closely emulate advanced attackers.

# **Plot Twist**

If you've had your hands on the keyboard and made it this far in the course then you've been combining techniques for some time now.

- **Insert a flashback montage of that one time you:
- Combined an excessive data exposure finding with a password-spraying attack to compromise accounts.
- Combined a Broken Function Level Authorization finding with a Mass Assignment attack to add some funds back to your crAPI account.
- Combined an Improper Assets Management vulnerability to exploit a successful brute force attack against a multi-factor authentication system.

## **Suggestions for Combining Vulnerabilities and Techniques**

Now is the time to combine the techniques you’ve been learning since we started performing reconnaissance at the beginning of this course. There are many different possible ways to combine API attack techniques. One thing that you may not realize is that once you have found a small crack in the security of an API then you may have found a launchpad for the rest of your attack. Since every API is different, it would be very difficult to discuss all of the possibilities. This section is meant to help you think through several different possibilities for any API provider you are testing.

Excessive Data Exposure and Improper Assets Management are both API weaknesses that stand out above the others to combine in order to escalate the impact of your attacks.

- Excessive data exposure is a vulnerability that can be leveraged in many other attacks. Excessive Data Exposure can be a great source of information about users and administrators. Make sure that you take note of all parameters leaked in exposure, such as username, email, privilege level, and unique user identifiers. All of this information could be challenging to come across otherwise but can be leveraged in authentication and authorization attacks.
- Improper Assets Management vulnerability is a weakness that should be combined with all other attack techniques. Improper Assets Management implies that a version of the API may not be as supported as the current version and thus it may not be as protected. Perform all of the other attacks against the unmanaged endpoint. You may find that the security of a api/test/login, api/mobile/login, api/v1/login, api/v1/internal/users may have fewer protections than the supported counterparts. With Improper Assets Management findings there could be lax rate-limiting, missing protections for brute force attempts, missing input validation, unlimited multifactor authentication requests, authorization vulnerabilities, etc. With APIs affected by Improper Assets Management vulnerabilities you never know what you’re going to get. So, make sure to perform the full gambit of attack techniques against unsupported versions of the API.
- If you are testing a file upload function, attempt to use the directory traversal fuzzing attack along with the file upload to manipulate where the file is stored. Upload files that lead to a shell and attempt to execute the uploaded file with the corresponding web application.
- Perhaps you have discovered a Broken Function Level Authorization (BFLA) or Mass Assignment weakness that has given you access to administrative functionality. There is a chance that an API provider trusts its administrators and does not have as many technical protections in place. You could then use this new level of access to search for Improper Assets Management, injection weaknesses, or Broken Object Level Authorization weaknesses.
- If you are able to perform a mass assignment, then there is a chance that the parameter or parameters that you can alter may not be protected from injection attacks and/or Server-side Request Forgery. When you have discovered mass assignment fuzz the parameter for other weaknesses.
- If you are able to update to perform a BFLA attack and update another user’s profile information perhaps you could combine this with an XSS attack.
- Combine Injection attacks with most other vulnerabilities. For example, if you are able to manipulate a JSON Web Token. Consider including various different types of injection attacks into the JSON Web Token.
- Consider ways to fully leverage BOLA findings. Use the information that you are able to access to gain access elsewhere. Always test to see if your BOLA discovery can be used in a BFLA attack. In other words, if you find a BOLA vulnerability that provides you with other users’ bank account information check to see if you are also able to exploit a BFLA vulnerability to transfer funds.
- If you are up against API security controls like a WAF or rate-limiting, make sure to apply evasion techniques to your attacks. Encode your attacks and attempt to find ways to bypass these security measures. If you have exhausted your testing efforts, return to fuzzing wide with encoded and obfuscated attacks.

I hope that some of these ideas can help turn some cogs in your adversarial mindset. Do not start waving the victory flag after your first finding, but instead think of the possible ways that you can take that finding to the next level.

# **Summary**

The point of this section was to provide you with some ideas of how you can combine different techniques that were covered in this course. There are many possible ways that you can leverage your findings together into your own API hacking masterpiece. Do not disregard any finding, no matter how insignificant it may first appear. Instead, consider the information that you’ve gathered, the different vulnerabilities you’ve discovered, the business logic of the given API, how that API interacts with backend systems, how the API interacts with the front-end of the web application, how your target APIs may interact with each other, the functionality of the endpoints, and put it all together with your adversarial mindset. You will have great findings that are sure to help prevent the next colossal API-related breach.