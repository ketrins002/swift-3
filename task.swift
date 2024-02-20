var friends = ["Anna", "Ket", "Anastasia", "David", "Nikita"]
print("Массив friends: ", friends)

var sortedAscending = friends.sorted { $0 < $1 }
print("\n\n\tСортировка по возрастанию: \(sortedAscending)")

var sortedDescending = friends.sorted { $0 > $1 }
print("\n\n\tСортировка по убыванию: \(sortedDescending)")

func sortFriendsByLetterCount(_ names: [String]) -> [String] {
    return names.sorted { $0.count < $1.count }
}

var sortedByLetterCount = sortFriendsByLetterCount(friends)
print("\n\n\tСортировка по количеству букв в имени: \(sortedByLetterCount)")


func createDictionary(_ names: [String]) -> [Int: String] {
    var dictionary: [Int: String] = [:]
    for name in names {
        dictionary[name.count] = name
    }
    return dictionary
}

var friendsDictionary = createDictionary(friends)

print("\n\n\tСловарь с количеством букв в имени:")
for (count, name) in friendsDictionary {
    print("\(count) букв: \(name)")
}

print("\n\n\tФункция для вывода ключа и значения: ")
func getKeyValue(dictionary: [Int: String], key: Int) {
    if let value = dictionary[key] {
        print("Ключ: \(key), Значение: \(value)")
    } else {
        print("Ключ '\(key)' не найден в словаре.")
    }
}

getKeyValue(dictionary: friendsDictionary, key: 5)


print("\n\n\tФункция для проверки пустых массивов и вывода в консоль: ")
func checkAndFillArrays(stringArray: inout [String], numericArray: inout [Int]) {
    if stringArray.isEmpty {
        stringArray.append("Inan") 
    }
    
    if numericArray.isEmpty {
        numericArray.append(15) 
    }
    
    print("Строковый массив: \(stringArray)")
    print("Числовой массив: \(numericArray)")
}

var myStrings: [String] = []
var myNumbers: [Int] = []
print("Строковый массив до добавления данных: \(stringArray)")
print("Числовой массив до добавления данных: \(numericArray)")
checkAndFillArrays(stringArray: &myStrings, numericArray: &myNumbers)


