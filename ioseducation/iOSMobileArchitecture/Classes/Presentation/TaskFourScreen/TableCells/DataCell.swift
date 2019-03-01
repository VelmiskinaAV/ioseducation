//
//  DataCell.swift
//  iOSMobileArchitecture
//
//  Created by Гость on 15.02.2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class DataCell: UITableViewCell {

    @IBOutlet weak var labelStyle: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    
    func bind(style: String, name: String, price: Double) {
        labelStyle.text = style
        labelName.text = name
        labelPrice.text = "\(price)"
    }
}
