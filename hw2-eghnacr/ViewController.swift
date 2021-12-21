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
        notificationCenter.addObserver(self, selector: #selector(self.nameSubmitted(_:)), name: .nameSubmitted, object: nil)
    }

    @objc func nameSubmitted(_ notification: Notification) {
        guard let name = notification.userInfo?["name"] as? String else { return
        }
        lblName.text = name
    }

    @IBAction func btnShowAction(_ sender: Any) {
    }

}

