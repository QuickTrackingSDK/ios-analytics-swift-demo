//
//  UMSpmSwift.swift
//  swiftDemo
//
//  Created by wangkai on 2019/8/29.
//  Copyright © 2019 wangkai. All rights reserved.
//

import Foundation

class UMSpmSwift: NSObject {
    
    /**
     * @brief     更新当前的spm & pProperties.
     *
     * @param     curSPM        当前页面事件的spm
     * @param     pProperties   业务参数,kv对
     *
     * @warning                 调用说明:必须在pageDisAppear之前调用
     *
     *                          最佳位置:在pageDisAppear之前调用即可
     */
    static func updateCurSPM(curSPM:String){
        UMSpm.updateCurSPM(curSPM);
    }
    static func updateCurSPM(curSPM:String,properties:Dictionary<String, Any>){
        UMSpm.updateCurSPM(curSPM,properties: properties);
    }
    /**
     * @brief     更新页面业务参数.
     *
     * @param     pageName      页面名称,如Page_Detail
     * @param     pProperties   业务参数,kv对
     *
     * @warning                 调用说明:必须在pageDisAppear之前调用
     *
     *                          最佳位置:在pageDisAppear之前调用即可
     */
    static func updatePageProperties(pageName:String,properties:Dictionary<String, Any>){
        UMSpm.updatePageProperties(pageName,properties: properties);
    }


    /**
     * @brief                   更新下一个页面业务参数.
     *
     * @param     properties   传给下一个页面业务参数,kv对
     *
     * @warning                 调用说明:必须在下一个页面pageAppear之前调用,否则会携带错误
     *
     *                          最佳位置:必须在下一个页面pageAppear之前调用
     */
    static func updateNextPageProperties(properties:Dictionary<String, Any>){
        UMSpm.updateNextPageProperties(properties);
    }

    /**
     * @brief                   得到当前页面的spm.
     *
     * @warning                 调用说明:必须在当前页面pageAppear之后调用,否则会携带错误
     *
     *                          最佳位置:必须在当前页面pageAppear之后调用
     */
    static func getPageSpmCnt() -> String{
        return UMSpm.getPageSpmCnt();
    }
    
    /**
     * @brief                   得到当前页面的来源spm.
     *
     * @warning                 调用说明:必须在当前页面pageAppear之后调用,否则会携带错误
     *
     *                          最佳位置:必须在当前页面pageAppear之后调用
     */
    static func getPageSpmUrl() -> String{
        return UMSpm.getPageSpmUrl();
    }
    
    /**
     * @brief                   得到当前页面的来源的来源的spm.
     *
     * @warning                 调用说明:必须在当前页面pageAppear之后调用,否则会携带错误
     *
     *                          最佳位置:必须在当前页面pageAppear之后调用
     */
    static func getPageSpmPre() -> String{
        return UMSpm.getPageSpmPre();
    }
    
    /**
     * @brief                   得到当前页面的名称.
     *
     * @warning                 调用说明:必须在当前页面pageAppear之后调用,否则会携带错误
     *
     *                          最佳位置:必须在当前页面pageAppear之后调用
     */
    static func getPageName() -> String{
        return UMSpm.getPageName();
    }
    
    /**
     * @brief                   得到当前页面的来源名称.
     *
     * @warning                 调用说明:必须在当前页面pageAppear之后调用,否则会携带错误
     *
     *                          最佳位置:必须在当前页面pageAppear之后调用
     */
    static func getRefPageName() -> String{
        return UMSpm.getRefPageName();
    }

    /**
     * @brief                   得到当前Url.
     *
     * @warning                 调用说明:必须在当前页面pageAppear之后调用,否则会携带错误
     *
     *                          最佳位置:必须在当前页面pageAppear之后调用
     */
    static func getUrl() -> String{
        return UMSpm.getUrl();
    }

    /**
     * @brief                   得到当前的来源Url.
     *
     * @warning                 调用说明:必须在当前页面pageAppear之后调用,否则会携带错误
     *
     *                          最佳位置:必须在当前页面pageAppear之后调用
     */
    static func getRefUrl() -> String{
        return UMSpm.getRefUrl();
    }
    
    /**
     * @brief                   跳过当前页面统计.
     *
     * @param     PageObject          容器对象（自动获取页面时使用，默认手动可填nil）
     * @param     pageName          页面名称（手动设置页面时使用，当设置自动获取页面时可填nil）
     * @warning                 建议在设置页面之前调用此接口，调用后设置的native页面将不发送数据
     *
     */
    static func skipMe(PageObject:Any,pageName:String){
        UMSpmHybrid.skipMe(PageObject,pageName: pageName);
    }
    /**
     * @brief                   H5桥接接口
     *
     * @param     WebView          WKWebView对象
     * @warning
     *
     */
    static func attach(WebView:Any){
        UMSpmHybrid.attach(WebView);
    }
}
