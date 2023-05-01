import 'dart:io';
import 'dart:math';

void main(List<String> args) {
//Question # 01
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
    'fri': 4000.0,
  };
  // print('map value is ${checkFriday(expenses)}');
  Map checkFriday(Map exp) {
    if (exp.containsKey('fri')) {
      exp['fri'] = 5000.0;
    } else {
      exp.putIfAbsent('fri', () => 5000.0);
    }

    return exp;
  }

  print('map value is ${checkFriday(expenses)}');

    print("=================================================================================================");


  //Question # 02


  print("Enter radius to find the area of circle");
  double rad = double.parse(stdin.readLineSync()!);

  double findAreaOfCircle(double radius) {
    double area = (3.14) * (radius * radius);
    return area;
  }

  print(findAreaOfCircle(rad));

  print("=================================================================================================");

  //Question # 03

  print("You need to enter values of a & b to find   Pythagorean theorem");

  print("Enter value of a");

  double a = double.parse(stdin.readLineSync()!);
  print("Enter value of b");

  double b = double.parse(stdin.readLineSync()!);

  double findPythagoreantheorem(double a, double b) {
    double sqval = (a * a) + (b * b);
    double c = sqrt(sqval);

    return c;
  }

  print(" Pythagorean theorem ${findPythagoreantheorem(a, b)}");

  print("=================================================================================================");

  //Question # 04

  print("Enter a string to find its reverse order");
  String inp = stdin.readLineSync()!;
  void findReversedString(String input) {
    String reversedOne = input.split('').reversed.join();
    print(reversedOne);
  }

  findReversedString(inp);


  print("=================================================================================================");

  //Question # 05

  Map createUser(String username, String useremail, String userpassword,
      {String phoneNum = ""}) {
    Map userMap = {};
    if (phoneNum.isEmpty) {
      userMap = {
        'userName': username,
        'userEmail': useremail,
        'userPassword': userpassword,
      };
      print('user has been created');
    } else {
      userMap = {
        'userName': username,
        'userEmail': useremail,
        'userPassword': userpassword,
        'userPhoneNum': phoneNum,
      };
      print('user has been created');
    }
      return userMap;
  }

print("Please enter details to get signed up");
print("Please Enter Details OF User 1");
print('Please enter user name');
String userName1 = stdin.readLineSync()!;
print('Please enter email');
String useremail1 = stdin.readLineSync()!;
print('Please enter password');
String password1 = stdin.readLineSync()!;
print('Please enter Phone Number it is optional');
String phonenum = stdin.readLineSync()!;

Map userData = createUser(userName1, useremail1, password1,phoneNum: phonenum);
print("Please Enter Details OF User 2");

print('Please enter user name');

String userName2 = stdin.readLineSync()!;
print('Please enter email');
String useremail2 = stdin.readLineSync()!;
print('Please enter password');
String password2 = stdin.readLineSync()!;


Map userData2=createUser(userName2, useremail2, password2);
print("Please Enter Details OF User 3");

print('Please enter user name');

String userName3 = stdin.readLineSync()!;
print('Please enter email');
String useremail3 = stdin.readLineSync()!;
print('Please enter password');
String password3 = stdin.readLineSync()!;
print('Please enter password it is optional');
String phonenum3 = stdin.readLineSync()!;
Map userData3 = createUser(userName3, useremail3, password3,phoneNum:phonenum3);


print("Please enter email to logg in");
  String loginEmail = stdin.readLineSync()!;

  print("Please enter password to login");
    String loginpassword = stdin.readLineSync()!;

void userLogin(String loginEmail, String loginpassword){
  

    if((loginEmail == userData['userEmail'] || loginEmail == userData2['userEmail'] || loginEmail == userData3['userEmail']) && (loginpassword == userData['userPassword'] || loginpassword == userData2['userPassword'] || loginpassword == userData3['userPassword'])){

      print('Login successfull');
    }
    else{
      print('Wrong Credentials');
    }

}
userLogin(loginEmail, loginpassword);



  print("=================================================================================================");

// Question 6


print("Enter value of force to find work");
double force = double.parse(stdin.readLineSync()!);
print("Enter value of displacement work");
double displacement = double.parse(stdin.readLineSync()!);
print('Enter time to find power');
double time = double.parse(stdin.readLineSync()!);





double findPower(double t, double force,double dis){

  double power = (force*dis)/t;

  return power;
}
print('Value of power  = ${findPower(time,force,displacement)}');


  print("=================================================================================================");



// Question # 7


print('Enter a word to find number of vovels and consansts in that word');

String wrd = stdin.readLineSync()!;


void findVovelsandConsants(String w){
  int countVovel=0;
    int countConsansts=0;

  for(int i =0; i < w.length;i++){

    if(w[i]=='a'||w[i]=='e'||w[i]=='i'||w[i]=='o'||w[i]=='u'){
        countVovel++;
    }
    else{
countConsansts++;
    }

  }
  print("No of vovels $countVovel");
    print("No of Consonents $countConsansts");



}
findVovelsandConsants(wrd);



}