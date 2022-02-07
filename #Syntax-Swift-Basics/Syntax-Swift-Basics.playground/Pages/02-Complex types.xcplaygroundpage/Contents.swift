import UIKit
import CoreFoundation

//#Complex types



//#Arrays

//examples
//Messages in a chat program. (There can be many messages, and they don't need to be unique).

//A weather forecast for the next 10 days.(There would be one item in the array for each day).

//Songs in an album. (There can be many songs, and they don't need to be unique).

//Monthly height measurements for a child.(You can add a new item to the array every month).

//High scores for a video game. (There can be many high scores, and they don't need to be unique).

//Lines in a poem.


//1-Se você precisa de uma coleção de valores que possam conter duplicatas.
//2-A ordem de seus itens for importante.
//3-Você acessa os itens usando posições numéricas.
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

//Arrays são coleções de valores que são armazenados como um único valor. Por exemplo, John, Paul, George e Ringo são nomes, mas o array permite agrupá-lo em um único valor chamado The Beatles.


let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles0 = ["john", "paul", "george", "ringo"]

let beatles1 = [john, paul, george, ringo]

let beatles2: [String] = [john, paul, george, ringo]

let beatles3: Array<String> = [john, paul, george, ringo]

beatles0[0]

//você pode criar um array vazio para armazenar inteiros.
var results1 = [Int]()
var results2 = Array<Int>()
var results3: [Int] = [] //eu inventei isso

//This creates an array of one double.
var temperatures = [32.0]




//#Sets

//examples
//A list of words that are valid in Scrabble. (There are very many of these, but they are always unique).

//A list of all usernames on Twitter. (There are very many of these, but they are always unique – a better choice is a set).


//Sets são coleções de valores como arrays, exceto que possuem duas diferenças:
//1-Os itens são armazenados em ordem aleatória.
//2-Você não pode ler valores de um Set usando posições numéricas, como faz com array.
//3-Nenhum item pode repetir; Ou seja, se precisar verificar se um item específico está lá de forma extremamente rápida, use o Set.


//Você pode criar Set diretamente de arrays, assim:
let colors1 = Set(["red", "green", "blue"])

//Se você tentar inserir um item duplicado em um Set, as duplicatas serão ignoradas.
let colors2 = Set(["red", "green", "blue", "red", "blue"])

//Para criar um Set vazio, é feito de forma diferente:
var words = Set<String>()
var numbers = Set<Int>()





//#Tuples
//As tuplas permitem que você armazene vários valores juntos em um único valor. Isso pode soar como arrays, mas as tuplas são diferentes:
//0-você pode anexar nomes a cada um de seus itens.
//1-Você pode acessar itens em uma tupla usando posições numéricas ou posições nomeadas.
//2-Você não pode alterar o tipo de itens em uma tupla; eles sempre têm os mesmos tipos com os quais foram criados.
//3-Você não pode adicionar ou remover itens de uma tupla; eles são fixos em tamanho. Ou seja, se você precisar de uma coleção específica e fixa de valores relacionados em que cada item tenha uma posição ou nome preciso, use uma tupla.
//4-may have duplicate values
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

var name20 = ("Zeca", "Cardoso")

name20.0

var name = (first: "Taylor", last: "Swift")

name = ("Carlos", "Jose")

//Dá erro, pois não pode alterar as posicoes nomeadas.
//name = (top: "Maria", bottom: "Joana")

//Você acessa os itens usando posições numéricas a partir de 0:
name.0

//Ou você pode acessar os itens usando posições nomeadas:
name.first

// você pode alterar os valores dentro de uma tupla depois de criá-la, mas não os tipos de valores. Obteria um erro:
//name = (first: "Justin", age: 25)



//#Dictionaries
//1-São coleções de valores como arrays, mas em vez de armazenar coisas com uma posição inteira, você pode acessá-las usando o que quiser.
//2-Armazena itens de acordo com uma chave/identificador e você pode ler itens usando essas chaves/identificadores.
//3-usamos dois pontos para separar o valor que você deseja armazenar do identificador sob o qual deseja armazená-lo.
let heights1 = ["Taylor Swift": 1.78, "Ed Sheeran": 1.73]

let heights2: [String: Double] = ["Taylor Swift": 1.78, "Ed Sheeran": 1.73]

