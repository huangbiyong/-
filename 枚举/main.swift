//
//  main.swift
//  枚举
//
//  Created by chhu02 on 2019/7/10.
//  Copyright © 2019 chase. All rights reserved.
//

import Foundation

//struct Circle {
//    // 存储属性
//    var radius: Double
//    // 计算属性
//    var diameter: Double {
//        set {
//            radius = newValue / 2
//        }
//        get {
//            radius * 2
//        }
//    }
//}
//
//var circle = Circle(radius: 10)
//print(circle.radius)    // 10.0
//print(circle.diameter)  // 20.0
//
//circle.diameter = 40
//print(circle.radius)    // 20.0
//print(circle.diameter)  // 40.0
//
//print(MemoryLayout<Circle>.stride) // 8
//print(MemoryLayout.alignment(ofValue: circle))  // 8
//
//// 只招8个字节，说明只有radius存储，diameter不存储
//
//
//
//
//
//
//
//enum BYEnum: Int {
//    case em1 = 1, em2 = 2, em3 = 3
//    var rawValue: Int {
//        switch self {
//        case .em1:
//            return 10
//        case .em2:
//            return 20
//        case .em3:
//            return 30
//        }
//    }
//}
//print(BYEnum.em2.rawValue) // 20


//class Car {
//    init() {
//        print("init car ")
//    }
//
//    func run() {
//        print("car is run")
//    }
//}
//
//class Person {
//    lazy var car = Car()
//
//    init() {
//        print("init Person ")
//    }
//
//    func goout() {
//        car.run()
//    }
//}
//
//let person = Person()
//print("-----")
//person.goout()
//
////init Person
////-----
////init car
////car is run



//struct Point {
//    var x = 0
//    var y = 0
//    lazy var z = 0
//}
//
//let p = Point()
//print(p.z)




//struct Circle {
//    var radius: Double {
//        willSet {
//            print("willSet", newValue)
//        }
//
//        didSet {
//            print("didSet", oldValue, radius)
//        }
//    }
//
//    init() {
//        self.radius = 1.0
//        print("init Circle")
//    }
//}
//
//// init Circle
//var c = Circle()
//
////willSet 10.0
////didSet 1.0 10.0
//c.radius = 10
//
//// 10.0
//print(c.radius)




//// 全局变量
//var num : Int {
//    get {
//        return 1
//    }
//
//    set {
//        print("set ", newValue)
//    }
//}
//
//num = 6     // set  6
//print(num)  // 1
//
//
//
//func test() {
//    // 局部变量
//    var age = 10 {
//        willSet {
//            print("willSet", newValue)
//        }
//        didSet {
//            print("didSet", oldValue, age)
//        }
//    }
//
//    age = 20
//    // willSet 20
//    // didSet 10 20
//
//}
//
//test()


//
//// 等边多边形
//struct Shape {
//    // 宽
//    var width: Int
//    // 边数
//    var side: Int {
//        willSet {
//            print("willSetSide", newValue)
//        }
//        didSet {
//            print("didSetSide", oldValue, side)
//        }
//    }
//
//    // 周长
//    var girth: Int {
//        set {
//            width = newValue / side
//            print("setGirth", newValue)
//        }
//        get {
//            print("getGirth")
//            return width * side
//        }
//    }
//
//    func show() {
//        print("width=\(width), side=\(side), girth=\(girth)" )
//    }
//}
//
//
//
//func test(_ num: inout Int) {
//    num = 20
//}
//
//
//var s = Shape(width: 10, side: 4)
//
//print("-------存储属性")
//test(&s.width)
//s.show()
//
//print("-------存储属性观察器")
//
//test(&s.side)
//s.show()
//
//print("-------计算属性")
//test(&s.girth)
//s.show()




//struct Car {
//    static var count : Int = 0
//    init() {
//        Car.count += 1
//    }
//}
//
//let car1 = Car()
//let car2 = Car()
//let car3 = Car()
//print(Car.count)  // 3



//class FileManager {
//    public static let shared = FileManager()
//    private init() {}
//}


class FileManager {
    public static let shared = {
        // .....
        // .....
        return FileManager()
    }()
    private init() {}
}
