//
//  FoodModel.swift
//  Small-DMS
//
//  Created by 김대희 on 2022/04/04.
//

import Foundation

struct FoodModel: Codable {
    var date: Meal
    
    struct Meal: Codable {
        var breakfast: [String]
        var lunch: [String]
        var dinner: [String]
    }
}
