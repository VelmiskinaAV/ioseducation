//
//  SofaFactory.swift
//  iOSMobileArchitecture
//
//  Created by user on 05.02.2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

class SofaFactory: FurnitureFactory {
    
    func getModernSofa() -> (CreateSofa){
        let sofa = ModernSofa(sofaStyle: "Modern", sofaName: "Marry", sofaColor: "red", sofaHigh: 110)
        return sofa
    }
    
    func getRenaissanceSofa() -> (CreateSofa){
        let sofa = RenaissanceSofa(sofaStyle: "Renaissance", sofaName: "Jully", sofaColor: "Gold", sofaHigh: 130)
        return sofa
    }
}
