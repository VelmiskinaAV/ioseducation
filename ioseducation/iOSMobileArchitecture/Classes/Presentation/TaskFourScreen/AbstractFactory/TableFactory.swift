//
//  TableFactory.swift
//  iOSMobileArchitecture
//
//  Created by user on 05.02.2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

class TableFactory: FurnitureFactory {
    
    func getModernTable() -> (CreateTable){
        let table = ModernTable(tableStyle: "Modern", tableName: "Piter", tableColor: "red", tableHigh: 100)
        return table
    }
    
    func getRenaissanceTable() -> (CreateTable){
        let table = RenaissanceTable(tableStyle: "Renaissance", tableName: "George", tableColor: "Gold", tableHigh: 150)
        return table
    }
}
