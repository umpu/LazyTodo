import SwiftUI

struct TodoDetailScreen: View {
    let todo: Todo
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
//                Text(todo.title)
//                    .font(.title)
                Text(todo.description)
                
                Text(todo.date, format: .dateTime)
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .padding()
        }
        .navigationTitle(todo.title)
    }
}
