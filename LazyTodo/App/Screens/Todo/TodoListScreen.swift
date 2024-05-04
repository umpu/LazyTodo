import LoremIpsum
import SwiftUI

struct TodoListScreen: View {
    @State private var todos: [Todo]
    @State private var isNewTodoScreenPresented = false
    let date: Date
    
    init(date: Date) {
        self.date = date
        let todos = Self.generateSampleTodos(date: date)
        _todos = State(initialValue: todos)
    }
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(todos) { todo in
                    NavigationLink(value: MainFlowRoute.todoDetail(todo)) {
                        Text(todo.title)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    Divider()
                }
            }
            .padding()
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("", systemImage: "plus") {
                    isNewTodoScreenPresented = true
                }
            }
        }
        .sheet(isPresented: $isNewTodoScreenPresented) {
            NewTodoScreen { title, description in
                newTodo(title: title, description: description)
                isNewTodoScreenPresented = false
            }
                .presentationDragIndicator(.visible)
        }
    }
    
    private func newTodo(title: String, description: String) {
        let lastId = todos.max { $0.id < $1.id }?.id ?? 0
        let newId = lastId + 1
        let todo = Todo(
            id: newId,
            title: title,
            description: description,
            date: date)
        todos.append(todo)
    }
    
    private static func generateSampleTodos(date: Date) -> [Todo] {
        (1...9).map { number in
            Todo(id: number,
                 title: LoremIpsum.firstName + " " + LoremIpsum.lastName,
                 description: LoremIpsum.tweet,
                 date: LoremIpsum.date)
        }
    }
}
