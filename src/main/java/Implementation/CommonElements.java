package Implementation;

import commonLibs.ICommonElements;
import org.apache.log4j.Logger;
import org.openqa.selenium.WebDriverException;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.*;
import property.Properties;
import utilities.ReadProperties;

/**
 * Created by Asiz on 4/20/2021.
 */
public class CommonElements implements ICommonElements{

    public Logger log;

    public CommonElements(){
        log = Logger.getLogger(CommonElements.class);
    }

    public void setText(WebElement element, String text) throws Exception {
        if(text!=null){
            try{
                clearTextBox(element);
            }catch(Exception e){
                System.out.print("The text value is Null : "+text);
                log.info("The text value is Null : "+text);
                log.error(e.getMessage(),e);
            }
            try{
                log.debug("driver trying to set the text in the text box");
                element.sendKeys(text);
            }catch(Exception e){
                log.info("Unable to set the text in the text box");
                log.error(e.getMessage(),e);
            }
        }else{
            System.out.print("The text value is Null : "+text);
            log.info("The text value is Null : "+text);
        }
    }

    public void clearTextBox(WebElement element) throws Exception {
        try {
            log.debug("driver trying to clear the text box");
            element.clear();
        }catch(WebDriverException we){
            System.out.print("Webdriver exception occured.!!!");
            log.error(we.getMessage(),we);
        }catch (Exception e){
            System.out.print("Unable to clean the textbox exception occured.!!!");
            log.error(e.getMessage(),e);
        }
    }

    public void waitForElementToBeClickable(WebDriver driver, WebElement element) throws Exception {
        try {
            WebDriverWait wait=new WebDriverWait(driver, Properties.TIMEOUT_IN_SECONDS);
            wait.until(ExpectedConditions.elementToBeClickable(element));
        }catch (TimeoutException te) {
            System.out.println("waiting to be clickable has timed out. However continuing with the rest of the operations");
            log.error(te.getMessage(),te);
        } catch (NoSuchElementException e) {
            System.out.println("UNABLE TO LOCATE ELEMENT (NO ELEMENT FOUND) - "+e.getMessage());
            log.error(e.getMessage(),e);
        } catch (WebDriverException we) {
            System.out.println("UNABLE TO LOCATE ELEMENT DUE (WEB DRIVER EXCEPTION) - "+we.getMessage());
            log.error(we.getMessage(),we);
        } catch (Exception ge) {
            System.out.println("UNABLE TO LOCATE ELEMENT DUE - "+ge.getMessage());
            log.error(ge.getMessage(),ge);
        }
    }

    public void click(WebElement element) throws Exception {
        try {
            element.click();
        } catch (WebDriverException we) {
            System.out.println("Webdriver Exception occurred (Description - "+we+")");
            log.error(we.getMessage(),we);
        } catch (Exception e) {
            System.out.println("Exception occurred (Description - "+e+")");
            log.error(e.getMessage(),e);
        }
    }

    public void clickEnterButton(WebElement element) throws Exception {
        try {
            element.sendKeys(Keys.ENTER);
            System.out.println("Webdriver Exception occurred");
        } catch (WebDriverException we) {
            System.out.println("Webdriver Exception occurred (Description - "+we+")");
            log.error(we.getMessage(),we);
        } catch (Exception e) {
            System.out.println("Exception occurred (Description - "+e+")");
            log.error(e.getMessage(),e);
        }
    }


}
