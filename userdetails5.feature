Feature: Java functions

  Scenario: java call non static functions
    * def javaDemo = Java.type('examples.users.JavaDemo')
    * def result = new javaDemo().test1("Naveen");
    * def result = javaDemo.test2("Naveen");

    * def writeDataToFile = Java.type('examples.users.WriteData')
    * def result = new writeDataToFile().writeData("Hi this is third line adding in to file.");
