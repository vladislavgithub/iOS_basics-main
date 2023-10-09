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
// исходный массив

//тернарны оператор

//   по факту замена if else условия (выражение ? первое выражение если не выполняется: второе условие

/*
 В праздничный день в магазин игрушек приходит покупатель, если у пользователя есть карта клиента то ему в этот день дают 30 процентную скидку, если нет то 15 процентов.
 Посчитайте сколько заплатит пользователь за игрушку стоимостью 760 рублей, если у него есть карта.
 */

/*
 Объявите константу и запишите в нее свое имя.
 Объявите переменную типа UInt8 и запишите в нее свой возраст.
 Объявите кортеж и явно определите его тип данных, как (name: String, age: Int).
 В первый элемент кортежа запишите значение константы с именем.
 Во второй элемент кортежа запишите значение из переменной с вашим возрастом.
 
 let userName = "Владислав"
 var userAge: UInt8 = 20
 var korteg: (name: String, age: Int)
 korteg.0 = userName
 korteg.1 = Int(userAge)
 print(korteg)
 */

/*
 Объявите кортеж, способный хранить три значения типа Int16.
 Одним выражением объявите две константы типа Int и проинициализуйте им произвольные значения.
 В первые два значения кортежа запишите значения из данных переменных, а в третий их сумму
 let corteg: (Int16, Int16, Int16)
 let (one, two) = (16, 32)
 var tuple = (Int16(one), Int16(two), Int16(one + two))
 
 var someTuple = (myName: "Alex", myAge: 12, "Russia")
 
 var tupleOne = (first: 1, second: 2)
 var tupleTwo = (3, 4)
 tupleTwo = tupleOne
 tupleTwo.0
 
 //Вам даны две целочисленные переменные со значениями 12 и 21. Поменяйте их значения местами без использования буферной переменной и математических операций.
 var one = 12
 var two = 21
 (one, two) = (two, one)
 
 */

/*
 1) Создайте кортеж с двумя параметрами: ваш любимый фильм и ваше любимое число. Все элементы кортежа должны быть именованными.
 2) Одним выражением запишите каждый элемент кортежа в две константы. Проверьте значения параметров с помощью вывода в области результатов.
 3) Создайте псевдоним типа, используемого для первого кортежа, назовите его Man. Создайте второй кортеж типа Man, но описывающий другого человека (с другими значениями). Обратите внимание, что элементы кортежа так же должны иметь имена.
 4) Обменяйте значения в кортежах между собой.
 5) Создайте новый кортеж, элементами которого будут любимое число из первого кортежа, любимое число из второго кортежа и разница любимых чисел первого и второго кортежей.
 
 //1
 var tuple: (film:String, number:Int) = ("King of the ring", 21)
 //2
 let (const1, const2) = tuple
 const1 //"King of the ring"
 const2 //21
 //3
 typealias Man = (film:String, number:Int)
 var tuple2: Man = ("Alice", 777)
 //4
 // создаем буферный кортеж
 var bufTuple = tuple
 // меняем значения в кортежах
 tuple = tuple2
 tuple2 = bufTuple
 //5
 var tuple3 = (tuple.number, tuple2.number, tuple.number-tuple2.number)
 */


/*
Создайте диапазон целых чисел от -100 до 100 и инициализируйте его константе range
Создайте переменную item типа UInt со значением 21.
Создайте переменную типа Bool и запишите в нее результат проверки наличия значения переменной item в диапазоне range. Каким образом произвести данную проверку?
 //1
 var range = -100...100
 var item: UInt = 21
 var contains = range.contains(Int(item)) //true
*/

/*
 Создайте диапазон, содержащий все заглавные латинские символы.
 Какими будут значения методов min() и max() для этого диапазона?
 Какими будут значения свойств lowerBound и upperBound для этого диапазона?
 
 Array(0...10)
 Array(arrayLiteral: 1,2,3,4,5,6,7,8,9,10)
 
 /Покажите все известные вам способы создания массива, состоящего из пяти одинаковых значений

 // С помощью литерала массива
 [1,1,1,1,1]
 // с помощью спецальных функций
 Array(repeating: 1, count: 5)
 Array(arrayLiteral: 1,1,1,1,1)

 */
/*
 1)Создайте массив, состоящий из четырех целочисленных элементов

 2)Сделайте так, чтобы вместо второго и третьего элементов массива (с индексами 1 и 2) был элемент, содержащий сумму начального и конечного элементов данного массива. После этого в массиве должно остаться 3 элемента.

 3) Отсортируйте элементы по возрастанию
 
 //1
 var arr = [1,2,3,4]
 //2
 arr.remove(at: 1)
 arr[1] = arr[0]+arr[2]
 arr // [1, 5, 4]
 //3
 arr.sort() // [1, 4, 5]

 */
/*
1) Создайте массив, состоящий из всех целых чисел от 1 до 100

2) Создайте пустой массив типа Array<Int>

3) Проинициализируйте пустому массиву элементы с 25го по 50ый

 var arr = Array(1...100)
 var arr1: Array<Int> = []
 arr1 = Array(arr[24...50])
*/

/*
 1) Создайте массив arr из пяти элементов типа Character

 2) В массив arr вставьте вторым элементом (не вместо второго, а между первым и вторым) символ «z»

 3) Создайте переменную i типа UInt8 и проинициализируйте ей количество элементов массива arr.
 
 var arr: Array<Character> = ["a", "b", "c", "v", "s"]
 arr.insert("z", at: 1)
 var i = UInt8(arr.count)
 */

/*
 Каким образом можно получить значение предпоследнего элемента массива независимо от количества элементов в нем.
 Может ли описанный вами синтаксис привести к ошибке? Если да, то в каком случае?
 
 [1,2,3,4,5,6].last
 // array - это массив с неизвестным количеством элементов
 var array =  [1,2,3,4,5,6]
 Array[array.count-2]
 // обрати внимание, что из значения свойства count необходимо вычесть 2, а не 1
 // это связано с тем, что индекс первого элемента массива - 0, а не 1
 
 var arr = [Array<Character>]()
 arr.append(["a", "b", "c"])
 arr.append(["d", "e", "f"])
 arr.remove(at:1)
 var arr2 = arr.remove(at: 0)
 print(arr2[0])


 var firstArray = [1,2,3,4,5]
 var secondArray= (firstArray.dropLast()
 
 var firstArray = [1,2,3,4,5]
 var secondArray: [UInt] = firstArray.dropLast().map() { return UInt($0) }
 secondArray // [1, 2, 3, 4]
 type(of: secondArray) // Ar

 // множество с нечетными цифрами
 let oddDigits: Set = [1, 3, 5, 7, 9]
 let differentDigits: Set = [3, 4, 7, 8]
 let evenDigits: Set = [0, 2, 4, 6, 8]
 let inter = differentDigits.intersection(oddDigits)
 let exclusive = differentDigits.symmetricDifference(oddDigits)
 let union = evenDigits.union(oddDigits)
 let subtract = differentDigits.subtracting(evenDigits)
 
 var mySet2: Set = [13.4, 15.1]
 print( mySet2.contains( Double(13.4) ) )

 var setOne: Set = [0, 1, 2, 3]
 var setTwo: Set = [0, 2, 4, 6]
 var resultSet = setOne.union(setTwo)
 resultSet.remove(4)

 */

