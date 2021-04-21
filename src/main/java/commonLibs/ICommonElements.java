package commonLibs;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

/**
 * Created by Asiz on 4/20/2021.
 */
public interface ICommonElements {

   public void setText(WebElement element, String text) throws Exception;

   public void clearTextBox(WebElement element) throws Exception;

   public void waitForElementToBeClickable(WebDriver driver, WebElement element) throws Exception;

   public void click(WebElement element) throws Exception;

   public void clickEnterButton(WebElement element) throws  Exception;


}
