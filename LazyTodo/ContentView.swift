<<<<<<< Updated upstream:LazyTodo/ContentView.swift
//
//  ContentView.swift
//  LazyTodo
//
//  Created by Sonoma on 5/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
=======
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
            Todo(
                id: number,
                title: "Задача №\(number)",
                description: "Очент важная задача №\(number), которую сделать",
                date: date
            )
        }
>>>>>>> Stashed changes:LazyTodo/App/Screens/Todo/TodoListScreen.swift
    }
}

#Preview {
<<<<<<< Updated upstream:LazyTodo/ContentView.swift
    ContentView()
=======
    TodoListScreen(date: .now)
>>>>>>> Stashed changes:LazyTodo/App/Screens/Todo/TodoListScreen.swift
}
