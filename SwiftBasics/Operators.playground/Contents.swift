//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Arithmatic
/*
 
 +
 -
 /
 *
 %
 
*/

var int1 = 23.0

var int2 : Double? = 6.0

var result : Double = 0

result += int2!  //result = result + int2

result -= int1  //result = result - int2

result *= int1  //result = result * int2

result /= int2!  //result = result / int2

//result = 0.0


//Logical

/*

 &&
 ||
 !
 
*/

if !(result == 0) && !(int2! < 0)
{
    print("result is either 0 or less than 0")
}

/*
 
 c1 = true
 
 c2 = false
 
 c1      c2        ||        &&        !
 false   true      true      false     false
 false   false     false     false     true
 true    false     true      false     true
 true    true      true      true      false
 
*/





