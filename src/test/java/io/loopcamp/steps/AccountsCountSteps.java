package io.loopcamp.steps;

import io.cucumber.java.en.*;
import io.loopcamp.pages.DocuportLoginPage;
import io.loopcamp.pages.DocuportUsersPage;
import io.loopcamp.utilities.BrowserUtilities;
import io.loopcamp.utilities.DatabaseUtilities;
import org.junit.Assert;

public class AccountsCountSteps {
    DocuportLoginPage docuportLoginPage;
    DocuportUsersPage docuportUsersPage;
    int expectedUserCount;

    @Given("the {string} on the home page")
    public void the_on_the_home_page(String userType) {
        docuportLoginPage = new DocuportLoginPage();
        docuportUsersPage = new DocuportUsersPage();
        docuportLoginPage.login(userType);
    }

    @Given("the user navigates to {string} page")
    public void the_user_navigates_to_page(String string) {
        docuportLoginPage.navigateTo(string);
    }

    @When("the user gets total user count")
    public void the_user_gets_total_user_count() {
        docuportUsersPage.searchButton.click();
        docuportUsersPage.allButton.click();
        docuportUsersPage.updateSearchButton.click();
        BrowserUtilities.waitFor(3);
        expectedUserCount = docuportUsersPage.getCount();
    }

    @Then("verify user count information match in DB")
    public void verify_user_count_information_match_in_db() {
        DatabaseUtilities.runQuery("select count (*) from document.users");
        int actualUserCount = Integer.parseInt(DatabaseUtilities.getCellValue(1, 1));
        Assert.assertEquals("Number of users aren't matching!", actualUserCount, expectedUserCount);
    }
}