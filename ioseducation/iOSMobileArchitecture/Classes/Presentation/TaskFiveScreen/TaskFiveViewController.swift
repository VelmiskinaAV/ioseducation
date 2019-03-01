//
//  TaskFiveViewController.swift
//  iOSMobileArchitecture
//
//  Created by user on 01/03/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskFiveViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var loading: UIActivityIndicatorView!
    
    let name: [String] = ["Name1", "Name2", "Name3", "Name4", "Name5", "Name6", "Name7", "Name8", "Name9", "Name10", "Name11", "Name12", "Name13", "Name14", "Name15", "Name16"]
    let smile: [String] = ["😀", "😬" ,"😂", "😍", "😘", "🤪", "😎", "🤓", "🤗", "🙄", "🤨", "🤔", "😡", "😫", "😮", "😯", "😭"]
    
    @IBAction func button(_ sender: Any) {
        
        loading.isHidden = false
        loading.startAnimating()
        
        DispatchQueue.global(qos: .background).async {
            let emotions = GenerationOfEmotions()
            let elements: [ListOfEmotions] = emotions.generation()
            
            DispatchQueue.main.async {
                self.loading.stopAnimating()
                self.loading.isHidden = true
                self.label.text = """
                                      \(elements[0].id)  \(elements[0].name)  \(elements[0].smile)
                                      \(elements[99999].id)  \(elements[99999].name)  \(elements[99999].smile)
                                    """
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loading.isHidden = true
    }
    
}
