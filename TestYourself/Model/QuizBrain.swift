//
//  QuizBrain.swift
//  TestYourself
//
//  Created by Dariya Gecher on 22.02.2023.
//

import Foundation

struct QuizBrain{
    
    var questionNumber = 0
    var score = 0
    
    let quiz =
    [
        Questions(t: "Оператор «%» возвращает остаток от деления", a: "True"),
        Questions(t: "Обозначения оператора (НЕ) - (!)", a: "True"),
        Questions(t: "Let-перменные могут изменять свое значение в ходе выполнения программы.", a: "False"),
        Questions(t: "Ассемблер является языком высокого уровня.", a: "False"),
        Questions(t: "Функция, которая обращается сама к себе, называется рекурсивной функцией.", a: "True"),
        Questions(t: "Var-перменные могут изменять свое значение в ходе выполнения программы.", a: "True"),
        Questions(t: "Обозначение оператора (И) - (&)?", a: "False"),
        Questions(t: "Переменная типа Boolean принимает только логические выражения?", a: "True")]
    
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }else{
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        } else{ return false}
    }
}
