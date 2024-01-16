package io.loopcamp.steps;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import io.loopcamp.utilities.ConfigurationReader;
import io.loopcamp.utilities.DatabaseUtilities;
import io.loopcamp.utilities.Driver;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.time.Duration;

public class Hooks {
    @Before("@ui")
    public void setUp() {
        Driver.getDriver();
        Driver.getDriver().manage().window().maximize();
        Driver.getDriver().get(ConfigurationReader.getProperty("docuport.ui.url"));
        Driver.getDriver().manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
    }

    @After("@ui")
    public void tearDown(Scenario scenario) {
        if (scenario.isFailed()) {
            final byte[] screenshot = ((TakesScreenshot) Driver.getDriver()).getScreenshotAs(OutputType.BYTES);
            scenario.attach(screenshot, "image/png", scenario.getName());
        }
        Driver.closeDriver();
    }

    @Before("@db")
    public void setUpDB() {
        String dbURL = ConfigurationReader.getProperty("docuport.db.url");
        String dbUsername = ConfigurationReader.getProperty("docuport.db.username");
        String dbPassword = ConfigurationReader.getProperty("docuport.db.password");
        DatabaseUtilities.createConnection(dbURL, dbUsername, dbPassword);
    }

    @After("@db")
    public void tearDownDB() {
        DatabaseUtilities.destroy();
    }
}