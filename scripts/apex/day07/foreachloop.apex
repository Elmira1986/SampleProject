/**
For each loop is specifically used to 
Interate over (loop through ) each and every item
inside Collection like (List , Set)


for (DataType eachItem  : yourCollectionVariable  ){
    // do what you want to do with each item
}
*/

List<Integer> numberList = new List<Integer>{5,7,4,9,6} ; 
// print out the size of this list 
System.debug('Item count: '  + numberList.size()   ); 

for(Integer each  : numberList){
    System.debug(each); 
}

// Create a List of String and add 4 items 
// use for each loop to iterate over them print it out 
// here is how you would do it in one shot 
// List<String> roles = new List<String>{'clock-master','screenshot-master','karate-girl','type-master'};

List<String> roles = new List<String>(); 
roles.add('clock-master');
roles.add('screenshot-master');
roles.add('karate-girl');
roles.add('type-master');
// use for each loop to iterate over each item and print
for(String eachRole : roles){
    System.debug('Current Role: ' + eachRole ) ; 
}

// Create a List of Decimal and add 6 values in it 
// iterate over each item and print it out 
List<Decimal> prices 
    = new List<Decimal>{9.99,  2.59, 3.14 , 9.9 , 10.5}; 


for(Decimal eachPrice  :   prices  ){
    System.debug('Price is : ' +  eachPrice ) ; 
}

// optionally , create a variable outside of your loop called sum 
// then use your for each loop to get the sum of all decimal numbers
 Decimal sum = 0 ; 

 for(Decimal eachPrice  : prices){
    //sum = sum + eachPrice ; 
    sum += eachPrice ; 
 }

 System.debug('Sum is ' + sum);