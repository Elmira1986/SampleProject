trigger AccountContactsUpdate on Account (after update) {


    // If phone number of Account is updated 
    // update all the related contacts phone number field 

    //1. Create a Set<Id> to store only those Accounts Id
    // that entered the Trigger with phone number updated 
    Set<Id> accIds = new Set<Id>(); 
    for(Account each : Trigger.new) {

        Account oldEach = Trigger.oldMap.get(each.Id) ; 
        if( each.phone != oldEach.Phone  ){
            accIds.add(each.Id); 
        }
    }

    //2. Get all the contacts belong to those Accounts 
    List<Contact> allContacts = [SELECT Name, AccountId, Phone 
                                    FROM Contact
                                    WHERE AccountId in :accIds]; 

    //3. Update the contact phone number with Account phone number 
    for(Contact each : allContacts) {
        Account parentAcc = Trigger.newMap.get(each.AccountId);
        each.phone =  parentAcc.phone ; 
    }
    //4. Perform DML to update allContacts 
    update allContacts ; 

}