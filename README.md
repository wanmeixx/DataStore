# DataStore
swfit DataStore

```Swift
///用户信息
class UserInfo : DataProvider{
    private override init(){}
    static func Create()->UserInfo{
        let userInfo = UserInfo()
        userInfo.initiailize()
        return userInfo
    }
}

//注册数据:

registerDataProvider(UserInfo.Create())         //用户信息
registerDataProvider(SetttingInfo.Create())     //环境信息
registerDataProvider(PhotoLibary.Create())      //照片和相册数据信息


//取数据:
let userInfo = DataStore.instance.DataProvider(type: UserInfo.self)

```
