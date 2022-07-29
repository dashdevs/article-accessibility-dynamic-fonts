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
            cell.titleLabel.text = "Title \(indexPath.row)"
            cell.subtitleLabel.text = "Subtitle \(indexPath.row)"
            cell.switcher.isOn = indexPath.row % 2 == 0
        }
        return cell
    }
}
