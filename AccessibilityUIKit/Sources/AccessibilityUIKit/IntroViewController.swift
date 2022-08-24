import UIKit

class IntroViewController: UIViewController {
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isAccessibilityElement = true
        imageView.accessibilityLabel = "Accessibility image"
        imageView.accessibilityHint = "Accessibility icon on the Intro screen"
        if let font = UIFont(name: "Roboto-Regular", size: 28) {
            label.font = UIFontMetrics(forTextStyle: .title1).scaledFont(for: font, maximumPointSize: 38)
            label.adjustsFontForContentSizeCategory = true
        } else {
            assertionFailure("Failed to load Roboto-Regular font!")
        }
        if let font = UIFont(name: "Roboto-Regular", size: 17) {
            let scaledFont = UIFontMetrics(forTextStyle: .body).scaledFont(for: font)
            let title = NSAttributedString(
                string: "Open List Screen New Title",
                attributes: [.font: scaledFont]
            )
            button.setAttributedTitle(title, for: .normal)
        } else {
            assertionFailure("Failed to load Roboto-Regular font!")
        }
    }

    @IBAction private func openListScreen() {
        let detailsViewController = DetailsViewController(nibName: "DetailsViewController", bundle: .module)
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
}