/*
1) Объявите множество taskSet1, состоящий из всех целочисленных элементов от 1 до 10
2) Объявите множество taskSet2, состоящий из всех целочисленных элементов от 5 до 15
3) Создайте множество taskSet3, состоящий из элементов, которые входят и в taskSet1, и в taskSet2
4) Создайте множество taskSet4, состоящий из элементов, которые не пересекаются в taskSet1 и taskSet2
5) Запишите в переменную count типа UInt8 количество элементов в массиве taskSet4. Какое значение примет эта переменная?
 
 var taskSet1 = Set(1...10)
 var taskSet2 = Set(5...15)
 var taskSet3 = taskSet1.union(taskSet2)
 var taskSet4 = taskSet1.symmetricDifference(taskSet2)
 var count = UInt8(taskSet4.count)
 type(of: count)
 count
 
 var banedUsers: Set<Int> = [132, 345, 12, 45]
    // проверка того, забанен ли пользователь
    banedUsers.contains(132) // true
*/


// Словари (Dictionary)

/*
 var iPhones = [2007: "iPhone 6s",
                2010: "iPhone7",
                2020: "iPhone8",
                2021: "iPhone10"]
 print(iPhones)

 let phone = iPhones.removeValue(forKey: 2007)
 print(phone)
 iPhones.isEmpty
*/




/*
 предмет вес сможет поднять или нет
 var object = ["ложка": 0.1,
               "вилка": 0.2,
               "гантеля": 5,
               "машина": 1000]
 let maxWeight = 60.0
 let checkedObject = "машина"
 let checkedWeight = object[checkedObject]!
 let name = "Владислав"
 checkedWeight <= maxWeight ? print(" \(name), ты молодец, у тебя получилось поднять \(checkedObject)!") : print("\(name), увы, не повезло, поднять \(checkedObject)!")

 */


/*
 Dictionary(dictionaryLiteral: (100, "Сто"), (200, "Двести"), (300, "Триста"))
 // базовая коллекция кортежей (пар значений)
 let baseCollection = [(2, 5), (3, 6), (1, 4)]
 // создание словаря на основе базовой коллекции
 let newDictionary = Dictionary(uniqueKeysWithValues: baseCollection)
 newDictionary // [3: 6, 2: 5, 1: 4]
 
 // массив звезд
 let nearestStarNames = ["Proxima Centauri", "Alpha Centauri A",
 "Alpha Centauri B"]
 // массив расстояний до звезд
 let nearestStarDistances = [4.24, 4.37, 4.37]
 // получение словаря, содержащего пары значений
 let starDistanceDict = Dictionary(uniqueKeysWithValues: zip(nearestStarNames,
                        nearestStarDistances))
 starDistanceDict // ["Proxima Centauri": 4.24, "Alpha Centauri B": 4.37,
                      "Alpha Centauri A": 4.37]

 */


// 8.2. Тип данных словаря
/*
let codeDesc = [200: "success", 300: "warning", 400: "error"]
print(type(of: codeDesc))
*/
//8.3. Взаимодействие с элементами словаря
/*
var countryDict = ["RUS": "Россия", "BEL": "Белорусь", "UKR": "Украина"]
var countryName = countryDict["BEL"]
countryName
countryDict["RUS"] = "Российская федерация"
print(countryDict)

var oldValueOne = countryDict.updateValue("Республика Беларусь", forKey: "BEL")
// в переменной записано старое измененное значение элемента
oldValueOne // "Белоруссия"
var oldValueTwo = countryDict.updateValue("Эстония", forKey: "EST")
// в переменной записан nil, так как элемента с таким ключом не существует
oldValueTwo // nil

countryDict["TUR"] = "Турция"
print(countryDict)
countryDict["TUR"] = nil
countryDict.removeValue(forKey: "UKR")
print(countryDict)

countryDict["SER"]
print(type(of: countryDict["SER"]))
 
//Пустой словарь
let emptyDictionary: [String:Int] = [:]
let anotherEmptyDictionary = Dictionary<String,Int>()


var birthYears = [1991: ["John", "Ann", "Vasiliy"], 1993: ["Alex", "Boris"] ]
birthYears = [:]
birthYears  // [:]

*/

//8.5. Базовые свойства и методы словарей

/*
var someDictionary = ["One": 1, "Two": 2, "Three": 3]
// количество элементов в словаре
someDictionary.count // 3

var emptyDict: [String:Int] = [:]
emptyDict.count // 0
emptyDict.isEmpty // true

// все ключи словаря countryDict
let keys = countryDict.keys
type(of: keys) // Dictionary<String, String>.Keys.Type
keys // Dictionary.Keys(["UKR", "RUS", "EST"])

// все значения словаря countryDict
let values = countryDict.values

1) Создайте словарь типа Dictionary<Int, String> и наполните его тремя элементами
2) Запишите в множество все ключи словаря
3) Запишите в массив все значения словаря
4) Создайте множество, состоящее из всех значений коллекций из пунктов 2 и 3
Будьте очень внимательны при решении заданий
let dictionary: Dictionary<Int, String> = [ 2:"Vladik", 3:"Lesha", 4:"Alekseich"]
var vil1 = set(dictionary.keys)
var vil2 = Array(dictionary.values)
print(vil1)

*/

/*
1) Создайте словарь типа Dictionary<Int, Array<String>> и наполните его произвольными значениями
2) Запишите в константу dictElCount количество элементов в словаре
3) Создайте массив, состоящий из dictElCount одинаковых элементов, значений которых dictElCount. Какой тип данных будет у созданного массива?

let dictionary: Dictionary<Int, Array<String>> = [1: ["Vitaliy", "Vladislav"], 2: ["Sergey", "Alex"]]
let  dictElCount = dictionary.count
var  arryElCount = Array(repeating: dictElCount, count: dictElCount)
print(type(of: arryElCount))

*/

//Строка — коллекция символов (String)

/*
 let char0: Character = "\u{E6}"
 let char: Character = "\u{65}\u{310}"
 char == char0
 print(char)
 //Графем-кластер — это совокупность юникод-скаляров (или кодовых точек), при визуальном представлении выглядящих как один символ.
 let thumbsUp = "\u{1f44d}"
 let blackSkin = "\u{1f3fd}"
 let combine = "\u{1f44d}\u{1f3fd}"

 let cafeSimple = "caf\u{E9}" // "café"
 let cafeCombine = "cafe\u{301}" // "café"
 cafeSimple.count // 4
 cafeCombine.count // 4

 let name = "e\u{301}lastic" // "élastic"
 let index = name.startIndex

 let firstChar = name[index]
 firstChar // "é"
 type(of: firstChar) // Character.Type

 let indexLastChar = cafeSimple.endIndex

 let lastCharIndex = name.index(before: indexLastChar)
 name[lastCharIndex] // "c"

 let userName = "Владислав"
 //fo0
 let userIndex = userName.startIndex
 let userNameIndex = userName[userIndex]

 */
