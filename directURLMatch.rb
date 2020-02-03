require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://mola.tv/matches"
sleep 2
driver.find_element(id: 'onesignal-popover-cancel-button').click
element_title = driver.title
if element_title == 'Mola TV - Match List Page'
    puts 'Test passed'
else
    puts 'Test failed'
end
driver.quit