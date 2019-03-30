//
//  CountryBank.swift
//  quiz nations
//
//  Created by Jorge Sanchez on 2/9/19.
//  Copyright © 2019 Jorge Sanchez. All rights reserved.
//

import Foundation


class CountryBank {
    
    var countryList = [QuestionBank]()
    
    init () {
        
        /*
         
            initializing QuestionBank() and placing Questions() inside of it by exploiting the append method
            then, placing the instance of that nation (which was assigned to QuestionBank()) inside of the CountryList array
         
         */
        
        /*
            creating the USA
         */
        let usa = QuestionBank(q: Question(question: "Who was the first president of US?", A: "Lincoln", B: "Bill Gates", C: "Bill Nye", D: "Washington", correctAnswer: 4))
        usa.questionList.append(Question(question: "What is the 3rd state of the United States", A: "California", B: "New York", C: "New jersey", D: "Delaware", correctAnswer: 3))
        usa.questionList.append(Question(question: "What color was George Washington's white horse?", A: "White", B: "Brown", C: "Black", D: "Pastel", correctAnswer: 1))
        countryList.append(usa)
        /*
            creating the ECUADOR
         */
        let ecuador = QuestionBank(q: Question(question: "Where is Ecuador?", A: "South America", B: "Asia", C: "Europe", D: "Central America", correctAnswer: 1))
        ecuador.questionList.append(Question(question: "Which nation borders Ecuador?", A: "Colombia", B: "Brazil", C: "Papa New Guüi", D: "Albania", correctAnswer: 1))
        ecuador.questionList.append(Question(question: "Which is a city in Ecuador", A: "Alzurasca", B: "Guayaquil", C: "Menetec", D: "Palo Alto", correctAnswer: 2))
        countryList.append(ecuador)
        /*
            creating the INDIA
         */
        let india = QuestionBank(q: Question(question: "_______ Gandhi", A: "Mohadma", B: "Muhetma", C: "Mahatma", D: "Muhatma", correctAnswer: 3))
        india.questionList.append(Question(question: "The name India is derived from the", A: "Nile river", B: "Indus river", C: "Indus Mountains", D: "Indu river", correctAnswer: 2))
        india.questionList.append(Question(question: "What is the capital of India", A: "New Delhi", B: "New Dehli", C: "New Delih", D: "New Dheli", correctAnswer: 1))
        countryList.append(india)
        
        
        for x in countryList {
            let y: [Question] = x.questionList
            for zed in y {
                let qq: Question = zed
                print(qq.questionText)
            }
        }
        
    }
    
}
