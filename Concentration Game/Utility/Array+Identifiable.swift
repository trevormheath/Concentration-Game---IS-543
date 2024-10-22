//
//  Array+Identifiable.swift
//  Concentration Game
//
//  Created by IS 543 on 10/21/24.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching targetElement: Element) -> Int? {
        for index in self.indices {
            if self[index].id == targetElement.id {
                return index
            }
        }
        return nil
    }
}
