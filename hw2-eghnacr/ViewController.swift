//
//  ViewController.swift
//  hw2-eghnacr
//
//  Created by Egehan Acar on 21.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(self.handleNotificationNameSubmitted(_:)), name: .nameSubmitted, object: nil)
    }

    @objc func handleNotificationNameSubmitted(_ notification: Notification) {
        guard let name = notification.userInfo?["name"] as? String else { return }
        lblName.text = name
    }

    @IBAction func btnChangeColorAction(_ sender: Any) {
        performSegue(withIdentifier: "toSecond", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! SecondViewController
        secondVC.backgroundDelegate = self
    }

}

extension ViewController: BackgroundDelegate {
    func doBackground(_ handler: (UIView) -> Void) {
        handler(self.view)
    }
}

