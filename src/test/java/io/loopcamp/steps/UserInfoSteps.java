package io.loopcamp.steps;

import io.cucumber.java.en.*;
import io.loopcamp.utilities.DatabaseUtilities;
import org.junit.Assert;

import java.util.List;

public class UserInfoSteps {
    @Given("Establish the database connection")
    public void establish_the_database_connection() {
        System.out.println("-------------------------");
        System.out.println("CONNECTION IS HANDLED IN HOOKS");
        System.out.println("-------------------------");
    }

    List<String> actualList;

    @When("Execute query to get all columns for {string}")
    public void execute_query_to_get_all_columns_for(String string) {
        DatabaseUtilities.runQuery("SELECT * FROM identity." + string);
        actualList = DatabaseUtilities.getColumnDataAsList("name");
        System.out.println("Actual list: " + actualList);
    }

    @Then("verify the below columns are listed in result for")
    public void verify_the_below_columns_are_listed_in_result_for(List<String> expectedList) {
        Assert.assertEquals(expectedList, actualList);
        System.out.println("Expected list: " + expectedList);
    }
}