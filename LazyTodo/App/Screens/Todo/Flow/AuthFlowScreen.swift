import SwiftUI

enum AuthFlowRoute: Hashable {
    case register
}

struct AuthFlowScreen: View {
    let onComplete: () -> Void
    
    var body: some View {
        NavigationStack {
            LoginScreen(onLogin: onComplete)
                .navigationDestination(for: AuthFlowRoute.self) { route in
                    switch route {
                    case .register:
                        RegisterScreen(onRegister: onComplete)
                    }
                }
        }
    }
}
