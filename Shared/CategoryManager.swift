//
//  CategoryViewModel.swift
//  UnitConverter-SwiftUI
//
//  Created by Robert P on 12.05.2021.
//

import Foundation

class CategoryManager {
    
    
//    static func getUnitType(category: Category) -> Unit.Type {
//        switch category {
//        case .mass:
//            return UnitMass.self
//        case .lenght:
//            return UnitLength.self
//        case .area:
//            return UnitArea.self
//        case .volume:
//            return UnitVolume.self
//        case .pressure:
//            return UnitPressure.self
//        case .temperature:
//            return UnitTemperature.self
//        case .angle:
//            return UnitArea.self
//        case .speed:
//            return UnitSpeed.self
//        case .duration:
//            return UnitDuration.self
//        }
//    }
    
    static func getIcon(category: Category) -> String {
        switch category {
        case .lenght:
            return "ruler"
        case .mass:
            return "case"
        case .area:
            return "map"
        case .volume:
            return "cube"
        case .temperature:
            return "thermometer"
        case .pressure:
            return "hammer"
        case .angle:
            return "pyramid"
        case .speed:
            return "speedometer"
        case .duration:
            return "clock.arrow.2.circlepath"
        }
    }
    
    static func getInfo(categoty: Category) -> String {
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
