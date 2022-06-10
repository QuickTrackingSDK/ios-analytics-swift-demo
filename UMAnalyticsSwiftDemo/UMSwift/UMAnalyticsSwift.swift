//
//  UMAnalyticsSwift.swift
//  swiftDemo
//
//  Created by wangkai on 2019/8/30.
//  Copyright © 2019 wangkai. All rights reserved.
//

import Foundation
import CoreLocation

class UMAnalyticsSwift: NSObject {
    
    
    //页面统计    
    /** 手动页面时长统计, 记录某个页面展示的时长.
     @param pageName 统计的页面名称.
     @param seconds 单位为秒，int型.
     @return void.
     */
    static func logPageView(pageName:String,seconds:Int){
        MobClick.logPageView(pageName, seconds:Int32(seconds));
    }
    
    /** 自动页面时长统计, 开始记录某个页面展示时长.
     使用方法：必须配对调用beginLogPageView:和endLogPageView:两个函数来完成自动统计，若只调用某一个函数不会生成有效数据。
     在该页面展示时调用beginLogPageView:，当退出该页面时调用endLogPageView:
     @param pageName 统计的页面名称.
     @return void.
     */
    static func beginLogPageView(pageName:String){
        MobClick.beginLogPageView(pageName);
    }
    
    /** 自动页面时长统计, 结束记录某个页面展示时长.
     使用方法：必须配对调用beginLogPageView:和endLogPageView:两个函数来完成自动统计，若只调用某一个函数不会生成有效数据。
     在该页面展示时调用beginLogPageView:，当退出该页面时调用endLogPageView:
     @param pageName 统计的页面名称.
     @return void.
     */
    static func endLogPageView(pageName:String){
        MobClick.endLogPageView(pageName);
    }
    
    //事件统计    
    /** 自定义事件,数量统计.
     使用前，请先到友盟App管理后台的设置->编辑自定义事件 中添加相应的事件ID，然后在工程中传入相应的事件ID
     
     @param  eventId 网站上注册的事件Id.
     @param  label 分类标签。不同的标签会分别进行统计，方便同一事件的不同标签的对比,为nil或空字符串时后台会生成和eventId同名的标签.
     @param  accumulation 累加值。为减少网络交互，可以自行对某一事件ID的某一分类标签进行累加，再传入次数作为参数。
     @return void.
     */
    static func event(eventId:String){
        MobClick.event(eventId);
    }
    
    /** 自定义事件,数量统计.
     使用前，请先到友盟App管理后台的设置->编辑自定义事件 中添加相应的事件ID，然后在工程中传入相应的事件ID
     */
    static func event(eventId:String,attributes:Dictionary<String, Any>){
        MobClick.event(eventId, attributes:attributes);
    }
    
    static func event(eventId:String,attributes:Dictionary<String, Any>,counter:Int){
        MobClick.event(eventId, attributes: attributes, counter: Int32(counter));
    }
    
    
    /** 自定义事件,时长统计.
     使用前，请先到友盟App管理后台的设置->编辑自定义事件 中添加相应的事件ID，然后在工程中传入相应的事件ID.
     */
    static func event(eventId:String,durations:Int){
        MobClick.event(eventId, durations: Int32(durations))
    }
    
   
    
    /** 自定义事件,时长统计.
     使用前，请先到友盟App管理后台的设置->编辑自定义事件 中添加相应的事件ID，然后在工程中传入相应的事件ID.
     */
    static func event(eventId:String,attributes:Dictionary<String, Any>,millisecond:Int){
        MobClick.event(eventId, attributes: attributes, durations: Int32(millisecond));
    }
    
    
    /** 自定义事件,自定义事件页面信息
     使用前，请先到友盟App管理后台的设置->编辑自定义事件 中添加相应的事件ID，然后在工程中传入相应的事件ID.
     */
    static func event(eventId:String,pageName:String){
        MobClick.event(eventId, pageName: pageName);
    }
    
    /** 自定义事件,自定义事件页面信息
     使用前，请先到友盟App管理后台的设置->编辑自定义事件 中添加相应的事件ID，然后在工程中传入相应的事件ID.
     */
    static func event(eventId:String,pageName:String,attributes:Dictionary<String, Any>){
        MobClick.event(eventId,pageName:pageName, attributes: attributes);
    }

