@testable import AccessibilityUIKit
import AccessibilitySnapshot
import SnapshotTesting
import XCTest

class UIKitSnapshotTests: XCTestCase {
    func test_intro() {
        let introViewController = IntroViewController(nibName: "IntroViewController", bundle: .module)
        assertSnapshot(matching: introViewController, as: .accessibilityImage)
    }
    
    func test_details() {
        let detailsViewController = DetailsViewController(nibName: "DetailsViewController", bundle: .module)
        let navigationController = UINavigationController(rootViewController: detailsViewController)
        assertSnapshot(matching: navigationController, as: .accessibilityImage)
    }
}
