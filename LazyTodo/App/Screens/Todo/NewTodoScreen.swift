import SwiftUI

struct NewTodoScreen: View {
    @State private var title = ""
    @State private var description = ""
    let onSave: (String, String) -> Void
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Title", text: $title)
                TextField("Description", text: $description, axis: .vertical)
                Button("Save") {
                    onSave(title, description)
                }
                .buttonStyle(.borderedProminent)
            }
            .textFieldStyle(.roundedBorder)
            .padding()
        }
    }
}
