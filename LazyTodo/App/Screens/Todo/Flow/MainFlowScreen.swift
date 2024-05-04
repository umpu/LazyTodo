import SwiftUI

enum MainFlowRoute: Hashable {
    case todoDetail(Todo)
    case todoList(Date)
}

struct MainFlowScreen: View {
    var body: some View {
        TabView {
            TodayFlowScreen()
                .tabItem {
                    Label("Today", systemImage: "calendar")
                }
            
            HistoryFlowScreen()
                .tabItem {
                    Label("History", systemImage: "calendar")
                }
        }
    }
}

#Preview {
    MainFlowScreen()
}
