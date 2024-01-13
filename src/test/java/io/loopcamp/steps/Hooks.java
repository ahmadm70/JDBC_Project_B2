package io.loopcamp.steps;

import io.cucumber.java.Scenario;
import io.loopcamp.utilities.ConfigurationReader;
import io.loopcamp.utilities.DatabaseUtilities;
import io.loopcamp.utilities.Driver;
import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

public class Hooks {
    @Before
    public void setUp() {
        Driver.getDriver();
    }
    @After
    public void tearDown(Scenario scenario){
        if(scenario.isFailed()){
            final byte[] screenshot = ((TakesScreenshot) Driver.getDriver()).getScreenshotAs(OutputType.BYTES);
            scenario.attach(screenshot,"image/png", scenario.getName());
        }
        Driver.closeDriver();
    }
    @Before
    public void setUpDB() {
        String dbURL = ConfigurationReader.getProperty("docuport.db.url");
        String dbUsername = ConfigurationReader.getProperty("docuport.db.username");
        String dbPassword = ConfigurationReader.getProperty("docuport.db.password");
        DatabaseUtilities.createConnection(dbURL, dbUsername, dbPassword);
    }
    @After
    public void tearDownDB() {
        DatabaseUtilities.destroy();
    }
}