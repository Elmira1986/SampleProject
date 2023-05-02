trigger BookOwnerTrigger on Book__c(before insert, before update) {
  Set<Id> contactIdSet = new Set<Id>();
  for (Book__c each : Trigger.new) {
    if (each.Contact__c != null) {
      contactIdSet.add(each.Contact__c);
    }
  }

  List<Contact> contactList = [ SELECT Id, Name, OwnerId FROM Contact
                              WHERE Id IN :contactIdSet];
  Map<Id, Contact> parentContactsMap = new Map<Id, Contact>(contactList);

  for (Book__c each : Trigger.new) {
    if (each.Contact__c != null) {
      each.OwnerId = parentContactsMap.get(each.Contact__c).OwnerId;
    }
  }

}