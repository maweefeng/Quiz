//
//  ViewController.swift
//  SwiftCollections
//
//  Created by Alex wee on 2019/1/10.
//  Copyright © 2019年 Alex wee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var questionLabel: UILabel!
    var questionBank = QuestionBank()
    var pickAnswer:Bool = false
    var questionIndex:Int = 0
    var score:Int = 0

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }
 
    @IBAction func anwerPressed(_ sender: UIButton) {
        
        if (sender.tag == 10001) {
            pickAnswer = true
            
        }else{
            
            pickAnswer = false
        }
        checkAnswer(pickAnswer: pickAnswer)
        questionIndex += 1
        nextQuestion()

        
    }
    
    func checkAnswer(pickAnswer:Bool){
        
        if (pickAnswer == questionBank.questionList[questionIndex].answer) {
            score += 1
            print("回答正确")

        }else{
            
            print("回答错误")
        }
        
    }
    
    func startOver() {
        questionIndex = 0
        score = 0
        nextQuestion()
    }
    
    func nextQuestion(){
        if (questionIndex<=questionBank.questionList.count-1) {
            questionLabel.text = questionBank.questionList[questionIndex].question
            
            
        }else{
            print("全部答完")
            let alert = UIAlertController(title: "了不起", message: "你已经完成了所有的题目", preferredStyle: .alert)
            let reatartAction = UIAlertAction(title: "重新开始", style: .default, handler: {
                (_) in self.startOver()})
            
            let endAction = UIAlertAction(title: "结束答题", style: .default) { (_) in
               
                print("结束进程")
                self.questionIndex = 0
            }
            alert.addAction(reatartAction)
            alert.addAction(endAction)
            present(alert, animated: true, completion: nil)
            
        }
        
        scoreLabel.text = "分数：\(score)"

        progressBar.setProgress(Float(Double(questionIndex) / Double(questionBank.questionList.count)), animated: true)
        
        
    
}
}
