//
//  AbstractFactory.swift
//  iOSMobileArchitecture
//
//  Created by user on 21/02/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

protocol AbstractFactory{
    func createChair() -> ChairProtocol
    func createTable() -> TableProtocol
}
