package io.loopcamp.practice_steps;

import io.cucumber.java.en.*;
import io.loopcamp.utilities.DatabaseUtilities;
import org.junit.Assert;

import java.util.List;

public class Task01 {
    List<String> allColumns;

    @Given("Establish the database connection")
    public void establish_the_database_connection() {
        DatabaseUtilities.createConnection();
    }

    @When("Execute query to get all IDs from users")
    public void execute_query_to_get_all_i_ds_from_users() {
        DatabaseUtilities.runQuery("select * from document.users");
    }

    @Then("verify all users has unique ID")
    public void verify_all_users_has_unique_id() {
        List<String> idList = DatabaseUtilities.getColumnDataAsList("id");
        for (int i = 0; i < idList.size(); i++) {
            int counter = 0;
            for (String each : idList) {
                if (idList.get(i).equals(each)) {
                    counter++;
                }
            }
            Assert.assertEquals("There are duplicate ID's!", 1, counter);
        }
    }

    @When("Execute query to get all columns")
    public void execute_query_to_get_all_columns() {
        allColumns = DatabaseUtilities.getAllColumnNamesAsList();
    }

    @Then("verify the below columns are listed in result")
    public void verify_the_below_columns_are_listed_in_result(List<String> list) {
        for (int i = 0; i < list.size(); i++) {
            Assert.assertEquals("Column names aren't matching!", list.get(i), allColumns.get(i));
        }
    }

}