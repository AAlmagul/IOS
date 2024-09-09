//
//  main.swift
//  Assignment 1
//
//  Created by Алмагуль Абдыгали on 06.09.2024.
//

import Foundation

import SwiftUI

let firstName = "Almagul", lastName = "Abdigali"
let birthYear: Int = 2004, currentYear: Int = 2024
var isStudent: Bool = true
let age = currentYear - birthYear
let height: Double = 172.5
let nationality = "kazakh"

//step2

let hobby: String = "learning languages", favoriteColor: String = "navy blue"
let numberOfHobbies: Int = 4, favoriteNumber: Int = 12
var isHobbyCreative: Bool = true

let flower = "🌸", apple = "🍎"

var futureGoals = "I want to visit all 195 countries and gain unforgettable memories."


var lifeSummary = """
My name is \(firstName) \(lastName) \(apple) \(flower). I am \((currentYear)-(birthYear)) years old, born in \(birthYear). I am currently a student. My nationality \(nationality). I enjoy \(hobby), which is a not creative hobby. I have \(numberOfHobbies) hobbies in total, and my favorite number is \(favoriteNumber). My favorite color \(favoriteColor). \(futureGoals)
"""

print(lifeSummary)
