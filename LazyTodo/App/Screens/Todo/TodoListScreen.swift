import SwiftUI

struct TodoListScreen: View {
    @State private var todos: [Todo]
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
                    NavigationLink(value: TodayFlowRoute.todoDetail(todo)) {
                        Text(todo.title)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    Divider()
                }
            }
            .padding()
        }
        .navigationTitle("Сегодня")
    }
    
    private static func generateSampleTodos(date: Date) -> [Todo] {
        (1...9).map { number in
            Todo(id: number,
                 title: "Задача №\(number)",
                 description: "Очень важная задача №\(number), которую нужно точно сделать",
                 date: date)
        }
    }
}