/*
// практика - строки
1) Создайте переменную типа String со значением «Swift»
2) Создайте константу типа Character с произвольным значением
3) Создайте массив в соответсвии со следующими требованиями:
— количество элементов должно соответствовать количеству символов
— значения элементов должны быть такими же, как у константы из пункта 2
— тип массива должен быть Array<String>
4) Проиницилизируйте значение константы из пункта 2 в переменную из пункта 1
 //1
 var name:String = "Swift"
 //2
 let userName:Character = "S"
 //3
 var arry = Array(repeating: String(userName), count: name.count)
 arry
 (type(of: arry))
 name = String(userName)

 1) Создайте константу со строковым значением "JonhWick"
 2) Получите индекс первого символа строки.
 Используя полученный индекс выведите на консоль первый символ строки из пункта 1
 3) Одним выражением получите индекс последнего символа строки из пункта 1
 Используя полученный индекс выведите на консоль последний символ строки из пункта 1
 4) Запишите в новую константу первые четыре символа из строки "БабаЯга"
 Какой тип данных будет у созданной константы
 
 var name = "JonhWick"
 var nameIndex = name.startIndex
 print(name[nameIndex])
 let lastIndex = name.index(before:name.endIndex)
 print(name[lastIndex])
 let tmp_str = "БабаЯга"
 let tmp_firstIndex = tmp_str.startIndex
 let tmp_fourthIndex = tmp_str.index(tmp_firstIndex, offsetBy: 4)
 let newStr = tmp_str[tmp_firstIndex...tmp_fourthIndex]
 print(type(of: newStr))
 
 Самостоятельно в сети Интернет найдите кодовые точки для Unicode-символов «шахматные фигуры», после чего создайте два множества типа Set<Character>, состоящие из данных символов.
 Первое множество должно содержать все фигуры черного цвета, а второе — белого.
 
 let set: Set<Character> = ["\u{2654}","\u{2655}","\u{2656}", "\u{2657}", "\u{2658}", "\u{2659}"]
 let chessBlack: Set<Character> = ["\u{265A}", "\u{265B}", "\u{265C}", "\u{265D}", "\u{265E}", "\u{265F}"]
 
 */

/*
 Часть III
 ОСНОВНЫЕ ВОЗМОЖНОСТИ SWIFT
 
 Глава 10. Операторы управления
 
 Утверждения
 
 var dragonAge0 = 230
 assert( dragonAge0 <= 235, strName+strEmpty+strOld )
 assert( dragonAge0 >= 225, strName+strEmpty+strYoung )
 //в качестве второго входного аргумента функции assert(_:_:) передана не текстовая строка, а выражение, которое возвращает значение типа String (происходит конкатенация строк).
 print("Программа успешно завершила работу")

 let strName = "Дракон"
 let strYoung = "молод"
 let strOld = "cтар"
 let strEmpty = " "

 var dragonAge = 220
 assert( dragonAge <= 235, strName+strEmpty+strOld )
 assert( dragonAge >= 221, strName+strEmpty+strYoung )
 print("Программа успешно завершила свою работу")

 10.2. Оператор условия if
 
 let userName = "Vladislav"
 if userName == "Vladislav" {
     print("Hello,\(userName)")
 }else{
     print("Вы не Vladislav")
 }

 let logicVar = true
 if logicVar == true {
     print("Переменная истина!")
 }

 let logicVars = false
 // полная форма проверки на отрицание
 if logicVars == false{
     print("Переменная ложна")
 }
 // сокращенная форма проверки на отрицание
 if !logicVars {
     print("Переменная вновь ложная")
 }

 Стандартный синтаксис оператора if
 
 let adminName = "Vladislav"

 if adminName ==  "Vladislav"{
     print("Привет, администратор!")
 }else{
     print("Привет, пользователь")
 }
 
 // переменная типа Bool
 var logicVar = false
 // проверка значения переменной
 if logicVar {
     print("Переменная logicVar истинна")
 } else {
     print("Переменная logicVar ложна")
 }
 
 let a = 200
 let b = 210
 if a+b > 400{
     print("сумма больше 400")
 }else{
     print("сумма меньше 400")
 }

 if ferstLogik || secondLogik {
     print ("одна или две переменнык истины")
 }else{
     print ("Одна или две переменнык ложны")
 }

 var ferstLogik = true
 var secondLogik = false
 if ferstLogik || secondLogik {
     if ferstLogik && secondLogik{
         print ("переменнык истины")
     }else{
         print ("одна ложна")
     }
 }else{
     print("обе ложные")
 }
 
 //Расширенный синтаксис оператора if

 let userName = "Vladislav"
 if userName == "Vladislav"{
     print ("Привет, администратор")
 }else if userName == "Алксеич"{
     print("Привет, модератор")
 }else if userName == "Виталич"{
     print("Привет, редактор")
 }else{
     print("Привет, пользователь")
 }
 
 let firstLogicVar = true
 let secondLogicVar = true
 if firstLogicVar && secondLogicVar {
     print("Обе переменные истины")
 }else if firstLogicVar || secondLogicVar{
     print("Одна из переменных истина")
 }else {
     print("Oбе переменные ложны")
 }

 */

/*
 Предположим, что вы сдаете в аренду квартиры в жилом доме. Стоимость аренды, которую платит каждый жилец, зависит от общего количества жильцов:
 Если жильцов менее 5 — стоимость аренды жилья равна 1000 рублей с чело- века в день.
 Если жильцов от 5 до 7 — стоимость аренды равна 800 рублям с человека в день.
 Если жильцов более 7 — стоимость аренды равна 500 рублям с человека в день.
 
 var kolvo = 3
 var price = 0
 if kolvo < 5{
     price = 1000
 }else if kolvo >= 5 && kolvo <= 7{
     price = 800
 }else{
     price = 500
 }
 var allprice = price * kolvo
 print (allprice)
 
 решение с использованием contains(_:)
 if (..<5).contains(tenantCount) {
     rentPrice = 1000
 } else if (5...7).contains(tenantCount) {
      rentPrice = 800
 } else if (8...).contains(tenantCount) {
     rentPrice = 500
 }
 
 //    Тернарный оператор условия
 
 let x = 1001
 let y = ( x > 100 ? 100 : 50)
 
 let a = 1
 let b = 2
 // сравнение констант
 a <= b ? print("A меньше или равно B") : print("A больше B")

 // переменная типа Int
 var height = 180
 // переменная типа Bool
 var isHeader = true
 // переменная типа Bool
 let rowHeight = height + (isHeader ? 20 : 10 )
 rowHeight
 
 let a = Int.random(in: 1...100)
      let b = Int.random(in: 1...100)
      // вариант 1 (с И)
      if a > 50 && b > 50 {
          print("a and b > 50")
      }
      // вариант 2 (c запятой)
      if a > 50, b > 50 {
          print("a and b > 50")
      }

 При этом использование запятой имеет несколько особенностей:
 • Вычисление значения выражений происходит по порядку, и если одно из выражений не
 истинно (false), то последующие подвыражения вычисляться не будут.
 • Результаты вычисления каждого подвыражения могут быть использованы в последующих
 подвыражениях.
 В следующем примере используются опционалы, изучению которых будет посвящена следующая глава. В нем результаты вычислений первого и второго подвыражений используются в третьем.
      if let a = Int("43"), let b = Int("45"), a < b {
          print("a < b")
      }
 
 */

//Оператор ветвления switch

