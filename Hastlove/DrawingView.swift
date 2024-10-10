//
//  DrawingView.swift
//  Hastlove
//
//  Created by Adrian Lui on 07/10/2024.
//


import SwiftUI
import PencilKit

struct DrawingView: View {
    @State private var canvasView = PKCanvasView()
    
    var body: some View {
        NavigationView {
            CanvasView(canvasView: $canvasView)
                .navigationTitle("Drawing Board")
                .navigationBarItems(trailing: Button("Clear") {
                    canvasView.drawing = PKDrawing()
                })
        }
    }
}

struct CanvasView: UIViewRepresentable {
    @Binding var canvasView: PKCanvasView
    
    func makeUIView(context: Context) -> PKCanvasView {
        canvasView.tool = PKInkingTool(.pen, color: .black, width: 15)
        return canvasView
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {}
}