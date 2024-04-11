//
//  Pet.swift
//  YourProject
//
//  Created by Daniela Castilla on 09/04/2024.
//

import Foundation

class Pet {
    var foodOptions = [String]()
    
    func registerFood(food: String) {
        foodOptions.append(food)
    }
    
    func getFoodOptions() -> [String] {
        return foodOptions
    }
    
}
