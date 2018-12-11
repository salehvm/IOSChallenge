//
//  QuestionsList.swift
//  IOSChallenge
//
//  Created by Saleh Majıdov on 12/10/18.
//  Copyright © 2018 Saleh Majıdov. All rights reserved.
//

import Foundation

class QuestionsList {
    
    var list = [Question]()
    
    init() {
        list.append(Question(questionText: "This British overseas territory is a popular tax haven.", choiceA: "A. Haiti", choiceB: "B. Suriname", choiceC: "C. Puerto Rico", choiceD: "D. Anguilla", answer: 4))
        
        list.append(Question(questionText: "The highest point on this island, Mount Obama was renamed in 2009 in honor of the president.", choiceA: "A. Dominica", choiceB: "B. Bahamas", choiceC: "C. Antigua and Barbuda", choiceD: "British Virgin Islands", answer: 3))
        
        list.append(Question(questionText: "This country produces its water from a desalination plant and the electricity on the island is a by-product of the desalination process.", choiceA: "A. Cuba", choiceB: "B. Aruba", choiceC: "C. Gaudeloupe", choiceD: "D. Cayman Islands", answer: 2))
        
        list.append(Question(questionText: "This country has a magnificent underwater cave system.", choiceA: "A. The Bahamas", choiceB: "B. Venezuela", choiceC: "C. Matinique", choiceD: "D. Dominican Republic", answer: 1))
        
        list.append(Question(questionText: "This is the island of Cou-Cou and Flying Fish. The popular R&B singer Rihanna is from here.", choiceA: "A. Trinidad and Tobago" , choiceB: "B. Saint Kitts and Nevis" , choiceC: "C. Grenada" , choiceD: "D. Barbados", answer: 4))
        
        list.append(Question(questionText: "Rum is the national drink of this country. The fastest man in the world Usain Bolt is from here.", choiceA: "A. Jamaica" , choiceB: "B. Saint Vincent and the Grenadines" , choiceC: "C. St. Lucia" , choiceD: "D. Guyana", answer: 1))
        
        list.append(Question(questionText: "test", choiceA: "A. duzgun cavab" , choiceB: "B. sehv" , choiceC: "C. sehv" , choiceD: "D. sehv", answer: 1))
    }
}
