import UIKit
/*
let myProgramming = ( 200, "In work", true)
myProgramming
*/
// Тип данных кортежа
/*
 проверка на соответствия типив данных в двух кортежах
 let tape = (200, "vladik", true)
 let tape1 = (true, "liza", 200)
 print(type(of: tape) == type(of: tape1))
 */

/*
можно явно определить тип данных кортежа (через двоеточие после имени параметра)
 let myProgram: (Float, String, Bool) = (200.03, "Hello World", false)
 print ( myProgram)
 */

/*
 // объявляем псевдоним для типа Int
 typealias ps = Int
 // объявляем кортеж и инициализируем его значение
 var korteg: ( Int, Int, ps, ps) = (1,2,2,1)
 */

//3.2. Взаимодействие с элементами кортежа

/*
 let tape = (200, "vladik", true)
 // записываем значения кортежа в переменные
 let (statusCod, statusName, statusBool) = tape
 // выводим информацию
 print( "Статус кода \(statusCod)")
 print( "Статус имя \(statusName)")
 print( "Статус булевой переменной \(statusBool)")
 print("Статус кода \(statusCod), Статус имя  \(statusName), Статус булевой переменной \(statusBool)")
 */

/*
 объявляем две переменные с одновременной
 инициализацией им значений
 var (userName, userAge) = ("Владислав", 20)
 // выводим их значения
 print("Имя: \(userName) , Возраст: \(userAge)")
 */

/* получаем только необходимые
значения кортежа
 let (statusCode, _, _ ) = tape
*/

//Доступ к элементам кортежа через индексы

/*
 пример определения имен элементов кортежа через литерал.
 let statusType = (statusCod: 200 , statusName: "In Work", statusBool: true)
 */

/*
 как используются имена элементов совместно с индексами.
 let statusType = (statusCod: 200 , statusName: "In Work", statusBool: true)
 print("Cтатус сервера-\(statusType.statusCod)")
 print("Cтатус Name -\(statusType.statusName)")
 print("Cтатус bool-\(statusType.2)")
 */

/* объявляем кортеж с указанием имен элементов в описании типа
 let statusType: (statusCod: Int , statusName: String, statusBool: Bool) = (200, "World", true)
 statusType.1
 */



// Редактирование кортежа


/*
 Для однотипных кортежей можно производить операцию инициализации значе- ния одного кортежа в другой.
 var corteg1: (Int, String) = (0, "0")
 let corteg2 = (1, "World")
 // копируем значение одного кортежа в другой
 corteg1 = corteg2
 */

/*
 Индексы и имена могут использоваться для изменения значений отдельных элементов кортежа
 // объявляем кортеж
 var newcorteg = ( 0, false)
 // изменяем значение отдельного элемента
 newcorteg.0 = 1
 newcorteg.1 = true
 newcorteg
 */

//3.3. Сравнение кортежей

/*
 (1, "alpha") < (2, "beta") // true
 // истина, так как 1 меньше 2.
 // вторая пара элементов не учитывается
 (4, "beta") < (4, "gamma") // true
 // истина, так как "beta" меньше "gamma".
 (3.14, "pi") == (3.14, "pi") // true
 // истина, так как все соответствующие элементы идентичны
 */
/*
let product = "Булка"
let wallet = 50
let price = 60
let change: Int
if wallet == price{
    print("Успешная покупка")
}else if wallet > price{
    change = wallet - price
    print("Вот выша сдача \(change)")
}else{
    print("Вы не купили товар")
}
*/

/*
 Представьте что вы разрабатываете приложение, и первое что видит пользователь это экран регистрации. Создайте два свойства, для имени и для возраста пользователя.
 Выведите на консоль приветствие: “Welcome, <….>!” , только в том случае если у пользователя имя “Tim” и возраст не меньше 18.
 let userName = "Vladislav"
 let userAge = 18
 if userName == "Tim" && userAge >= 18{
    print("Welcome, \(userName)!")
 }else{
     print("Пользователь \(userName) не найден!")
 }
 */

/*
 Мы снова разрабатываем приложение для университета. Наше приложение будет проверять проходит абитуриент по балам или нет.
 Создайте свойство для балов одного из абитуриентов, и инициализируйте его любым значением от 1 до 100.
 Проверьте проходит ли абитуриент по балам на свою специальность, если проходной бал начинается от 80 до 100, и если проходит, то выведите на консоль приветствие: “Вы набрали <…> баллов. Поздравляем, вы прошли! “. В том случае если пользователь не прошел, то выведите на консоль сколько ему не хватило баллов: “Вам не хватило <…> баллов  попробуйте в следующий раз”
 let abityrient:String = "Василий"
 let ballabit:Double = 54.5
 let specualnoct:Double = 80
 if ballabit >= specualnoct{
     print("Вы набрали \(ballabit) баллов. Поздравляем, вы прошли!")
 }else if ballabit < specualnoct{
     let change = specualnoct - ballabit
     print("Вам не хватило \(change) баллов попробуйте в следующий раз")
 }
 */

           
