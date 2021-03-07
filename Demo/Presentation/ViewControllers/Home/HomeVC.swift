import UIKit

internal final class HomeVC: UIViewController {

    internal var presenter: HomePresenter!

    @IBOutlet private weak var accountsButton: UIButton!

    internal override func viewDidLoad() {
        super.viewDidLoad()
        self.configureButtons()
    }

    @IBAction private func accountsPressed() {
        self.presenter.accountsPressed()
    }

    private func configureButtons() {
        let buttonsAndTitles: [(UIButton, String)] = [
            (self.accountsButton, "Accounts"),
        ]
        buttonsAndTitles.forEach { button, title in
            button.setTitle(title, for: .normal)
        }
    }
}
