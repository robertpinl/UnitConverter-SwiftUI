//
//  ConverterService.swift
//  UnitConverter-SwiftUI
//
//  Created by Robert P on 11.05.2021.
//

import Foundation

class ConverterService: ObservableObject {
    func selectUnit(category: category) -> [Unit] {
        
        switch category {
        case .area:
            return [UnitArea.squareMegameters, UnitArea.squareKilometers, UnitArea.squareMeters, UnitArea.squareCentimeters, UnitArea.squareMillimeters, UnitArea.squareNanometers, UnitArea.squareInches, UnitArea.squareFeet, UnitArea.squareYards, UnitArea.squareMiles, UnitArea.acres, UnitArea.ares, UnitArea.hectares]
            
        case .lenght:
            return [UnitLength.millimeters, UnitLength.centimeters, UnitLength.decimeters, UnitLength.meters]
            
        case .pressure:
            return [UnitLength.millimeters, UnitLength.centimeters, UnitLength.decimeters, UnitLength.meters]
            
        case .temperature:
            return [UnitLength.millimeters, UnitLength.centimeters, UnitLength.decimeters, UnitLength.meters]
        case .volume:
            return [UnitLength.millimeters, UnitLength.centimeters, UnitLength.decimeters, UnitLength.meters]
        case .weight:
            return [UnitLength.millimeters, UnitLength.centimeters, UnitLength.decimeters, UnitLength.meters]
            
        }
    }
    
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
        case .weight:
            return ConvertWeight(value: value, unit1: unit1 as! UnitMass, unit2: unit2 as! UnitMass)
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
    
    func ConvertWeight(value: String, unit1: UnitMass, unit2: UnitMass) -> Double {
        return Measurement(value: Double(value) ?? 0.0, unit: unit1).converted(to: unit2).value
    }
}
