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



