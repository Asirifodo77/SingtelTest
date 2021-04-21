package pageObjects;

import Implementation.CommonElements;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;
import utilities.DriverFactories;

import java.util.List;

/**
 * Created by Asiz on 4/20/2021.
 */
public class HomePage extends CommonElements{

    public Logger log;
    public WebDriver driver;

    @FindBy(how = How.XPATH, using = "/html/body/section/header/input")
    public WebElement toDoAdd_textBox;

    @FindBy(how = How.XPATH, using = "/html/body/section/section/ul")
    public WebElement toDo_list;

    @FindBy(how = How.XPATH, using = "/html/body/section/footer/ul/li[1]/a")
    public WebElement all_link;

    @FindBy(how = How.XPATH, using = "/html/body/section/footer/ul/li[2]/a")
    public WebElement active_link;

    @FindBy(how = How.XPATH, using = "/html/body/section/footer/ul/li[3]/a")
    public WebElement completed_link;

    public HomePage(){
        this.driver = DriverFactories.getInstance().getDriver();
        PageFactory.initElements(driver, this);
        log = Logger.getLogger(HomePage.class);
    }

    public HomePage setValueIntoTODOList(String text) throws Exception {
        log.info("Waiting for TODO item text box");
        waitForElementToBeClickable(driver, toDoAdd_textBox);
        log.info("TODO item text box set : "+text);
        setText(toDoAdd_textBox, text);
        Thread.sleep(500);
        log.info("TODO item text box set and click Enter button");
        clickEnterButton(toDoAdd_textBox);
        Thread.sleep(500);
        return this;
    }

    public Integer getToDoItemList(String status) throws Exception {
        int count = 0;
        log.info("Status is checking : " +status);
        if (status.equalsIgnoreCase("All")){
            log.info("Click All link");
            click(all_link);
            Thread.sleep(500);
            count = toDo_list.findElements(By.xpath("li")).size();
            log.info("TODO Item count: " +count);
        }else if(status.equalsIgnoreCase("Active")){
            log.info("Click Active link");
            click(active_link);
            Thread.sleep(500);
            count = toDo_list.findElements(By.xpath("li")).size();
            log.info("TODO Item count: " +count);
        }else{
            log.info("Click Complete link");
            click(completed_link);
            Thread.sleep(500);
            count = toDo_list.findElements(By.xpath("li")).size();
            log.info("TODO Item count: " +count);
        }
        return count;
    }

    public HomePage markItemAsComplete(String item) throws Exception {
        int itemCount = toDo_list.findElements(By.xpath("li")).size();
        for (int i = 0; i < itemCount; i++) {
            String text = toDo_list.findElement(By.xpath("//li["+i+1+"]/div/label")).getText();
            if (item.equalsIgnoreCase(text)){
                WebElement element = toDo_list.findElement(By.xpath("//li["+i+1+"]/div/input"));
                click(element);
                break;
            }
        }
        return this;
    }


}
