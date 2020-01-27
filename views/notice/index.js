import React from 'react'
import { View, Text, Image, TouchableHighlight, TouchableOpacity } from 'react-native'
import { SwipeListView } from 'react-native-swipe-list-view'
import styles from '@styles/notice/index'

export default () => {
    const data = [{
        key: '1',
        name: '李二麻子',
        avatarUri: 'http://q4pas9fmo.bkt.clouddn.com/group-avatar.png', 
        overview: '你好你好你好你好你好',
        time: '9: 00',
        unreadCount: 1
    }, {
        key: '2',
        name: '一个群名',
        avatarUri: 'http://q4pas9fmo.bkt.clouddn.com/group-avatar.png', 
        overview: '你好你好你好你好你好',
        time: '9: 00',
        unreadCount: 0
    }, {
        key: '3',
        name: '新人助手',
        avatarUri: 'http://q4pas9fmo.bkt.clouddn.com/group-avatar.png', 
        overview: '你好你好你好你好你好',
        time: '9: 00',
        unreadCount: 0
    }]
    const Header = () => (
        <View style={styles.header}>
            <View style={styles.headerLeft}></View>
            <View style={styles.headerTitle}>
                <Text style={styles.headerTitleText}>消息</Text>
            </View>
            <View style={styles.headerRight}>
                <Text style={styles.headerRightText}>添加好友</Text>
            </View>
        </View>
    )
    const NoticeTab = () => (
        <View style={styles.noticeTab}>
            <View style={[styles.noticeTabItem, { backgroundColor: '#f36968' }]}>
                <Image
                    source={{ uri: 'http://q4pas9fmo.bkt.clouddn.com/interactive-notification.png' }}
                    style={styles.noticeTabItemIcon} />
                <Text style={styles.noticeTabItemText}>互动通知</Text>
            </View>
            <View style={[styles.noticeTabItem, { backgroundColor: '#6ad8af' }]}>
                <Image
                    source={{ uri: 'http://q4pas9fmo.bkt.clouddn.com/activity-list.png' }}
                    style={styles.noticeTabItemIcon} />
                <Text style={styles.noticeTabItemText}>活动列表</Text>
            </View>
            <View style={[styles.noticeTabItem, { backgroundColor: '#62a6fc' }]}>
                <Image
                    source={{ uri: 'http://q4pas9fmo.bkt.clouddn.com/friends-list.png' }}
                    style={styles.noticeTabItemIcon} />
                <Text style={styles.noticeTabItemText}>好友列表</Text>
            </View>
        </View>
    )
    const renderNoticeListItem = data => (
        <TouchableHighlight style={styles.noticeListItemRowFrontWrapper} >
            <View style={styles.noticeListItemRowFront}>
                <View style={styles.noticeListItemFrontLeft}>
                    <Image 
                        source={{ uri: data.item.avatarUri }}
                        style={styles.noticeListItemAvatar} />
                    <View style={styles.noticeListItemHint}>
                        <Text style={styles.noticeListItemName}>{ data.item.name }</Text>
                        <Text style={styles.noticeListItemOverview}>{ data.item.overview }</Text>
                    </View>
                </View>
                <View style={styles.noticeListItemFrontRight}>
                    <Text style={styles.noticeListItemTime}>{ data.item.time }</Text>
                    {
                        data.item.unreadCount > 0 
                        ?
                        <View style={styles.noticeListItemUreadCount}>
                            <Text style={styles.noticeListItemUreadCountNumber}>{ data.item.unreadCount }</Text>
                        </View>
                        :
                        <View style={[styles.noticeListItemUreadCount, { backgroundColor: '#ffffff' }]}></View>
                    }
                </View>  
            </View>
        </TouchableHighlight>
    )
    const renderNoticeHiddenItem = () => (
        <View style={styles.noticeListItemRowBack}>
            <TouchableOpacity 
                style={[styles.backRightBtn, styles.backRightBtnLeft]}>
                <Text>置顶</Text>
            </TouchableOpacity>
            <TouchableOpacity
                style={[styles.backRightBtn, styles.backRightBtnRight]}>
                <Text>删除</Text>
            </TouchableOpacity>
        </View> 
    )
    const NoticeList = () => (
        <View style={styles.noticeList}>
            <SwipeListView
                data={data}
                renderItem={renderNoticeListItem} 
                // renderHiddenItem={renderNoticeHiddenItem}
                disableRightSwipe={true}
                leftOpenValue={75}
                rightOpenValue={-150} />
        </View>
    )
    return (
        <View style={styles.root}>
            <Header />
            <View style={styles.body}>
                <NoticeTab />
                <NoticeList />
            </View>
        </View>
    )
}