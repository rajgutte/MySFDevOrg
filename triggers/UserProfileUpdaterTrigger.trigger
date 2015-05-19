trigger UserProfileUpdaterTrigger on User (before insert) {
    User[] u = Trigger.new;
    UserProfileUpdaterClass.updateAllowForecasting(u);
}