import SwiftUI

enum TestCalendar {
    static let title = "What's New\nin Calendar"
    static let tintColor: Color = .red
    static let items: [TestItem] = [
        .init(
            title: "Scheduled Reminders", 
            subtitle: "View and create scheduled reminders in calendar. View your day with all the things you need to get done.", 
            image: .init(name: "checklist", font: .system(size: 29, weight: .light))
        ),
        .init(
            title: "Customizable Month View", 
            subtitle: "Pinch to customize your view on month view to make it easier to see your month at a glance.", 
            image: .init(name: "calendar", font: .system(size: 32, weight: .light))
        ),
        .init(
            title: "Suggested Events and Locations", 
            subtitle: "Add events like hotel bookings found in Mail, Messages, and Safari. Calendar will also suggest locations based on your past events.", 
            image: .init(name: "envelope", font: .system(size: 27, weight: .light))
        ),
        .init(
            title: "Location", 
            subtitle: "Calendar uses your location to suggest nearby locations and update travel time accuracy.", 
            image: .init(name: "location", font: .system(size: 32, weight: .light))
        )
    ]
    static let continueButtonTitle = "Continue"
}
