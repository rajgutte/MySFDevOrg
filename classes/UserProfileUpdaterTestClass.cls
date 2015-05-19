@isTest
private class UserProfileUpdaterTestClass {

static testMethod void vaildateUserProfileUpdater() {
    User userToCreate = new User();
    
       userToCreate.FirstName = 'Rajeev';
       userToCreate.LastName  = 'Gutte';
       userToCreate.Email     = 'rajguttesfdc@gmail.com';
       userToCreate.Username  = 'sfdc-dreamer@gmail.com';
       userToCreate.Alias     = 'fatty';
       userToCreate.ProfileId = '00e90000000XQ7h';

       // Don't worry about these
       userToCreate.TimeZoneSidKey    = 'America/Denver';
       userToCreate.LocaleSidKey      = 'en_US';
       userToCreate.EmailEncodingKey  = 'UTF-8';
       userToCreate.LanguageLocaleKey = 'en_US';
       
       insert userToCreate;
       
       userToCreate = [ SELECT ForecastEnabled FROM User WHERE Id = :userToCreate.Id ];
       System.assertEquals ( true, userToCreate.ForecastEnabled );
}
}