package io.loopcamp.runner;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"html:target/html-reports/cucumber-reports.html", "rerun:target/rerun.txt", "json:target/json-reports/json-report"},
        features = "src/test/resources/practice_features",
        glue = "io/loopcamp/practice_steps",
        dryRun = false,
        monochrome = true,
        tags = "@wip"
)
public class CukesRunner {
}