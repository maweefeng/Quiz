//
//  QuestionBank.swift
//  SwiftCollections
//
//  Created by Alex wee on 2019/1/14.
//  Copyright © 2019年 Alex wee. All rights reserved.
//

import UIKit
class QuestionBank: NSObject {

    var questionList:[Question] = [Question]()
    override init() {
        questionList.append(Question.init(text: "空腹最好不要吃柿子", correctAnswer:true))
        questionList.append(Question.init(text: "喝白酒时最好喝茶水", correctAnswer:true))
        questionList.append(Question.init(text: "吃烧烤时不能喝啤酒", correctAnswer:true))
        questionList.append(Question.init(text: "面膜做的时间越久越好", correctAnswer:true))
        questionList.append(Question.init(text: "身上着火后应该迅速用灭火器灭火", correctAnswer:true))
        
    }
}
