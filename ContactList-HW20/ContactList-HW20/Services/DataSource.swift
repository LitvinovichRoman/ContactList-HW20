//
//  DataSource.swift
//  ContactList-HW20
//
//  Created by Роман Литвинович on 13.09.23.
//

import Foundation

class DataSource {
    static var persons: [Person] = []
    
    private static func generateUniqPerson() -> Person? {
        let names = ["Иван",
                     "Петр",
                     "Алексей",
                     "Мария",
                     "Анна",
                     "Ольга",
                     "Сергей",
                     "Александр",
                     "Елена",
                     "Наталья"]
        
        let surnames = ["Иваненко",
                        "Пупко",
                        "Сокол",
                        "Тронза",
                        "Василевич",
                        "Морозеня",
                        "Виталь",
                        "Тихоня",
                        "Дмитриевич",
                        "Седых"]
        
        let emails = ["test1@gmail.com",
                      "test2@mail.com",
                      "test3@mail.ru",
                      "test4@yandex.com",
                      "test5@yahoo.com",
                      "test6@example.com",
                      "test7@icloud.com",
                      "test8@yandex.by",
                      "test9@gmail.com",
                      "test1@testmail.com"]
        
        let phoneNumbers = ["+375(29)5554555",
                            "+375(29)2443455",
                            "+375(29)5466532",
                            "+375(29)7765436",
                            "+375(29)8763562",
                            "+375(29)9987712",
                            "+375(29)6340188",
                            "+375(29)4003562",
                            "+375(29)3214453",
                            "+375(29)1143253"]
        
        
        var availableSurnames = surnames
        var selectedSurnames = Set<String>()
        
        var availableNames = names
        var selectedNames = Set<String>()
        
        var availableEmails = emails
        var selectedEmails = Set<String>()
        
        var availablePhoneNumbers = phoneNumbers
        var selectedPhoneNumbers = Set<String>()
        
        while let name = availableNames.randomElement(),
              let surName = availableSurnames.randomElement(),
              let email = availableEmails.randomElement(),
              let phoneNumber = availablePhoneNumbers.randomElement() {
            
            selectedNames.insert(name)
            availableNames = availableNames.filter { $0 != name }
            
            selectedSurnames.insert(surName)
            availableSurnames = availableSurnames.filter { $0 != surName }
            
            selectedEmails.insert(email)
            availableEmails = availableEmails.filter { $0 != email }
            
            selectedPhoneNumbers.insert(phoneNumber)
            availablePhoneNumbers = availablePhoneNumbers.filter { $0 != phoneNumber }
            
            let person = Person(name: name, surName: surName, email: email, phoneNumber: phoneNumber)
            persons.append(person)
        }
        
        return nil
    }
    
    static func fillPersonsArray() {
        while persons.count < 10 {
            if let person = generateUniqPerson() {
                persons.append(person)
            }
        }
    }
    
    
}
