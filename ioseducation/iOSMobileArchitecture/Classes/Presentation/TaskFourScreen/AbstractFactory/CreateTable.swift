//
//  CreateTable.swift
//  iOSMobileArchitecture
//
//  Created by user on 05.02.2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

class CreateTable: Delegate {
    let tableStyle : String
    let tableName : String
    let tableColor : String
    let tableHigh : Double
    
    init(tableStyle: String, tableName: String, tableColor: String, tableHigh: Double){
        self.tableStyle = tableStyle
        self.tableName = tableName
        self.tableColor = tableColor
        self.tableHigh = tableHigh
    }
    init(){
        self.tableStyle = ""
        self.tableName = ""
        self.tableColor = ""
        self.tableHigh = 0
    }
    
    func print(){
    }
}
