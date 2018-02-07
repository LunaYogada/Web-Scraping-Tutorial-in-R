#https://www.douyu.com/57321
#
library(rvest)
library(RSelenium) # start a server with utility function
library(seleniumPipes)
rD <- rsDriver (browser = 'chrome',chromever = "latest",port = 4445L)
#open browser
remDr <- remoteDr(browserName = "chrome",port = 4445L)
page_url <- "https://www.douyu.com/57321"

remDr %>% go(page_url)
#get number of followers
remDr %>% getPageSource() %>% html_nodes(".r-num span")


remDr %>% deleteSession()
rD[["server"]]$stop() 

