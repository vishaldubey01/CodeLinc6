//
//  EventsRowItemView.swift
//  ConnectCorps
//
//  Created by Harish Yerra on 9/28/19.
//  Copyright © 2019 Harish Yerra. All rights reserved.
//

import SwiftUI
import CoreLocation

struct EventsRowItemView: View {
    var event: Event
    var dateString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter.string(from: event.time)
    }
    
    var body: some View {
        HStack {
            Text(event.name)
            Spacer()
            Text(dateString)
        }
    }
}

struct EventsRowItemView_Previews: PreviewProvider {
    static var previews: some View {
        EventsRowItemView(event: Event(id: 1, name: "Hi", location: CLLocation(latitude: 1, longitude: 1), time: Date(), cost: 123))
    }
}
