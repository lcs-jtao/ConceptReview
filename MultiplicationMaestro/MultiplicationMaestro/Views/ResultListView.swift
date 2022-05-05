//
//  ResultListView.swift
//  MultiplicationMaestro
//
//  Created by Joyce Tao on 2022-05-04.
//

import SwiftUI

struct ResultListView: View {
    
    // MARK: Stored properties
    // Tracks the results of all questions answered so far
    @Binding var results: [Result]
    
    // MARK: Computed property
    var body: some View {
        
        // Show results of prior questions attempted
        List(results) { currentResult in
            // Use a helper view to display each prior result
            PriorResultView(result: currentResult)
        }
    }
}

struct ResultListView_Previews: PreviewProvider {
    static var previews: some View {
        ResultListView(results: .constant([]))
    }
}
