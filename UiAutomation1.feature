Feature: Creating first feature

  Background:

  Scenario: First scenario test for google
    * def sleep =
      """
      function(seconds){
        for(i = 0; i <= seconds; i++)
        {
          java.lang.Thread.sleep(1*1000);
        }
      }
      """

    * configure driver = { type: 'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe', headless: false}
    Given driver 'https://www.google.com/'
    Then maximize()
    * screenshot()
    And waitFor("input[title='Search']")
    And input("input[title='Search']","Karate framework ui automation")
    * delay(1000).screenshot("input[title='Search']")
    And waitFor("input[value='Google Search']")
    When click("input[value='Google Search']")
    #* call sleep 10
    * delay(10000)
    * screenshot()
