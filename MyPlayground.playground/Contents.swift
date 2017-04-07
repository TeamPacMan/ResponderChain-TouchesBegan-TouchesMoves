//: Playground - noun: a place where people can play

import Foundation

enum State: Int {
    case None
    case Start
    case Doing
    case End
}

protocol StuffTouches {
    var superStuff: StuffTouches? {get set}
    var gesturingState: State {get set}
    func begin()
    func moves()
    func ended()
    mutating func stuff()
}

extension StuffTouches {
    mutating func stuff() {
        switch gesturingState {
        case .None:
            gesturingState = .Start
            print("Protocol \(self) BEGIN")
            begin()
        case .Start:
            gesturingState = .Doing
            print("Protocol \(self) Moves")
            moves()
        case .End:
            gesturingState = .None
            print("Protocol \(self) Ended")
            ended()
        case .Doing:
            print("Protocol \(self) Moves")
            moves()
        }
        if gesturingState == .None {
            gesturingState = .Start
            
        }
        
    }
    func moves() {
        print("Protocol \(self) Moves")
        superStuff?.moves()
    }
    func ended() {
        print("Protocol \(self) Ended")
        superStuff?.ended()
    }

}

class BaseStuff: StuffTouches {
    var superStuff: StuffTouches?
    var gesturingState: State = .None
    

    func begin() {
        print("Base \(self) BEGIN")
    }
    
    func moves() {
        print("Base \(self) Moves")
    }
    
    func ended() {
        print("Base \(self) Ended")
    }
}



class TypeAStuff: BaseStuff {
    override func begin() {
        super.begin()
        print("A BEGIN")
    }
    override func moves() {
        print("A Moves")
    }
}

class TypeBStuff: BaseStuff {
    override func begin() {
        print("B BEGIN")
    }
}

class TypeCStuff: BaseStuff {
    override func moves() {
        print("C Moves")
    }
}

class TypeDStuff: BaseStuff {
    override func begin() {
        print("D BEGIN")
    }
    override func moves() {
        print("D Moves")
    }
}



//TypeDStuff().begin()
var stuff = TypeCStuff() as BaseStuff
stuff.superStuff = BaseStuff()
print("Event 1 - Touches begin")
stuff.stuff()
print("Event 2 - Continues")
stuff.stuff()
print("3")
stuff.stuff()
print("4")
stuff.stuff()
print("5")
stuff.stuff()
