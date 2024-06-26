import SwiftUI

struct TodayFlowScreen: View {
    var body: some View {
        NavigationStack {
            TodoListScreen(date: .now)
                .navigationTitle("Today")
                .navigationDestination(for: MainFlowRoute.self) { route in
                    switch route {
                    case .todoDetail(let todo):
                        TodoDetailScreen(todo: todo)
                    case .todoList(let date):
                        TodoListScreen(date: date)
                    }
                }
        }
    }
}
