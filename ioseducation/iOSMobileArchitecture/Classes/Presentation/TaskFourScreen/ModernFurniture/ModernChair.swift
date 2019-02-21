//
//  ModernChair.swift
//  iOSMobileArchitecture
//
//  Created by user on 21/02/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

class ModernChair: ChairProtocol{
    var style: String = "Modern"
    var name: String = "Chair Marry"
    var color: String = "Brown"
    var price: Double = 150
    
    func returnStyle(style: String) -> String{
        self.style = style
        return self.style
    }
    
    func returnName(name: String) -> String{
        self.name = name
        return self.name
    }
    
    func returnColor(color: String) -> String{
        self.color = color
        return self.color
    }
    
    func returnPrice(price: Double) -> Double{
        self.price = price
        return self.price
    }
}
