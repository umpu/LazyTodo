import SwiftUI

struct DateListScreen: View {
    let dates = (0...7).map { Date(timeIntervalSinceNow: Double(-86400 * $0)) }
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(dates, id: \.self) { date in
                    NavigationLink(value: MainFlowRoute.todoList(date)) {
                        Text(date, format: .dateTime.day().month().year())
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    Divider()
                }
            }
            .padding()
        }
        .navigationTitle("History")
    }
}

#Preview {
    DateListScreen()
}
