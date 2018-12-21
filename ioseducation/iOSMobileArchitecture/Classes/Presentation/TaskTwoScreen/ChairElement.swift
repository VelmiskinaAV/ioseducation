//
//  ChairElement.swift
//  iOSMobileArchitecture
//
//  Created by Alexander Mironov on 19.12.2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

class ChairElement: FurnitureProtocol {
    
    let name: String
    let productionDate: Int
    let nameOfCompany: String
    let nameOfCustomer: String
    
    required init() {
        name = "Стул Деревянный"
        productionDate = 2017
        nameOfCompany = "ООО СтроимСтулья"
        nameOfCustomer = "ООО НужныСтулья"
    }
    
    func returnMessage()->String {
        return "\(name), изготовлен в \(productionDate) году компанией \(nameOfCompany) по заказу компании \(nameOfCustomer)"
    }
}
