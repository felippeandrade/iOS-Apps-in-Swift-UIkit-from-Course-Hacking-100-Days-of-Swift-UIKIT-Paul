import UIKit
import CoreFoundation

//@Fonte: https://www.hackingwithswift.com/sixty



//#Simple types



//#Variables
var str0 = "Hello, playground"

str0 = "Goodbye"



//#Strings and integers
var str1 = "Hello, playground"

var age = 38

//Se você tiver números grandes, o Swift permite que você use sublinhados como separadores de milhares – eles não alteram o número, mas facilitam a leitura
var population = 8_000_000 //é um Int

var distance = 320

var actualWage: Int = 22_000 //22000
var medianWage: Double = 22_000 //22000.0

//não está correto tentar multiplicar an Intpor a Double:
//var population = 7_500_000_000 //aqui é um Int
//population *= 1.0001

//#Multi-line strings
//Se você deseja escrever strings em várias linhas, mas que a saída seja de várias linhas: comece e termine com três aspas duplas, assim
var str2 = """
This goes
over multiple
lines
"""

//Se você deseja escrever strings em várias linhas, mas que a saída seja de apenas uma linha, termine cada linha com um \
var str3 = """
This goes \
over multiple \
lines
"""

//that's not correct. The final three quotes must be on a line by themselves
//var coleridge = """
//Water, water, everywhere
//and not a drop to drink"""


//#Doubles and booleans

var pi = 3.141

var awesome = true

//Swift understands that 320 here refers to the double value 320.0 rather than an integer.
var distance1: Double = 320


//#String interpolation

//Você pode colocar qualquer tipo de variável dentro de sua string
var score = 85
var str4 = "Your score was \(score)"
var results = "The test results are here: \(str4)"



//#Constants
//Ao escrever seu próprio código Swift, você deve sempre usar let, a menos que queira alterar especificamente um valor.

let taylor = "swift"



//#Type inference

//Isso fará str5 uma string, então você não pode tentar atribuir um inteiro ou um booleano mais tarde. Isso é chamado de inferência de tipo : o Swift é capaz de inferir o tipo de algo baseado em como você o criou
let str5 = "Hello, playground"



//#Type annotations
//Se você quiser, pode ser explícito sobre o tipo de seus dados em vez de confiar na inferência de tipo do Swift
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true