/*
 //Оператор ветвления switch
 
 let userMark = 4
 if userMark == 1{
     print("Единица на экзамене! Это ужастно.")
 }else if userMark == 2{
     print("Останештся на второй год")
 }else if userMark == 3{
     print("Ты плохо учил материал в этом году")
 }else if userMark == 4{
     print("Неплохо, но могло быть лучше")
 }else if userMark == 5{
     print("Молодец, бесплатное место в институте")
 }else{
     print("Данные некоректны")
 }

 let userMark = 4
 switch userMark{
 case 1,2:
     print("экзамен не сдан")
 case 3:
     print("Нкобходимо выполнить дополнительное задание")
 case 4,5:
     print("Экзамен сдан")
 default:
     print("Указана некорректная оценка")
 }
 
 let userMark = 4
 //переменная для хранения собщения
 let message: String

 switch userMark{
 case 1:
     message = "Единица на экзамене! Это ужасно!"
 case 2:
     message = "С двойкой ты останешься на второй год!"
 case 3:
         message = "Ты плохо учил материал в этом году!"
 case 4:
         message = "Неплохо, но могло быть и лучше"
 case 5:
         message = "Бесплатное место в университете тебе обеспечено!"
 default:
     message = "Переданы некорректные данные об оценке"
 }
 print(message)

 //Диапазоны в операторе switch

 let userMark = 4
 switch userMark {
 case 1..<3:
     print("Экзамен не сдан")
 case 3:
     print("Требуется дополнительное решение")
 case 4...5:
     print("Экзамен сдан!")
 default:
     assert(false, "Указана некоректная оценка")
 }
 
 //Кортежи в операторе switch
 
 let answer: (code: Int, message: String) = (code: 404, message: "Page not found")

 switch answer{
 case (100..<400, _):
     print(answer.message)
 case (400..<500, _):
     print(false, answer.message)
 default:
     print("Сообщение некорректно")
 }
 
 let dragonCharacteristics: (color: String, weight: Float) = ("красный", 1.4)
 switch dragonCharacteristics {
 case ("зеленый", 0..<2):
     print("Вольтер № 1")
 case ("красный", 0..<2):
     print("Вольтер № 2")
 case ("зелёный", 2...), ("красный", 2...):
     print("Вольтер № 3")
 default:
     print("Дракон не может принят в стаю")
 }
 
 var dragonsConst = 3
 let dragonCharacteristics: (color: String, weight: Float) = ("красный", 1.4)
 switch dragonCharacteristics {
 case ("зеленый", 0..<2):
     print("Вольте № 1")
 case ("красный", 0..<2):
     print("Вольтер № 2")
 case ("зеленый", 2...) where dragonsConst < 5,
      ("красный", 2...) where dragonsConst < 5:
     print("Вольтер № 3")
 default:
     print("Дракон не может быть принят в стаю")
 }
 
 
 switch dragonCharacteristics{
 case ("зеленый", 0..<2):
     print("Вольтер №1")
 case ("красный", 0..<2):
     print("Вольтер №2")
 case ("зеленый", 2...) where
     dragonCharacteristics.weight.truncatingRemainder(dividingBy: 1) == 0
     && dragonsConst < 5,
    ("красный", 2...) where
     dragonCharacteristics.weight.truncatingRemainder(dividingBy: 1) == 0
     && dragonsConst < 5:
     print("Вольтер 3 ")
 default: break
 
 
 var dragonsCount = 4
 let dragonCharacteristics: (color: String, weight: Float) = ("зеленый", 3)
 switch dragonCharacteristics {
 case ("зеленый", 0..<2 ):
     print("Вольер No 1")
 case ("красный", 0..<2 ):
     print("Вольер № 2")
 case ("зеленый", let weight) where
     weight > 2
     && weight.truncatingRemainder(dividingBy: 1) == 0
     && dragonsCount < 5:
     print("Вольтер № 3. Вес дракона \(weight) тонны")
 default:
     print("Дракон не может принят в строй!")
 }
 
 // оператор where



 var dragons = 4
 let dragonCharacteristik: ( color: String, weight: Float) = ("зеленый", 4)
 switch dragonCharacteristik{
 case ("зеленый", 0..<2):
     print("V1")
 case let (color, weight):
     ( color == "зеленый" || color == "красный")
     && weight.truncatingRemainder(dividingBy: 1) == 0
     && weight < 5
     print("v2, \(weight)")
 }
 
 let someInt = 12
 switch someInt {
 case 1...:
     print( "Больше 0" )
 case ..<0:
     print( "Меньше 0" )
 default:
 break }

 //Ключевое слово fallthrough

 let level: Character = "Б"
 // определение уровня готовности
 switch level {
      case "А":
         print("Выключить все электрические приборы ")
         fallthrough
     case "Б":
         print("Закрыть входные двери и окна ")
         fallthrough
     case "В":
         print("Соблюдать спокойствие")
     default:
         break
 }

 let level:Character = "B"
 switch level{
 case "A":
     print("В")
     fallthrough
 case "B":
     print("v")
     fallthrough
 case "C":
     print("c")
 default:
     break
 }
 
 var i = 1
 var resultSum = 0
 while i <= 10 {
     resultSum += 1
     i += 1
 }
 resultSum


 // Операторы повторения while и repeat while

 var y = 1
 var rusultSumm = 0
 repeat {
     rusultSumm += y
     y += 1
 } while y < 10
 rusultSumm
 y
 
 var x = 0
 var sum = 0
 while x <= 10{
     x += 1
     if x % 2 == 1{
         continue
     }
     sum += x
 }
 sum
 
 
 
 //Использование оператора break

 let lastNum = 54
 var currentNum = 1
 var sumOfInts = 0
  while currentNum <= lastNum {
     sumOfInts += currentNum
     if sumOfInts > 450 {
         print("Хранилище заполнено. Последнее обработанное число - \(currentNum)")
         break
 }
     currentNum += 1
 }

 
 //Оператор повторения for

 // массив целых чисел
 let numArray: Array<Int> = [1, 2, 3, 4, 5]
 // в данной переменной будет храниться
 // сумма элементов массива numArray
 var result: Int = 0
 // цикл подсчета суммы
 for number in numArray {
     result += number
 }
 result // 15


 // внешняя переменная
 var myChar = "a"
 // внешняя константа
 let myString = "Swift"
 // цикл использует связанный параметр с именем,
 // уже используемым глобальной переменной
 for myChar in myString {
     // локальная константа
     // вне цикла уже существует константа с таким именем
     let myString = "Char is"
     print("\(myString) \(myChar)")
 }
 myChar // "a"
 myString // Swift

 
 for _ in 1...3{
     print ("Повторяющая строка")
 }

 При итерации по элементам словаря (Dictionary) можно создать отдельные свя- занные параметры для ключей и значений элементов

 var countriesAndBlocks = [ "Россия": "СНГ", "Франция": "ЕС"]
 for ( contriName, orgName) in countriesAndBlocks {
     print("Страна - \(contriName) вступила  \(orgName)")
 }
 
 Если требуется получать только ключи или только значения элементов, то можно вновь воспользоваться нижним подчеркиванием
 
 var countriesAndBlocks = [ "Россия": "СНГ", "Франция": "ЕС"]
 for ( contriName, _) in countriesAndBlocks {
     print("Страна - \(contriName) ")
 }
 for ( _, orgName) in countriesAndBlocks {
     print("Организация - \(orgName) ")
}
 
 Помимо этого, в случае, если требуется получить последовательность, состоящую только из ключей или значений словаря, можно воспользоваться свойствами keys и values — и передать результат их работы в оператор for
 
 var countriesAndBlocks = ["Россия": "ЕАЭС", "Франция": "ЕС"]
 for keyName in countriesAndBlocks.keys {
     print("страна - \(keyName)")
 }
 for valuesName in countriesAndBlocks.values {
     print("организация  - \(valuesName)")
 }
 
 Если при работе с массивом для каждого элемента помимо значения требуется получить и индекс, то можно воспользоваться методом enumerated(), возвращающим последовательность кортежей, где первый элемент — индекс, а второй — значение
 
 print ("Несколько фактов обо мне:")
 let myMusikStyles = ["Rosk", "Jazz", "Pop"]
 for (index, musikName) in myMusikStyles.enumerated(){
     print("\(index+1). Я люблю: \(musikName)")
 }
 
 
 
 Предположим, что перед вами стоит задача обработать все числа от 1 до 10, иду- щие с шагом 3 (массив значений 1, 4, 7, 10). В этом случае вы можете «руками» создать коллекцию с необходимыми элементами и передать ее в конструкцию
 

 let intNamber = [1, 4, 7, 10]
 for element in intNamber {
     print(element)
 }
 
 //stride(from:through:by:)
 
 for i in stride(from: 1, through: 10, by: 3){
     print(i)
 }
 
 stride(from:to:by:) имеет лишь одно отличие — вместо входного па- раметра through используется to, который исключает указанное в нем значение из последовательности
 
 for i in stride(from: 1, to: 10, by: 3){
     print(i)
 }

 приведен пример вычисления суммы всех нечетных чисел от 1 до 1000 с помощью функции stride(from:through:by:)
 
 var result = 0
 for i in stride( from: 1, through: 1000, by: 2 ){
     result += i
 }
 result

Использование where в конструкции for-in
 
 var result = 0
 for i in 1...10 where i % 2 == 0{
     result += i
 }
 result


 Многомерные коллекции в конструкции for-in
 // словарь с результатами игр
 let resultsOfGames = ["Red Wings": ["2:1","2:3"],
 "Capitals": ["3:6","5:5"],"Penguins": ["3:3","1:2"]]
 // обработка словаря
 for (teamName, results) in resultsOfGames {
     // обработка массива результатов игр
     for oneResult in results {
         print("Игра с \(teamName)  — \(oneResult)")
     }
 }

 Использование continue в конструкции for-in
 
 
 import Foundation
 for i in 1... {
     let randNum = Int(arc4random_uniform(100))
     if randNum == 5 {
         print("Итерация номер \(i)")
         break
     }
 }

 
 for i in 1... {
     let random = Array<Int>(0...100).randomElement()
     if random == 5 {
         print("Итерация номер \(i)")
         break
     }
 }
 
 //Метка

 mainloop: for i in 1...5 {
     for y in 1...5{
         if y == 4 && i == 2 {
             break mainloop
         }
         print("\(i) - \(y)")
     }
 }
 
 */


