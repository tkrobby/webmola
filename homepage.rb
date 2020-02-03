require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://mola.tv/"
sleep 2
driver.find_element(id: 'onesignal-popover-cancel-button').click
sleep 2
driver.quit