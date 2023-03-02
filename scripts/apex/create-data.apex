/*********** Start The Platform Internal User Creation ***********/
Profile profileId1 = [SELECT Id 
                     FROM Profile 
                     WHERE Name = 'Standard Platform User' 
                     LIMIT 1];

String uniqueName1 = '0' + Integer.valueOf(math.rint(math.random()*1000000));

User usr1 = new User(
        LastName = 'EXPERIMENT',
        FirstName='THE PLATFORM USER',
        Alias = 'platform',
        Email = '<put-your-email-here>',
        Username = 'ThePlatformUser' + uniqueName1 + '@YOPmail.com',
        ProfileId = profileId1.id,
        TimeZoneSidKey = 'GMT',
        LanguageLocaleKey = 'en_US',
        EmailEncodingKey = 'UTF-8',
        LocaleSidKey = 'en_US'
        );

Insert usr1;
System.debug('Id = ' + usr1.id);
/*********** End The Platform Internal User Creation ***********/

/*********** Start The Salesforce Internal User Creation ***********/
Profile profileId2 = [SELECT Id 
                     FROM Profile 
                     WHERE Name = 'Read Only' 
                     LIMIT 1];

String uniqueName2 = '0' + Integer.valueOf(math.rint(math.random()*1000000));

User usr2 = new User(
        LastName = 'EXPERIMENT',
        FirstName='THE SALESFORCE USER',
        Alias = 'salesfo',
        Email = '<put-your-email-here>',
        Username = 'TheSalesforceUser' + uniqueName2 + '@YOPmail.com',
        ProfileId = profileId2.id,
        TimeZoneSidKey = 'GMT',
        LanguageLocaleKey = 'en_US',
        EmailEncodingKey = 'UTF-8',
        LocaleSidKey = 'en_US'
        );

Insert usr2;
System.debug('Id = ' + usr2.id);
/*********** End The Salesforce Internal User Creation ***********/

/*********** Start External User Creation - CC ***********/
//Create Business Account        
Account act3 = new Account(
         Name = 'EXPERIMENT TEST ACCOUNT',
         OwnerId = UserInfo.getUserId()
);
Insert act3;

//Create Contact
Contact con3 = new Contact(
    FirstName='EXPERIMENT',
    LastName='CC User',
    Email= '<put-your-email-here>',
    AccountId = act3.Id);

Insert con3;

//Create User
Profile profileId3 = [SELECT Id 
                     FROM Profile 
                     WHERE Name = 'Customer Community User' 
                     LIMIT 1];

String uniqueName3 = '0' + Integer.valueOf(math.rint(math.random()*1000000));

User usr3 = new User(
        LastName = 'EXPERIMENT',
        FirstName='CC User',
        Alias = 'ccuser',
        Email = con3.Email,
        Username = 'ccuser' + uniqueName3 + '@YOPmail.com',
        ProfileId = profileId3.id,
        ContactId = con3.Id,
        CommunityNickname = 'ccuser',
        TimeZoneSidKey = 'GMT',
        LanguageLocaleKey = 'en_US',
        EmailEncodingKey = 'UTF-8',
        LocaleSidKey = 'en_US'
        );

Insert usr3;
System.debug('Id = ' + usr3.id);
/*********** End External User Creation - CC ***********/

/*********** Start External User Creation - CC+ ***********/
//Create Contact
Contact con4 = new Contact(
    FirstName='EXPERIMENT',
    LastName='CCPlus User',
    Email= '<put-your-email-here>',
    AccountId = act3.Id);

Insert con4;

//Create User
Profile profileId4 = [SELECT Id 
                     FROM Profile 
                     WHERE Name = 'Customer Community Plus User' 
                     LIMIT 1];

String uniqueName4 = '0' + Integer.valueOf(math.rint(math.random()*1000000));

User usr4 = new User(
        LastName = 'EXPERIMENT',
        FirstName='CCPlus User',
        Alias = 'ccpuser',
        Email = con4.Email,
        Username = 'ccplususer' + uniqueName4 + '@YOPmail.com',
        ProfileId = profileId4.id,
        ContactId = con4.Id,
        CommunityNickname = 'ccpuser',
        TimeZoneSidKey = 'GMT',
        LanguageLocaleKey = 'en_US',
        EmailEncodingKey = 'UTF-8',
        LocaleSidKey = 'en_US'
        );

Insert usr4;
System.debug('Id = ' + usr4.id);
/*********** End External User Creation - CC+ ***********/

/*********** Start External User Creation - Partner ***********/
//Create Contact
Contact con5 = new Contact(
    FirstName='EXPERIMENT',
    LastName='CCPlus User',
    Email= '<put-your-email-here>',
    AccountId = act3.Id);

Insert con5;

//Create User
Profile profileId5 = [SELECT Id 
                     FROM Profile 
                     WHERE Name = 'Partner Community User' 
                     LIMIT 1];

String uniqueName5 = '0' + Integer.valueOf(math.rint(math.random()*1000000));

User usr5 = new User(
        LastName = 'EXPERIMENT',
        FirstName='Partner User',
        Alias = 'paruser',
        Email = con5.Email,
        Username = 'partneruser' + uniqueName5 + '@YOPmail.com',
        ProfileId = profileId5.id,
        ContactId = con5.Id,
        CommunityNickname = 'partuser',
        TimeZoneSidKey = 'GMT',
        LanguageLocaleKey = 'en_US',
        EmailEncodingKey = 'UTF-8',
        LocaleSidKey = 'en_US'
        );

Insert usr5;
System.debug('Id = ' + usr5.id);
/*********** End External User Creation - Partner ***********/