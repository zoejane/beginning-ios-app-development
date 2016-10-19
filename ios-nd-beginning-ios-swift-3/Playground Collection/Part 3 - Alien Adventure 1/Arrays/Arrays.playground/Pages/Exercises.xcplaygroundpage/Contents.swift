//: [Previous](@previous)
//: ### Exercise 1
//: 1a) Initialize the array, cuteAnimals. It should be of type CuddlyCreature. Type your answer below.
var cuteAnimals = [CuddlyCreature]()
//: 1b) Initialize an array of 5 bools using array literal syntax.
var arrayBools = [true, false, false, false, true]
//: ### Exercise 2
//: Print out the number of spaniels in the array below.
var spaniels = ["American Cocker", "Cavalier King Charles", "English Springer", "French", "Irish Water","Papillon", "Picardy","Russian", "French", "Welsh Springer"]
print(spaniels.count)
//: ### Exercise 3
//: Insert "indigo" into the array below so that its index is after "blue" and before "violet".
var colors = ["red", "orange", "yellow", "green", "blue", "violet"]
colors.insert("indigo", at: 5)
print(colors)

//: ### Exercise 4
//: Insert "English Cocker" into the spaniels array so that its index is before "English Springer".
spaniels.insert("English Cocker", at: 2)
print(spaniels)
//: ### Exercise 5
//: Append "Barcelona" to the end of the olympicHosts array.
var olympicHosts = ["London", "Beijing","Athens", "Sydney", "Atlanta"]
olympicHosts.append("Barcelona")
print(olympicHosts)
//: ### Exercise 6
//: Remove "Lyla" and "Daniel" from the waitingList array and add them to the end  of the admitted array.
var admitted = ["Jennifer", "Vijay", "James"]
var waitingList = ["Lyla", "Daniel", "Isabel", "Eric"]

var lyla = waitingList.remove(at: 0)
var daniel = waitingList.remove(at: 0)
admitted.append(lyla)
admitted.append(daniel)
print(waitingList)
print(admitted)

//: ### Exercise 7
//: Using subscript syntax, print out the 2nd and 3rd names from the admitted array.
let second = admitted[1]
let third = admitted[2]
print(second)
print(third)
//: ### Exercise 8
//: We'd like to reverse the string, stringToReverse. We can do this by filling in one line of code in the for-in loop below. Try it out!
let stringToReverse = "desserts"
var reversedString = ""
for character in stringToReverse.characters {
    //reversedString = //TODO: Fill in code here
    reversedString = String(stringToReverse.characters.reversed())
}
print(reversedString, terminator: "")

//: [Next](@next)
