//
//  RenaissanceTable.swift
//  iOSMobileArchitecture
//
//  Created by user on 21/02/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

class RenaissanceTable: TableProtocol {
    let type: String
    let style: String
    let name: String
    let color: String
    let price: Double
    
    init() {
        type = "Table"
        style = "Renaissance"
        name = "Table Gorger"
        color = "Maroon"
        price = 210
    }
}
