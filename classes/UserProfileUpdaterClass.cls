public class UserProfileUpdaterClass {
    public static void updateAllowForecasting(User[] users) {
        for(User u: users)
            u.ForecastEnabled = true;
    }
}