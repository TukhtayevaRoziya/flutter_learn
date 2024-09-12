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


// set, list
// we use Set<type> to {} this arr and List<type> to [] arr
// in set we can't dublicate values like Set<String> names = {'Roziya', 'Mario', 'Roziya'}
// it won't give error but last dublicated values won't show when we run it
// in List we can dublicate 
// for adding two of them works same
// listName.add('...')
// listName.remove("value of one of the element")
// listName.removeLast() // it'll just remove from end
// listName.shuffle() // it will restore orders of list/set randomly

// for loops are same with js
//
// void main() {
//   List<int> scores = [20, 55, 60, 30, 50, 30];
  
//   for (int score in scores.where((e)=> e > 50)){
// // -------------- in here we put where which is like a filter like condition as if 
//     print("Score is $score");
//   }
// }

/// ----- maps -----


// void main() {
//   var planets = {
//     'first': 'mercury',
//     'second': 'venus',
//     'third': 'earth',
//     'fourth': 'mars',
//     'fifth': 'jupiter',
//   };
  
// this way we can add elements
//   planets['sixth'] = 'urunas';

// this way we can get keys
//   print(planets.containsKey('first'));

// this way we can remove spesific element
//   print(planets.remove('first'));
  
//   print(planets);
// }
