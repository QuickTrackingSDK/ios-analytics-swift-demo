//
//  AnalyticsViewController.swift
//  UMAnalyticsSwiftDemo
//
//  Created by wangkai on 2019/9/12.
//  Copyright © 2019 wangkai. All rights reserved.
//

import UIKit

class AnalyticsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let eventBtn = UIButton(type:.custom)
        eventBtn.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:100, width:200, height:35)
        eventBtn.setTitle("event", for: .normal)
        eventBtn.setTitleColor(UIColor.black, for: .normal)
        eventBtn.layer.borderWidth = 2;
        
        eventBtn.layer.borderColor = UIColor.gray.cgColor;
        eventBtn.addTarget(self, action: #selector(eventClick), for: .touchUpInside)
        self.view.addSubview(eventBtn)
        
        let eventAttributesCount = UIButton(type:.custom)
        eventAttributesCount.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:150, width:200, height:35)
        eventAttributesCount.setTitle("eventAttributesCount", for: .normal)
        eventAttributesCount.setTitleColor(UIColor.black, for: .normal)
        eventAttributesCount.layer.borderWidth = 2;
        
        eventAttributesCount.layer.borderColor = UIColor.gray.cgColor;
        eventAttributesCount.addTarget(self, action: #selector(eventAttributesCountClick), for: .touchUpInside)
        self.view.addSubview(eventAttributesCount)
        
        let eventAttributes = UIButton(type:.custom)
        eventAttributes.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:200, width:200, height:35)
        eventAttributes.setTitle("eventAttributes", for: .normal)
        eventAttributes.setTitleColor(UIColor.black, for: .normal)
        eventAttributes.layer.borderWidth = 2;
        
        eventAttributes.layer.borderColor = UIColor.gray.cgColor;
        eventAttributes.addTarget(self, action: #selector(eventAttributesClick), for: .touchUpInside)
        self.view.addSubview(eventAttributes)
        
        let pageEvent = UIButton(type:.custom)
        pageEvent.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:250, width:200, height:35)
        pageEvent.setTitle("pageEvent", for: .normal)
        pageEvent.setTitleColor(UIColor.black, for: .normal)
        pageEvent.layer.borderWidth = 2;

        pageEvent.layer.borderColor = UIColor.gray.cgColor;
        pageEvent.addTarget(self, action: #selector(pageEventClick), for: .touchUpInside)
        self.view.addSubview(pageEvent)

        let eventDu = UIButton(type:.custom)
        eventDu.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:300, width:200, height:35)
        eventDu.setTitle("eventDu", for: .normal)
        eventDu.setTitleColor(UIColor.black, for: .normal)
        eventDu.layer.borderWidth = 2;

        eventDu.layer.borderColor = UIColor.gray.cgColor;
        eventDu.addTarget(self, action: #selector(eventDuClick), for: .touchUpInside)
        self.view.addSubview(eventDu)
        
        let beginPage = UIButton(type:.custom)
        beginPage.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:350, width:200, height:35)
        beginPage.setTitle("beginPage", for: .normal)
        beginPage.setTitleColor(UIColor.black, for: .normal)
        beginPage.layer.borderWidth = 2;
        
        beginPage.layer.borderColor = UIColor.gray.cgColor;
        beginPage.addTarget(self, action: #selector(beginPageClick), for: .touchUpInside)
        self.view.addSubview(beginPage)
        
        let endPage = UIButton(type:.custom)
        endPage.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:400, width:200, height:35)
        endPage.setTitle("endPage", for: .normal)
        endPage.setTitleColor(UIColor.black, for: .normal)
        endPage.layer.borderWidth = 2;
        
        endPage.layer.borderColor = UIColor.gray.cgColor;
        endPage.addTarget(self, action: #selector(endPageClick), for: .touchUpInside)
        self.view.addSubview(endPage)
        
        let signIn = UIButton(type:.custom)
        signIn.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:450, width:200, height:35)
        signIn.setTitle("signIn", for: .normal)
        signIn.setTitleColor(UIColor.black, for: .normal)
        signIn.layer.borderWidth = 2;
        
        signIn.layer.borderColor = UIColor.gray.cgColor;
        signIn.addTarget(self, action: #selector(signInClick), for: .touchUpInside)
        self.view.addSubview(signIn)
        
        let signOff = UIButton(type:.custom)
        signOff.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:500, width:200, height:35)
        signOff.setTitle("signOff", for: .normal)
        signOff.setTitleColor(UIColor.black, for: .normal)
        signOff.layer.borderWidth = 2;
        
        signOff.layer.borderColor = UIColor.gray.cgColor;
        signOff.addTarget(self, action: #selector(signOffClick), for: .touchUpInside)
        self.view.addSubview(signOff)
        
        let logPage = UIButton(type:.custom)
        logPage.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:550, width:200, height:35)
        logPage.setTitle("logPage", for: .normal)
        logPage.setTitleColor(UIColor.black, for: .normal)
        logPage.layer.borderWidth = 2;
        
        logPage.layer.borderColor = UIColor.gray.cgColor;
        logPage.addTarget(self, action: #selector(logPageClick), for: .touchUpInside)
        self.view.addSubview(logPage)
        
        let eventCounter = UIButton(type:.custom)
        eventCounter.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:600, width:200, height:35)
        eventCounter.setTitle("eventCounter", for: .normal)
        eventCounter.setTitleColor(UIColor.black, for: .normal)
        eventCounter.layer.borderWidth = 2;
        
        eventCounter.layer.borderColor = UIColor.gray.cgColor;
        eventCounter.addTarget(self, action: #selector(eventCounterClick), for: .touchUpInside)
        self.view.addSubview(eventCounter)
        
        let eventDurations = UIButton(type:.custom)
        eventDurations.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:650, width:200, height:35)
        eventDurations.setTitle("eventDurations", for: .normal)
        eventDurations.setTitleColor(UIColor.black, for: .normal)
        eventDurations.layer.borderWidth = 2;
        
        eventDurations.layer.borderColor = UIColor.gray.cgColor;
        eventDurations.addTarget(self, action: #selector(eventDurationsClick), for: .touchUpInside)
        self.view.addSubview(eventDurations)
        
        let registerGlobalProperties = UIButton(type:.custom)
        registerGlobalProperties.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:700, width:200, height:35)
        registerGlobalProperties.setTitle("registerGlobalProperty", for: .normal)
        registerGlobalProperties.setTitleColor(UIColor.black, for: .normal)
        registerGlobalProperties.layer.borderWidth = 2;

        registerGlobalProperties.layer.borderColor = UIColor.gray.cgColor;
        registerGlobalProperties.addTarget(self, action: #selector(registerGlobalPropertiesClick), for: .touchUpInside)
        self.view.addSubview(registerGlobalProperties)

        let unregisterGlobalProperty = UIButton(type:.custom)
        unregisterGlobalProperty.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:750, width:200, height:35)
        unregisterGlobalProperty.setTitle("unregisterGlobalProperty", for: .normal)
        unregisterGlobalProperty.setTitleColor(UIColor.black, for: .normal)
        unregisterGlobalProperty.layer.borderWidth = 2;

        unregisterGlobalProperty.layer.borderColor = UIColor.gray.cgColor;
        unregisterGlobalProperty.addTarget(self, action: #selector(unregisterGlobalPropertyClick), for: .touchUpInside)
        self.view.addSubview(unregisterGlobalProperty)

        let getGlobalProperties = UIButton(type:.custom)
        getGlobalProperties.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:800, width:200, height:35)
        getGlobalProperties.setTitle("getGlobalProperties", for: .normal)
        getGlobalProperties.setTitleColor(UIColor.black, for: .normal)
        getGlobalProperties.layer.borderWidth = 2;

        getGlobalProperties.layer.borderColor = UIColor.gray.cgColor;
        getGlobalProperties.addTarget(self, action: #selector(getGlobalPropertiesClick), for: .touchUpInside)
        self.view.addSubview(getGlobalProperties)

        let clearGlobalProperties = UIButton(type:.custom)
        clearGlobalProperties.frame = CGRect(x:UIScreen.main.bounds.size.width/2-100, y:850, width:200, height:35)
        clearGlobalProperties.setTitle("clearGlobalProperties", for: .normal)
        clearGlobalProperties.setTitleColor(UIColor.black, for: .normal)
        clearGlobalProperties.layer.borderWidth = 2;

        clearGlobalProperties.layer.borderColor = UIColor.gray.cgColor;
        clearGlobalProperties.addTarget(self, action: #selector(clearGlobalPropertiesClick), for: .touchUpInside)
        self.view.addSubview(clearGlobalProperties)
    }
    
    @objc func signInClick(){
        UMAnalyticsSwift.profileSignInWithPUID(puid: "umeng")
    }
    
    @objc func signOffClick(){
        UMAnalyticsSwift.profileSignOff()
    }
    
    
    @objc func pageEventClick(){
        let dict = ["name":"aa", "age":20, "blog":"xx.com"] as [String : Any];

        UMAnalyticsSwift.event(eventId: "event1", pageName: "pageC", attributes: dict)
    }

    @objc func eventDuClick(){
        UMAnalyticsSwift.event(eventId: "eventDu", durations: 23)
    }

    @objc func beginPageClick(){
        UMAnalyticsSwift.beginLogPageView(pageName: "pageA")
    }
    
    @objc func endPageClick(){
        UMAnalyticsSwift.endLogPageView(pageName: "pageA")
    }
    
    @objc func eventClick(){
        UMAnalyticsSwift.event(eventId: "eventA")
    }
    
    
    @objc func eventAttributesClick(){
        let dict = ["name":"aa", "age":20, "blog":"xx.com"] as [String : Any];
        UMAnalyticsSwift.event(eventId: "eventC", attributes: dict)
    }
    
    @objc func eventAttributesCountClick(){
        let dict = ["name":"aa", "age":20, "blog":"xx.com"] as [String : Any];
        UMAnalyticsSwift.event(eventId: "eventC", attributes: dict, counter: 22)
    }
    
    
    @objc func logPageClick(){
        UMAnalyticsSwift.logPageView(pageName: "PageA", seconds: 5000)
    }
    
    @objc func eventCounterClick(){
        let dict = ["name":"aa", "age":20, "blog":"xx.com"] as [String : Any];

        UMAnalyticsSwift.event(eventId: "eventCounter", attributes: dict, counter: 10)
    }
    
    @objc func eventDurationsClick(){
        let dict = ["name":"aa", "age":20, "blog":"xx.com"] as [String : Any];
        
        UMAnalyticsSwift.event(eventId: "eventDurations", attributes: dict, millisecond: 6000)
    }
    
    
    @objc func registerGlobalPropertiesClick(){
        let dict = ["PreKey":"PreVaule", "PreKey1":"PreVaule2"] as [String : Any];
        
        UMAnalyticsSwift.registerGlobalProperty(property: dict)
    }
    
    
    
    @objc func unregisterGlobalPropertyClick(){
        
        UMAnalyticsSwift.unregisterGlobalProperty(propertyName: "PreKey1")
    }
    @objc func getGlobalPropertiesClick(){
        
        print(UMAnalyticsSwift.getGlobalProperties())
        
    }
    
    @objc func clearGlobalPropertiesClick(){
        
        UMAnalyticsSwift.clearGlobalProperties()
    }
}

