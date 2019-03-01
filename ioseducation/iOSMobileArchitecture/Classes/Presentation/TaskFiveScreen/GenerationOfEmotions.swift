//
//  GenerationOfEmotions.swift
//  iOSMobileArchitecture
//
//  Created by user on 01/03/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

class GenerationOfEmotions {
    
    let name: [String] = ["Name1", "Name2", "Name3", "Name4", "Name5", "Name6", "Name7", "Name8", "Name9", "Name10", "Name11", "Name12", "Name13", "Name14", "Name15", "Name16"]
    let smile: [String] = ["😀", "😬" ,"😂", "😍", "😘", "🤪", "😎", "🤓", "🤗", "🙄", "🤨", "🤔", "😡", "😫", "😮", "😯", "😭"]
    
    
    func generation() -> ([ListOfEmotions]) {
        var listOfEmotions: [ListOfEmotions] = []
        
        for i in 0..<100000 {
            
            let numOfName = Int.random(in: 0..<self.name.count)
            let numOfSmile = Int.random(in: 0..<self.smile.count)
            
            let object = ListOfEmotions(id: i + 1, smile: self.smile[numOfSmile], name: self.name[numOfName])
            
            listOfEmotions.append(object)
        }
        return listOfEmotions
    }
    

}
