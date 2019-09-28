//
//  House.swift
//  ConnectCorps
//
//  Created by Harish Yerra on 9/28/19.
//  Copyright © 2019 Harish Yerra. All rights reserved.
//

import SwiftUI
import CoreLocation

/// Represents a house for a veteran.
struct House {
    /// The id of the house.
    var id: Int
    /// The name of the house.
    var name: String
    /// The image for the house.
    var image: Image
    /// The contact for the house.
    var phoneNumber: String
    /// The location for the house.
    var location: CLLocation
}

// MARK: - Equatable

extension House: Equatable {
    static func == (lhs: House, rhs: House) -> Bool {
        return lhs.id == rhs.id
    }
}

// MARK: - Identifiable
extension House: Identifiable { }
