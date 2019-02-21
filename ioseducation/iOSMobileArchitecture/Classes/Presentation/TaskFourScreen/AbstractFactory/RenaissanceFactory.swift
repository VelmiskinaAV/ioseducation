//
//  RenaissanceFactory.swift
//  iOSMobileArchitecture
//
//  Created by user on 21/02/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

class RenaissanceFactory: AbstractFactory{
    func createChair() -> ChairProtocol {
        return RenaissanceChair()
    }
    
    func createTable() -> TableProtocol {
        return RenaissanceTable()
    }
}
