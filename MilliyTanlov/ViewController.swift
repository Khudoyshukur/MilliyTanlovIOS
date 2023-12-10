//
//  ViewController.swift
//  MilliyTanlov
//
//  Created by Xudoyshukur on 10/12/23.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.navigationDelegate = self

        // Load the desired URL
        if let url = URL(string: "https://milliytanlov.uz/") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
}

