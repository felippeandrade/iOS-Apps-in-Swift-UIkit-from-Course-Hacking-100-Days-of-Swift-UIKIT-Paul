import Foundation

//#Operators and conditions



//#Arithmetic Operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

//This will create a double, not an integer.
var result = 2 + 2 + 1.0

//calcular restos após a divisão
let remainder = 13 % 4


//#Operator overloading

//soma inteiros
let doubleMeaning = 42 + 42

//une strings
let fakers = "Fakers gonna "
let action = fakers + "fake"

//juntar arrays
var result10 = ["Red", "Green"] + ["Blue"]


let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

//não permitirá que você misture tipos. Ex: você não pode adicionar um inteiro a uma string porque não faz sentido.
//var result = "Your age is " + 26

//não pode, pois This attempts to add an array to a dictionary.
//let result = ["name": "Paul"] + ["Hudson"]

//Você não pode realizar adição usando booleanos.
//let result = false + false

//You can't multiply a string array.
//let result = ["North", "South"] * 2



//#Compound assignment operators

var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

//This attempts to modify a constant.
//let result = 2
//result *= 5



//#Comparison operators

let firstScore1 = 6
let secondScore1 = 4

firstScore1 == secondScore1
firstScore1 != secondScore1

firstScore1 < secondScore1
firstScore1 >= secondScore1

// as strings têm uma ordem alfabética natural:
"Taylor" <= "Swift"



//#Conditions

let firstCard2 = 11
let secondCard2 = 10

if firstCard2 + secondCard2 == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

//or
if firstCard2 + secondCard2 == 2 {
    print("Aces – lucky!")
} else if firstCard2 + secondCard2 == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// Strings are case-sensitive, so comparing "Red" to "red" will fail.
var favoriteColor = "Red"
if favoriteColor == "red" {
    print("Success")
} else {
    print("Failure")
}

//This attempts to compare an integer to a double, which is invalid.
//var actualWage: Int = 22_000 //22000
//var medianWage: Double = 22_000 //22000.0
//if actualWage >= medianWage {
//    print("Success")
//}


//This attempts to compare a string and an integer, which is invalid.
//var cupsOfCoffee = "4"
//if cupsOfCoffee >= 3 {
//    print("Success")
//} else {
//    print("Failure")
//}



//#Combining operators

//print()chamada só acontecerá se ambas as idades
let age3 = 12
let age4 = 21

if age3 > 18 && age4 > 18 {
    print("Both are over 18")
}


//é avaliada como verdadeira se um dos itens passar no teste
if age3 > 18 || age4 > 18 {
    print("At least one is over 18")
}


//#The ternary operator
//um operador raramente usado chamado. Eu não recomendaria usá-lo.
//Ele trabalha com três valores ao mesmo tempo, que é de onde vem seu nome
//ele verifica uma condição especificada no primeiro valor, e se for true retorna o segundo valor, mas se for false retorna o terceiro valor

let firstCard3 = 11
let secondCard3 = 10
print(firstCard3 == secondCard3 ? "Cards are the same" : "Cards are different")

//or
if firstCard3 == secondCard3 {
    print("Cards are the same")
} else {
    print("Cards are different")
}

//This attempts to compare a string and an integer, which is invalid. Não printa Failure.
//var retweets = "100"
//print(retweets > 10 ? "Success" : "Failure")

//#Switch statements
//Se você tiver várias condições usando if and else if, geralmente é mais claro usar uma construção diferente conhecida como switch case.
//default é necessário porque o Swift garante que você cubra todos os casos possíveis para que nenhuma eventualidade seja perdida. O default não é necessário se você já cobrir todos os outros casos, como com uma enumeração.

//Switch statements work just fine with variables and constants.

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

//O Swift só rodará o código dentro de cada case. Se você quiser que a execução continue para o próximo caso, use a palavra- fallthrough
//Você pode usar fallthroughquantas vezes quiser.

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

//O default não é necessário se você já cobrir todos os outros casos, como com uma enumeração.
enum CompassPoint {
    case north
    case south
    case east
    case west
}

var directionToHead = CompassPoint.south //var directionToHead: CompassPoint = .south

switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}



//#Range operators

//O operador de intervalo semi-aberto, ..<, cria intervalos até, mas excluindo o valor final. Por exemplo, o intervalo 1..< 5contém os números 1, 2, 3 e 4.
//o operador de intervalo fechado, ..., cria intervalos até e incluindo o valor final. Por ex, intervalo 1...5 contém os números 1, 2, 3, 4 e 5.

//Os intervalos são úteis com switch

let score7 = 85

switch score7 {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

//O valor do limite inferior deve ser menor que o valor do limite superior
let passingGrade = 70...100
