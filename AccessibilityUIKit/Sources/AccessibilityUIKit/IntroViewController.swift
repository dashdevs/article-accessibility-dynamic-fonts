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
    }

    @IBAction private func openListScreen() {
        let detailsViewController = DetailsViewController(nibName: "DetailsViewController", bundle: .module)
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
}
