package examples.users;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

class UsersRunner {

    /*@Karate.Test
    Karate testUsers() {
        return Karate.run("userdetails1").
                outputCucumberJson(true).
                relativeTo(getClass());
    }    */
    @Test
    public void testParallel() {
        Results results = Runner.path("classpath:examples/users/userdetails1.feature").
                outputCucumberJson(true).parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
        generateReport(results.getReportDir());
    }

    public static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), "demo");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }

}
