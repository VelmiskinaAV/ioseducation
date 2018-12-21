//
//  TableElement.swift
//  iOSMobileArchitecture
//
//  Created by Alexander Mironov on 19.12.2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

class TableElement: FurnitureProtocol {
    
    let name: String
    let productionDate: Int
    let nameOfCompany: String
    let nameOfCustomer: String
    
    required init() {
        name = "Стол Деревянный"
        productionDate = 2018
        nameOfCompany = "ООО СтроимСтолы"
        nameOfCustomer = "ООО НужныСтолы"
    }
    
    func returnMessage()->String {
        return "\(name), изготовлен в \(productionDate) году компанией \(nameOfCompany) по заказу компании \(nameOfCustomer)"
    }
}
