import SwiftUI

enum TestVoiceMemos {
    static let title = "What's New in\nVoice Memos"
    static let tintColor: Color = .blue
    static let items: [TestItem] = [
        .init(
            title: "Transcripts", 
            subtitle: "Automatically transcribe speech into text.", 
            image: .init(name: "quote.bubble", font: .system(size: 30, weight: .regular))
        ),
        .init(
            title: "Stereo Recording", 
            subtitle: "Add greater dimension to your recordings.", 
            image: .init(name: "waveform", font: .system(size: 30, weight: .regular))
        ),
        .init(
            title: "Save As", 
            subtitle: "Make edits and save to a new recording.", 
            image: .init(name: "plus.square.on.square", font: .system(size: 30, weight: .regular))
        )
    ]
    static let continueButtonTitle = "Continue"
}