//Essas chaves/identificadores você pode usá-los para ler dados do dicionário.
heights2["Taylor Swift"]

//podemos criar um dicionário vazio com strings para chaves e valor.
var teams1 = [String: String]()
var teams2 = Dictionary<String, Int>()

//Podemos adicionar entradas mais tarde.
teams1["Paul"] = "Red"



//#Dictionary default values
//Se você tentar ler um valor de um dicionário usando uma chave que não existe, o Swift o enviará de volta nil = nada. Embora isso possa ser o que você deseja, há uma alternativa: podemos fornecer ao dicionário um valor padrão a ser usado se solicitarmos uma chave ausente.
let favoriteIceCream = ["Paul": "Chocolate", "Sophie": "Vanilla"]

//Podemos ler o sorvete favorito de Paul assim:
favoriteIceCream["Paul"]

//receberíamos de volta nil, o que significa que Swift não tem um valor para essa chave.
favoriteIceCream["Charlotte"]

//Podemos corrigir isso dando ao dicionário um valor padrão de “Desconhecido”, para que, quando nenhum sorvete for encontrado para Charlotte, recebamos “Desconhecido” em vez de nil.
//Exemplo A
favoriteIceCream["Charlotte", default: "Unknown"]

favoriteIceCream["Charlotte"] // This code is valid Swift.

//Exemplo B
let planets01 = [1: "Mercury", 2: "Venus"]

planets01[2]

let venus01 = planets01[2, default: "Planet X"]

//Exemplo C
let planets02 = [1: "Mercury"]

planets02[2] //This code is valid Swift.

let venus02 = planets02[2, default: "Planet X"]






//#Resumo - Array vs Set vs Dictionary
//@Fonte: https://docs.swift.org/swift-book/_images/CollectionTypes_intro_2x.png
//Arrays, Set, Tuples, Dictionary são chamados de coleções pois permitem armazenar um grupo de itens em um único valor.



//#Enumerations or enums

//examples
//Directions (north, south, etc). Existem apenas algumas direções nomeadas, então elas são uma ótima opção para enumerações.

//Error types. There are only a fixed number of errors you can issue, so they make a great choice for enums.

//Genres of movies. There is a fixed number of movie genres, so they make a great choice for enums

//Naipes em um baralho de cartas. Existem apenas quatro naipes em um baralho de cartas, então eles são uma ótima opção para enums.

//Months of the year. There are only 12 months in the year, so they make a great choice for enums.

//Days of the week. There are only seven days in the week, so they make a great choice for enums.



//é uma maneira de agrupar valores relacionados para que você possa usá-los sem erros de ortografia.


//Com enums podemos definir um tipo de Result que só pode ser success ou failure.
enum Result {
    case success
    case failure
}

//E agora quando o usamos devemos escolher um desses dois valores. Isso impede que você acidentalmente use strings diferentes a cada vez. A saída sera failure.
let result7 = Result.failure

//Todos esses três são Strings diferentes, então eles significam coisas diferentes.
let result4 = "failure"
let result5 = "failed"
let result6 = "fail"



//#Enum associated values
//Além de armazenar um valor simples, enums também podem adicionar valores associados para armazenar informações adicionais sobre cada caso.
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

//Agora podemos ser mais precisos – podemos dizer que alguém está falando de futebol. Saída será talking football.
let talking = Activity.talking(topic: "football")



//#Enum raw values. Raw = bruto
//Você pode anexar valores brutos a enums para que possam ser criados a partir de inteiros ou strings.

//você pode criar um Planet enum que armazena valores inteiros para cada um de seus casos.
//O Swift atribuirá automaticamente a cada um deles um número começando em 0.
enum Planet1: Int {
    case mercury
    case venus
    case earth
    case mars
}

//earth será dado o número 2, então você pode escrever isso abaixo. Saída será earth.
let earth1 = Planet1(rawValue: 2)

//Se desejar, você pode atribuir um ou mais casos a um valor específico e o Swift gerará o restante.
//Agora Swift atribuirá 1 a mercury e contará a partir daí, o que significa que earth agora é o terceiro planeta.
enum Planet2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

//Saída será earth.
let earth2 = Planet2(rawValue: 3)

//Valores brutos nos permitem dar significado aos casos de enumeração. Por ex: eles dizem que earth tem um valor subjacente de 3.
