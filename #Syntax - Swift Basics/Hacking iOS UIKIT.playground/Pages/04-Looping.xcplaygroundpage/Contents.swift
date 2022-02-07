import Foundation




//#Looping



//#For loops
let count = 1...10

for number in count { //e cada vez que o loop for feito, ele extrairá um item e atribuirá a uma constante temporária number.
    print("Number is \(number)")
}

//or
let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

//esses nomes precisam estar em uma matriz para que isso funcione:
//for beatle in "John", "Paul", "Ringo" {
//    print("\(beatle) was in the Beatles")
//}


//Você não pode fazer um loop sobre uma tupla como esta:
//var speeds = (65, 58, 72)
//for speed in speeds {
//    print("You were driving at \(speed)km/h.")
//}

//Isso imprime alguma saída somente se i atingir 10, mas o loop não conta até 10.
for i in 1..<10 {
    if i == 10 {
        print("Found number 10!")
    }
}



//Se você não usar a constante que os for loops fornecem, você deve usar um sublinhado para que o Swift não crie valores desnecessários:
print("Players gonna ")

for _ in 1...5 {
    print("play")
}



//#While loops regular
//verifica sua condição antes da primeira execução.
var numberX = 1

while numberX <= 20 {
    print(numberX)
    numberX += 1
}

print("Ready or not, here I come!")

//obs: 2.5 + 2.5 = 5.0
var averageScore = 2.5
while averageScore < 15.0 {
    averageScore += 2.5
    print("The average score is \(averageScore)")
}


//#While Repeat loops
//Como a condição vem no final loop, o código dentro do loop sempre será executado pelo menos uma vez.
//não é comumente usada

var numberY = 1

repeat {
    print(numberY)
    numberY += 1
} while numberY <= 20

print("Ready or not, here I come!")

//O repeat fica executando enquanto o while for true, mas so lera abaixo do while uma vez.
var countdownXX: Int = 5
repeat {
    print("\(countdownXX)...")
    countdownXX -= 1
} while countdownXX > 0
print("Lift off!")

//Este é um loop de repetição válido.
var frogs = 4
repeat {
    for _ in 1...frogs {
        print("Ribbit!")
    }
} while false



//este print() função nunca será executada, pois false é sempre falsa:
//while false {
//    print("This is false")
//}

//Já este print() função será executada uma vez, pois repeat só falha a condição após a execução do loop
repeat {
    print("This is false")
} while false




//#Exiting loops
//Você pode sair de um loop for or while a qualquer momento usando a palavra break. Geralmente usam o break dentro de um if condição.
// o restante do loop será ignorado.
//https://cdn.programiz.com/cdn/farfuture/ZOIZEfp0V6CTrRuBNum2Q0A6EZzYGJeoEmmGNHHyfRo/mtime:1620036782/sites/tutorial2program/files/swift-break-statement.png

var countDownX = 10

while countDownX >= 0 {
    print(countDownX)
    countDownX -= 1
}

print("Blast off!")

//usando break
var countDown = 10

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break // o restante do loop será ignorado.
    }

    countDown -= 1
}



//#Exiting multiple loops
//Se você colocar um loop dentro de um loop, ele é chamado de loop aninhado. Ex: tabuada de 1 a 10:

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

//Se quisermos sair de multiple loops, precisamos fazer duas coisas:
//1-Primeiro, damos um rótulo ao loop externo com outerLoop.
//  2-Segundo, adicione uma condição dentro do loop interno e use break outerLoop para sair de ambos os loops ao mesmo tempo.
//Obs:Com um regular break, apenas o loop interno seria encerrado - o loop externo continuaria de onde parou.

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

//or outro nome qualquer, ex: outer
outer: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("Product is \(product)")
        break outer
    }
}


//#Skipping items
//Como você viu, a palavra break  sai de um loop. Mas se você quiser apenas pular o item atual e continuar para o próximo do loop, você deve usar continue.

for i in 1...10 {
    if i % 2 == 1 { //se sobrar 1, significa que o número é ímpar, então podemos usar continue para ignorá-lo.
        continue
    }

    print(i)
}



//#Infinite loops
//Loops infinitos não terminam até que você peça, e são feitos usando while true. Certifique-se de ter uma condição em algum lugar para terminar seus loops infinitos!
//Todos os aplicativos no seu iPhone usam loops infinitos, porque eles começam a ser executados e, em seguida, observam continuamente os eventos até que você opte por encerrá-los.

var counterT = 0

while true {
    print(" X ")
    counterT += 1

    if counterT == 273 {
        break
    }
}


