//
//  ConverterService.swift
//  UnitConverter-SwiftUI
//
//  Created by Robert Pinl on 11.05.2021.
//

import Foundation

class ConverterViewModel: ObservableObject {    
    func convert(category: category, value: String, unit1: Unit, unit2: Unit) -> Double {
        switch category {
        case .area:
            return convertArea(value: value, unit1: unit1 as! UnitArea, unit2: unit2 as! UnitArea)
        case .lenght:
            return convertLenght(value: value, unit1: unit1 as! UnitLength, unit2: unit2 as! UnitLength)
        case .pressure:
            return converPressure(value: value, unit1: unit1 as! UnitPressure, unit2: unit2 as! UnitPressure)
        case .temperature:
            return convertTemperature(value: value, unit1: unit1 as! UnitTemperature, unit2: unit2 as! UnitTemperature)
        case .volume:
            return convertVolume(value: value, unit1: unit1 as! UnitVolume, unit2: unit2 as! UnitVolume)
        case .mass:
            return convertMass(value: value, unit1: unit1 as! UnitMass, unit2: unit2 as! UnitMass)
        case .angle:
            return convertAngle(value: value, unit1: unit1 as! UnitAngle, unit2: unit2 as! UnitAngle)
        case .speed:
            return convertSpeed(value: value, unit1: unit1 as! UnitSpeed, unit2: unit2 as! UnitSpeed)
        case .duration:
            return convertDuration(value: value, unit1: unit1 as! UnitDuration, unit2: unit2 as! UnitDuration)
        }
    }
    
    func convertLenght(value: String, unit1: UnitLength, unit2: UnitLength) -> Double {
        return Measurement(value: Double(value) ?? 0.0, unit: unit1).converted(to: unit2).value
    }
    
    func convertArea(value: String, unit1: UnitArea, unit2: UnitArea) -> Double {
        return Measurement(value: Double(value) ?? 0.0, unit: unit1).converted(to: unit2).value
    }
    
    func converPressure(value: String, unit1: UnitPressure, unit2: UnitPressure) -> Double {
        return Measurement(value: Double(value) ?? 0.0, unit: unit1).converted(to: unit2).value
    }
    
    func convertTemperature(value: String, unit1: UnitTemperature, unit2: UnitTemperature) -> Double {
        return Measurement(value: Double(value) ?? 0.0, unit: unit1).converted(to: unit2).value
    }
    
    func convertVolume(value: String, unit1: UnitVolume, unit2: UnitVolume) -> Double {
        return Measurement(value: Double(value) ?? 0.0, unit: unit1).converted(to: unit2).value
    }
    
    func convertMass(value: String, unit1: UnitMass, unit2: UnitMass) -> Double {
        return Measurement(value: Double(value) ?? 0.0, unit: unit1).converted(to: unit2).value
    }
    
    func convertAngle(value: String, unit1: UnitAngle, unit2: UnitAngle) -> Double {
        return Measurement(value: Double(value) ?? 0.0, unit: unit1).converted(to: unit2).value
    }
    func convertSpeed(value: String, unit1: UnitSpeed, unit2: UnitSpeed) -> Double {
        return Measurement(value: Double(value) ?? 0.0, unit: unit1).converted(to: unit2).value
    }
    func convertDuration(value: String, unit1: UnitDuration, unit2: UnitDuration) -> Double {
        return Measurement(value: Double(value) ?? 0.0, unit: unit1).converted(to: unit2).value
    }
}
