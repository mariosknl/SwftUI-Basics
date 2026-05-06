// SwiftUI Basics
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.red, .purple, .green, .pink],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .opacity(0.8)
                .ignoresSafeArea()
            Text("SwiftUI Basics 1")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    ContentView()
}
