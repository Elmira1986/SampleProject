// instantiate the CoffeeMaker
// create an instance of the CoffeeMaker
// create CoffeeMaker variable assign CoffeeMaker object
// all of the above are talking about same thing

CoffeeMaker c1 = new CoffeeMaker();
c1.brand = 'Nespresso';
c1.capacity = 9;
System.debug('c1 value is : ' + c1);

c1.makeCoffee();
//c1.makeCoffee();

c1.setTimer(5);
c1.setTimer(100);

c1.clean();
c1.addWater(50);
c1.addWater(70);

c1.addFlavor('Vanilla Mocha');
c1.addFlavor('caramel');
c1.addFlavor('Hazelnut');

c1.setStrength('High', 3) ; 
c1.setStrength('Intense', 5) ; 

// Instantiate the house
// create an instance of the house
// create house variable assign House object

/** 
House h1 = new House(); 
h1.style = 'Victorian';
h1.year  = 2023 ; 
h1.hasGarage = true ; 
h1.squareFootage = 3000 ; 

System.debug('h1 value is : ' + h1);
*/

/** 
House h2 = new House();
h2.style = 'Floridian';
h2.year = 1999 ; 
h2.hasGarage = false ; 
System.debug('h2 value is : ' + h2);


/** 

//how do we open this window
// ctrl + e

// since we have a class called Phone
// now we have a datatype called phone
// we can use it to create a variable
//we can create an instance of phone
// and assign it to the variable
// just like we did for account, contact
//and List, set and so on.
Phone p1 = new Phone();
p1.brand = 'Apple';
p1.price = 899.99 ;
p1.memorySize = 128 ;

System.debug(p1);
p1.price = 799.45;
System.debug(p1);

//create a phone variable and assign Phone Object to it
//create an instance of Phone and save it to a variable
//instanciate a phone ans save it to a variable
Phone p2 = new Phone();
p2.brand = 'Nokia';
p2.price = 499;
p2.memorySize = 512 ;
System.debug(p2);
System.debug(p2.brand);

Phone p3 = new Phone();
p3.brand = 'Google Pixel';
p3.price = 899.99;
p3.memorySize = 128;
System.debug('p3 value is : ' + p3);
*/
