import SwiftUI

enum TodayFlowRoute: Hashable {
    case todoDetail(Todo)
}

struct TodayFlowScreen: View {
    var body: some View {
        NavigationStack {
            TodoListScreen(date: .now)
                .navigationDestination(for: TodayFlowRoute.self) { route in
                    switch route {
                    case .todoDetail(let todo):
                        TodoDetailScreen(todo: todo)
                    }
                }
        }
    }
}

#Preview {
    TodayFlowScreen()
}
