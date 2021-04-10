//
//  Numbers.swift
//  HomeWork 3.5
//
//  Created by Aleksei Goranov on 08.04.2021.
//

import SwiftUI

struct Numbers: View {
    
    let persons: [Person]

    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { contact in
                    Section(header: Text(contact.fullName)) {
                        HStack {
                            Image(systemName: "phone")
                            Text(contact.phoneNumber)
                        }
                        HStack {
                            Image(systemName: "tray")
                            Text(contact.email)
                        }
                    }
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers(persons: Person.getContactList())
    }
}
