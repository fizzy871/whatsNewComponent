import SwiftUI

enum TestPhotos {
    static let title = "What's New in Photos"
    static let tintColor: Color = .blue
    static let items: [TestItem] = [
        .init(
            title: "All-New Design", 
            subtitle: "Find your photos and videos faster with automatic organization and a familiar grid layout.", 
            image: .init(name: "circle.hexagonpath", font: .system(size: 30, weight: .light))
        ),
        .init(
            title: "New Collections", 
            subtitle: "Browse your library by recent days and your favorite groups of people, trips, and more.", 
            image: .init(name: "person.2.crop.square.stack", font: .system(size: 30, weight: .regular))
        ),
        .init(
            title: "Fully Customizable", 
            subtitle: "Organize the Photos app by reordering collections and pinning items for easy access.", 
            image: .init(name: "arrow.trianglehead.swap", font: .system(size: 30, weight: .regular))
        ),
        .init(
            title: "Search, Clean Up, & Create", 
            subtitle: "With Apple Intelligence, search for just about anything, remove visual distractions with a tap, and create the memories you want to see.", 
            image: .init(name: "apple.intelligence", font: .system(size: 30, weight: .regular))
        )
    ]
    static let continueButtonTitle = "Continue"
}
