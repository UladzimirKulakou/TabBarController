import UIKit

var number = 0

let increaseNumber = {
    number += 1
}

increaseNumber()
increaseNumber()
number


class Number {
    var value = 0
    
    lazy var increaseByNumber: (Int) -> String = { [weak self] someNumber in
        guard let self = self else { return "" }
        self.value += someNumber
        return "the value has been increased by \(someNumber)"
    }
    
    deinit {
        print("the Number instance is about to free")
    }
}

var newNumber: Number?

newNumber = Number()

newNumber?.increaseByNumber(5)
newNumber?.value
newNumber = nil
newNumber?.value


Number().increaseByNumber(4)


var completions: [() -> ()] = []

func funcWithEscapingClosure(completion: @escaping () -> Void) {
    completions.append(completion)
}

class First {
    let second = Second()
    var secondFinished = false
    func makeSecondWork() {
        second.work {
            secondFinished = true
        }
    }
    deinit {
        print("the First instance is about to free")
    }
}

class Second {
  //  var finishedWorking: () -> Void = {}
    func work(complition: () -> Void) {
   // finishedWorking = complition
        complition()
    }
}

var first: First?
first = First()
first?.makeSecondWork()
first = nil
