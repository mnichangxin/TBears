import HomeScreen from '@views/home/index'
import MeetScreen from '@views/meet/index'
import NoticeScreen from '@views/notice/index'
import MineScreen from '@views/mine/index'

export default [{
    name: 'Home',
    label: '首页',
    iconInactiveUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/home-inactive.png',
    iconActiveUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/home-active.png',
    screen: HomeScreen
}, {
    name: 'Meet',
    label: '擦肩',
    iconInactiveUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/meet-inactive.png',
    iconActiveUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/meet-active.png',
    screen: MeetScreen
}, {
    name: 'Publish',
    label: null,
    iconInactiveUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/publish.png',
    iconActiveUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/publish.png',
    screen: null
}, {
    name: 'Notice',
    label: '消息',
    iconInactiveUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/notice-inactive.png',
    iconActiveUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/notice-active.png',
    screen: NoticeScreen
}, {
    name: 'Mine',
    label: '我的',
    iconInactiveUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/mine-inactive.png',
    iconActiveUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/mine-active.png',
    screen: MineScreen
}]