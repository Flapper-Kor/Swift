/*
 1. Constants and Variables (변수와 상수)
*/

/*
 1-1. Declare (선언) 동시에 초기화 가능
 */
let a = 10 // constant
var b = 10 // Variable
var x = 1.1, y = 3.2 // multiple variables on a single line

/*
 1-2. Type Annotation (type-specifier:타입 지정자와 사용법은 비슷함)
 */
var say : String // type of a is String
say = "hi"

/*
 1-3. Naming
 Constant and variable names can contain almost any character, including Unicode characters
 스페이스, 수학기호, 화살표 등 불가
 숫자로 시작할 수 없음
 */
let 😀 = "smile"
let smile = "😀"

/*
 1-4. Printing
 */
print("value of variable 'smile' is \(😀)")
print("value of variable 😀 is \(smile)")

/*
 2. Comment
 */

// line comment (기본단축키 : Hot Key : cmd + /)
/*
 block comment
 */

/*
 3. Semicolons
 기본적으로 사용할 필요 없으나, 사용해도 무방하며, 한줄에 여러 문장을 작성하기 위해 사용할 수 있음.
 */
print("d");print("a");print("o")

/*
 4. Basic Data Type
*/

/*
 4.1 Integer
 */

print("\(UInt8.min) <= UInt8 <=\(UInt8.max)")

// Int, which has the same size as the current platform’s native word size
print("\(Int.min) <= Int <=\(Int.max)")
print("\(Int64.min) <= Int <=\(Int64.max)")
print("\(Int32.min) <= Int <=\(Int32.max)")

print("\(UInt.min) <= Int <=\(UInt.max)")
print("\(UInt64.min) <= Int <=\(UInt64.max)")
print("\(UInt32.min) <= Int <=\(UInt32.max)")

/*
 4.2 Floating-Point Numbers
 */
// float : 32bit(4byte) 소수점 6자리까지 정확
// Double : 64bit(8byte) 소수점 15~16자리까지 정확
var float : Float =   1.234123486862871034123412345554985273495872
var double : Double = 1.234123486862871034123412345554985273495872

print(float, double)
// 오차범위 내에서 정확하게 표현이 가능하지만 계산식에 사용할 경우 주의가 필요하며, 정확한 계산을 하기 위해서는 제공되는 다른 자료형을 사용하거나 부동소수점 오차를 없애기 위해 정수변환 하여 계산하는 로직을 스스로 만들어서 사용하여야 함
// 운좋게도 부동소수점 연산을 정확하게 하려면 C# 과 동일하게 Decimal(NSDecimal) 이라는 타입을 사용하면 된다.

import Foundation
//var number1 : NSDecimal = NSDecimal(double)
//print(number1, type(of: number1))

/*
 Type Safety and Type Inference
 타입 안정성이란 컴파일러가 컴파일 단계에서 오류의 가능성이 있는 타입의 오사용을 걸러주며, 타입 추론이란 컴파일러가 타입을 문맥적으로 추론하여, 명시하지 않아도 동작하도록 도와주는 기능을 말한다.
 */

// 아래는 타입추론의 예시
let pi_long = 3.14159265359
let pi_short = 3.1415
let pi_float : Float = 3.141592

print(pi_long, type(of: pi_long))
print(pi_short, type(of: pi_short))
print(pi_float, type(of: pi_float))

// 아래는 타입 안정성
// C 와 Cpp 같은 아래와 같이 타입이 다른 언어끼리의 연산을 컴파일러가 거르지 않을 뿐 아니라 언어는 정수로 저장되어있는 변수도 포인터를 사용해서 실수형 실수형 변수나 캐릭터 변수에 담을 수 있다. 각종 사용에 있어 오류의 가능성을 높이며 이들은 타입 안정성이 매우 떨어지는 언어라고 할 수 있다.

var intVal : Int = 1
var floatVal : Float = 0.1
var charVal : Character = "A"

// print(intVal+floatVal+charVal)
// 위의 기능을 원하는 바대로 컴파일애러 없이 돌아가게 하려면 아래와 같이 사용 가능

print(Float(intVal) + floatVal + Float(charVal.asciiValue!))

/*
 Numeric Literals
 */

let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation
