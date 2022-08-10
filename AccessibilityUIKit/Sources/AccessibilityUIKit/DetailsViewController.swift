import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "DetailsViewControllerCell", bundle: .module)
        tableView.register(nib, forCellReuseIdentifier: "DetailsViewControllerCell")
        title = "Details"
    }
}

extension DetailsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailsViewControllerCell", for: indexPath)
        if let cell = cell as? DetailsViewControllerCell {
            let title = "Title \(indexPath.row)"
            let subtitle = "Subtitle \(indexPath.row)"
            let isOn = indexPath.row % 2 == 0
            cell.titleLabel.text = title
            cell.subtitleLabel.text = subtitle
            cell.switcher.isOn = isOn
            cell.titleLabel.isAccessibilityElement = false
            cell.subtitleLabel.isAccessibilityElement = false
            cell.switcher.isAccessibilityElement = false
            cell.isAccessibilityElement = true
            cell.accessibilityLabel = title + " " + subtitle + " " + (isOn ? "On" : "Off")
        }
        return cell
    }
}
