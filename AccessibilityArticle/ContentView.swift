import AccessibilitySwiftUI
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("UIKit") {
                    IntroViewControllerRepresentable()
                }
                NavigationLink("SwiftUI") {
                    AccessibilitySwiftUI.buildIntroScreen()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }
}
