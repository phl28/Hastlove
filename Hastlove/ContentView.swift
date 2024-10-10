//
//  ContentView.swift
//  Hastlove
//
//  Created by Adrian Lui on 06/10/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]

    @State private var selected = "Basketball"
    @State private var id = 1

    var body: some View {
        VStack {
            Text("Why not try…")
                   .font(.largeTitle.bold())
            
            VStack {
                Circle().fill(colors.randomElement() ?? .blue).padding().overlay(
                    Image(systemName: "figure.\(selected.lowercased())").font(.system(size:144)).foregroundColor(.white)
                )
                Text("\(selected)!")
                    .font(.title)
            }.transition(.slide)
                .id(id)
            Spacer()
            Button("Try again") {
                withAnimation(.easeInOut(duration: 1)) {
                       selected = activities.randomElement() ?? "Archery"
                        id += 1
                   }
                
            }
            .buttonStyle(.borderedProminent)
        }
//        NavigationSplitView {
//            List {
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
//                    } label: {
//                        Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
//                    }
//                }
//                .onDelete(perform: deleteItems)
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
//        } detail: {
//            Text("Select an item")
//        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
