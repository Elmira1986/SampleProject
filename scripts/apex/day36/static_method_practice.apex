
List<Integer> numberList = new List<Integer>{65,80,83,149,48};

Integer highNum = Helper.getHighestNumber(numberList);
System.debug('highNum value is : ' + highNum);  //83

List<Integer> numberList2 = new List<Integer>{10,17,66,23,078};

System.debug(numberList2 + ' Highest value is : ' 
                         + Helper.getHighestNumber(numberList2));
