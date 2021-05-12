//
//  ConverterService.swift
//  UnitConverter-SwiftUI
//
//  Created by Robert Pinl on 11.05.2021.
//

import Foundation

class ConverterService: ObservableObject {
    func selectUnit(category: category) -> [Unit] {
        switch category {
        case .area:
            return [UnitArea.squareMegameters, UnitArea.squareKilometers, UnitArea.squareMeters, UnitArea.squareCentimeters, UnitArea.squareMillimeters, UnitArea.squareNanometers, UnitArea.squareInches, UnitArea.squareFeet, UnitArea.squareYards, UnitArea.squareMiles, UnitArea.acres, UnitArea.ares, UnitArea.hectares]
            
        case .lenght:
            return [UnitLength.megameters, UnitLength.kilometers, UnitLength.hectometers, UnitLength.decameters, UnitLength.meters, UnitLength.decimeters, UnitLength.centimeters, UnitLength.centimeters, UnitLength.millimeters, UnitLength.micrometers, UnitLength.nanometers, UnitLength.picometers, UnitLength.inches, UnitLength.feet, UnitLength.yards, UnitLength.miles, UnitLength.scandinavianMiles, UnitLength.lightyears, UnitLength.nauticalMiles, UnitLength.fathoms, UnitLength.astronomicalUnits, UnitLength.parsecs]
            
        case .pressure:
            return [UnitPressure.newtonsPerMetersSquared, UnitPressure.gigapascals, UnitPressure.megapascals, UnitPressure.kilopascals, UnitPressure.hectopascals, UnitPressure.inchesOfMercury, UnitPressure.bars, UnitPressure.millibars, UnitPressure.millimetersOfMercury, UnitPressure.poundsForcePerSquareInch]
            
        case .temperature:
            return [UnitTemperature.celsius, UnitTemperature.fahrenheit, UnitTemperature.kelvin]
            
        case .volume:
            return [UnitVolume.megaliters, UnitVolume.kiloliters, UnitVolume.liters, UnitVolume.deciliters, UnitVolume.centiliters, UnitVolume.milliliters, UnitVolume.cubicKilometers, UnitVolume.cubicKilometers, UnitVolume.cubicMeters, UnitVolume.cubicDecimeters, UnitVolume.cubicCentimeters, UnitVolume.cubicMillimeters, UnitVolume.cubicInches, UnitVolume.cubicFeet, UnitVolume.cubicYards, UnitVolume.cubicMiles, UnitVolume.acreFeet, UnitVolume.bushels, UnitVolume.teaspoons, UnitVolume.tablespoons, UnitVolume.fluidOunces, UnitVolume.cups, UnitVolume.pints, UnitVolume.quarts, UnitVolume.gallons, UnitVolume.imperialTeaspoons, UnitVolume.imperialTablespoons, UnitVolume.imperialFluidOunces, UnitVolume.imperialPints, UnitVolume.imperialQuarts, UnitVolume.imperialGallons, UnitVolume.metricCups]
            
        case .mass:
            return [UnitMass.kilograms, UnitMass.grams, UnitMass.decigrams, UnitMass.centigrams, UnitMass.milligrams, UnitMass.micrograms, UnitMass.nanograms, UnitMass.picograms, UnitMass.ounces, UnitMass.pounds, UnitMass.stones, UnitMass.metricTons, UnitMass.shortTons, UnitMass.carats, UnitMass.ouncesTroy, UnitMass.slugs]
            
        case .angle:
            return [UnitAngle.degrees, UnitAngle.arcMinutes, UnitAngle.arcSeconds, UnitAngle.radians, UnitAngle.gradians, UnitAngle.revolutions]
        case .speed:
            return [UnitSpeed.metersPerSecond, UnitSpeed.kilometersPerHour, UnitSpeed.milesPerHour, UnitSpeed.knots, UnitSpeed.milesPerHour]
        case .duration:
            return [UnitDuration.hours, UnitDuration.minutes, UnitDuration.seconds, UnitDuration.milliseconds, UnitDuration.microseconds, UnitDuration.nanoseconds, UnitDuration.nanoseconds, UnitDuration.picoseconds]
        }
    }
    
    func getInfo(categoty: category) -> String {
        switch categoty {
        case .angle:
            return ""
        case .lenght:
            return ""
        case .mass:
            return ""
        case .area:
            return ""
        case .volume:
            return ""
        case .temperature:
            return ""
        case .pressure:
            return ""
        case .speed:
            return ""
        case .duration:
            return ""
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
