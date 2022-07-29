import UIKit

class IntroViewController: UIViewController {
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var button: UIButton!

    @IBAction private func openListScreen() {
        let detailsViewController = DetailsViewController(nibName: "DetailsViewController", bundle: .module)
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
}
