import Foundation

class Animal {
    var legCount = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    func simpleDesc() -> String {
        "This \(name) has \(legCount) legs"
    }
}

let l1 = Animal(name: "Lark")
l1.legCount = 2
l1.simpleDesc()

// Inheritance

class Mammal: Animal {
    override init(name: String) {
        super.init(name: name)
        legCount = 4
    }
    func giveBirth() -> Mammal {
        baby()
    }
    func baby() -> Mammal {
        Mammal(name: "Baby \(name)")
    }
}

let m1 = Mammal(name: "Elephant")
m1.simpleDesc()
let ch1 = m1.giveBirth()
ch1.simpleDesc()
let ch2 = ch1.giveBirth()
ch2.simpleDesc()

class Dog: Mammal {
    override func baby() -> Mammal {
        Dog(name: "\(name)'s puppy")
    }
    func bark() -> String {
        "Bark!"
    }
}

let jd = Dog(name: "Jin")
jd.simpleDesc()
jd.bark()
let p1 = jd.giveBirth()
//p1.bark()

let m_jd = jd as Mammal
let dog_p1 = p1 as! Dog
dog_p1.bark()

let probably_dog = p1 as? Dog
if (probably_dog == nil) {
    print("Not a dog")
} else {
    print(probably_dog!.bark())
}

if let p_dog = p1 as? Dog {
    p_dog.bark()
}

let ret = probably_dog?.bark()

class Platypus: Mammal {
    override func giveBirth() -> Mammal {
        Platypus(name: "Baby \(name) from an egg")
    }
}

let pl_parent = Platypus(name: "Plat")
let pl_baby = pl_parent.giveBirth()
pl_baby.simpleDesc()

let mammals = [
    Mammal(name: "Normal"),
    Dog(name: "Jindol"),
    Platypus(name: "Platty")
]

for m in mammals {
    let child = m.giveBirth()
    print(child.simpleDesc())
//    if m is Dog {
//        print("Dog: \(m.simpleDesc())")
//    } else if m is Platypus {
//        print("Platypus: \(m.simpleDesc())")
//    } else {
//        print("Just a mammal: \(m.simpleDesc())")
//    }
}

class Monster: Mammal {
    var kneeCount: Int { legCount }
    var toeCount: Int {
        get { 4 * legCount  }
        set(v) { legCount = v / 4 }
    }
    var eyeCount: Int = 10 {
        didSet {
            legCount = eyeCount * 5
        }
    }
}

let mo1 = Monster(name: "Mons")
mo1.legCount = 100
//mo1.kneeCount = 23
mo1.eyeCount = 13
mo1.eyeCount
mo1.legCount
mo1.toeCount = 23
mo1.legCount

let mo2 = Monster(name: "Mons2")
mo2.legCount

// property, attribute, data, state, field, member variable

// stored property
// computed property


