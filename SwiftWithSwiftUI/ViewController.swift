//
//  ViewController.swift
//  SwiftWithSwiftUI
//
//  Created by Toseef on 1/20/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
    }

    @IBAction func loadSwiftUI(_ sender: Any) {

        let hostingView = UIHostingController(rootView: SwiftUIView(text: label.text ?? ""))
        hostingView.rootView.onCallDelegate = { text, rate in
            print("Called Delegate:\(text) and rate: \(rate)")
            self.label.text = text
            hostingView.removeFromParent()
            hostingView.view.removeFromSuperview()
        }
        hostingView.view.translatesAutoresizingMaskIntoConstraints = false
        hostingView.view.frame = CGRect(x: 16, y: 200, width: 300, height: 300)
        view.addSubview(hostingView.view)
        hostingView.view.center = view.center
        hostingView.view.backgroundColor = UIColor.systemPink
        // Then, add the child to the parent
        addChild(hostingView)
    }
    
}