//  Оператор досрочного выхода guard

/*
 Оператор guard называется оператором досрочного выхода. Подобно операто- ру if, он проверяет истинность переданного ему условия. Отличие его в том, что он выполняет код в теле оператора только в том случае, если условие вернуло значение false.
 var users = ["admin", "alex", "grace", "liza"]
 var currentUser = users.removeFirst()
 repeat {
     print(users.startIndex)
     currentUser = users.removeFirst()
 } while currentUser != "grace"
 print(users.count)
 
 
 
 var swimer = ["июнь", "июль", "август"]
 var theman = ""
 for index in 0..<swimer.count{
     theman += swimer[index] + " "
 }
 print (" Летом три месяца: \(theman)")

 
 let name = "Simon"
 switch name {
 case "Simon":
     fallthrough
 case "Malcom", "Zoe", "Kaylee":
     print("Crew")
 default:
     print("Not crew")
 }
 
 var users = ["admin", "alex", "grace", "liza"]
 var currentUser = users.removeFirst()
 repeat {
     print(users.startIndex)
     currentUser = users.removeFirst()
 } while currentUser != "grace"
 print(users.count)

 
                                                        Практика
Задание 1
 Напишите код, который будет выводить на консоль персонализированное приветствие пользователю в зависимости от его имени.
 Пусть в константе name хранится имя пользователя. Используя операторы управления (условия if и ветвления switch) реализуйте различный вывод на консоль в зависимости от значения в константе name
 Покажите варианты решения с использованием switch и if. Определите вывод на консоль для трех произвольных имен, а так же в блоке «во всех остальных случаях» (default и else).
 
 Решение:
 
 //let nameUser = "Stanislav"
 //switch nameUser {
 //case "Vladislav":
 //    print("Welcom \(nameUser)")
 //case "Stanislav":
 //    print("Welcom moder \(nameUser)")
 //case "Saha":
 //    print("Welcom men \(nameUser)")
 //default:
 //    print("Welcom people")
 //}

 //
 //let nameUser = "Stanislav"
 //nameUser == "Stanislav" ? print("Welcom \(nameUser)") : print("Welcom people")
 //

 let nameUser = "Stanislav"
 if nameUser == "Stanislav"{
     print("Welcom \(nameUser)")
 }else if nameUser == "Vladislav"{
     print("Welcom moder \(nameUser)")
 }else if nameUser == "Saha"{
     print("Welcom men \(nameUser)")
 }else{
     print("Welcom people")
 }
     
                                                    Задание 2
 У вас есть логическая переменная open, которая может принять одно из двух доступных значений (true или false) var open = true или var open = false

 Вам необходимо создать новую переменную типа String и инициализировать ей строковое значение:
 — если open равно true, то инициализировать "открыто"
 — если open равно false, то инициализировать "закрыто"

 var open = Bool.random()

 //if open == true{
 //    print("дверь открыта")
 //}else{
 //    print("дверь закрыта")
 //}

 //open == true ? print("дверь открыта") : print("дверь закрыта")

 //switch open{
 //case true:
 //    print("дверь открыта")
 //case false:
 //    print("дверь закрыта")
 //}
 
                                                    Задание 3
 Вам даны три переменные var1, var2 и var3 целочисленного типа Int
 Составьте программу, в конце которой в константе result будет находиться наибольшее из трех целочисленных значений.
 
 var var1 = 3
 var var2 = 4
 var var3 = 5

 //var tmp = 0
 //tmp = var1 > var2 ? var1 : var2
 //tmp = tmp > var3 ? tmp : var3
 //let result = tmp
 //print(result)

 //let result = [var1, var2, var3].max()
 //print(result)

 var tmp = 0
 if var1 > var2 && var1 > var3{
     tmp = var1
 }else if var2 > var1 && var2 > var3{
     tmp = var2
 }else{
     tmp = var3
 }
 let reault = tmp

                                                Задание 4
 
 Вы имеете три переменные-кортежа, содержащие координаты точек
 Напишите программу, которая определяет, может ли существовать треугольник с заданными координатами вершин
 //переменные с координатами
 var point1 = (-100,1)
 var point2 = (10,2)
 var point3 = (6,12)
 //определяем длину отрезков
 var line1 = sqrt(
     pow(Double(point2.0 - point1.0), 2) +
     pow(Double(point2.1 - point1.1), 2)
 )
 var line2 = sqrt(
     pow(Double(point2.0 - point3.0), 2) +
     pow(Double(point2.1 - point3.1), 2)
 )
 var line3 = sqrt(
     pow(Double(point1.0 - point3.0), 2) +
     pow(Double(point1.1 - point3.1), 2)
 )
 if line1+line2>line3 {
     print("Такой треугольник существует")
 }else{
     print("Такой треугольник не существует")
 }

 var (a, b, c): ((Double,Double), (Double,Double), (Double, Double)) = ((1, 1), (1, 3), (3, 1))
 // Вычислим длины сторон
 let aB = sqrt ((pow(b.0-a.0, 2)) + (pow(b.1-a.1, 2)))
 let aC = sqrt ((pow(c.0-a.0, 2)) + (pow(c.1-a.1, 2)))
 let bC = sqrt ((pow(c.0-b.0, 2)) + (pow(c.1-b.1, 2)))
 // Сравниваем грани
 var faceBc = (aB + aC) > bC
 var faceAc = (aB + bC) > aC
 var faceAb = (aC + bC) > aB
 // Треугольник существует только тогда, когда сумма длин любых двух его сторон больше длины третьей
 if faceBc && faceAc && faceAb {
     print("True triangle")
 } else {
     print("False triangle")
 }
                                                    Задание 5
 
 Переменная lang может принимать 2 значения: "ru", "en". Если она имеет значение "ru", то в переменную days запишите массив дней недели на русском языке, а если имеет значение "en" – то на английском
 Покажите решение задачи через конструкцию switch-case
 
 
 var lang = "eg"
 var days: [String] = []
 switch lang{
 case "ru":
     days = [ "пн", "вт", "ср", "чт", "пт", "сб","вс" ]
     print(days)
 case "eg":
     days = [ "pn", "vt", "sr", "cht", "pt", "sb","vs" ]
     print(days)
 default:
     break
 }

                                                     Задание 6

 Основано на предыдущем задании
 У вас появилась дополнительная переменная chars, которая может принять два значения "up" и "down"
 Доработайте конструкцию switch-case таким образом, чтобы в зависимости от значения chars массив заполнялся большими или маленькими символами
 
 
 var lang = "ru"  // "ru", "en"
 var chars = "up" // "up" и "down"
 var days: [String] = []
 switch (lang,chars){
 case ("ru","down"):
     days = [ "пн", "вт", "ср", "чт", "пт", "сб","вс" ]
     print(days)
 case ("ru","up"):
     days = [ "ПН", "ВТ", "СР", "ЧТ", "ПТ", "СБ","ВС" ]
     print(days)
 case ("eg","down"):
     days = [ "pn", "vt", "sr", "cht", "pt", "sb","vs" ]
     print(days)
 case ("eg","up"):
     days = [ "PN", "VT", "SR", "CHT", "PT", "SB","VS" ]
     print(days)
 default:
     break
 }
 
 
 var lang = "ru"
 var chars = "up"
 var days: [String] = []
 switch lang {
    case "ru" where chars == "down":
      days = ["пн", "вт", "ср", "чт", "пт", "сб", "вс"];
      break;
    case "ru" where chars == "up":
      days = ["ПН", "ВТ", "СР", "ЧТ", "ПТ", "СБ", "ВС"];
      break;
    case "en" where chars == "down":
      days = ["mn", "ts", "wd", "th", "fr", "st", "sn"];
      break;
    case "en" where chars == "up":
      days = ["MN", "TS", "WD", "TH", "FR", "ST", "SN"];
      break;
    default:
      break;
 }
 days
 
                                                    Задание 7

 1) Определите псевдоним Operation типу кортежа, содержащему три элемента со следующими именами: operandOne, operandTwo, operation.
 Первые два — это числа с плавающей точкой. Они будут содержать операнды для выполнения операции.
 Третий элемент — строковое значение типа Character. Оно будет содержать указатель на проводимую операцию. Всего может быть четыре вида операций: +, -, *, /.
 2) Создайте константу типа Operation и инициализируйте ей произвольное значение, к примеру (3.1, 33, "+")
 3) Используя конструкцию switch-case вычислите значение операции, указанной в элементе для операндов operandOne и operandTwo. Оператор switch должен корректно отрабатывать любую из четырех операций.
 4) Проверьте правильность работы конструкции по для следующих операций:

 (3.1, 33, "+")
 (24.9, 22.32, "*")
 (11.3, 5, "/")
 (5, 2.5, "-")

 //1
 typealias Operation = (operandOne: Float, operandTwo:Float, operation:Character)
 //2
 let sbor:Operation = (5, 0, "/")
 switch sbor.operation{
 case "+":
     print(sbor.operandOne + sbor.operandTwo)
 case "-":
     print(sbor.operandOne - sbor.operandTwo)
 case "/" where (sbor.operandOne != 0 || sbor.operandTwo != 0):
     print(sbor.operandOne / sbor.operandTwo)
 case "*":
     print(sbor.operandOne * sbor.operandTwo)
 default:
     break
 }

*/

                                        //Глава 11. Опциональные типы данных
