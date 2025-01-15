
import SwiftUI
import WhatsNewComponent

struct ContentView: View {
    var body: some View {
        List {
            CalendarButton()
            PhotosButton()
            VoiceMemosButton()
        }
    }
}

struct CalendarButton: View {
    @State private var isSheetPresented = false
    
    var body: some View {
        Button("Calendar") { 
            isSheetPresented = true
        }.sheet(isPresented: $isSheetPresented) {
            WhatsNewView(title: TestCalendar.title) {
                ForEach(TestCalendar.items) {
                    TestItemView(item: $0, tintColor: TestCalendar.tintColor)
                }
            } button: { 
                DefaultButton(
                    text: TestCalendar.continueButtonTitle, 
                    color: TestCalendar.tintColor,
                    action: {
                        isSheetPresented = false
                    }
                )
            }
        }
    }
}

struct PhotosButton: View {
    @State private var isSheetPresented = false
    
    var body: some View {
        Button("Photos") { 
            isSheetPresented = true
        }.sheet(isPresented: $isSheetPresented) { 
            WhatsNewView(title: TestPhotos.title) {
                ForEach(TestPhotos.items) {
                    TestItemView(item: $0, tintColor: TestPhotos.tintColor)
                }
            } button: { 
                DefaultButton(
                    text: TestPhotos.continueButtonTitle,
                    color: TestPhotos.tintColor,
                    action: {
                        isSheetPresented = false
                    }
                )
            }
        }
    }
}

struct VoiceMemosButton: View {
    @State private var isSheetPresented = false
    
    var body: some View {
        Button("Voice Memos") {
            isSheetPresented = true
        }.sheet(isPresented: $isSheetPresented) {
            WhatsNewView(title: TestVoiceMemos.title) { 
                ForEach(TestVoiceMemos.items) {
                    TestItemView(item: $0, tintColor: TestVoiceMemos.tintColor)
                }
            } button: { 
                DefaultButton(
                    text: TestVoiceMemos.continueButtonTitle,
                    color: TestVoiceMemos.tintColor,
                    action: {
                        isSheetPresented = false
                    }
                )
            }
        }
    }
}

// MARK: -

#Preview {
    ContentView()
}
