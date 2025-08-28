void main()
{

sum(); // if i access direct function

  myClass();

  var myCl=myClass(); // create object of myClass
  myCl.printName(); // call printName method

  myCl.add(); // call add method
  myCl.sum(10,20); // call sum method
  myCl.sum(100,200); // call sum method

}

sum()
{
  int a,b,total;
  a=10;
  b=20;
  total=a+b;
  print("sum of two number,$total");
}

class myClass
{

  myClass() // constructor
      {
        print("myClass Object Created");
      }

  // declare a method with no return type to print a name
  void printName()
  {
    print("Name is Sushil ");
  }

  int add()  // method with no parameter
  {
    int a,b,total;
    a=10;
    b=35;
    total=a+b;
    return  total;
  }

  int sum(int a,int b) // method with parameter
  {
    int total;
    total=a+b;
    print("sum of two number,$total");
    return total;

  }
}