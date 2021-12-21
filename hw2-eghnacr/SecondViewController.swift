//
//  SecondViewController.swift
//  hw2-eghnacr
//
//  Created by Egehan Acar on 21.12.2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnSubmitAction(_ sender: Any) {
        let name = tfName.text ?? ""
        NotificationCenter.default.post(name: .nameSubmitted, object: nil, userInfo: ["name": name])
        navigationController?.popViewController(animated: true)
    }

}

extension Notification.Name {
    static let nameSubmitted = Notification.Name(rawValue: "nameSubmitted")
}
