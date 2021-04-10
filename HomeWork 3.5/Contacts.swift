//
//  Contacts.swift
//  HomeWork 3.5
//
//  Created by Aleksei Goranov on 08.04.2021.
//

import SwiftUI

struct Contacts: View {

    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { contact in
                NavigationLink(destination: ContactRow(contact: contact)) {
                    HStack {
                        Text(contact.fullName)
                            .font(.headline)
                    }
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct Contacts_Preview: PreviewProvider {
    static var previews: some View {
        Contacts(
            persons: Person.getContactList())
    }
}

