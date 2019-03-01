//
//  RenaissanceChair.swift
//  iOSMobileArchitecture
//
//  Created by user on 21/02/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

class RenaissanceChair: ChairProtocol {
    let type: String
    let style: String
    let name: String
    let color: String
    let price: Double
    
    init() {
        type = "Chair"
        style = "Renaissance"
        name = "Chair Kate"
        color = "Maroon"
        price = 120
    }
}
