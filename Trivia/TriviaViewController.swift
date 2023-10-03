//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Ngoc Nhu Y Banh on 2023-10-02.
//

import UIKit

class TriviaViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var numberOfQuestionsLabel: UILabel!
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answer1Button: UIButton!
    
    @IBOutlet weak var answer2Button: UIButton!
    
    @IBOutlet weak var answer3Button: UIButton!
    
    @IBOutlet weak var answer4Button: UIButton!
    
    
    @IBOutlet weak var resetButton: UIButton!
    
    private var arrayOfQuestions = [GhibliQuesitions]()
    private var selectedQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfQuestions = mockQuestions()
        configure(with: arrayOfQuestions[selectedQuestionIndex])
        
    }
    
    private func configure(with question: GhibliQuesitions) {
        questionLabel.text = question.question
        answer1Button.setTitle(question.answer1, for: .normal)
        answer2Button.setTitle(question.answer2, for: .normal)
        answer3Button.setTitle(question.answer3, for: .normal)
        answer4Button.setTitle(question.answer4, for: .normal)
        numberOfQuestionsLabel.text = question.number
    }
    
    private func mockQuestions() -> [GhibliQuesitions]{
        let question1 = GhibliQuesitions(question: "Complete the title: Only ...", answer1: "Myself", answer2: "Yesterday", answer3: "You", answer4: "Mine",number: "Question: 1/3")
        
        let question2 = GhibliQuesitions(question: "Complete the title: The ... Rises", answer1: "Fire", answer2: "Earth", answer3: "Wind", answer4: "Water",number: "Question: 2/3")
        
        let question3 = GhibliQuesitions(question: "Complete the title: Whisper of the ...", answer1: "Heart", answer2: "Soul", answer3: "Life", answer4: "Mind",number:"Question: 3/3")
        return [question1, question2, question3]
    }
    
    
    @IBAction func didTapAnswer1Button(_ sender: UIButton) {
        if selectedQuestionIndex < 2 {
            selectedQuestionIndex = selectedQuestionIndex + 1
            configure(with: arrayOfQuestions[selectedQuestionIndex])
        }
    }
    
    @IBAction func didTapAnswer2Button(_ sender: UIButton) {
        if selectedQuestionIndex < 2 {
            selectedQuestionIndex = selectedQuestionIndex + 1
            configure(with: arrayOfQuestions[selectedQuestionIndex])
        }
    }
    
    @IBAction func didTapAnswer3Button(_ sender: UIButton) {
        if selectedQuestionIndex < 2 {
            selectedQuestionIndex = selectedQuestionIndex + 1
            configure(with: arrayOfQuestions[selectedQuestionIndex])
        }
    }
    
    @IBAction func didTapAnswer4Button(_ sender: UIButton) {
        if selectedQuestionIndex < 2 {
            selectedQuestionIndex = selectedQuestionIndex + 1
            configure(with: arrayOfQuestions[selectedQuestionIndex])
        }
    }
    
    @IBAction func didTapResetButton(_ sender: UIButton) {
        if selectedQuestionIndex != 0 {
            selectedQuestionIndex = 0
            configure(with: arrayOfQuestions[selectedQuestionIndex])
        }
    }
}
