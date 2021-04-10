//
//  ContactRow.swift
//  HomeWork 3.5
//
//  Created by Aleksei Goranov on 08.04.2021.
//

import SwiftUI

struct ContactRow: View {
    
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Image(systemName: "phone")
                Text(contact.phoneNumber)
            }
            HStack(alignment: .center ) {
                   Image(systemName: "person.fill")
                .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
            }
            HStack {
                Image(systemName: "tray")
                Text(contact.email)
            }
           
        }
        .navigationBarTitle("\(contact.fullName)")
}
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: Person.init(id: 4, name: "", surname: "", email: "", phoneNumber: ""))
    }
}

