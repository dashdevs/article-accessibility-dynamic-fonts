import AccessibilityUIKit
import SwiftUI

struct IntroViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        return AccessibilityUIKit.buildIntroScreen()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
