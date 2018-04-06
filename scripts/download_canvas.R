library(rvest)
library(RSelenium)
library(seleniumPipes)
library(stringr)

#
rD <- rsDriver (browser = 'chrome',chromever = "latest",port = 4445L)
#open browser for selenium pipes
remDr <- remoteDr(browserName = "chrome",port = 4445L)

#go to canvas 
remDr %>% go("https://canvas.ucdavis.edu")
#login
remDr %>% findElement(using = "css selector",value = "p~ p+ .marketing-highlight__cta--btn") %>% elementClick()
#enter username and password
remDr %>% findElement(using = "css selector",value = "#username") %>% elementSendKeys("yifyan")
remDr %>% findElement(using = "css selector",value = "#password") %>% elementSendKeys("Mkntjbh@20070831")
#click login
remDr %>% findElement(using = "css selector",value = "#submit") %>% elementClick()

#click the book ic-icon-svg--courses
remDr %>% findElement(using = "css selector",value = ".ic-icon-svg--courses") %>% elementClick()
#All visible text .ic-DashboardCard__header-subtitle
visible_text <- remDr %>% getPageSource() %>% html_nodes(".ic-DashboardCard__header-subtitle") %>% html_text()
#the course material I want to download
course_number <- "443"
link_text <- visible_text[str_detect(visible_text,pattern = course_number)]
#the course material I want to download:
remDr %>% findElement(using = "partial link text",value = link_text) %>% elementClick()

#click files .files
remDr %>% findElement(using = "css selector",value = ".files") %>% elementClick()
Sys.sleep(2)
#all items to click
folders_to_click <- remDr %>% findElements(using = "css selector",value = ".ef-item-row")
for(i in 1 : length(folders_to_click)){
    #click the folder
    folders_to_click[[1]] %>% elementClick()
    #click download
    remDr %>% findElement(using = "css selector",value = ".icon-download") %>% elementClick()
}
