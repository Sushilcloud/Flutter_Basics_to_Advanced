void main()
{
  print("Hi");

  var listName=["Sushil","Mishra"]; // List of string
  var age=[1,2,3,4,5,5]; // List of integer

  print(listName); // print list of string
  print(age); // print list of int

  var games=[];
  games.add("Cricket"); // add element in list
  games.add("Football");// add element in list
  games.add("Hockey"); // add element in list

  print(games); // print list of string

  games.remove("Cricket"); // remove element from list
  print(games); // print list of string

  var games1=[];
  games1.addAll(games);
  print("Save other list to this list,$games1"); // print list of string

  games1.insert(2, "Badminton"); // insert element in list, element)
  games1.insert(3, 25);
  print(games1); // print list of string

  //update any element in list
  games1[0]="Tennis";
  print(games1); // print list of string
  
  // replace range
  age.replaceRange(0, 3, [10,20,30,40]);
  print(age);
  age.removeLast();
  print(age);
  age.removeAt(0);
  print(age);

  // length of list
  print("Length :$age.length");
  print("Length :${age.length}");
  print("Length :${games1.length}");
  print("Length :${games.length}");
  print("Length :${games1.length}");
  // reversed of list
  print(age.reversed);
  print(age);

  // first
  print(age.first);
  print(age);

  //last
  print(age.last);
  print(age);
   // is empty
  print(age.isEmpty);
  print(age);

  // is not empty
  print(age.isNotEmpty);
  print(age);




}