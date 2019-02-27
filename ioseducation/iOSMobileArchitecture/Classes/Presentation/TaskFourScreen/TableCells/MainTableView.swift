//
//  MainTableView.swift
//  iOSMobileArchitecture
//
//  Created by Гость on 15.02.2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class MainTableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        dataSource = self
        delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return furniture.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let element = furniture[indexPath.row]
        
        switch element {
        case .titleCell(let title):
            let cell = dequeueReusableCell(withIdentifier: "TitleCell") as! TitleCell
            cell.bind(title: title)
            
            return cell
        case .titleDataCell(let style, let name, let price):
            let cell = dequeueReusableCell(withIdentifier: "TitleDataCell") as! TitleDataCell
            cell.bind(style: style, name: name, price: price)
            
            return cell
            
        case .dataCell(let style, let name, let price):
            let cell = dequeueReusableCell(withIdentifier: "DataCell") as! DataCell
            cell.bind(style: style, name: name, price: price)
            
            return cell
        case .separatorCell:
            let cell = dequeueReusableCell(withIdentifier: "SeparatorCell") as! SeparatorCell
            cell.bind()
            
            return cell
        }
    }
    
     var furniture: [MainTableElements] = []
}
