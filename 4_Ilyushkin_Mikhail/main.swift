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
enum IfTrunkFree {
    case inWork, free
}
enum DidCarRace {
    case zoooom, outOfRoad
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
    
    func letsRide() {
        
    }
}

class TrunkCar: Car {

    let torque: Double
    let ifTrunkFree: IfTrunkFree
    
    init(brand: String, year: Int, volumeOfTrunk: Double, window: Window, volumeTrunkFull: Double, engine: Engine, trunk: Trunk, torque: Double, ifTrunkFree: IfTrunkFree) {
        
        self.torque = torque
        self.ifTrunkFree = ifTrunkFree
        
        super.init(brand: brand, year: year, volumeOfTrunk: volumeOfTrunk, window: window, volumeTrunkFull: volumeTrunkFull, engine: engine, trunk: trunk)
    }
    
    override func letsRide() {
        print("We're going so far away")
    }
}

class SportCar: Car {
    
    let zeroToHundred: Double
    let didCarRace: DidCarRace
    
    init(brand: String, year: Int, volumeOfTrunk: Double, window: Window, volumeTrunkFull: Double, engine: Engine, trunk: Trunk, zeroToHundred: Double, didCarRace: DidCarRace) {
        
        self.zeroToHundred = zeroToHundred
        self.didCarRace = didCarRace
        
        super.init(brand: brand, year: year, volumeOfTrunk: volumeOfTrunk, window: window, volumeTrunkFull: volumeTrunkFull, engine: engine, trunk: trunk)
    }
    
    override func letsRide() {
        print("Keep rollin rollin")
    }
}



var mercedes = SportCar(brand: "Mercedes", year: 2020, volumeOfTrunk: 3.0, window: .close, volumeTrunkFull: 0.0, engine: .off, trunk: .unload, zeroToHundred: 3.0, didCarRace: .outOfRoad)

var lambo = SportCar(brand: "Lambo", year: 2020, volumeOfTrunk: 2.0, window: .close, volumeTrunkFull: 0.0, engine: .off, trunk: .unload, zeroToHundred: 2.2, didCarRace: .zoooom)

var kamaz = TrunkCar(brand: "Kamaz", year: 1990, volumeOfTrunk: 50.0, window: .close, volumeTrunkFull: 50.0, engine: .on, trunk: .load, torque: 900.50, ifTrunkFree: .inWork)

var belaz = TrunkCar(brand: "Belaz", year: 2000, volumeOfTrunk: 150.5, window: .close, volumeTrunkFull: 0.0, engine: .off, trunk: .unload, torque: 10000.0, ifTrunkFree: .free)



mercedes.letsRide()
kamaz.letsRide()
