//
//  ViewController.swift
//  UMAnalyticsSwiftDemo
//
//  Created by wangkai on 2019/9/5.
//  Copyright © 2019 wangkai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let analyticsBtn = UIButton(type:.custom)
        analyticsBtn.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:UIScreen.main.bounds.size.height/2-50, width:200, height:35)
        analyticsBtn.setTitle("Analytics", for: .normal)
        analyticsBtn.setTitleColor(UIColor.black, for: .normal)
        analyticsBtn.layer.borderWidth = 2;
        
        analyticsBtn.layer.borderColor = UIColor.gray.cgColor;
        analyticsBtn.addTarget(self, action: #selector(analyticsClick), for: .touchUpInside)
        self.view.addSubview(analyticsBtn)
        
        let webViewBtn = UIButton(type:.custom)
        webViewBtn.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:UIScreen.main.bounds.size.height/2+20, width:200, height:35)
        webViewBtn.setTitle("webView", for: .normal)
        webViewBtn.setTitleColor(UIColor.black, for: .normal)
        webViewBtn.layer.borderWidth = 2;
        
        webViewBtn.layer.borderColor = UIColor.gray.cgColor;
        webViewBtn.addTarget(self, action: #selector(webViewClick), for: .touchUpInside)
        self.view.addSubview(webViewBtn)
        

    }

 
    
    @objc func analyticsClick(){

        self.navigationController?.pushViewController(AnalyticsViewController(), animated: true)

    }
    
    @objc func webViewClick()
    {
        self.navigationController?.pushViewController(WebViewController(), animated: true)

    }
    
   
    
 
    
}

