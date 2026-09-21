/*
Assignment #4
Angel Avina
Date 9/21/26
*/


import UIKit


//Defining the Property Wrapper
@propertyWrapper
struct NonEmpty {
    private var value: String
    
    var wrappedValue: String {
        get {
           return value
        }
        set{
            if newValue.isEmpty {
                            value = "missing"
                        } else {
                            value = newValue
                        }
                    }
    }
    init(wrappedValue: String) {
        self.value = wrappedValue
    }
}

//Using the Property Wrapper
struct Student {
    @NonEmpty var firstName: String
    @NonEmpty var lastName: String
}

//Testing the Property Wrapper
var student = Student(firstName: "", lastName: "")
student.firstName = ""
student.lastName = "doe"
print("first name: " + student.firstName + " ; last name: " + student.lastName)

/*
 For the property wrapper if an empty string is provided for either first or last name the output is "missing".
 For the structure Student the property wrapper was implemented by adding @NonEmpty for both variables firstName and lastName.
 For testing an empty instance was created and saved to variable student. Then values were assigned to firstName and lastName, and print command was added to print results. If empty string is assigned to either firstName or lastName the property wrapper outputs string "missing" and is displayed after calling print command. If a non empty string is provided for either first or last name the property wrapper returns the same value and displays after print command is ran.
 */
