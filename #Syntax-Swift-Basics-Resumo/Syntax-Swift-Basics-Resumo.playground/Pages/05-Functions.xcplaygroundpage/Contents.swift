
import Foundation




//#Functions
//As funções nos permitem reutilizar o código, o que significa que podemos escrever uma função para fazer algo interessante e depois executá-la em vários lugares. Repetir o código geralmente é uma má ideia, e as funções nos ajudam a evitar isso



//#Writing functions
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

//Agora podemos executar isso usando printHelp().
//A execução de uma função geralmente é chamada de chamada de função.
printHelp()


//isso não está correto. Os nomes das funções diferenciam maiúsculas de minúsculas.
//func sendMessage() {
//    print("Sending message...")
//}
//sendmessage()



//#Accepting parameters
//Os valores enviados para funções são chamados de parâmetros

//estamos enviando strings e inteiros para a função print():
print("Hello, world!")

func square1(number: Int) {
    print(number * number)
}

square1(number: 8)

//usando parametro no intervalo do for
func count(to: Int) {
    for i in 1...to {
        print("I'm counting: \(i)")
    }
}



//#Returning values
//Dentro de sua função, você usa a return palavra-chave para enviar um valor de volta, se tiver um. Sua função sai imediatamente, enviando de volta esse valor - nenhum outro código dessa função será executado.


func square2(number: Int) -> Int {
    return number * number
}

let result = square2(number: 8)
print(result)

//Use tuplas se quiser retornar várias coisas
//https://miro.medium.com/max/1400/1*cJp3WkIDWm1BZDIoIV5nCQ.png

func returnMultipleValues() -> (String, Int, Double) {
    return ("Swift Tuple", 12, 3.14)
}


//Isso não está correto. Isso não retorna um valor se color não for "tartan".
//func paintHouse(color: String) -> Bool {
//    if color == "tartan" {
//        return false
//    }
//}


//return com String


func giveDog(food: String) -> String {
    if food == "treat" {
        return "The dog ate it"
    } else {
        return "The dog stared in disgust"
    }
}

var name10 = giveDog(food: "treat")
print(name10)


//a funcao declarada com tipo de retorno, sempre deverá ter um return valido
//isso não está correto. Se searchName não for encontrado no names array então esta função não retornará nada:
//func checkFor(_ searchName: String, in names: [String]) -> Bool {
//    for name in names {
//        if name == searchName {
//            return true
//        }
//    }
//}



//#Parameter labels

//O parâmetro é chamado to name, o que significa que externamente é chamado to, mas internamente é chamado name
func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")


//Este código é Swift válido.
func isPassingGrade(for scores: [Int]) -> Bool {
    var total = 0
    for score in scores {
        total += score
    }
    if total >= 500 {
        return true
    } else {
        return false
    }
}



//#Omitting parameter labels
//Isso pode tornar a leitura de alguns códigos mais natural, mas geralmente é melhor dar nomes externos aos seus parâmetros para evitar confusão
//Você deve ter notado que, na verdade, não enviamos nenhum nome de parâmetro quando chamamos print()- dizemos print("Hello")em vez de print(message: "Hello").

func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")



//#Default parameters
//Você pode dar a seus próprios parâmetros um valor padrão apenas escrevendo um =após seu tipo seguido pelo padrão que você deseja dar a ele.

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Taylor")
greet("Taylor", nicely: false)


//chamado sem parametro
func playGolf(holes: Int = 18) {
    print("Let's play \(holes) holes of golf.")
}
playGolf()


//#Variadic functions

//Algumas funções são variadic , que é uma maneira elegante de dizer que aceitam qualquer número de parâmetros do mesmo tipo. A print()função é realmente variada: se você passar muitos parâmetros, todos eles serão impressos em uma linha com espaços entre eles.

print("Haters", "gonna", "hate")

//Você pode fazer qualquer parâmetro variadic escrevendo ...após seu tipo. Portanto, um Int parâmetro é um único inteiro, enquanto Int...zero ou mais inteiros – potencialmente centenas.
//Dentro da função, o Swift converte os valores que foram passados ​​em uma matriz de inteiros, para que você possa fazer um loop sobre eles conforme necessário.

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

//Você deve sempre passar os valores individualmente, separados por vírgulas. Não pode passar um array no lugar de um parâmetro variadic.
//Você pode passar nenhum valor se quiser. Ex: array vazio
square(numbers: 1, 2, 3, 4, 5)

