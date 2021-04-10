//
//  ContentView.swift
//  HomeWork 3.5
//
//  Created by Aleksei Goranov on 08.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    let contactList = Person.getContactList()
    
    let persons: [Person]
    
    var body: some View {
        TabView {
            Contacts(persons: contactList)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            Numbers(persons: contactList)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(persons: Person.getContactList())
    }
}
