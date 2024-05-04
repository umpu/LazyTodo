import SwiftUI

struct TodoDetailScreen: View {
    let todo: Todo
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(todo.title)
                    .font(.title)
                Text(todo.description)
                
                Text(todo.date, format: .dateTime)
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .padding()
        }
        .navigationTitle("Важное дело №\(todo.id)")
    }
}

#Preview {
    TodoDetailScreen(todo: Todo(id: 1, title: "Картошка", description: "Почистить картох чтобы появилась вторая строка побольше", date: .now))
}
