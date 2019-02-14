# DataStore
## swfit DataStore 可以在项目中任何位置方便的使用任何数据,且代码直接不会出现混乱的互相引用

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

//启动时注册数据:

registerDataProvider(UserInfo.Create())         //用户信息
registerDataProvider(SetttingInfo.Create())     //环境信息
registerDataProvider(PhotoLibary.Create())      //照片和相册数据信息


//需要时在任何位置取数据:
let userInfo = DataStore.instance.DataProvider(type: UserInfo.self)

```
