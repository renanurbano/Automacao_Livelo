require 'selenium-webdriver'

#Selenium::WebDriver::Chrome.driver_path="C:/Ruby27-x64/bin/crhomedriver.exe"

@driver = Selenium::WebDriver.for :chrome

@driver.get "https://www.livelo.com.br/"
sleep 6
@driver.find_element(:id,"input-search").send_keys("kindle")
@driver.find_element(:id,"span-searchIcon").click
sleep 6
@driver.find_element(:id,"CC-product-list-name-LVL189407-00").text "Kindle Paperwhite Preto"


sleep 6