import Foundation


// 1.Swift Generic Function
func displayData<T>(data: T) {
    
print("Generic Function:")
    
print("Data Passed:", data)
    
}

displayData(data: "Swift")

displayData(data: 5)



//2.Swift Generic Class
class Information<T> {


  var data: T

  init (data: T) {
    self.data = data
  }

  func getData() -> T {
    return self.data
  }
}

var intObj = Information<Int>(data: 6)
print("Generic Class returns:", intObj.getData())

var strObj = Information<String>(data: "Swift")
print("Generic Class returns:", strObj.getData())



//3.Type Constraints in Swift Generics
func addition<T: Numeric>(num1: T, num2: T) {

  print("Sum:", num1 + num2)
}

addition(num1: 5, num2: 10)

addition(num1: 5.5, num2: 10.8)
