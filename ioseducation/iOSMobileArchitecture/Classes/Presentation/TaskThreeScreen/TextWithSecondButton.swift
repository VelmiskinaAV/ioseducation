//
//  TextWithSecondButton.swift
//  iOSMobileArchitecture
//
//  Created by user on 29/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class ViewWithTextAndButton: UIView{
    
    
    var delegate:ButtonDelegate?
    
    func onButtonTap(sender: UIButton) {
  
        delegate?.onButtonTap(sender: sender)
    }
}

