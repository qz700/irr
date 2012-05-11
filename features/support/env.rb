# encoding: utf-8
BASE_URL = ENV['BASE_URL'] || "http://irr.ru"
KEEP_OPEN = ENV['KEEP_OPEN'] || false
HEADLESS = ENV['HEADLESS'] || false
DRIVER = (ENV['WEB_DRIVER'] || :firefox).to_sym
ENABLE_FLASH = ENV['FLASH'] || false


require 'watir-webdriver'
require 'page-object'
require 'page-object/page_factory'
require 'nokogiri'
require 'debugger'
require 'net/http'
require 'uri'
require 'date'
require 'unicode_utils/downcase'


$: << File.dirname(__FILE__)+'/../../lib'
require 'pages.rb'

World PageObject::PageFactory

if HEADLESS
  puts "Starting xvfb.."
  require 'headless'
  headless = Headless.new
  headless.start
end

puts "Starting webdriver.."
client = Selenium::WebDriver::Remote::Http::Default.new
client.timeout = 240

case DRIVER
when :firefox
  puts "Setting up firefox profile..."
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile.native_events = false
  profile['toolkit.telemetry.prompted'] = true
  profile['plugin.click_to_play'] = true
  profile.add_extension "features/support/JSErrorCollector.xpi"
  profile.add_extension "features/support/flashblock.xpi" unless ENABLE_FLASH
  browser = Watir::Browser.new(DRIVER, :profile => profile, :http_client => client)
  
when :chrome
  puts "Setting up chrome profile"
  profile = Selenium::WebDriver::Chrome::Profile.new
  switches  = %w[--bwsi]
  browser = Watir::Browser.new(DRIVER, :profile => profile, :http_client => client, :switches => switches)

  unless ENABLE_FLASH
    # WORKAROUND: Disable flash
    browser.goto "chrome://plugins"
    browser.span(:text => "Flash").parent.parent.parent.a(:class => "disable-group-link").click
    browser.goto "about:blank"
  end

else
  puts "Setting up htmlunit"
  browser = Watir::Browser.start "about:blank"
end

#Function that returns a string that presents the details of the occurred JS errors
def get_js_error_feedback()
  jserror_descriptions = ""
  begin
    jserrors = @browser.execute_script("return window.JSErrorCollector_errors.pump()")
    jserrors.each do |jserror|
      jserror_descriptions << "JS error detected: #{jserror["errorMessage"]} (#{jserror["sourceName"]}:#{jserror["lineNumber"]})"
    end
  rescue Exception => e
    #puts "Checking for JS errors failed with: #{e}"
  end
  jserror_descriptions
end

Before do |scenario|
  browser.cookies.clear
  @browser = browser
  
  # Сохраняем экземпляр сценария
  @sc = scenario
end

AfterConfiguration do |config|
  puts "Tests have been configured, starting up.."
end

AfterStep do |scenario|
  raise get_js_error_feedback() unless get_js_error_feedback().empty?
end

After do |scenario|
  Dir::mkdir('screenshots') if not File.directory?('screenshots')
  screenshot = "./screenshots/FAILED_#{(0..8).to_a.map{|a| rand(16).to_s(16)}.join}.png"
  if scenario.failed?
    @browser.driver.save_screenshot(screenshot)
    embed screenshot, 'image/png'
  end

  #Keep browser open for pending steps
  if defined?(scenario.status)
    KEEP_OPEN = true if scenario.status == :pending or scenario.status == :undefined
  end
end

at_exit do
  browser.close if not KEEP_OPEN
  headless.destroy if HEADLESS
end

Around('@soft_assert') do |scenario, block|
  @validation_errors = Hash.new
  block.call
  if !@validation_errors.empty?
    raise "Найдены следующие ошибки: \n #{@validation_errors}"
  end
end

# Patch Element class to have 'element.should be_shown' instead of 'be_exists'
module Watir
  class Element
    alias_method :shown?, :exists?
  end
end
