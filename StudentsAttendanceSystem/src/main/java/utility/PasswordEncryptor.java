package utility;

import java.security.MessageDigest;

public class PasswordEncryptor {

    // ENCRYPT PASSWORD

    public static String encryptPassword(
            String password) {

        try {

            if(password == null){

                return null;
            }

            MessageDigest md =
            MessageDigest.getInstance("SHA-256");

            byte[] hash =
            md.digest(password.getBytes("UTF-8"));

            StringBuilder sb =
            new StringBuilder();

            for(byte b : hash){

                sb.append(
                String.format("%02x", b)
                );
            }

            return sb.toString();

        } catch (Exception e) {

            e.printStackTrace();

            return null;
        }
    }

    // MATCH PASSWORD

    public static boolean matchPassword(
            String normalPassword,
            String encryptedPassword){

        String newEncryptedPassword =
        encryptPassword(normalPassword);

        return newEncryptedPassword
        .equals(encryptedPassword);
    }
}