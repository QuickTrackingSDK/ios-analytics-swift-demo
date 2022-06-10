//
//  WebViewController.swift
//  UMAnalyticsSwiftDemo
//
//  Created by k w on 2022/6/10.
//  Copyright © 2022 wangkai. All rights reserved.
//

import Foundation
import WebKit
import UIKit

class WebViewController: UIViewController {
   
    var webview = WKWebView()
    override func viewDidLoad() {
      super.viewDidLoad()
        //创建wkwebview


        let webview = WKWebView(frame: CGRect(x:0, y:0, width:self.view.frame.width, height:self.view.frame.height))
        //创建网址
        let myURL = try! String(contentsOfFile: Bundle.main.path(forResource: "index", ofType: "html")!, encoding: String.Encoding.utf8)

        webview.loadHTMLString(myURL, baseURL: Bundle.main.resourceURL)
        UMSpmSwift.attach(WebView: webview)
        //添加wkwebview
        self.view.addSubview(webview)
       
               
    }
}


