//
//  Person.swift
//  HomeWork 3.5
//
//  Created by Aleksei Goranov on 08.04.2021.
//

import SwiftUI

struct Person: Identifiable {
    let id: Int
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
    
extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let ids = DataManager.shared.ids.shuffled()
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
                
        for index in 0..<names.count {
            let person = Person(
                id: ids[index],
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )

            persons.append(person)
        }

        return persons
    }
}

