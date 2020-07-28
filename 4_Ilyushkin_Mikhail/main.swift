//
//  main.swift
//  4_Ilyushkin_Mikhail
//
//  Created by Michael Iliouchkin on 27.07.2020.
//  Copyright © 2020 Michael Iliouchkin. All rights reserved.
//

import Foundation

enum Engine {
    case on, off
}
enum Window {
    case open, close
}
enum Trunk {
    case load, unload
}

class Car {
    let brand: String
    let year: Int
    let volumeOfTrunk: Double
    var window: Window
    let volumeTrunkFull: Double
    var engine: Engine
    let trunk: Trunk
    
    init(brand: String, year: Int, volumeOfTrunk: Double, window: Window, volumeTrunkFull: Double, engine: Engine, trunk: Trunk) {
        
        self.brand = brand
        self.engine = engine
        self.year = year
        self.volumeOfTrunk = volumeOfTrunk
        self.window = window
        self.volumeTrunkFull = volumeTrunkFull
        self.trunk = trunk
    }
}
//
//class TrunkCar: Car {
//
//}

class SportCar: Car {
    let zeroToHundred: Double
    
    init(brand: String, year: Int, volumeOfTrunk: Double, window: Window, volumeTrunkFull: Double, engine: Engine, trunk: Trunk, zeroToHundred: Double) {
        
        self.zeroToHundred = zeroToHundred
        
        super.init(brand: brand, year: year, volumeOfTrunk: volumeOfTrunk, window: window, volumeTrunkFull: volumeTrunkFull, engine: engine, trunk: trunk)
    }
    
    
}

var Mercedes = Car(brand: "Mercedes", year: 2020, volumeOfTrunk: 3.0, window: .close, volumeTrunkFull: 0.0, engine: .off, trunk: .unload)

var Lambo = SportCar(brand: "Lambo", year: 2020, volumeOfTrunk: 2.0, window: .close, volumeTrunkFull: 0.0, engine: .off, trunk: .unload, zeroToHundred: 2.2)

print(Lambo)
