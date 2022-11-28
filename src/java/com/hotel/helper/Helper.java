package com.hotel.helper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

public class Helper {
    public static boolean deleteFile(String path){
        boolean check = false;
        try {
            File file = new File(path);
            check = file.delete();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return check;
    }
    
    public static boolean saveFile(InputStream is, String path){
        boolean check = false;
        try {
            byte b[] = new byte[is.available()];
            is.read(b);
            
            FileOutputStream fos = new FileOutputStream(path);
            fos.write(b);
            fos.flush();
            fos.close();
            check = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return check;
    }
}
