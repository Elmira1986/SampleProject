/**

String is a Data type to Store text 

It has a lot of reusable methods that we can use directly 
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_methods

 */

String message = 'Hello World' ; 

//https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_length

// length() method: return the character count inside the String 
System.debug('message.length() value is : ' + message.length() ); 

// isEmpty(yourStringHere) method ; return true if it's not '' or null else false 

System.debug('String.isEmpty(message) value is : ' + String.isEmpty(message)  ); 

String msg1 = '    ' ; 
System.debug('String.isEmpty(msg1) value is : ' + String.isEmpty(msg1)  ); 

// isBlank method : Returns true if the specified String is white space, empty (''), or null; otherwise, returns false.
System.debug('String.isBlank(msg1) value is : ' + String.isBlank(msg1)  ); 


// toUpperCase()   return the UPPERCASE version of the text 
System.debug('message.toUpperCase() value is : ' + message.toUpperCase() ); 


// toLowerCase()   return the lowercase version of the text 
System.debug('message.toLowerCase() value is : ' + message.toLowerCase() ); 


String season = 'summer' ; 

switch on season.toUpperCase()  {

    when 'SPRING' {
        System.debug('value Spring match');
    }
    when 'SUMMER' {
        System.debug('value Summer match');
    }
    when 'FALL' {
        System.debug('value Fall match');
    }
    when else {
        System.debug('nothing match');
    }
}


//--------------Checking for String contains some substring 
/**
contains(substring)
Returns true if and only if the String that called the method contains the specified sequence of characters in substring.

Example :   
'abcd' contains 'ab'  true  
'abcd' contains 'ac'  false   
 */

 System.debug('message.contains(\'Hello\')  value is : ' + message.contains('Hello') ); 
