
// void mean nothing return
import 'dart:io';

void main()
{
print("welcome to Dart");

stdout.write("Enter your name");

var name=stdin.readLineSync();

print("Welcome,$name");

var sushil=new Human();
Human(); // creating class object

  // Variable and Datatypes

  int a,b,total;
  String fname,lname;
  a=10; // by default variable is non nullable
  b=20;
  total=a+b;
  print("Total is $total");

  fname="Sushil";
  lname="Mishra";
  print("My name is $fname $lname");

  BigInt longValue;
  longValue=BigInt.parse('1000000000');
  print("Long value is $longValue");

  double percentage=99.45; //decimal value or whole value
  num per=99.86; // decimal value or whole value

  bool isTrue=true;  // boolean value

// var and

var name1="Sushil"; // Datatype not mentioned automatically detect
var name2="Mishra"; // by Default datatype is dynamic


print("My name is $name1 $name2");

var section;

section="pankaj"; // string
section=10; // integer
}

// create a class by name Human
class Human{

 // Human is a constructor
 Human();

}