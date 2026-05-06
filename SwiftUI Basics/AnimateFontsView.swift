//
//  AnimateFontsView.swift
//  SwiftUI Basics
//
//  Created by Marios Kanellopoulos on 6/5/26.
//

import SwiftUI

struct AnimateFontsView: View {
    @State private var largeFont = false
    
    var font: Font {
        largeFont ? .largeTitle : .caption
    }
    
    var body: some View {
        ZStack {
            Color
                .purple
                .opacity(0.7)
                .ignoresSafeArea()
            VStack {
                Spacer()
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, World!")
                    .font(font)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button {
                    withAnimation {
                        largeFont.toggle()
                    }
                } label: {
                    Text("Click Me")
                        .font(.title)
                        .fontWeight(.semibold)
                }
            }
            .padding()
        }
    }
}

#Preview {
    AnimateFontsView()
}
