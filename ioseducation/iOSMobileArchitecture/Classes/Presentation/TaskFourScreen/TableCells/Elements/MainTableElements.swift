//
//  MainTableElements.swift
//  iOSMobileArchitecture
//
//  Created by user on 21/02/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

enum MainTableElements {
    case titleCell(String) //title
    case titleDataCell(String, String, String) //style, name, price
    case dataCell(String, String, Double) //style, name, price
    case separatorCell
}