//usando String

func play(games: String...) {
    for game in games {
        print("Let's play \(game)!")
    }
}
play(games: "Chess") // play(games: "Chess", "XYZ")


//#Writing throwing functions

//Às vezes, as funções falham porque têm entrada ruim ou porque algo deu errado internamente. O Swift nos permite lançar erros de funções marcando-os como throws antes de seu tipo de retorno e, em seguida, usando a palavra throw  quando algo der errado.

//As funções podem gerar erros, mas você deve chamá-las usando trye manipular erros usando catch.

//Primeiro precisamos definir um enum que descreva os erros que podemos lançar. Estes devem sempre ser baseados no tipo existente do Swift Error. Vamos escrever uma função que verifica se uma senha é boa, então lançaremos um erro se o usuário tentar uma senha óbvia:

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool { //esse return true é desnecessario
    if password == "password" {
        throw PasswordError.obvious
    }

    return true // esse return true é desnecessario
}

//tendo o throws e nao o throw, ele roda. Já o contrario, não roda.
enum MeasureError: Error {
    case unknownItem
}
func measure(itemName: String) throws -> Double {
    switch itemName {
    case "bookcase":
        return 2.0
    case "chair":
        return 1.0
    case "child":
        return 1.3
    default:
        return 1.75
    }
}

try measure(itemName: "child")



//exemplo usando switch com default
enum BookErrors: Error {
    case tooFewPages
    case tooManyPages
}
func writeBook(title: String, pages: Int) throws {
    switch pages {
    case 0...50:
        throw BookErrors.tooFewPages
    case 51...400:
        print("Perfect! I'm going to write \(title)...")
    default:
        throw BookErrors.tooManyPages
    }
}

//#Running throwing functions
//O Swift não gosta que erros aconteçam quando seu programa é executado, o que significa que ele não permitirá que você execute uma função de lançamento de erros por acidente.
//Em vez disso, você precisa chamar essas funções usando três novas palavras-chave: doinicia uma seção de código que pode causar problemas, tryé usada antes de cada função que pode gerar um erro e catchpermite que você lide com erros normalmente.
//Se algum erro for lançado dentro do dobloco, a execução salta imediatamente para o catchbloco.

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}


//Se usasse o codigo abaixo, iria aparecer no console: An error was thrown and was not caught __lldb_expr_16.PasswordError.obvious (Um erro foi lançado e não foi capturado)
//try checkPassword("password")


//Este código é Swift válido.
enum PlayError: Error {
    case cheating
    case noPlayers
}
func playGame(name: String, cheat: Bool = false) throws {
    if cheat {
        throw PlayError.cheating
    } else {
        print("Let's play a game of \(name)...")
    }
}



//#inout parameters
//Você pode usar inoutpara alterar variáveis ​​dentro de uma função, mas geralmente é melhor retornar um novo valor.

//Todos os parâmetros passados ​​para uma função Swift são constantes , então você não pode alterá-los. Se desejar, você pode passar um ou mais parâmetros como inout, o que significa que eles podem ser alterados dentro de sua função, e essas alterações refletem no valor original fora da função.

//vai dar erro, pois está tentando atribuir um valor a variavel constant number.
//func doubleInPlace1(number: Int) {
//    number *= 2
//}
//
//var myNum1 = 10
//doubleInPlace1(number: myNum1)


//vai funcionar, pois não atribuiu um valor a variavel constant number.
func doubleInPlace2(number: Int) {
    number * 2
    number * number
    
}

var myNum2 = 10
doubleInPlace2(number: myNum2)
print(myNum2)


//Por exemplo, se você quiser dobrar um número no lugar – ou seja, alterar o valor diretamente em vez de retornar um novo – você pode escrever uma função como esta

//Para usar isso, primeiro você precisa fazer um inteiro variável – você não pode usar inteiros constantes com inout, porque eles podem ser alterados. Você também precisa passar o parâmetro para doubleInPlaceusar um e comercial, &, antes de seu nome, que é um reconhecimento explícito de que você está ciente de que está sendo usado como inout.

//Os parâmetros Inout podem ser de qualquer tipo de dado.

func doubleInPlace3(number: inout Int) {
    number *= 2
}

var myNum3 = 10 //Os parâmetros de entrada (inout) devem ser variáveis e nao let
doubleInPlace3(number: &myNum3)
print(myNum3)


