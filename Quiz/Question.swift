//
//  Question.swift
//  SwiftCollections
//
//  Created by Alex wee on 2019/1/11.
//  Copyright © 2019年 Alex wee. All rights reserved.
//

import UIKit

class Question: NSObject {
    let question:String
    let answer:Bool
    
    init(text:String,correctAnswer:Bool) {
        
        question = text
        answer = correctAnswer
    }
}
