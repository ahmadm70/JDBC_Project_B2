package io.loopcamp.pages;

import io.loopcamp.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.time.Duration;
import java.util.List;

public class DocuportBasePage {
    public DocuportBasePage() {
        PageFactory.initElements(Driver.getDriver(), this);
    }

    @FindBy(xpath = "//div[@class='v-list-item__title']//span")
    public List<WebElement> elementsList;
    @FindBy(xpath = "//div[@class='v-data-footer__pagination']")
    public WebElement resultsCount;

    public void navigateTo(String elementName) {
        //Driver.getDriver().findElement(By.xpath("//a[@href='/" + elementName.toLowerCase().replace(' ', '-') + "']")).click();
        //Line below does exact same thing
        for (WebElement each : elementsList) {
            if (each.getText().equalsIgnoreCase(elementName)) {
                each.click();
            }
        }
    }

    public int getCount() {
        return Integer.parseInt(resultsCount.getText().substring(resultsCount.getText().lastIndexOf(" ") + 1));
    }
}