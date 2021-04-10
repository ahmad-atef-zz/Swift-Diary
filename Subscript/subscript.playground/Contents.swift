import Foundation

struct Digit {
    private var value: Int

    init(_ value: Int) {
        self.value = value
    }
    // digit[0]
    // digit[1] = 5
    subscript (idx: Int) -> Int {
        get {
            let stringValue = String(value) // "112"
            let index = stringValue.index(stringValue.startIndex, offsetBy: idx)
            let targetDigit = stringValue[index]
            return Int("\(targetDigit)")!
        }

        set {
            var currentValueString = String(value)
            let newValueString = String(newValue)
            let targetIndex = currentValueString.index(currentValueString.startIndex, offsetBy: idx)
            currentValueString.replaceSubrange(targetIndex...targetIndex, with: newValueString)
            value = Int(currentValueString)!
        }
    }
}

var digit = Digit(123)

digit[0] // 1
digit[1] // 2
digit[2] // 3

digit[0] = 5

digit[0] // 5
digit[1] // 2
digit[2] // 3

print("hi")
