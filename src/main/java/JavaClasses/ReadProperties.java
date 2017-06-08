/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaClasses;

import java.io.IOException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author raojha
 */
public class ReadProperties {
    public String read_Db_url()
    {
        java.io.InputStream is = getClass().getClassLoader().getResourceAsStream("my.properties");
        java.util.Properties p = new Properties();
        try {
            p.load(is);
        } catch (IOException ex) {
            Logger.getLogger(ReadProperties.class.getName()).log(Level.SEVERE, null, ex);
        }
        String name = p.getProperty("databse_url");
        return name;
    }
}
