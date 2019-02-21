//
//  ModernFactory.swift
//  iOSMobileArchitecture
//
//  Created by user on 21/02/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

class ModernFactory: AbstractFactory{
    func createChair() -> ChairProtocol {
        return ModernChair()
    }
    
    func createTable() -> TableProtocol {
        return ModernTable()
    }
}
