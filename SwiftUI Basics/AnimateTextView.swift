import SwiftUI

struct AnimateTextView: View {
    var offset: CGSize {
        CGSize(width: 0, height: togglePosition ? 400 : 0)
    }
    
    @State private var togglePosition = false
    var color: Color {
        togglePosition ? .red : .blue
    }
    var font: Font {
        togglePosition ? .headline : .title
    }
    var rotate: CGFloat {
        togglePosition ? 0 : 360
    }
    var bgColor: Color {
        togglePosition ? .black.opacity(0.85) : .gray.opacity(0.3)
    }
    var text: String {
        togglePosition ? "Hello World!" : "γεια σου κόσμε"
    }
    
    var body: some View {
        ZStack {
            bgColor
                .ignoresSafeArea()
            VStack {
                Text(text)
                    .font(font)
                    .fontWeight(.semibold)
                    .rotationEffect(Angle(degrees: rotate))
                    .offset(offset)
                    .foregroundStyle(color)
                
                
                Spacer()
                
                Button {
                    //                withAnimation(.bouncy(duration: 0.5)) {
                    //                withAnimation(.easeInOut(duration: 1.2)) {
                    withAnimation(
                        .spring(
                            response: 0.55,
                            dampingFraction: 0.825,
                            blendDuration: 0
                        )
                    ) {
                        togglePosition.toggle()
                    }
                } label: {
                    Text("Animate")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

#Preview {
    AnimateTextView()
}
