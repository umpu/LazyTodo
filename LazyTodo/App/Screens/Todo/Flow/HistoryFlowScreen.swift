import SwiftUI

struct HistoryFlowScreen: View {
    var body: some View {
        NavigationStack {
            DateListScreen()
                .navigationDestination(for: MainFlowRoute.self) { route in
                    switch route {
                    case .todoList(let date):
                        TodoListScreen(date: date)
                            .navigationTitle("\(date, format: .dateTime)")
                    case .todoDetail(let todo):
                        TodoDetailScreen(todo: todo)
                    }
                }
        }
    }
}
