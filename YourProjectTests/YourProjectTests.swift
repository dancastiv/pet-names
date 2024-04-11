//
//  YourProjectTests.swift
//  YourProjectTests
//
//  Created by Daniela Castilla on 09/04/2024.
//

@testable import YourProject
import XCTest

final class YourProjectTests: XCTestCase {
    // This would be our test case
    func testRegisteringFoodAddsToFoodOptions() {
        // Arrange
        let tastyFood = "salmon"
        let pet = Pet()
        // Act
        pet.registerFood(food: "salmon")
        let foodOptions = pet.getFoodOptions()
        // Assert
        XCTAssertTrue(foodOptions.contains(tastyFood))
    }
}
