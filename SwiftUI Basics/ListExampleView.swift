
import SwiftUI

struct ListExampleView: View {
    let people: [Person] = [
        .init(
            name: "Bert",
            hobby: "baseball",
            hobbyImage: "figure.baseball"
        ),
        .init(
            name: "Berny",
            hobby: "Sky dives",
            hobbyImage: nil
        ),
        .init(
            name: "Big Bird",
            hobby: "Cricket",
            hobbyImage: "figure.cricket"
        ),
        .init(
            name: "Cookie",
            hobby: "skateboard",
            hobbyImage: nil
        )
    ]
    
    var body: some View {
        List {
            ForEach(people) { person in
                RowItemView(person: person)
                    .listRowSeparator(.hidden)
            }
        }
    }
}

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let hobby: String
    let hobbyImage: String?
}

#Preview {
    ListExampleView()
}
