//: [Previous](@previous)
struct EmployeeData {
    var baseSalary: Double
    var raisesGiven: Int
}

//: ### Exercise 1
//: Define a function called `increasePay` that takes 1 `EmployeeData` parameter called `employeeData` and 1 `Double` parameter called `percentRaise`. **`employeeData` should be a inout parameter**. The function should **add** to its `baseSalary` property by a value of `baseSalary * percentRaise` and increase the `raisesGiven` property by 1.
//: **The solution is available on the next page!**
func increasePay( employeeData:inout EmployeeData, percentRaise:Double){
    employeeData.baseSalary += employeeData.baseSalary * percentRaise
    employeeData.raisesGiven += 1
    print(employeeData.baseSalary)
}

var a = EmployeeData(baseSalary: 3000, raisesGiven: 1)

a.baseSalary
a.raisesGiven
increasePay(employeeData: &a, percentRaise: 2)
a.baseSalary
a.raisesGiven

//: [Next](@next)