/*
 Представьте заведение с игровыми автоматами, за каждую победу игроку выдаются тикеты, которые он может обменять на баллы. 1 балл равен 1 рублю. после этого игрок может купить игрушку с вычетом этих баллов.

 Давайте теперь напишем программу.

 Игрок приносит в кассу какое то количество тикетов (это может быть любое число от 1 до 50, больше игрок за день не может выиграть), кассир их вносит в базу, а программа должна начислить за принятые тикеты определенную сумму на бонусную карту.

 За 20 тикетов начисляют 100 баллов, за 30 – 200 баллов, за 40 – 300 баллов. Лишние тикеты возвращаются игроку.

 Определите какую сумму начислят клиенту на карту за тикеты, и рассчитайте сколько ему нужно будет доплатить за игрушку, стоимостью 450 рублей. Выведите следующий результат на консоль: “Вам начислено на карту клиента <….> рублей, осталось доплатить <….> рублей”
 let ticet:Double = 30
 var ticetRubl:Double = 0
 let ticetSdaca:Double
 let toyPrice:Double = 450

 if ticet >= 40{
     ticetRubl = 400
 }else if ticet >= 30{
     ticetRubl = 200
 }else if ticet >= 20{
     ticetRubl = 100
 }

 ticetSdaca = toyPrice - ticetRubl
 print("Вам начислено на карту клиента \(ticetRubl) рублей, осталось доплатить \(ticetSdaca) рублей")
*/


/*

 Давайте разработаем приложение для тренера по бегу, он будет вносить в приложение пол спортсмена и секунды, за которые спортсмен пробежал 100 метровку.

 Напишите программу, которая будет показывать на какой разряд пробежал спортсмен.

 Есть две категории Мужчина и Женщина

 1 разряд у мужчин дают от 10.95 – 11.44, у женщин от 12.65 – 13.44
 2 разряд у мужчин дают от 11.55 – 12.04 , у женщин от 13.45 – 14.34

 3 разряд у мужчин дают от 12.05 – 12.84, у женщин от 14.35 – 15.34

 Выведите результат на консоль: “Спортсмену присвоен <….> разряд по бегу на дистанцию 100 метров, в категории <….> “
 
 let gender = "Женщина"
 let result = 12.05
 var rank = 0

 if gender == "Мужчина" {
     if result <= 11.44 {
         rank = 1
     } else if result <= 12.04 {
         rank = 2
     } else if result <= 12.84 {
         rank = 3
     }
 } else {
     if result <= 13.44 {
         rank = 1
     } else if result <= 14.34 {
         rank = 2
     } else if result <= 15.34 {
         rank = 3
     }
 }

 print("Спортсмену присвоин \(rank) разряд, по бегу на дистанцию 100 метров, в катигории \(gender)")
 */

//Глава 4. Последовательности и коллекции
 
/*
 let rangeInt = 1..<5
 print( rangeInt)

 // задаем тип данных явно
 let rangeType:Range<Int> = 1..<10
 type(of: rangeInt)
 // тип данных определен автоматически
 // на основании переданного значения (неявно)
 let range = 1..<50
 type(of: range)
 
 
 // диапазон с элементами типа String
 let rangeString:Range<String> = "s"..<"y"
 type(of: rangeString)
 // диапазон с элементами типа Character
 let rangeCharacter:Range<Character> = "s"..<"y"
 type(of: rangeCharacter)
 // диапазон с элементами типа Double
 let rangeDouble:Range<Double> = 1.05..<1.6
 type(of: rangeDouble)
 */

/*
 В качестве начального и конечного значения в любых диапазонах можно исполь- зовать не только конкретные значения, но и параметры (переменные и константы), которым эти значения инициализированы
 let one = 12
 var two = 24
 let range = 12..<24
 */



/*
 // 5.2. Оператор закрытого диапазона
 let one = 12...23
 
 Данный тип диапазона может быть использован, например, при работе с коллек- циями, когда вы хотите получить все элементы, начиная с N, но размер коллекции при этом неизвестен. В листинге 5.7 приведен пример использования постфиксной формы оператора для создания диапазона и получения элементов.
 let namber = 3...
 type( of: namber)
 var collection = [2 , 3, 4, 5, 6]
 print( collection[namber] )
 */


// 5.3. Базовые свойства и методы

/*
 var inrange = 1...10
 inrange.contains(11)
 inrange.count
 //Для определения наличия элемента в диапазоне служит метод contains(_:)
 
 var floatr: ClosedRange<Double> = 1.2..<1.5
 floatr.isEmpty
 */

/*
 
 Свойства lowerBound и upperBound позволяют определить значения левой и правой границы, а методы min() и max() — минимальное и максимальное значение, правда, доступны они только при работе с целочисленными значениями (листинг 5.11).
 
 let antInt = 10...25
 antInt.max()
 antInt.min()
 antInt.lowerBound
 antInt.upperBound
 antInt.count
 
 
 let Range = UInt8(1)...
 for i in Range{
     print(Range)
 }
 */

/*
//Хешируемые диапазоны (Hashable)
let range1 = 1...10
range1.hashValue
let range2 = 1..<10
range2.hashValue
*/

