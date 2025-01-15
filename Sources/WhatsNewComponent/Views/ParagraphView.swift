import SwiftUI

public struct ParagraphView<Icon: View>: View {
    let title: String
    let titleFont: Font
    let titleColor: Color
    let subtitle: String
    let subtitleFont: Font
    let subtitleColor: Color
    let icon: Icon
    
    public init(
        title: String,
        titleFont: Font = .whatsNew.itemTitle,
        titleColor: Color = .whatsNew.itemTitle,
        subtitle: String,
        subtitleFont: Font = .whatsNew.itemSubtitle,
        subtitleColor: Color = .whatsNew.itemSubtitle, 
        @ViewBuilder icon: () -> Icon
    ) {
        self.title = title
        self.titleFont = titleFont
        self.titleColor = titleColor
        self.subtitle = subtitle
        self.subtitleFont = subtitleFont
        self.subtitleColor = subtitleColor
        self.icon = icon()
    }
    
    public var body: some View {
        HStack {
            ZStack {
                Color.clear
                icon
            }.frame(width: 60)
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(titleFont)
                    .foregroundColor(titleColor)
                Text(subtitle)
                    .font(subtitleFont)
                    .foregroundColor(subtitleColor)
            }
            Spacer()
            Spacer().frame(width: 5)
        }
    }
}

// MARK: - Preview

struct ParagraphView_Preview_Default: View {
    let title: String
    init(title: String = "Title") { self.title = title }
    var body: some View {
        ParagraphView(
            title: title, 
            subtitle: "Subtitle",
            icon: { 
                Image(systemName: "calendar")
                    .foregroundColor(.red)
            }
        )
    }
}
#Preview("default") {
    VStack {
        Spacer()
        ParagraphView_Preview_Default()
        Spacer()
    }.padding(.horizontal, 42)
}

struct ParagraphView_Preview_Customized: View {
    let title: String
    init(title: String = "Title") { self.title = title }
    var body: some View {
        ParagraphView(
            title: title,
            titleFont: .system(size: 24, weight: .bold),
            titleColor: .blue,
            subtitle: "Subtitle",
            subtitleFont: .system(size: 17),
            subtitleColor: .orange,
            icon: { 
                Image(systemName: "calendar")
                    .font(.system(size: 40, weight: .light))
                    .foregroundColor(.blue)
            }
        )
    }
}
#Preview("customized") {
    VStack {
        Spacer()
        ParagraphView_Preview_Customized()
        Spacer()
    }.padding(.horizontal, 42)
}
