//easy tasks
//1

let fruits: [String] = ["Apple", "Peach", "Mango", "Chaerry", "Melon"]
print(fruits[2])
//2
var numbers: Set<Int> = [1,2,3,4,5]
numbers.insert(6)
print(numbers)
//3
let dict: Dictionary<String, Int> = ["C++": 1991, "Java": 1996, "Swift": 2014]
print(dict["Swift"])
//4
var colors: [String] = ["red", "yellow", "white", "pink"]
colors[1] = "blue"
print(colors)

//medium tasks
//1
var first: Set<Int> = [1,2,3,4]
var second: Set<Int> = [3,4,5,6]
let intersection = first.intersection(second)
print(intersection)

//2
var students: Dictionary<String, Int> = ["Alma": 3, "Aruzhan": 4, "Aidana": 2]
students["Alma"] = 5
print(students)

//3
var arr1: [String] = [ "apple", "banana"]
var arr2: [String] = ["cherry", "date"]
print( arr1 + arr2)

//hard tasks
//1
var countries: Dictionary<String, Double> = ["China": 1.410, "India": 1.43, "US": 0.336]
countries.updateValue(0.280, forKey: "Indonesia")
print(countries)

//2
var pets1: Set<String> = ["cat", "dog"]
var pets2: Set<String> = ["dog", "mouse"]
var pets3 = pets1.union(pets2)
let result = pets3.subtracting(pets2)
print(result)
