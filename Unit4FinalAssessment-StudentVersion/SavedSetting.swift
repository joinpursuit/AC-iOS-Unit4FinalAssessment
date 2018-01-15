//
//  SavedSettings.swift
//  Unit4FinalAssessment-StudentVersion
//
//  Created by Lisa J on 1/12/18.
//  Copyright © 2018 C4Q . All rights reserved.
//

import Foundation

struct SavedSetting: Codable {
    //let savedSettingArray: [Double]
    var savedSettingName: String
    var width : Double
    var height: Double
    var horizontal: Double
    var vertical : Double
    var numberOfFlips : Double
}
