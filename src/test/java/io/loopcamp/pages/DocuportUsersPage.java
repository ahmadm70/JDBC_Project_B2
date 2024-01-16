package io.loopcamp.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class DocuportUsersPage extends DocuportBasePage {
    @FindBy(xpath = "//button[contains(.,'Search')]")
    public WebElement searchButton;
    @FindBy(xpath = "//label[.='All']")
    public WebElement allButton;
    @FindBy(xpath = "//span[.=' Search ']")
    public WebElement updateSearchButton;
}