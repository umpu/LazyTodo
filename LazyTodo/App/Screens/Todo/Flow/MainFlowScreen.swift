import SwiftUI

struct MainFlowScreen: View {
    var body: some View {
        TabView {
            Text("Сегодня")
                .tabItem {
                    Label("Сегодня", systemImage: "calendar")
                }
            
            Text("История")
                .tabItem {
                    Label("История", systemImage: "calendar")
                }
        }
    }
}
