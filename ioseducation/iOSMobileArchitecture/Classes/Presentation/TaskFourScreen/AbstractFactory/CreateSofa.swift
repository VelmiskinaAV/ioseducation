//
//  CreateSofa.swift
//  iOSMobileArchitecture
//
//  Created by user on 05.02.2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

class CreateSofa: Delegate {
    let sofaStyle : String
    let sofaName : String
    let sofaColor : String
    let sofaHigh : Double
    
    init(sofaStyle: String, sofaName: String, sofaColor: String, sofaHigh: Double){
        self.sofaStyle = sofaStyle
        self.sofaName = sofaName
        self.sofaColor = sofaColor
        self.sofaHigh = sofaHigh
    }
    
    func print(){
    }
}
