//
//  TableElementsMapper.swift
//  iOSMobileArchitecture
//
//  Created by user on 26/02/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

class TableElementsMapper {
    
    static func map(list: [Any]) -> [MainTableElements] {
        var result: [MainTableElements] = []
        
        list.forEach { furniture in
            if let chair = (furniture as? ChairProtocol) {
                result.append(.titleCell(chair.type))
                result.append(.separatorCell)
                result.append(.titleCell(chair.style))
                result.append(.separatorCell)
                result.append(.titleDataCell("Name", "Color", "Price"))
                result.append(.separatorCell)
                result.append(.dataCell(chair.name, chair.color, chair.price))
                result.append(.separatorCell)
            } else {
                if let table = (furniture as? TableProtocol) {
                    result.append(.titleCell(table.type))
                    result.append(.separatorCell)
                    result.append(.titleCell(table.style))
                    result.append(.separatorCell)
                    result.append(.titleDataCell("Style", "Color", "Price"))
                    result.append(.separatorCell)
                    result.append(.dataCell(table.name, table.color, table.price))
                    result.append(.separatorCell)
                }
            }
        }
        
        return result
    }
}
