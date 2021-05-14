//
//  CategoryViewModel.swift
//  UnitConverter-SwiftUI
//
//  Created by Robert P on 12.05.2021.
//

import Foundation

class CategoryViewModel: ObservableObject {
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
            return "Angle is a quantity of rotation. The SI unit for angle is the radian (rad), which is dimensionless and defined to be the the angle subtended by an arc that is equal in length to the radius of a circle. Angle is also commonly expressed in terms of degrees (°) and revolutions (rev)."
        case .lenght:
            return "Length is the dimensional extent of matter. The SI unit for length is the meter (m), which is defined in terms of the distance traveled by light in a vacuum."
        case .mass:
            return "Mass is a fundamental property of matter that causes it to resist being accelerated by a force. The SI unit for mass is the kilogram (kg), which defined in terms of the mass of the international prototype kilogram."
        case .area:
            return "Area is a quantity of extent in two dimensions. Area can be expressed by SI derived units in terms of square meters (m2). Area is also commonly measured in square feet (ft2) and acres (ac)."
        case .volume:
            return "Volume is a quantity of the extend of matter in three dimensions. The SI accepted unit of volume is the liter (L), which is derived as one cubic decimeter (1 dm3). Volume is also commonly expressed in terms of cubic meters (m3), gallons (gal), and cups (cup)."
        case .temperature:
            return "Temperature is a comparative measure of thermal energy. The SI unit for temperature is the kelvin (K), which is defined in terms of the triple point of water. Temperature is also commonly measured by degrees of various scales, including Celsius (°C) and Fahrenheit (°F)."
        case .pressure:
            return "Pressure is the normal force over a surface. The SI unit for pressure is the pascal (Pa), which is derived as one newton of force over one square meter (1Pa = 1N / 1m2)."
        case .speed:
            return "Speed is the magnitude of velocity, or the rate of change of position. Speed can be expressed by SI derived units in terms of meters per second (m/s), and is also commonly expressed in terms of kilometers per hour (km/h) and miles per hour (mph)."
        case .duration:
            return "Duration is a quantity of time. The SI unit for time is the second (sec), which is defined in terms of the radioactivity of a cesium-133 atom. Duration is also commonly expressed in terms of minutes (min) and hours (hr)."
        }
    }
}
