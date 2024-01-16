package io.loopcamp.pages;

import io.loopcamp.utilities.ConfigurationReader;
import io.loopcamp.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class DocuportLoginPage extends DocuportBasePage {
    @FindBy(xpath = "//label[.='Username or email']//following-sibling::input")
    public WebElement usernameBar;
    @FindBy(xpath = "//label[.='Password']//following-sibling::input")
    public WebElement passwordBar;
    @FindBy(xpath = "//button[@type='submit']")
    public WebElement logInButton;

    public void login(String userType) {
        usernameBar.sendKeys(ConfigurationReader.getProperty(userType.toLowerCase() + "_username"));
        passwordBar.sendKeys(ConfigurationReader.getProperty("password"));
        logInButton.click();
    }
}