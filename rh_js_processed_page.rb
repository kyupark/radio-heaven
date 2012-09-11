require 'rubygems'
require 'watir-webdriver'
require 'headless'

headless = Headless.new
headless.start
browser = Watir::Browser.new

browser.goto 'http://jsbin.com/ivihur' # our example
el = browser.element :css => '#hello'
puts el.text

browser.close
headless.destroy