/*
let possibleString = "1945"
let convertPossibleString = Int(possibleString) // 1945

let unpossibleString = "Одна тысяча сто десять"
let convertUnpossibleString = Int(unpossibleString) // nil


type(of: convertPossibleString)
type(of: convertUnpossibleString)

let x1 = Int("12")
     type(of: x1) // Optional<Int>.Type
     let x2 = Int(43.2)
     type(of: x2) // Int.Type
 
 // Полная форма записи:
 // Optional<T>
 // Краткая форма записи:
 // T?
 // T: Any — наименование типа данных, на котором основан опционал.

 
 пример объявления переменной опционального типа, основанного на Character.
 let optionalChar: Optional<Character> = "a"
 
тип Optional<Int> может быть переписан в Int?, Optional<String> в String?
 var xCoordinate: Int? = 12
 xCoordinate // 12
 xCoordinate = nil
 xCoordinate // nil

 var someOptional: Bool? // nil
 
 
 // опциональная переменная с установленным значением
 var optionalVar = Optional("stringValue") // "stringValue"
 // уничтожаем значение опциональной переменной
 optionalVar = nil // nil
 type(of: optionalVar) // Optional<String>.Type
 
 
                                                Опционалы в кортежах
 
 var tuple: (code: Int, message: String)? = nil
 tuple = (404, "Page not found") // (code 404, message "Page not found")
 В этом примере опциональный тип основан на типе кортежа (Int, String)
 
 let tupleWithoptelements: (Int? ,Int) = (nil, 10)
 tupleWithoptelements.0
 tupleWithoptelements.1
*/


