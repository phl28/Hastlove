//
//  NewsView.swift
//  Hastlove
//
//  Created by Adrian Lui on 07/10/2024.
//


import SwiftUI

struct NewsView: View {
    @State private var newsItems: [NewsItem] = []
    
    var body: some View {
        NavigationView {
            List(newsItems) { item in
                VStack(alignment: .leading) {
                    Text(item.title)
                        .font(.headline)
                    Text(item.content)
                        .font(.subheadline)
                }
            }
            .navigationTitle("Couple News")
        }
    }
}

struct NewsItem: Identifiable {
    let id = UUID()
    let title: String
    let content: String
}