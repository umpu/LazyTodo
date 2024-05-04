import SwiftUI

struct LoginScreen: View {
    @State private var login = ""
    @State private var password = ""
    
    let onLogin: () -> Void
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Login", text: $login)
                SecureField("Password", text: $password)
                Button("Enter", action: onLogin).buttonStyle(.borderedProminent)
                NavigationLink("Registration", value: AuthFlowRoute.register)
            }
            .padding()
        }
        .textFieldStyle(.roundedBorder)
        .navigationTitle("")
    }
}
