//
//  ViewController.swift
//  Swift iOS web hybrid template
//
//  Created by Willson Smith on 2015-11-20.
//  Copyright © 2015 Willson Smith. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    var webView: WKWebView?
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSBundle.mainBundle().URLForResource("index", withExtension:"html");
        //let request = NSURLRequest(URL: url!);
        self.webView!.loadFileURL(url!, allowingReadAccessToURL: url!);

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

