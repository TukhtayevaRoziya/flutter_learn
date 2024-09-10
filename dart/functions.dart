// we can just use
// nameFunc(){...}

// or
// bool namefunc(){}
// this function must return bool type otherwise it will give error, or we can give any types before func name which define what will return in this func

// or arrow func like js
// funcName()=>{...}
//or
// String funcName()=>{...}

// also we can just accept anything for return in this case
// void funcName()=>{...}

// ------------- props -------------
// we can just simple write props to func
// funcName (props){...}

// or we can define which type will come as a props by writing type before props
// funcName(String name){}

// also we can define type to many props
// funcName ({String name, Int age}){...}

// is props give spesific type or null we can use String?, Int? 
// funcName ({bool? isActive, String? name}){...}

// or we can give default value
// funcName ({name:"Roziya", age:16}){...}

// or we can do it both
// funcName ({String name='Roziya', int age=16, bool isActive=false}){...}

// also we can put required to props
// const funcName ({key, required Widget child}){...}
// also it can be nulleble like required?

// dart map also look like js map but after that we have to put .toList()
// const list = ['apples', 'bananas', 'oranges'];

// var uppercaseList = list.map((item) {
//   return item.toUpperCase();
// }).toList();
// // Convert to list after mapping

// for (var item in uppercaseList) {
//   print('$item: ${item.length}');
// }