import SwiftUI

public struct DefaultButton: View {
    let text: String
    let color: Color
    let font: Font
    let textColor: Color
    let cornerRadius: CGFloat
    let action: () -> Void
    
    public init(
        text: String,
        color: Color = .whatsNew.button, 
        font: Font = .whatsNew.button,
        textColor: Color = .whatsNew.buttonText,
        cornerRadius: CGFloat = 15,
        action: @escaping () -> Void
    ) {
        self.text = text
        self.color = color
        self.font = font
        self.textColor = textColor
        self.cornerRadius = cornerRadius
        self.action = action
    }
    
    public var body: some View {
        Button(text) {
            action()
        }.buttonStyle(Style(color: color, font: font, textColor: textColor, cornerRadius: cornerRadius))
    }
}

extension DefaultButton {
    struct Style: ButtonStyle {
        let color: Color
        let font: Font
        let textColor: Color
        let cornerRadius: CGFloat
        
        public func makeBody(configuration: Configuration) -> some View {
            ZStack {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .foregroundColor(color)
                    .frame(height: 50)
                configuration.label
                    .font(font)
                    .foregroundColor(textColor)
                    .padding()
            }.opacity(configuration.isPressed ? 0.8 : 1.0)
        }
    }
}

// MARK: - Preview

struct DefaultButton_Preview_Default: View {
    var body: some View {
        DefaultButton(text: "Continue") { 
            
        }.padding()
    }
}
#Preview("default") {
    DefaultButton_Preview_Default()
}

struct DefaultButton_Preview_Customized: View {
    var body: some View {
        DefaultButton(
            text: "Continue",
            color: .orange,
            font: .system(size: 12, weight: .thin),
            textColor: .blue,
            cornerRadius: 4
        ) { 
            
        }.padding()
    }
}
#Preview("customized") {
    DefaultButton_Preview_Customized()
}