/*
                                            Извлечение опционального значения
 
 Выделяют три способа извлечения опционального значения:
    принудительное извлечение;
    косвенное извлечение;
    операция объединения с nil
 
                                            Принудительное извлечение значения
 var optVar: Int? = 12
 var intVar = 34
 let result = optVar! + 34 // 46
 // проверяем тип данных извлеченного значения
 type(of: optVar!) // Int.Type

 let optString: String? = "Vasiliy Usov"
 let unwrapperString = optString!
 print( "My name is \(unwrapperString)" )

                                            Косвенное извлечение значения
 
 
 Если вы уверены, что в момент проведения операции с опционалом в нем всегда будет значение (не nil), то при явном указании типа данных знак вопроса может быть заменен на знак восклицания.
 
 var wrapInt: Double! = 3.14
 // сложение со значением базового типа не вызовет ошибок
 // при этом не требуется использовать принудительное извлечение
 wrapInt + 0.12 // 3.26

                                        Проверка наличия значения в опционале
 
 
 let optOne: UInt? = nil
 let optTwo: UInt? = 32
 optOne != nil // false
 optTwo != nil // true

 
 var fiveMarkCount: Int? = 8
 var allCakesCount = 0;
 // определение наличия значения
 if fiveMarkCount != nil {
     // количество пирожных за каждую пятерку
     let  cakeForEachFiveMark = 2
     // общее количество пирожных
     allCakesCount = cakeForEachFiveMark * fiveMarkCount!
 }
 allCakesCount // 16

                                                    Опциональное связывание
 
 let myCouns:Int? = 8
 if let mark = myCouns{
     print("Количество оценок: \(mark)")
 }

 var pointX: Int? = 10
 var pointY: Int? = 3
 if let x = pointX, let y = pointY {
    print("Точка установлена на плоскости")
 }
 
 let coinsInNewChest = "140"
 var allCoinsCount = 1301
 if let coins = Int(coinsInNewChest){
     allCoinsCount += coins
 }else{
     print("У нового дракона отсутствует золото")
 }
 
 
                                                Оператор объединения с nil
 
 let optionalInt: Int? = 20
 var mustHaveResult = optionalInt ?? 0 // 20
 
 
 let optionalInt: Int? = 20
 var mustHaveResult: Int = 0
 if let unwrapped = optionalInt {
     mustHaveResult = unwrapped
 } else {
     mustHaveResult = 0
 }

                                                        Практика
 
                                                        Задание 1
 
 1) Создайте псевдоним типа String с именем Text
 2) Объявите три константы типа Text. Значения дух констант должны состоять только из цифр, а третьей — из букв и цифр
 3) С помощью оператора условия определите те константы, которые состоят только из цифр и выведите из на консоль

 //1
 typealias Text = String
 //2
 let let1: Text = "22"
 let let2: Text = "97"
 let let3: Text = "swift5"
 //3
 if let unwrap1 = Int(let1) {
     print(unwrap1)
 }
 if let unwrap2 = Int(let2) {
     print(unwrap2)
 }
 if let unwrap3 = Int(let3) {
     print(unwrap3)
 }

                                                        Задание 2
 
 
 В задании используются результаты предыдущего задания
 
 1) Создайте псевдоним типа (numberOne: Text?, numberTwo: Text?) с именем TupleType.
 2) Создайте три переменные типа TupleType, содержащие следующие значения: ("190", "67"), ("100", nil), ("-65", "70").
 3) С помощью конструкции switch-case определите, какие из кортежей не содержат nil в своем составе и выведите значения их элементов на консоль
 
 typealias Text = String
 typealias TupleType = (numberOne: Text?, numberTwo: Text?)
 var var1:TupleType = ("190", "67")
 var var2:TupleType = ("100", nil)
 var var3:TupleType = ("-65", "70")
 var arry = [ var1, var2, var3 ]
 for element in arry{
 switch element{
 case (nil,_),(_,nil):
     continue
 default:
     print(element)
     }
 }

 
 typealias Text = String
 typealias TupleType = (numberOne: Text?, numberTwo: Text?)
 var var1:TupleType = ("190", "67")
 var var2:TupleType = ("100", nil)
 var var3:TupleType = ("-65", "70")

 switch var1 {
 case (let a ,let b ) where a != nil && b != nil:
     print("\(a!) \(b!)")
 default:
     break
 }
 switch var2 {
 case (let a, let b) where a != nil  && b != nil:
     print("\(a!) \(b!)")
 default:
     break
 }
 switch var3 {
 case (let a, let b) where a != nil && b != nil:
     print("\(a!) \(b!)")
 default:
     break
 }

                                                    Задание 3
 
 Представьте, что вы являетесь преподавателем курсов по шахматам. Ваши занятия посещают ученики и в конце каждого занятия получаю оценку.
 1) Создайте словарь, который будет содержать информацию о ваших студентах и об их успехах.

 Тип данных словаря — [String: [String: UInt]]
 Индекс — это фамилия ученика.
 Значение — еще один словарь, содержащий информацию о дате занятия и полученной оценке.
 В вашем электронном журнале должна находиться информация о трех учениках, по две оценки для каждого. Фамилии и даты придумайте самостоятельно.
 2) Подсчитайте средний балл каждого студента, средний балл группы, и выведите информацию на консоль.
 
                                                    Задание 4
 Основано на предыдущем задании
 Перед вам стоит задача внести в уже существующий словарь оценку за еще одно занятие для студента. Покажите, каким образом это можно сделать.
 
 var students: [String: [String:UInt]] = [:]

 students["Усов"] = ["2019-01-01": 5, "2019-01-10": 5]
 students["Иванов"] = ["2019-01-01": 3, "2019-01-10": 4]
 students["Тихов"] = ["2019-01-01": 3, "2019-01-10": 5]


 //if var lesson = students["Усов"]{
 //    lesson["2019-02-05"] = 4
 //    students["Усов"] = lesson
 //}

 //Способ 1
 //students["Дворянкин"]?["2019-01-12"] = 4

 //Способ 2
 //students["Усов"]!["2019-01-19"] = 4

 //Способ 3
 //var grades = students["Усов"]
 //вносим изменения
 //grades!["2019-01-13"] = 4
 //инициализируем новое значение
 //students["Усов"] = grades


 //2
 //средняя оценка группы
 var gradeAverageGroup:Float = 0
 //количество оценок
 var gradeCount = 0
 //перебор всех студентов
 for oneStudent in students {
     //средняя оценка студента
     var gradeAverageStudent: Float = 0
     //перебор всех занятий
     for lesson in oneStudent.value {
         gradeAverageStudent += Float(lesson.value)
         gradeAverageGroup += Float(lesson.value)
         gradeCount += 1
     }
     gradeAverageStudent /= Float(oneStudent.value.count)
     print("Студент \(oneStudent.key) имеет средний балл \(gradeAverageStudent)" )
 }
 gradeAverageGroup /= Float(gradeCount)
 print("Группа студентов имеет средний балл \(gradeAverageGroup)")


                                                    Задание 9

 1) Создайте псевдоним Coordinates для типа кортежа (alpha: Character?, num: Int?). Данный тип будет описывать координаты шахматной фигуры на игровом поле. Если вместо элементов кортежа стоит nil, значит фигура не находится на игровом поле.
 2) Создайте псевдоним Chessman для типа словаря [String:Coordinates]. Данный тип описывает шахматную фигуру на игровом поле. В ключе словаря должно хранится имя фигуры, например "White King", а в значении — кортеж, указывающий на координаты фигуры на игровом поле.
 3) Создайте переменный словарь figures типа Chessman и добавьте в него три произвольные фигуры, одна из которых не должна иметь координат.
 4) Создайте цикл, которая обходит всех элементы словаря (все фигуры), и проверяет, убита ли очередная фигура (элемент словаря figures), далее выводит на консоль информацию либо о координатах фигуры, либо о ее отсутствии на игровом поле.
 
 
 
 // 1) Создайте псевдоним Coordinates
 typealias Coordinates = (alpha: Character?, num: Int?) //будет описывать координаты
 // 2) Создайте псевдоним Chessman
 typealias Chessman = [String:Coordinates] //описывает шахматную фигуру
 // 3) Создайте переменный словарь figures
 var figure: Chessman = ["White King": ("h",2), "Black King": ("h",4), "Queen": ("h", nil)]
  
 for Onefigura in figure{
     if Onefigura.value.0 != nil && Onefigura.value.1 != nil{
         print("Фигура на поле")
     }else{
         print("Фигура вне поля")
     }
 }
 

 // 1) Создайте псевдоним Coordinates
 typealias Coordinates = (alpha: Character?, num: Int?) //будет описывать координаты
 // 2) Создайте псевдоним Chessman
 typealias Chessman = [String:Coordinates] //описывает шахматную фигуру
 // 3) Создайте переменный словарь figures
 var ch:Chessman = [:]
 ch["White King"] = ("b",1)
 ch["Black King"] = ("h",2)
 ch["Queen"] = (nil,3)
 for figura in ch{
     if let a = figura.value.0, let b = figura.value.1{
         print( "\(figura.key) = \(a) \(b)")
     }else{
         print("Фигура вне поля")
     }
 }
 
 
 for Onefigura in figure{
     switch Onefigura.value{
     case (nil,nil):
         print("\(Onefigura.key) нет на поле")
     default:
         print("Координаты фигуры \(Onefigura.key) равны \(Onefigura.value.alpha) \(Onefigura.value.num)")
     }
 }

 
 */

