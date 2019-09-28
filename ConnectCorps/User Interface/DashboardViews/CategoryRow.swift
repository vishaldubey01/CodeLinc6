//
//  ScrollRow.swift
//  ConnectCorps
//
//  Created by Vishal Dubey on 9/28/19.
//  Copyright © 2019 Harish Yerra. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {
    var houses = [House]()
    var events = [Event]()
    
    var body: some View {
        VStack {
            Text(verbatim: "Here's some places to eat")
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 15)
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.restaurants) { house in
                        NavigationLink(destination: HouseDetail()) {
                            RestaurantItem(item: house)
                        }
                    }
                }
            }
            .frame(height: 185)
            Spacer()
            Text(verbatim: "Or you can take a walk")
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 15)
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.walkRoutes) { event in
                        NavigationLink(destination: EventsDetail()) {
                            EventItem(item: event)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct RestaurantItem: View {
    var item: House
    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
    
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle.init(cornerRadius: 1)
            .fill(LinearGradient(
                gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
                startPoint: .init(x: 0.5, y: 0),
                endPoint: .init(x: 0.5, y: 0.6)
            ))
            .aspectRatio(1, contentMode: .fit)
        }
        .padding(.leading, 15)
    }
}

struct EventItem: View {
    var item: Event
    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
    
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle.init(cornerRadius: 1)
            .fill(LinearGradient(
                gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
                startPoint: .init(x: 0.5, y: 0),
                endPoint: .init(x: 0.5, y: 0.6)
            ))
            .aspectRatio(1, contentMode: .fit)
        }
        .padding(.leading, 15)
    }
}

