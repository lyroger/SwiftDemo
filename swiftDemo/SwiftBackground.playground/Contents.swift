//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    var name:String = ""
    
    func getName() -> String {
        print(name);
        return name;
    }
}

func addTo(adder: Int) -> (Int) -> Bool {
    return {
        num in
        return num > adder
    }
}

let addTwo = addTo(adder: 2)
let result = addTwo(6)



func addOne(one: Int) -> Int {
    return one + 1
}
addOne(one: 1)

func greaterThan(comparer: Int) -> (Int) -> Bool {
    return { $0 > comparer }
}

let greaterThan10 = greaterThan(comparer: 10);

//区域预算法
for i in 1...5 {
    print(i)
}

for c in "hello,swift".characters {
    print("\(c)\t\("hello".characters.count)")
}

for u in "ahello,swift".utf8 {
    print(u)
}

var i = 1
//var array = Array<Any>()
var array:[Any] = [1,2,3];//可以先初始化一些数据
array.append(i);

for index in 1...4 {
    array.append(index)
}

var p:Person = Person()
p.name = "luoyan"

array.append("a");
array.remove(at: 0)
array.append(p);

for index in array {
    if index is Person {
        let person = index as! Person
        person.getName()
    } else {
        print(index)
    }
}


var a = 5

switch a {
case 1,2,5:
    print(a)
    fallthrough
default:
    print("default")
}





