
import Foundation

//#Closures



//#Creating basic closures
//Swift nos permite usar funções como qualquer outro tipo, como strings e inteiros. Isso significa que você pode criar uma função e atribuí-la a uma variável, chamar essa função usando essa variável e até mesmo passar essa função para outras funções como parâmetros.

//As funções usadas dessa maneira são chamadas closures e, embora funcionem como funções, são escritas de maneira um pouco diferente.

//Isso cria efetivamente uma função sem nome e atribui essa função a driving. Agora você pode chamar driving()como se fosse uma função normal, assim:

//funcao padrao: func printHelp() { }

//funcao padrao: func square1(number: Int) { }

let driving1 = {
    print("I'm driving in my car")
}

driving1()




//#Accepting parameters in a closure

//Quando você cria closures, eles não têm um nome ou espaço para escrever nenhum parâmetro. Isso não significa que eles não podem aceitar parâmetros, apenas que eles fazem isso de uma maneira diferente: eles são listados dentro das chaves abertas.
//
//Para fazer uma closure aceitar parâmetros, liste-os dentro de parênteses logo após a chave de abertura, então escreva inpara que Swift saiba que o corpo principal da closure está iniciando.
//
//Por exemplo, poderíamos fazer um closure que aceitasse uma string de nome de lugar como seu único parâmetro como este:

let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

//Uma das diferenças entre funções e closures é que você não usa rótulos de parâmetro ao executar closures. Então, para chamar driving()agora, escreveríamos isso:

driving2("London")




//#Returning values from a closure
//Closures também podem retornar valores, e eles são escritos de forma semelhante aos parâmetros: você os escreve dentro de seu closure, diretamente antes da palavra- inchave.

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)



//#Closures as parameters
//Como os closures podem ser usados ​​como strings e inteiros, você pode passá-los para funções.

//Se quiséssemos passar esse encerramento para uma função para que pudesse ser executado dentro dessa função, especificaríamos o tipo de parâmetro como () -> Void. Isso significa “não aceita parâmetros e retorna Void” – a maneira de Swift dizer “nada”.

let driving3 = {
    print("@@I'm driving in my car")
}

func travel(action3: () -> Void) {
    print("##I'm getting ready to go.")
    action3()
    print("I arrived!")
}

travel(action3: driving3)



//#Trailing closure syntax

//Se o último parâmetro da sua função for um encerramento, você poderá usar a sintaxe de encerramento à direita.

//A sintaxe de fechamento à direita é extremamente comum no Swift, então vale a pena se acostumar.

//sera inutil essa let, pois chamaremos a funcao usando a sintaxe da clousure a sua direta entre chaves
//let driving4 = {
//    print("I'm driving in my car")
//}

func travel4(action4: () -> Void) {
    print("I'm getting ready to go.")
    action4()
    print("I arrived!")
}

//travel4(action4: driving4) //aqui usa let

//or

//Em vez de passar seu encerramento como um parâmetro, você o passa a clousure diretamente após a função dentro de chaves.
//travel4() { // () -> Void in
//   print("I'm driving in my car")
//}

//or

//De fato, como não existem outros parâmetros, podemos eliminar os parênteses completamente:
travel4 {
    print("I'm driving in my car")
}



//#Using closures as parameters when they accept parameters

//Para demonstrar isso, podemos escrever uma travel()função que aceita uma closure como seu único parâmetro, e essa closure por sua vez aceita uma string:

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}


travel { (place: String) in
    print("I'm going to \(place) in my car")
}


//#Using closures as parameters when they return values
func travel3(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel3 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


//#Shorthand parameter names

func travel5(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel5 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//or
//No entanto, Swift sabe que o parâmetro para esse encerramento deve ser uma string, então podemos removê-lo:

//travel5 { place -> String in
//    return "I'm going to \(place) in my car"
//}

//or
//Ele também sabe que o encerramento deve retornar uma string, para que possamos removê-lo:

//travel5 { place in
//    return "I'm going to \(place) in my car"
//}

//or
//Como o closure tem apenas uma linha de código que deve ser aquela que retorna o valor, o Swift nos permite remover a returnpalavra-chave também:

//travel5 { place in
//    "I'm going to \(place) in my car"
//}

//or
//O Swift tem uma sintaxe abreviada que permite que você seja ainda mais curto. Em vez de escrever place in, podemos deixar o Swift fornecer nomes automáticos para os parâmetros do encerramento. Estes são nomeados com um cifrão e, em seguida, um número contando a partir de 0.

travel5 {
    "I'm going to \($0) in my car"
}


//#Closures with multiple parameters
func travel9(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel9 {
    "I'm going to \($0) at \($1) miles per hour."
}

//or
//Algumas pessoas preferem não usar nomes de parâmetros abreviados como $0 porque pode ser confuso,
//travel9 { x, y in
//    "I'm going to \(x) at \(y) miles per hour."
//}



//#Returning closures from functions

//usa -> duas vezes: uma vez para especificar o valor de retorno da sua função e uma segunda vez para especificar o valor de retorno da sua closure.
//função que não aceita parâmetros, mas retorna um encerramento

// (String) -> Void  é o retorno de travel20() que é uma closure q recebe String e retorna Void.

// Void é o retorno do encerramento

//(String) -> Void

func travel20() -> (String) -> Void {
    return { //aqui é uma closure
        print("I'm going to \($0)")
    }
}

let result = travel20()
result("London")

//É tecnicamente permitido – embora realmente não seja recomendado! – para chamar o valor de retorno travel()diretamente:

//let result2 = travel20()("London")

//Or
//travel20()("London")


//#Capturing values

//Se você usar quaisquer valores externos dentro de seu fechamento, o Swift os captura – os armazena ao lado do fechamento, para que possam ser modificados mesmo que não existam mais.

//A captura de fechamento acontece se criamos valores travel()que são usados ​​dentro do fechamento. Por exemplo, podemos querer rastrear com que frequência o encerramento retornado é chamado.

//Mesmo que essa countervariável tenha sido criada dentro travel()de , ela é capturada pelo encerramento para que ainda permaneça ativa para esse encerramento.

//Então, se ligarmos result("London")várias vezes, o contador subirá e subirá:

func travel30() -> (String) -> Void {
    var counter = 1 //valores externos

    return { //closure
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result30 = travel30()
result30("London")

result30("London")
result30("London")
result30("London")

//1. I'm going to London
//2. I'm going to London
//3. I'm going to London
//4. I'm going to London
