//
//  GoalsView.swift
//  Hastlove
//
//  Created by Adrian Lui on 07/10/2024.
//


import SwiftUI

struct GoalsView: View {
    @State private var goals: [String] = []
    @State private var newGoal = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(goals, id: \.self) { goal in
                    Text(goal)
                }
                .onDelete(perform: deleteGoal)
                
                HStack {
                    TextField("New Goal", text: $newGoal)
                    Button(action: addGoal) {
                        Image(systemName: "plus.circle.fill")
                    }
                }
            }
            .navigationTitle("Goals")
        }
    }
    
    func addGoal() {
        goals.append(newGoal)
        newGoal = ""
    }
    
    func deleteGoal(at offsets: IndexSet) {
        goals.remove(atOffsets: offsets)
    }
}