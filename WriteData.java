package examples.users;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

public class WriteData {

    public void writeData(String line) throws FileNotFoundException, UnsupportedEncodingException {
        PrintWriter printWriter = new PrintWriter("data.txt","UTF-8");
        printWriter.println("Hi this is first line adding in to file");
        printWriter.println("Hi this is second line adding in to file");
        printWriter.println(line);
        printWriter.close();
    }
}
