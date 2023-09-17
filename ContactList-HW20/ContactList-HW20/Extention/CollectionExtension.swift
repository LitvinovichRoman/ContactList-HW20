//
//  CollectionExtension.swift
//  ContactList-HW20
//
//  Created by Роман Литвинович on 15.09.23.
//

import Foundation

extension Collection {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
