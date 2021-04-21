package com.cucumber.stepdefinition;

import cucumber.api.PendingException;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.support.PageFactory;
import pageObjects.HomePage;
import utilities.DriverFactories;
import utilities.ReadProperties;

/**
 * Created by Asiz on 4/20/2021.
 */
public class Stepdefinitions_Common {

    private HomePage homepage;

    @Before
    public void before() throws Exception {
        DriverFactories.getInstance().initializeDriver();
        homepage = PageFactory.initElements(DriverFactories.getInstance().getDriver(), HomePage.class);
    }

    @After
    public void after() {
        DriverFactories.getInstance().closeDriver();
    }

    @Given("^Todo MVC user launch the url to add todo items$")
    public void todoMVCUserLaunchTheUrlToAddTodoItems() throws Throwable {
        DriverFactories.getInstance().getDriver().get(ReadProperties.readPropertyFile().get("WebURL"));
    }

    @When("^Todo MVC user enter \"([^\"]*)\" item into the todo list$")
    public void todoMVCUserEnterItemIntoTheTodoList(String text) throws Throwable {
        homepage.setValueIntoTODOList(text);
    }


    @Then("^Todo MVC user verify \"([^\"]*)\" item added into the \"([^\"]*)\" todo list$")
    public void todoMVCUserVerifyItemAddedIntoTheTodoList(int no, String status) throws Throwable {
        if(no!=homepage.getToDoItemList(status)){
            Assert.fail("ToDo item list is not matching");
        }
    }

    @When("^Todo MVC user mark \"([^\"]*)\" item as completed$")
    public void todoMVCUserMarkItemAsCompleted(String item) throws Throwable {
        homepage.markItemAsComplete(item);
    }
}
