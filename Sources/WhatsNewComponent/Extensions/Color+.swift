import SwiftUI

extension Color {
    public enum whatsNew {
        public static var title: Color { .init("text", bundle: .module) }
        public static var itemTitle: Color { .init("text", bundle: .module) }
        public static var itemSubtitle: Color { .gray }
        public static var button: Color { .red }
        public static var buttonText: Color { .white }
    } 
}
