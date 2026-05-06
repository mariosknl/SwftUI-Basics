import SwiftUI

struct RowItemView: View {
    let person: Person
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 3) {
                Text(person.name.capitalized)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                Text(person.hobby.capitalized)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.orange)
            }
           Spacer()
            if let hobbyImage = person.hobbyImage {
                Image(
                    systemName: hobbyImage
                )
                .foregroundColor(.red)
                .padding()
                .background(Circle().stroke(.red))
            }
        }
        .padding()
        .background(Color.black)
        .cornerRadius(10)
    }
}

#Preview {
    RowItemView(person: .init(
        name: "Bert",
        hobby: "baseball",
        hobbyImage: "figure.baseball"
    ))
    .padding()
}
