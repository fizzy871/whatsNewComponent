import SwiftUI
import WhatsNewComponent

struct TestItemView: View {
    let item: TestItem
    let tintColor: Color
    
    var body: some View {
        ParagraphView(
            title: item.title,  
            subtitle: item.subtitle) { 
                Image(systemName: item.image.name)
                    .font(item.image.font)
                    .foregroundColor(tintColor)
            }
    }
}
