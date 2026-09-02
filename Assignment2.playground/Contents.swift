/**
 Homework# Assignment 2
 Angel Avina
 September 1, 2026
 */

//Assignment2 For-In Loop section***
//let names = ["Anna", "Alex", "Brian", "Jack"]
//let greetings = ["Good Day", "Good Morning", "Good Afternoon", "Good Evening", "Good Night"]
//for name in names {
//    let randomInt = Int.random(in: 0...4)
//    print(" \(greetings[randomInt]), \(name)!")
//}
//Assignment2 For-In Loop section***

//Assignment2 Dictionary section***
//let names = ["Anna": "12", "Alex":"29", "Brian":"53", "Jack":"84"]
//let greetings = ["Good Day", "Good Morning", "Good Afternoon", "Good Evening", "Good Night"]
//for (name, age) in names {
//    let randomInt = Int.random(in: 0...4)
//    print(" \(greetings[randomInt]), \(name)! Happy \(age)th Birthday!")
//}
//Assignment2 Dictionary section***


//Assignment2 Interval binding section***
let names: [String:Int] = ["Anna": 12, "Alex":29, "Brian":53, "Jack":84]
let greetings = ["Good Day", "Good Morning", "Good Afternoon", "Good Evening", "Good Night"]
//let acknowledgeage : String
for (name, age) in names {
    let randomInt = Int.random(in: 0...4)
    print("\(greetings[randomInt]), \(name)! Happy \(age)th Birthday!")
    
    switch age {
    case 0..<18:
        print("You are a child")
    case 18..<26:
        print("You are a young adult")
    case 26..<66:
        print("You are an adult")
    default:
        print("You are a senior")
    }
    print() // This inserts a blank line
}
//Assignment2 Interval binding section***
