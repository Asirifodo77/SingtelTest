package com.cucumber.runner;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.apache.log4j.xml.DOMConfigurator;
import org.junit.runner.RunWith;
import org.junit.*;

/**
 * Created by Asiz on 4/19/2021.
 */

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "classpath:features_files",
        glue={"com.cucumber.stepdefinition"},
        plugin = { "html:target/site/cucumber-pretty", "json:target/cucumber.json" },
        tags = {"@TODOMVCUserToDoListManageCom"}
)

public class TestRunner {

    @BeforeClass
    public static void setup(){
        DOMConfigurator.configure("log4j.xml");
    }
}
