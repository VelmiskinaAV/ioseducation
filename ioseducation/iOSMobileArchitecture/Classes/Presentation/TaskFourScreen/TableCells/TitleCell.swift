//
//  TitleCell.swift
//  iOSMobileArchitecture
//
//  Created by Гость on 15.02.2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TitleCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    func bind(title: String) {
        label.text = title
    }
}
