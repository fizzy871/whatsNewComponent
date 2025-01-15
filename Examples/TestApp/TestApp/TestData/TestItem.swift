import Foundation

struct TestItem: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let image: TestImage
}
