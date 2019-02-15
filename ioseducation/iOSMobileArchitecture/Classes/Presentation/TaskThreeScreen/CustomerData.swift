//
//  CustomerData.swift
//  iOSMobileArchitecture
//
//  Created by admin on 21.12.2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

struct CustomerData {
    let fio: String
    let date: String
    let adress: String
    let phoneNumber: String
    let todayDate: String
    
    init(fio: String = "", date: String = "", adress: String = "", phoneNumber: String = "", todayDate: String = "") {
        self.fio = fio
        self.date = date
        self.adress = adress
        self.phoneNumber = phoneNumber
        self.todayDate = todayDate        
    }
}
