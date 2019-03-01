//
//  ChairProtocol.swift
//  iOSMobileArchitecture
//
//  Created by user on 21/02/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

protocol ChairProtocol {
    var type: String { get }
    var style: String { get }
    var name: String { get }
    var color: String { get }
    var price: Double { get }
}
