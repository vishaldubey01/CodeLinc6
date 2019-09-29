//
//  ContactRowItemView.swift
//  ConnectCorps
//
//  Created by Harish Yerra on 9/28/19.
//  Copyright © 2019 Harish Yerra. All rights reserved.
//

import SwiftUI

struct ContactRowItemView: View {
    var contact: Contact
    
    var body: some View {
        HStack {
            Text(contact.name)
            Spacer()
            Text(contact.phoneNumber)
        }
    }
}

struct ContactRowItemView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowItemView(contact: Contact(id: 2, name: "Hi", description: "Hi", phoneNumber: "012831"))
    }
}
