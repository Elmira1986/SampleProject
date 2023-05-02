AggregateResult oppResult = [
  SELECT
    COUNT(Id) CountOfOpps,
    MIN(Amount) LowestAmount,
    MAX(CreatedDate) LastestOppCreatedDate
  FROM OPPORTUNITY
];

System.debug('Count of Opps is ' + oppResult.get('CountOfOpps'));
System.debug('MIN(Amount) is ' + oppResult.get('LowestAmount'));
// .get method of AggregateResult pe will return general type object
// and if we want to store it into specific type we need to cast it
// below lines putting (DataType) known as casting 
// it will convert from one type to another type
// in this case Object to Integer, Decimal, DateTime
Integer count       = (Integer) oppResult.get('CountOfOpps');
Decimal amount      = (Decimal) oppResult.get('LowestAmount');
DateTime latestDate = (DateTime) oppResult.get('LastestOppCreatedDate');

System.debug('count value is : ' + count);
System.debug('amount value is : ' + amount);
System.debug('latestDate value is : ' + latestDate);