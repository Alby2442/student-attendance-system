package utility;

public class ValidationUtil {

    public static boolean isValidPhone(
    String phone){

        return phone.matches("[0-9]{10}");
    }

    public static boolean isValidPassword(
    String password){

        return password.matches(
        "^(?=.*[A-Z])(?=.*[0-9]).{6,}$"
        );
    }

    public static boolean isValidEmail(
    String email){

        return email.matches(
        "^[A-Za-z0-9+_.-]+@(.+)$"
        );
    }
}