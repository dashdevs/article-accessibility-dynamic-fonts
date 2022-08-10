@testable import AccessibilitySwiftUI
import AccessibilitySnapshot
import SnapshotTesting
import SwiftUI
import XCTest

class SwiftUISnapshotTests: XCTestCase {
    func test_intro() {
        let introView = IntroView()
        let hostingController = UIHostingController(rootView: introView)
        hostingController.view.frame.size = CGSize(width: 375, height: 667)
        assertSnapshot(matching: hostingController, as: .accessibilityImage)
    }
    
    func test_details() {
        let introView = DetailsView()
        let hostingController = UIHostingController(rootView: introView)
        let navigationController = UINavigationController(rootViewController: hostingController)
        assertSnapshot(matching: navigationController, as: .accessibilityImage)
    }
}
