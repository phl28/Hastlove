//
//  DiaryView.swift
//  Hastlove
//
//  Created by Adrian Lui on 07/10/2024.
//

import SwiftUI

struct DiaryView: View {
    @State private var diaryEntries: [DiaryEntry] = []
    @State private var newEntry = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(diaryEntries) { entry in
                    Text(entry.content)
                }
                
                HStack {
                    TextField("New Entry", text: $newEntry)
                    Button(action: addEntry) {
                        Image(systemName: "plus.circle.fill")
                    }
                }
            }
            .navigationTitle("Private Diary")
        }
    }
    
    func addEntry() {
        let entry = DiaryEntry(content: newEntry)
        diaryEntries.append(entry)
        newEntry = ""
    }
}

struct DiaryEntry: Identifiable {
    let id = UUID()
    let content: String
}