    /** 自定义事件,自定义事件页面信息
     使用前，请先到友盟App管理后台的设置->编辑自定义事件 中添加相应的事件ID，然后在工程中传入相应的事件ID.
     */
    static func event(eventId:String,attributes:Dictionary<String, Any>,millisecond:Int,pageName:String){
        MobClick.event(eventId, attributes: attributes, counter: Int32(millisecond),pageName:pageName);
    }
    /** active user sign-in.
     使用sign-In函数后，如果结束该PUID的统计，需要调用sign-Off函数
     @param puid : user's ID
     @param provider : 不能以下划线"_"开头，使用大写字母和数字标识; 如果是上市公司，建议使用股票代码。
     @return void.
     */
    static func profileSignInWithPUID(puid:String){
        MobClick.profileSignIn(withPUID: puid);
    }
    static func profileSignInWithPUID(puid:String,provider:String){
        MobClick.profileSignIn(withPUID:puid, provider: provider);
    }
    
    /** active user sign-off.
     停止sign-in PUID的统计
     @return void.
     */
    static func profileSignOff(){
        MobClick.profileSignOff();
    }
    
    ///---------------------------------------------------------------------------------------
    /// @name 地理位置设置
    /// 需要链接 CoreLocation.framework 并且 #import <CoreLocation/CoreLocation.h>
    ///---------------------------------------------------------------------------------------
    
    /** 设置经纬度信息
     @param latitude 纬度.
     @param longitude 经度.
     @return void
     */
    static func setLatitude(latitude:Double,longitude:Double){
        MobClick.setLatitude(latitude, longitude: longitude);
    }
    

    ///---------------------------------------------------------------------------------------
    /// @name Utility函数
    ///---------------------------------------------------------------------------------------
    
    /** 判断设备是否越狱，依据是否存在apt和Cydia.app
     */
    static func isJailbroken() -> Bool{
        return MobClick.isJailbroken();
    }
    
    /** 判断App是否被破解
     */
    static func isPirated() -> Bool{
        return MobClick.isPirated();
    }
    
    /** 设置 app secret
     @param secret string
     @return void.
     */
    static func setSecret(secret:String){
        MobClick.setSecret(secret);
    }
    
    /**
     * 设置超级事件属性 键值对 会覆盖同名的key
     */
    static func registerSuperProperty(property:Dictionary<String, Any>)
    {
        MobClick.registerSuperProperty(property);
    }
    
    /**
     *
     * 删除指定超级事件属性
     @param key
     */
    static func unregisterSuperProperty(propertyName:String)
    {
        MobClick.unregisterSuperProperty(propertyName);
    }
    
    /**
     *
     * 获取指定超级事件属性
     @param key
     */
    static func getSuperProperty(propertyName:String) -> String
    {
        return  MobClick.getSuperProperty(propertyName)  ;
    }
    
    
    /**
     * 获取超级事件所有属性；如果不存在，则返回空。
     */
    static func getSuperProperties() -> Dictionary<String, Any>
    {
        return  MobClick.getSuperProperties() as! Dictionary<String, Any> ;
    }
    
    /**
     *清空所有超级事件属性。
     */
    static func clearProperties()
    {
        MobClick.clearSuperProperties();
    }
    
    
    /**
     * 设置全局事件属性 键值对 会覆盖同名的key
     */
    static func registerGlobalProperty(property:Dictionary<String, Any>)
    {
        MobClick.registerGlobalProperty(property);
    }
    
    /**
     *
     * 删除指定全局事件属性
     @param key
     */
    static func unregisterGlobalProperty(propertyName:String)
    {
        MobClick.unregisterGlobalProperty(propertyName);
    }
    
    /**
     *
     * 获取指定全局事件属性
     @param key
     */
    static func getGlobalProperty(propertyName:String) -> String
    {
        return  MobClick.getGlobalProperty(propertyName)  ;
    }
    
    
    /**
     * 获取全局事件所有属性；如果不存在，则返回空。
     */
    static func getGlobalProperties() -> Dictionary<String, Any>
    {
        return  MobClick.getGlobalProperties() as! Dictionary<String, Any> ;
    }
    
    /**
     *清空所有全局事件属性。
     */
    static func clearGlobalProperties()
    {
        MobClick.clearGlobalProperties();
    }
    
    /**
     * 设置关注事件是否首次触发,只关注eventList前五个合法eventID.只要已经保存五个,此接口无效
     */
    static func setFirstLaunchEvent(eventList:Array<String>)
    {
        MobClick.setFirstLaunchEvent(eventList);
    }
    
    /** 设置是否自动采集页面, 默认NO(不自动采集).
     @param value 设置为YES, umeng SDK 会将自动采集页面信息
     */
    static func setAutoPageEnabled(value:Bool)
    {
        MobClick.setAutoPageEnabled(value);
    }
    
    /**
     *集成测试。
     */
    static func handleUrl(url:URL) -> Bool{
        return MobClick.handle(url);
    }

    /** 设置是否自动采集点击事件, 默认NO(不自动采集).
     @param value 设置为YES, umeng SDK 会将自动采集点击事件
     */
    static func setAutoEventEnabled(value:Bool)
    {
        MobClick.setAutoEventEnabled(value);
    }
}
