import Foundation

struct Todo: Identifiable, Hashable {
    let id: Int
    let title: String
    let description: String
    let date: Date
}
