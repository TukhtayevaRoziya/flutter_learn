// --------------Variales--------------

// If we give nothing to type variable like String name;
// We should put "?" after any type f.e: String? name, Number? age
// It means Null or that data type

// ------ Late variables ------

// if you are sure you will give smth to that variable in this code you can use
// late String; in this case you won't see any errors

// and also if you don't use it so it should

// Stiring
var name = 'Roziya';
String nameStr = 'Roziya';
String? nameStr2;
// String nameStr3; this will give error

// Integer
var age = 16;
int ageInt = 16;

// Boolean
var isTrue = false;
bool isTrueBool = true;

//  If an object isn't restricted to a single type
dynamic firstName = 'ROziya';
Object lastName = 'Tukhtayeva';

// final and const

// final and const almost same but
// int x = 12;
// const myConst_X = x; // it will give error because we can't give variable to const 
// final myFinal_X = x; // it won't give error we can give variables to final
// but we re-asign x it will give error in final
