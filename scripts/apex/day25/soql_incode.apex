List<Account> allAccounts = [SELECT Name, Phone, AnnualRevenue FROM Account];

for (Account each : allAccounts) {
  System.debug('Current Name : ' + each.Name);
}

// SELECT Name , Price__c , Contact__r.Name
// FROM Book__c
// ORDER BY Contact__r.Name DESC NULLS LAST