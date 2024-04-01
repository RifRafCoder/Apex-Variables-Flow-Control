// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);

//sets
/*
Set<String> fruits = new Set<String>();
fruits.add('Apple');
fruits.add('Orange');
fruits.add('Lemon');
fruits.add('Lemon');
fruits.add('Banana');
System.debug(fruits);
System.debug(fruits.size());

for(String fruit : fruits){
    System.debug(fruit);
} 

Set<String> thingsToEat = new Set<String>{'Rice', 'Chicken'};
System.debug(thingsToEat);
thingsToEat.addAll(fruits); // add two sets together
hasApple = thingsToEat.contains('Apple');
System.debug('Does thingsToEat have apples?' + hasApple);
*/

//Maps

Map<String, Integer> dayOfWeekMap = new Map<String,Integer>();

dayOfWeekMap.put('Mon', 1);
dayOfWeekMap.put('Tue', 2);
dayOfWeekMap.put('Wed', 3);
dayOfWeekMap.put('Thu', 4);
dayOfWeekMap.put('Fri', 5);
dayOfWeekMap.put('Sat', 6);
dayOfWeekMap.put('Sun', 7);
System.debug(dayOfWeekMap);
System.debug('Map size '+ dayOfWeek.size());

String dayOfWeek = 'Mon';
Integer dayOfWeekNumber = dayofWeekMap.get(dayOfWeek);
System.debug('Day of the week number: ' + dayOfWeekNumber);

// keySet gets all keys in the set - put in day
//then can get value of particular key
for(String day : dayOfWeekMap.keySet()){
    System.debug('Day of the week: ' + day);
    System.debug('Day of the week number: ' + dayOfWeekMap.get(day));
}


Map<Id, Account> accountMap = new Map<Id, Account>();
//add accounts into a list
List<Account> accounts = [SELECT id, Name FROM Account LIMIT 10];

//iterate over each account - and populate Map with account Id and Account.
for(Account acc: accounts){
    accountMap.put(acc.Id, acc);
}

System.debug('Account map: ' + accountMap);

Id accId = accounts[5].Id;
//containsKey checks if key exists in the map.
if(accountMap.containsKey(accId)){
    Account singleAcc = accountMap.get(Id);
    System.debug(singleAcc);
}
//.values - gets all values in map
for(Account accInMap : accountMap.values()){
    System.debug('Account inside of map ' + accInMap);
}


