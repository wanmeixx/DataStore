//
//  DataStore.swift
//  DataStore
//
//  Created by 彭鑫 on 2019/2/14.
//  Copyright © 2019 PengXin. All rights reserved.
//

import Foundation

/// 数据中心
class DataStore  {
    var providers:[DataProvider]!
    private init()
    {
        initialize()
    }
    static var instance = DataStore()
    
    private func initialize(){
        providers = []
//        registerDataProvider(UserInfo.Create())         //用户信息
//        registerDataProvider(SetttingInfo.Create())     //环境信息
//        registerDataProvider(PhotoLibary.Create())      //照片和相册数据信息
    }
    
    
    /// 注册数据
    ///
    /// - Parameter dp: 数据类
    func registerDataProvider(_ dp:DataProvider){
        providers.append(dp)
    }
    
    
    
    ///获取数据
    ///调用方式:  DataStore.instance.DataProvider(SetttingInfo.self)!
    ///
    /// - Parameter type: 类型
    /// - Returns: 实体
    func DataProvider<T:DataProvider>(type:T.Type)->T{
        for i in providers{
            if i is T{
                return i as! T
            }
        }
        assert(false, "DataStore中的\(T.self)没初始化")
    }
}
