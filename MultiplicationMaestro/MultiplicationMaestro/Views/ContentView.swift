//
//  ContentView.swift
//  MultiplicationMaestro
//
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    
    // Values to be multiplied
    @State var multiplicand = Int.random(in: 1...12)
    @State var multiplier = Int.random(in: 1...12)
    
    // Holds the user's input
    @State var inputGiven = ""

    // Tracks whether the input has even been checked yet
    @State var answerChecked: Bool = false

    // Tracks whether the provided answer is correct or not
    @State var answerCorrect: Bool = false
    
    // Tracks the results of all questions answered so far
    @Binding var results: [Result]

    // MARK: Computed properties
    // The main user interface
    /// - Tag: mm_primary_interface
    var body: some View {
        
        VStack(spacing: 0) {

            // Present the question
            QuestionPresentationView(multiplicand: multiplicand,
                                     multiplier: multiplier)
            
            // Horizontal line
            Divider()
            
            // Result and input area
            AnswerAndResultView(answerChecked: answerChecked,
                                answerCorrect: answerCorrect,
                                inputGiven: $inputGiven)
            
            // Buttons to control program
            ZStack {
                
                // Allow input to be checked
                CheckAnswerButtonView(multiplicand: multiplicand,
                                      multiplier: multiplier,
                                      inputGiven: inputGiven,
                                      answerChecked: $answerChecked,
                                      answerCorrect: $answerCorrect,
                                      results: $results)
                
                // Allow new question to be generated
                NewQuestionButtonView(multiplicand: $multiplicand,
                                      multiplier: $multiplier,
                                      answerChecked: $answerChecked,
                                      answerCorrect: $answerCorrect,
                                      inputGiven: $inputGiven)

            }
            
        }
        .navigationTitle("Practice")
        .padding(.horizontal)
        .font(.system(size: 72))
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(results: .constant([]))
        }
    }
}
