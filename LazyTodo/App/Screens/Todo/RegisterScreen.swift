import SwiftUI

struct RegisterScreen: View {
    @State private var login = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    let onRegister: () -> Void
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Login", text: $login)
                TextField("Email", text: $email)
                SecureField("Password", text: $password)
                SecureField("Confirm password", text: $confirmPassword)
                Button("Registration", action: onRegister)
                    .buttonStyle(.borderedProminent)
            }
            .padding()
        }
        .textFieldStyle(.roundedBorder)
        .navigationTitle("Registration")
    }
}
