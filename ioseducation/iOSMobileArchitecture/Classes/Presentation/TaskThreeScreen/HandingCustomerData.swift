//
//  HandingCustomerData.swift
//  iOSMobileArchitecture
//
//  Created by admin on 21.12.2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

class HandingCustomerData {
    
    let persone: CustomerData
    
    func returnFIO() -> String {
        return persone.fio
    }
    
    func returbDate() -> String {
        return persone.date
    }
    
    func returnAdress() -> String {
        return persone.adress
    }
    
    func returnPhoneNumber() -> String {
        return persone.phoneNumber
    }
    
    func returnTodayDate() -> String {
        return persone.todayDate
    }

    init(data: CustomerData? = nil) {
        self.persone = data ?? CustomerData()
    }
}