/*
 Эквивалентные диапазоны (Equatable)
 Диапазоны, ограниченные с двух сторон, соответствуют протоколу Equatable, а значит, могут быть проверены на эквивалентность (листинг 5.16).
 
 let range = 1...20
 let range1 = 1...20
 range == range1
 */

/*
 Сопоставимые диапазоны (Comparable)
 Все типы диапазонов не являются сопоставимыми, то есть не соответствуют требо- ваниям протокола Comparable. Их нельзя сравнивать с помощью операторов <=, <, > и >=, это приведет к ошибке (листинг 5.17).
 let range = 1...20
 let range1 = 1...20
 range < range1
*/



// Глава 6. Массивы (Array)
/*
 let arrey = [ "a", "b", "c"]
 var arrey2 = [ 1, 3, 4]
 */

/*
 Создание массива с помощью Array(arrayLiteral:)
 let newanni = Array(arrayLiteral: 1, 2, 3, 4, 5)
 */

/*
 Создание массива с помощью Array(repeating:count:)
 Array(repeating: 1, count: 10)
 */

/*
 Доступ к элементам массива
 / неизменяемый массив
 let alphabetArray = ["a", "b", "c"]
 // изменяемый массив
 var mutableArray = [2, 4, 8]
 // доступ к элементам массивов
 alphabetArray[1] // "b"
 mutableArray[2] // 8
 
 
 // неизменяемый массив
 let alphabetArray = ["a", "b", "c"]
 // изменяемый массив
 var mutableArray = [2, 4, 8]
 // доступ к элементам массивов
 mutableArray[1] = 12
 mutableArray
*/

/* три константы, которые

/*
 cтанут элементами массива */
let a1 = 1
let a2 = 2
let a3 = 3
var someArray = [1, 2, 3]
someArray == [a1, a2, a3] // true
 
 
 Листинг 6.12
 // создаем три массива
 let charsOne = ["a", "b", "c"]
 let charsTwo = ["d", "e", "f"]
 let charsThree = ["g", "h", "i"]
 // создаем новый слиянием двух
 var alphabet = charsOne + charsTwo
 // сливаем новый массив с третьим
 alphabet += charsThree
 alphabet // ["a", "b", "c", "d", "e", "f", "g", "h", "i"]
 
 
 //Листинг 6.14

 var arrayOfArrays = [[1,2,3], [4,5,6], [7,8,9]]
 // получаем вложенный массив
 arrayOfArrays[2] // [7, 8, 9]
 // получаем элемент вложенного массива
 arrayOfArrays[2][1] // 8
 //Конструкция arrayOfArrays[2] возвращает третий вложенный элемент масси- ва arrayOfArrays, а arrayOfArrays[2][1], использующая два индекса, возвра- щает второй элемент подмассива, содержащегося в третьем элементе массива arrayOfArrays.
 
 
 var array = [1, 3, 4, 5, 6]
 array.insert(100, at: 4)
 
 var numArray = [1, 2, 100, 3, 4, 5, 6]
 //Листинг 6.22
 numArray // [1, 2, 100, 3, 4, 5, 6]
 // удаляем третий элемент массива (с индексом 2)
 numArray.remove(at: 2) // 100
 // удаляем первый элемент массива
 numArray.removeFirst() // 1
 // удаляем последний элемент массива
 numArray.removeLast() // 6
 /* итоговый массив содержит
   всего четыре элемента */
 numArray // [2, 3, 4, 5]

 
 let moneyArray = [50, 100, 500, 1000, 5000]
 let randomMoneyElement = moneyArray.randomElement()
 
 
 //Листинг 6.29
 // исходный массив
 let arrayOfNumbers = Array(1...10)
 // его тип данных - Array<Int>
 type(of: arrayOfNumbers) // Array<Int>.Type
 arrayOfNumbers // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 // получим часть массива (подмассив)
 let slice = arrayOfNumbers[4...6]
 slice // [5, 6, 7]
 // его тип данных отличается от типа исходного массива
 type(of: slice) // ArraySlice<Int>.Type

 let arry = [1, 2, 3, 4,]
 let arryInt : Array<Int> = arry.dropLast()
 type( of: arryInt)
 
 // создание пустого множества
 let emptySet = Set<String>()
 // множество со значениями
 var setWithValues: Set<String> = ["хлеб", "овощи"]
 // удаление всех элементов множества
 setWithValues = []
 setWithValues // Set([])
 
 let musicType = [ "Pop", "Rok", "Jazz"]
 musicType.contains("Rap")
 musicType.contains("Rok")

 
 // множество с нечетными цифрами
 let oddDigits: Set = [1, 3, 5, 7, 9]
 // множество с четными цифрами
 let evenDigits: Set = [0, 2, 4, 6, 8]
 // множество со смешанными цифрами
 let differentDigits: Set = [3, 4, 7, 8]
 //При использовании метода intersection(_:) возвращается множество, содержащее значения, общие для двух множеств
 let inter = differentDigits.intersection(oddDigits)


 */