/*
                                                        Функции
 
 func имяФункции (входные_параметры) -> ТипВозвращаемогоЗначения {
     // тело функции
 }
 имяФункции — имя объявляемой функции, по которому она сможет быть вызвана. К функциям применимы те же правила именования, что и к параметрам.
 входные параметры — список входных параметров функции с указанием их имен и типов. ТипВозвращаемогоЗначения — тип данных значения, возвращаемого функцией.
 Если функция ничего не возвращает, то данный элемент может быть опущен. Объявление функции начинается с ключевого слова func.
 За func следует имя создаваемой функции. Оно используется при каждом ее вызове в вашем коде и должно быть записано в нижнем верблюжьем регистре. Например:
      func myFirstFunc
 
 
 
 func printMessage() {
     print ("Message done")
     
 }

 printMessage()
 printMessage()


                                        Входные параметры и возвращаемое значение

 Входные параметры
 
 func sumTwoInt ( a: Int, b: Int) {
     print("Result oper - \(a+b)")
 }

 sumTwoInt(a: 10, b: 20)

                                            Внешние имена входных параметров
 
 
 func sumTwoInt (num1 a : Int, num2 b: Int) {
     print("Result oper - \(a+b)")
 }
 sumTwoInt(num1: 10, num2: 12)

 func sumTwoInt(_ a: Int, _ b: Int) {
     print("Результат операции - \(a+b)")
 }
 sumTwoInt(10, 15)
 
 
                                            Возвращаемое значение

 func sumTwoInt (_ a:Int, _ b:Int) -> Int{
     let result = a + b
     print("Result opr - \(result)")
     return result
 }
 var result = sumTwoInt(10, 12)
 
 func myMessage ( code: Int, message: String) -> String{
     var  dropMessage = message
     dropMessage += String(code)
     return dropMessage
 }
 let doneMessage = myMessage(code: 400, message: "How are you, Vladislav?. code message - ")
 print (doneMessage)

                                                Сквозные параметры
 
 обеспечивает обмен значениями двух внешних параметров.
 func changeValues( _ a: inout Int, _ b: inout Int) -> Void {
     let tmp = a
     a = b
     b = tmp
 }
 var x = 150, y = 200
 changeValues(&x, &y)
 x
 y
 
 
                                    Входной параметр с переменным числом значений
 
 func printRequestStripg ( code: Int...) -> Void{
     var resultCode = " "
     for codeNew in code{
         resultCode += String(codeNew) + " "
     }
     print ("Give result - \(resultCode)")
 }

 printRequestStripg(code: 1, 3, 4, 5, 6)
 printRequestStripg(code: 1, 3, 4, 5)

                                         Кортеж в качестве возвращаемого значения
 
 

 func printStatusServera ( code: Int) -> ( code: Int , connect: String){
     let connect: String
     switch code{
     case 1...100:
         connect = "subscribe"
     case 101...200:
         connect = "done"
     default:
         connect = "weak"
     }
     return (code, connect)
 }
 let requs = (printStatusServera(code: 200))
 requs.connect
 requs.code

 
                                    Значение по умолчанию для входного параметра
 
 func returnMessage ( code: Int, massage: String = "Code - ") -> String{
     var newMessage = " "
     newMessage += String(code)
     return newMessage
 }
 print(returnMessage(code: 90))

 
 func returnMessage ( code:Int, message: String = "output code - ") -> String{
     return (message + String(code))
 }
 returnMessage(code: 90)

                                                Функциональный тип
                                            Простой функциональный тип
 
 func printErrorMessage (){
     print("Error Message")
 }
 
 
                                Функция в качестве входного и возвращаемого значений
 
 // функция вывода текста на консоль
 func printText() {
     print("Функция вызвана")
 }
 // функция, которая возвращает функцию
 func returnPrintTextFunction() -> () -> Void {
     return printText
 }
 print("шаг 1")
 let newFunctionInLet = returnPrintTextFunction()
 print("шаг 2")
 newFunctionInLet()
 print("шаг 3")
 
                                        Входное значение функционального типа
 
 // функция генерации случайного массива банкнот
 //func generateWallet(walletLength: Int) -> [Int] {
 //// существующие типы банкнот
 //let typesOfBanknotes = [50, 100, 500, 1000, 5000]
 //  // массив банкнот
 //  var wallet: [Int] = []
 //  // цикл генерации массива случайных банкнот
 //  for _ in 1...walletLength {
 //      wallet.append( typesOfBanknotes.randomElement()! )
 //  }
 //  return wallet
 //}
 //// функция подсчета денег в кошельке
 //func sumWallet(banknotesFunction wallet: (Int) -> [Int], walletLength: Int) -> Int? {
 //  // вызов переданной функции
 //  let myWalletArray = wallet( walletLength )
 //  var sum: Int = 0
 //  for oneBanknote in myWalletArray {
 //      sum += oneBanknote
 //  }
 //return sum }
 //// передача функции в функцию
 //sumWallet(banknotesFunction: generateWallet, walletLength: 20) // 6900

 
                                        Возможности функций
                                        Вложенные функции
 
 
 
 Функция oneStep(coordinates:stepType:) осуществляет перемещение точки по плоскости. В ней определено несколько вложенных функций, которые вызываются в зависимости от значения параметра stepType. Данный набор функций доступен только внутри родительской функции oneStep(coordinates:stepType:).
 Входной параметр coordinates является сквозным, поэтому все изменения, про- изводимые в нем, сохраняются и после окончания работы функции.

 func oneStep(coordinates: inout(Int, Int),
              stopTape: String
 ) -> Void{
     func up( coords: inout(Int, Int)){
         coords = (coords.0+1, coords.1)
     }
     func right( coords: inout(Int, Int)){
         coords = (coords.0, coords.1+1)
     }
     func  down( coords: inout(Int, Int)){
         coords = (coords.0-1, coords.1)
     }
     func left( coords: inout(Int, Int)){
         coords = (coords.0, coords.1-1)
     }
     switch stopTape{
     case "up":
         up(coords: &coordinates)
     case "right":
         right(coords: &coordinates)
     case "down":
         down(coords: &coordinates)
     case "left":
         down(coords: &coordinates)
     default:
         break
     }
 }
 var coordinates = (10, -5)
 oneStep(coordinates: &coordinates, stopTape: "up")
 oneStep(coordinates: &coordinates, stopTape: "right")
 coordinates
 
 
 
                                    Перегрузка функций
 
 
 func say(what: String) -> Void {}
 func say(what: Int) -> Void {}
 
 func syu() -> String{
     return "Moscow"
 }
 func syu() -> Int{
     return 1
 }
 let resultString: String = syu()
 let resultInt: Int = syu()


                                Рекурсивный вызов функций

 //Функция countdown(firstNum:) отсчитывает числа в сторону понижения, начиная от переданного параметра firstNum и заканчивая нулем. Этот алгоритм реализу- ется рекурсивным вызовом функции.
 func countdown(firstNum num: Int) -> Void{
     print(num)
     if num > 0{
         countdown(firstNum: num - 1)
     }
 }
 countdown(firstNum: 20)
 
 */



