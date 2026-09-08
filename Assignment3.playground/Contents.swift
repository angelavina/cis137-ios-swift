/**
 Assignment #3
 Angel Avina
 September 7, 2026
 
 */


//**Closures assignment section
//let c2f = {(oC: Float) -> Float in
//    
//    let oF = oC * 9 / 5 + 32
//    print(oC, "°C is", oF,"°F")
//    return oF
//}
//
//let f2c = {(oF: Float) -> Float in
//    
//    let oC = (oF-32) * 5 / 9
//    print(oF, "°F is", oC,"°C")
//    return oC
//}
//
//c2f(25)
//f2c(77)
//**Closures assignment section


//**Higher Order assignment section
//func convertTemperature (_ temp: Float, using convertingFunction: String){
//    
//    let c2f = {(oC: Float) -> Float in
//        
//        let oF = oC * 9 / 5 + 32
//        print(oC, "°C is", oF,"°F")
//        return oF
//    }
//    
//    let f2c = {(oF: Float) -> Float in
//        
//        let oC = (oF-32) * 5 / 9
//        print(oF, "°F is", oC,"°C")
//        return oC
//    }
//    if convertingFunction == "c2f" {
//        c2f(temp)
//    } else if convertingFunction == "f2c" {
//        f2c(temp)
//    }
//    
//}
//
//convertTemperature(77, using: "f2c")
//convertTemperature(25, using: "c2f")
//**Higher Order assignment section


//**Another Unit section single conversions
//let k2c = {(oK: Float) -> Float in
//
//    let oC = oK - 273.15
//    print(oK, "K is", oC,"°C")
//    return oC
//}
//
//let c2k = {(oC: Float) -> Float in
//
//    let oK = oC + 273.15
//    print(oC, "°C is", oK,"K")
//    return oK
//}
//
//let f2k = {(oF: Float) -> Float in
//
//    let oK = (oF - 32) * 5 / 9 + 273.15
//    print(oF, "°F is", oK,"K")
//    return oK
//}
//
//let k2f = {(oK: Float) -> Float in
//
//    let oF = (oK - 273.15) * 9 / 5 + 32
//    print(oK, "K is", oF,"°F")
//    return oF
//}
//
//k2c(273)
//c2k(0)
//f2k(32)
//k2f(300)
//**Another Unit section single conversions


//**Another Unit section convertTemperature
/**
Below function convertTemperature is declared with two parameters , one is temp: of type Float with no argument name and the second is convertingFunction: of type String and with argument name using.
 
 convertTemperature is used to convert a temperature (number with up to 6 decimal digits) specified by user converting using 1 of 6 temperature conversion methods.
*/
func convertTemperature (_ temp: Float, using convertingFunction: String){
/**
Below function k2c has one input parameter value(oK) of type Float and one return value also of type float. "in" signifies the start of the closure body. Inside the body constant oC is declared and is derived using input parameter oK. print function is called to print oK string text and oC constant.  return keyword is used to end the closure block of code and it passes a value back to the function.
*/
let k2c = {(oK: Float) -> Float in

    let oC = oK - 273.15
    print(oK, "K is", oC,"°C")
    return oC
}
/**
Below function c2k has one input parameter value(oC) of type Float and one return value also of type float. "in" signifies the start of the closure body. Inside the body constant oK is declared and is derived using input parameter oC. print function is called to print oC string text and oK constant.  return keyword is used to end the closure block of code and it passes a value back to the function.
*/
let c2k = {(oC: Float) -> Float in

    let oK = oC + 273.15
    print(oC, "°C is", oK,"K")
    return oK
}
/**
Below function f2k has one input parameter value(oF) of type Float and one return value also of type float. "in" signifies the start of the closure body. Inside the body constant oK is declared and is derived using input parameter oF. print function is called to print oF string text and oK constant.  return keyword is used to end the closure block of code and it passes a value back to the function.
*/
let f2k = {(oF: Float) -> Float in

    let oK = (oF - 32) * 5 / 9 + 273.15
    print(oF, "°F is", oK,"K")
    return oK
}
/**
Below function k2f has one input parameter value(oK) of type Float and one return value also of type float. "in" signifies the start of the closure body. Inside the body constant oF is declared and is derived using input parameter oK. print function is called to print oK string text and oF constant.  return keyword is used to end the closure block of code and it passes a value back to the function.
*/
let k2f = {(oK: Float) -> Float in

    let oF = (oK - 273.15) * 9 / 5 + 32
    print(oK, "K is", oF,"°F")
    return oF
}
/**
Below function c2f has one input parameter value(oC) of type Float and one return value also of type float. "in" signifies the start of the closure body. Inside the body constant oF is declared and is derived using input parameter oC. print function is called to print oC string text and oF constant.  return keyword is used to end the closure block of code and it passes a value back to the function.
 */
let c2f = {(oC: Float) -> Float in
    
    let oF = oC * 9 / 5 + 32
    print(oC, "°C is", oF,"°F")
    return oF
}
/**
Below function f2c has one input parameter value(oF) of type Float and one return value also of type float. "in" signifies the start of the closure body. Inside the body constant oC is declared and is derived using input parameter oF. print function is called to print oF string text and oC constant.  return keyword is used to end the closure block of code and it passes a value back to the function.
*/
let f2c = {(oF: Float) -> Float in
    
    let oC = (oF-32) * 5 / 9
    print(oF, "°F is", oC,"°C")
    return oC
}
/**
Below are "if" and "else if" statements which depending on the user input for using: of function "convertTemperatures" it will automatically carry out the convertion as directed.
*/
    if convertingFunction == "k2c" {
        k2c(temp)
    }else if convertingFunction == "c2k" {
        c2k(temp)
    } else if convertingFunction == "f2k"{
        f2k(temp)
    } else if convertingFunction == "k2f"{
        k2f(temp)
    } else if convertingFunction == "c2f"{
        c2f(temp)
    } else if convertingFunction == "f2c"{
        f2c(temp)
    }

}
/**
Below are sample of calling the final function to convert temperatures using the different methods.
*/
convertTemperature(25, using: "c2f")
convertTemperature(77, using: "f2c")
convertTemperature(273, using: "k2c")
convertTemperature(0, using: "c2k")
convertTemperature(32, using: "f2k")
convertTemperature(300, using: "k2f")

//**Another Unit section convertTemperature

