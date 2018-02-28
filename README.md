# Web Scraping Tutorial Using R with Examples

**(In progress)**

## Introduction

As a typical R user, most of the times, I only want to find something easy and works. However, by the time I wrote this tutorial, I found many materials on the internet about web-scraping using R were out-dated, and it made my life really hard. So after I read tons of blogs, Stack Overflow answers, and package documents, I think I need to create tutorials to make your lives much more comfortable.

### This tutorial covers:

+ How to scrape almost all websites
+ How to scrape protected, live or Javascript genereted content
+ How to simulate clicks, scroll-downs, enter texts in text box and so on 
+ How to automate web-scrapping process
+ How to clean, transform and store web-scrapping results


### This tutorial doest not cover:

+ **Product level web-scrapping script** 
+ **Techniques about avoiding anti-scaping systems:** e.g. CAPTCHA
+ **How to use API**
+ **Scraping well protected websites:** e.g. Amazon(Denpending on your scraping speed, you will be detected after scraping several hundred or thousand items)

## Some Fundamentals

+ Knowledge of HTML, CSS, Javascript and regular expression is preferable but not required
+ Understanding of basic R
+ Required packages(tidyverse, stringr, rvest, RSelenium, seleniumPipes)
+ Other requirements(CSS SelectorGadget, Chrome)
(Learning resources are inside the links)

## Create your first scraper

+ A simple scrapper that scrapes Pikachu's information

## Simple Scrapping Using rvest

+ Scrape IMDB movie data(The tutorial I read and found very useful)
+ Scrape heroes' data from Heros of the Storm

## Transform and Store Scrapping Results

## Scraping using RSelelenium and seleniumPipes(Scraping Javascript Generated Values)

+ Scrape Job information

## Case studies

1. Scrape heroes' data from Heroes of the Storm
2. Scrape Google Search results
1. Scrape Google Search images
3. Scrape Twitch


## Quick Lookup Table

**The followings are simple examples of dealing with specific web-scraping tasks.**  
(You can suggest more specific use cases, I'll add them here if I know how to do them.)

1. Use loops for automatic scrapping
1. How to scrape tables
1. Scrape protected email addresses
2. Scrape Javascript generated values
3. Scrape tables with live content(iframe).
4. Using regular expression while web-scrapping
5. How to use CSS Selector
6. Simulate clicks on elements
7. Type into text box
1. How to login accounts
8. How to download images
1. How to prevent errors from breaking loops(tryCatch)
1. How to screenshot
1. How to scroll down
1. How to jump to another page
1. How to go back/forward
1. Control scrapping speed
1. Find alternatives if it's too hard
1. Think outside of the box
