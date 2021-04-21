package utilities;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Asiz on 4/19/2021.
 */
public class ReadProperties {

    public static BufferedReader br = null;
    public static FileReader fr = null;
    public static Map<String,String> propertyMap = new HashMap<String, String>();

    public static Map<String,String> readPropertyFile(){
        try {
            final String FILENAME = "src/main/resources/config.properties";
            fr = new FileReader(FILENAME);
            br = new BufferedReader(fr);
            String sCurrentLine;
            while ((sCurrentLine = br.readLine()) != null) {
                String propertyName= sCurrentLine.substring(0,sCurrentLine.indexOf(":"));
                String propertyValue = sCurrentLine.substring(sCurrentLine.indexOf(":") + 1 ,sCurrentLine.length());
                propertyMap.put(propertyName, propertyValue);
            }
        } catch (IOException e) {
            e.printStackTrace();

        } finally {
            try {
                if (br != null)
                    br.close();
                if (fr != null)
                    fr.close();
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        return propertyMap;

    }

    public static void main(String[] a){
        Map<String,String> k = ReadProperties.readPropertyFile();
        System.out.println(k.get("BrowserMode"));
    }
}
