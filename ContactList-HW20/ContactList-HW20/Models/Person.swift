//
//  PersonModel.swift
//  ContactList-HW20
//
//  Created by Роман Литвинович on 13.09.23.
//
import Foundation
// MARK: - Person

struct Person {
    let name: String
    let sureName: String
    let email: String
    let phoneNumber: String
}

// MARK: - PersonData

struct PersonData {
    
    static func createPersons() -> [Person] {
        
        var persons: [Person] = []

       
        let names = DataStorage().names.shuffled()
        let surnames = DataStorage().surnames.shuffled()
        let emails = DataStorage().emails.shuffled()
        let phones = DataStorage().phoneNumbers.shuffled()

        for index in 0 ..< names.count {
            let person = Person(name: names[safe: index] ?? "Not data",
                                sureName: surnames[safe: index] ?? "Not data",
                                email: emails[safe: index] ?? "Not data",
                                phoneNumber: phones[safe: index] ?? "Not data")
            persons.append(person)
        }
        return persons
    }
}



