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
    var contacts = [Contact]()
    
    var body: some View {
        VStack (alignment: .leading){
            Text("Temporary housing near you")
                .font(.headline)
                .padding(.leading, 10)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.houses) { house in
                            HouseItem(item: house)
                        
                    }
                }
            }
            .frame(height: 200)
            Spacer()
            Text("Here's some events we found")
                .font(.headline)
                .padding(.leading, 10)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.events) { event in
                        EventItem(item: event)
                    }
                }
            }
            .frame(height: 200)
        }
    }
}

struct HouseItem: View {
    var item: House
    static let gradientStart = Color(red: 120.0 / 255, green: 230.0 / 255, blue: 121.0 / 255)
    static let gradientEnd = Color(red: 125.0 / 255, green: 230.0 / 255, blue: 150.0 / 255)
    
    var body: some View {
        VStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(LinearGradient(
                        gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
                        startPoint: .init(x: 0.5, y: 0),
                        endPoint: .init(x: 0.5, y: 0.6)
                    ))
                    .frame(width: 200, height: 120)
                .overlay(
                    VStack (alignment: HorizontalAlignment.center) {
                        Text(item.name)
                            .font(.subheadline)
                            .padding(.top, 20)
                        Text(item.phoneNumber)
                    }
                )
            
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
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(
                    gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
                    startPoint: .init(x: 0.5, y: 0),
                    endPoint: .init(x: 0.5, y: 0.6)
                ))
                .frame(width: 200, height: 120)
            
        }
        .padding(.leading, 15)
    }
}

struct QuickContacts: View {
    var item: Contact
    static let gradientStart = Color(red: 120.0 / 255, green: 230.0 / 255, blue: 121.0 / 255)
    static let gradientEnd = Color(red: 125.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
    
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(
                    gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
                    startPoint: .init(x: 0.5, y: 0),
                    endPoint: .init(x: 0.5, y: 0.6)
                ))
                .frame(width: 150, height: 100)
        }
        .padding(.leading, 15)
    }
}
