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
    var image: UIImage
    /// The contact for the house.
    var phoneNumber: String
    /// The location for the house.
    var location: String
    
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case image
        case phoneNumber = "number"
        case location = "address"
    }
}

// MARK: - Equatable

extension House: Equatable {
    static func == (lhs: House, rhs: House) -> Bool {
        return lhs.id == rhs.id
    }
}

// MARK: - Identifiable
extension House: Identifiable { }

// MARK: - Decodable
extension House: Decodable {
    enum NetworkingError: Error {
        case noData
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(Int.self, forKey: .id)
        name = try values.decode(String.self, forKey: .name)
        let imageData = try values.decode(Data.self, forKey: .image)
        guard let image = UIImage(data: imageData) else { throw NetworkingError.noData }
        self.image = image
        phoneNumber = try values.decode(String.self, forKey: .phoneNumber)
        location = try values.decode(String.self, forKey: .location)
    }
}
