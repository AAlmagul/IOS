import Foundation
//import Glibc
/*
// 1

for num in 1...100{
    if num%3==0 && num%5==0 {
        print("FizzBuzz")
    }
    else if num%3==0{
        print("Fizz")
    }
    else if num%5==0{
        print("Buzz")
    }
    else{
        print(num)
    }
}

// 2
func isPrime(_ number: Int) -> Bool {
    if number<=1 {
        return false
    }
    else if number == 2 || number == 3{
        return true
    }
    else if number%2==0 || number%3==0 || number%5==0{
        return false
    }
    else if number%2==0 && number%3==0{
        return false
    }
    return true
}

for number in 1...100 {
    if isPrime(number) {
        print(number)
    }
}
*/
//3
/*
func celsiusToFahrenheit(_ celsius: Double) -> Double {
    return celsius * 33.8
}

func celsiusToKelvin(_ celsius: Double) -> Double {
    return celsius + 273.15
}

func fahrenheitToCelsius(_ fahrenheit: Double) -> Double {
    return fahrenheit/33.8
}

func fahrenheitToKelvin(_ fahrenheit: Double) -> Double {
    return ( fahrenheit + 459.67) * (5/9)
}

func kelvinToCelsius(_ kelvin: Double) -> Double {
    return kelvin - 273.15
}

func kelvinToFahrenheit(_ kelvin: Double) -> Double {
    return (kelvin * (9/5)) - 459.67
}

print("Please enter temperature: ")
if let inputTemp = readLine(), let temperature = Double(inputTemp) {
    print("Please specify the unit: ")
    if let unit = readLine()?.uppercased() {
        switch unit {
        case "C":
            let fahrenheit = celsiusToFahrenheit(temperature)
            let kelvin = celsiusToKelvin(temperature)
            print("\(temperature)°C is equal to \(fahrenheit)°F and \(kelvin)K")
        case "F":
            let celsius = fahrenheitToCelsius(temperature)
            let kelvin = fahrenheitToKelvin(temperature)
            print("\(temperature)°F is equal to \(celsius)°C and \(kelvin)K")
        case "K":
            let celsius = kelvinToCelsius(temperature)
            let fahrenheit = kelvinToFahrenheit(temperature)
            print("\(temperature)K is equal to \(celsius)°C and \(fahrenheit)°F")
        default:
            print("Invalid unit! Please enter C, F, or K.")
        }
    } else {
        print("Try again")
    }
} else {
    print("Try again")
}
*/
//4
/*
var shoppingList: [String] = []

print("Shopping List Menu ")
print("1. Add item to the shopping list")    
print("2. Remove item from the shopping list")
print("3. Display current shopping list")
print("4. Exit the application")
  
while true {
    print("Enter your choice (1-4): ", terminator: "")
    if let choice = readLine() {
        switch choice {
        case "1":
            print("Enter the item to add: ", terminator: "")
            if let item = readLine(), !item.isEmpty {
                shoppingList.append(item)
                print("'\(item)' has been added to the shopping list.")
            }
            else {
                print("Invalid input. Please enter a valid item name.")
            }
            
        case "2":
            print("Enter the item to remove: ", terminator: "")
            if let item = readLine(), let index = shoppingList.firstIndex(of: item) {
                shoppingList.remove(at: index)
                print("'\(item)' has been removed from the shopping list.")
            }
            else {
                print("Item not found in the shopping list.")
            }
            
        case "3":
            if shoppingList.isEmpty {
                print("The shopping list is empty.")
            }
            else {
                print("\n Current Shopping List:")
                for (index, item) in shoppingList.enumerated() {
                    print("\(index + 1). \(item)")
                }
            }
            
        case "4":
            print("Exiting the application. Goodbye!")
            exit(0)
            
        default:
            print("Invalid choice. Please select an option from 1 to 4.")
        }
    }
}
*/
//5
/*

func countFrequency(in sentence: String) -> [String: Int] {
    var wordFrequency: [String: Int] = [:]
    
    let cleanedSentence = sentence.lowercased()
    .components(separatedBy: CharacterSet.punctuationCharacters)
    .joined()
    
    let words = cleanedSentence.split(separator: " ").map(String.init)
    
    for word in words {
        wordFrequency[word, default: 0] += 1
    }
    
    return wordFrequency
}

print("Enter a sentence:")
if let input = readLine() {
    let wordFrequency = countFrequency(in: input)
    
    print("\nWord Frequencies:")
    for (word, count) in wordFrequency {
        print("\(word): \(count)")
    }
}
*/
//6
/*
func fibonacci(_ n: Int) -> [Int] {
    var sequence = [Int]()
    if n<=0{
        return []
    }
    if n >= 1{
        sequence.append(0)
    }
    if n >= 2 {
        sequence.append(1)
    }
    for i in 2..<n {
        let nextNumber = sequence[i - 1] + sequence[i - 2]
        sequence.append(nextNumber)
    }
    return sequence
}

if let input = readLine(), let n = Int(input) {
    let fibSequence = fibonacci(n)
    print(fibSequence)
}

//7

func processScores(students: [String: Int]) {
    guard !students.isEmpty else {
        print("No student data available.")
        return
    }
    
    let totalScore = students.values.reduce(0, +)
    let averageScore = Double(totalScore) / Double(students.count)
    
    let highestScore = students.values.max() ?? 0
    let lowestScore = students.values.min() ?? 0
    
    print("Average Score: \(averageScore)")
    print("Highest Score: \(highestScore)")
    print("Lowest Score: \(lowestScore)\n")
    
    for (name, score) in students {
        let comparison = score >= Int(averageScore) ? "above" : "below"
        print("\(name) scored \(score), which is \(comparison) the average.")
    }
}

print("Enter the number of students:")
if let studentCountInput = readLine(), let studentCount = Int(studentCountInput), studentCount > 0 {
    var students: [String: Int] = [:]
    
    for i in 1...studentCount {
        print("Enter the name of student \(i):")
        if let name = readLine(), !name.isEmpty {
            print("Enter the score of \(name):")
            if let scoreInput = readLine(), let score = Int(scoreInput) {
                students[name] = score
            } else {
                print("Enter an integer.")
            }
        } else {
            print("Enter a correct name.")
        }
    }
    processScores(students: students)
} else {
    print("False")
}

//8

func isPalindrome(_ text: String) -> Bool {
    let cleanedText = text.lowercased()
        .components(separatedBy: CharacterSet.alphanumerics.inverted)
        .joined()
    
    return cleanedText == String(cleanedText.reversed())
}

if let input = readLine() {
    if isPalindrome(input) {
        print("'\(input)' is a palindrome.")
    } else {
        print("'\(input)' is not a palindrome.")
    }
}

*/
//9
/*
func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func subtract(_ a: Double, _ b: Double) -> Double {
    return a - b
}

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func divide(_ a: Double, _ b: Double) -> Double? {
    return b == 0 ? nil : a / b
}

func getNumber(prompt: String) -> Double? {
    print(prompt)
    if let input = readLine(), let number = Double(input) {
        return number
    } else {
        print("Invalid input")
        return nil
    }
}

func calculator() {
    var continueCalculation = true
    
    while continueCalculation {
        guard let num1 = getNumber(prompt: "First number:"),
              let num2 = getNumber(prompt: "Second number:")
        else {
            continue
        }
        
        print("Choose an operation: +, -, *, /")
        if let operation = readLine() {
            var result: Double?
            
            switch operation {
            case "+":
                result = add(num1, num2)
            case "-":
                result = subtract(num1, num2)
            case "*":
                result = multiply(num1, num2)
            case "/":
                result = divide(num1, num2)
                
                if result == nil {
                    print("Error.")
                    continue
                }
            default:
                print("Invalid operation. Please choose +, -, *, or /.")
                continue
            }
            
            if let result = result {
                print("Result: \(result)\n")
            }
        }
        
        print("Do you want to male another calculation?")
        if let response = readLine(), response.lowercased() != "yes" {
            continueCalculation = false
        }
    }
}

calculator()
*/
//10

func hasUniqueCharacters(_ text: String) -> Bool {
    
    var seenCharacters: Set<Character> = []
    
    for char in text {
        
        if seenCharacters.contains(char) {
            return false
        }

        seenCharacters.insert(char)
    }
    
    return true
}

print("Enter a string: ")
if let input = readLine() {
    let result = hasUniqueCharacters(input)
    
    if result {
        print("The string '\(input)' has all unique characters.")
    } else {
        print("The string '\(input)' does not have unique characters.")
    }
}

