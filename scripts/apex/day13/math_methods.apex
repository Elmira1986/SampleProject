/**
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm#apex_System_Math_mod

Math class is a class coming from Apex itself 
It has lot of pre-written code about math that we can just use directly 

Mod operator in math allow you to get the remainder of division 

10 / 3 = 3    1 remain  

*/

Integer num1 = 10 ;
Integer num2 = 5 ;

Integer result =  num1 / num2 ; 
System.debug('result value is : ' + result); 

// Math.mod(num1 , num2 ) ===>> remainder of the division 
Integer remainder  =   Math.mod(num1, num2)    ;
System.debug('remainder value is : ' + remainder); 

/**
Odd or Even in Math 
Odd number is number that will have remainder of 1 when divided by 2 
Even number is number that will have remainder of 0 when divided by 2 
 */
Integer score = 5 ;

// store the result of checking the number is even or odd into a Boolean variable 
Boolean isEven =  Math.mod(score , 2) == 0 ; 
System.debug('isEven value is : ' + isEven); 

// print odd number if score is odd , and print even number if its even 
if( isEven ==true ){
    System.debug('Even number'); 
}else{
     System.debug('Odd number'); 
}

// what if we do not want to create a variable to store the result of even or odd 

if( Math.mod(score,2)==0 ){
   System.debug('Even number'); 
}else{
     System.debug('Odd number'); 
}

// Math.max(number 1 , number 2) ==> return the bigger number 

System.debug('which number is bigger : '   +  Math.max(111, 99)  ); 
//which number is bigger : 111

// Math.min(number 1 , number 2) ==> return the smaller number 
System.debug('which number is smaller : '   +  Math.min(111, 99)  ); 
//which number is smaller : 99

// example of one way to convert Double into Integer(there is other way)
Double price = 15.5 ;
Integer priceWholeNumber =  price.intValue();  // 15
System.debug('priceWholeNumber value is : ' + priceWholeNumber); 

// Math.random() ==> 
// Returns a positive Double that is greater than or equal to 0.0 and less than 1.0.
// if you want to get the number from 0.0 - 10.0 instead 
//   -> simply multiply by 10  ===>  
// if you want to get the number from 50.0 - 60.0 instead 
//   -> simply multiply by 10 and + 50 ===>  
// if you want to get the number from 0.0 - 100.0 instead 
//   -> simply multiply by 100  ===> 
// if you want to get the number from 0.0 - 1000.0 instead 
//   -> simply multiply by 1000  ===>  
// if you want to get the number from 300.0 - 1300.0 instead 
//   -> simply multiply by 1000  + 300 ===> 


Double randomDbl =  Math.random() * 100  ; 
System.debug('randomDbl value is : ' + randomDbl); 
// System.debug('randomDbl value is : ' + randomDbl * 100    ); 

Integer randomInteger =   randomDbl.intValue() ; 
System.debug('randomInteger value is : ' + randomInteger); 
