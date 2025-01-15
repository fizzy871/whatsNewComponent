import SwiftUI

public struct WhatsNewView<BodyContent: View, Button: View>: View {
    let title: String
    let titleFont: Font
    let titleColor: Color
    let bodyContent: BodyContent
    let button: Button
    
    public init(
        title: String,
        titleFont: Font = .whatsNew.title,
        titleColor: Color = .whatsNew.title,
        @ViewBuilder bodyContent: () -> BodyContent,
        @ViewBuilder button: () -> Button
    ) {
        self.title = title
        self.titleFont = titleFont
        self.titleColor = titleColor
        self.bodyContent = bodyContent()
        self.button = button()
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            Spacer().frame(height: 80)
            Text(title)
                .font(titleFont)
                .foregroundColor(titleColor)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            Spacer().frame(height: 32)
            ScrollView {
                bodyContent
            }.layoutPriority(1)
            Spacer().frame(height: 43)
            Spacer()
            button
                .frame(height: 50)
                .frame(maxWidth: .infinity)
            Spacer().frame(height: 50)
        }.padding(.horizontal, 24)
    }
}

// MARK: - Preview

struct WhatsNewView_Preview_Default: View {
    var body: some View {
        WhatsNewView(title: "Title") { 
            ParagraphView_Preview_Default(title: "Item 1")
            ParagraphView_Preview_Default(title: "Item 2")
            ParagraphView_Preview_Default(title: "Item 2")
        } button: {
            DefaultButton_Preview_Default()
        }
    }
}
#Preview("default") {
    WhatsNewView_Preview_Default()
}

struct WhatsNewView_Preview_Customized: View {
    var body: some View {
        WhatsNewView(
            title: "Title",
            titleFont: .system(size: 50, weight: .bold),
            titleColor: .orange
        ) { 
            ParagraphView_Preview_Customized(title: "Item 1")
            ParagraphView_Preview_Customized(title: "Item 2")
            ParagraphView_Preview_Customized(title: "Item 2")
        } button: {
            DefaultButton_Preview_Customized()
        }
    }
}
#Preview("customized") {
    WhatsNewView_Preview_Customized()
}
