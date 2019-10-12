//
//  Meal.swift
//  FoodTracker
//
//  Created by Coded Professor on 12/10/2019.
//  Copyright © 2019 Coded Professor. All rights reserved.
//

import UIKit

class Meal {
    // MARK: Properties
    var name: String
    var rating: Int
    var photo: UIImage?
    
    // MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        // Name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // Rating must be between 0 and 5 inclusive
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
