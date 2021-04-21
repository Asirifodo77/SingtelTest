package utilities;

import org.apache.log4j.xml.DOMConfigurator;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import java.util.concurrent.TimeUnit;
import org.apache.log4j.*;

import static jdk.nashorn.internal.runtime.regexp.joni.Config.log;

/**
 * Created by Asiz on 4/19/2021.
 */
public class DriverFactories {
    private WebDriver driver;
    private static DriverFactories myObj = null;
    public Logger log;

    private DriverFactories() {
        //DOMConfigurator.configure("log4j.xml");
        log = Logger.getLogger(DriverFactories.class);
    }

    public WebDriver getDriver() {
        return this.driver;
    }

    private void setDriver(WebDriver driver) {
        this.driver = driver;
    }

    public static DriverFactories getInstance() {
        if(myObj == null) {
            myObj = new DriverFactories();
            return myObj;
        } else {
            return myObj;
        }
    }

    public void initializeDriver() throws Exception {
        ReadProperties readProperties = new ReadProperties();
        try {
            log.info("driver initialization start");
            log.info("webdriver is used : " + readProperties.readPropertyFile().get("BrowserMode"));
            if (readProperties.readPropertyFile().get("BrowserMode").equalsIgnoreCase("chrome")){
                System.setProperty("webdriver.chrome.driver","src/main/resources/Drivers/chromedriver.exe");
                driver = new ChromeDriver();
                driver.manage().timeouts().implicitlyWait(200, TimeUnit.SECONDS);
                log.info("driver initialization successful.!!");
                System.out.println("done");
            }
        } catch (Exception e) {
            log.info("driver initialization Error.!!");
            log.error(e.getMessage(), e);
            e.printStackTrace();
        }
    }

    public void closeDriver(){
        getInstance().getDriver().close();
    }

    public static void main(String a[]) throws Exception {
        DriverFactories driverFactory = new DriverFactories();
        driverFactory.getInstance().initializeDriver();
    }
}
