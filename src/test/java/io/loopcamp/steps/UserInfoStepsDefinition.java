package io.loopcamp.steps;

import io.cucumber.java.en.*;

public class UserInfoStepsDefinition {
    @Given("Establish the database connection")
    public void establish_the_database_connection() {
        System.out.println();
    }
    @When("Execute query to get all columns for {string}")
    public void execute_query_to_get_all_columns_for(String string) {
    }
    @Then("verify the below columns are listed in result for")
    public void verify_the_below_columns_are_listed_in_result_for(io.cucumber.datatable.DataTable dataTable) {
    }
}