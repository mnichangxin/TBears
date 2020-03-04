import MainTabScreen from '@views/mainTab/index'
import LoginScreen from '@views/login/index'
import InteractiveNotification from '@views/notice/interactiveNotification'
import ActivityList from '@views/notice/activityList'
import FriendsList from '@views/notice/friendsList'
import AddFriends from '@views/notice/addFriends'
import QrCode from '@views/qrCode'
import Complaint from '@views/complaint'
import Store from '@views/store'
import Config from '@views/config'
import StoreList from '@views/storeList'

export default {
    MainTab: {
        screen: MainTabScreen
    },
    Login: {
        screen: LoginScreen
    },
    InteractiveNotification: {
        screen: InteractiveNotification
    },
    ActivityList: {
        screen: ActivityList
    },
    FriendsList: {
        screen: FriendsList
    },
    AddFriends: {
        screen: AddFriends
    },
    QrCode:{
        screen:QrCode
    },
    Complaint:{
        screen:Complaint
    },
    Store:{
        screen:Store
    },
    StoreList:{
        screen:StoreList
    },
    Config:{
        screen:Config
    },
    Mine:{
        screen:StoreList
    }
}