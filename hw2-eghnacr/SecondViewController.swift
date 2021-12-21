//
//  SecondViewController.swift
//  hw2-eghnacr
//
//  Created by Egehan Acar on 21.12.2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    weak var backgroundDelegate: BackgroundDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnSubmitAction(_ sender: Any) {
        postNotificationNameSubmitted()
        backgroundDelegate.doBackground { view in
            view.backgroundColor = .random
        }
        navigationController?.popViewController(animated: true)
    }

    private func postNotificationNameSubmitted() {
        guard let name = tfName.text else { return }
        NotificationCenter.default.post(name: .nameSubmitted, object: nil, userInfo: ["name": name])
    }
    
}



