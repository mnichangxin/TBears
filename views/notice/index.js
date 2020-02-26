/**
 * 消息主页面
 */

import React from 'react'
import { View, Text, Image, TouchableHighlight, TouchableOpacity, NativeModules } from 'react-native'
import { SwipeListView } from 'react-native-swipe-list-view'
import { scaleSize } from '@utils/scaleUtil'
import Header from '@views/common/header'
import styles from '@styles/notice/index'

export default props => {
    const data = [{
        key: '1',
        name: '李二麻子',
        avatarUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/group-avatar.png', 
        overview: '你好你好你好你好你好你好你好你好',
        time: '9: 00',
        unreadCount: 1
    }, {
        key: '2',
        name: '一个群名',
        avatarUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/group-avatar.png', 
        overview: '你好你好你好你好你好',
        time: '9: 00',
        unreadCount: 0
    }, {
        key: '3',
        name: '新人助手',
        avatarUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/group-avatar.png', 
        overview: '你好你好你好你好你好',
        time: '9: 00',
        unreadCount: 0
    }, {
        key: '4',
        name: '新人助手',
        avatarUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/group-avatar.png', 
        overview: '你好你好你好你好你好',
        time: '9: 00',
        unreadCount: 0
    }, {
        key: '5',
        name: '新人助手',
        avatarUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/group-avatar.png', 
        overview: '你好你好你好你好你好',
        time: '9: 00',
        unreadCount: 0
    }, {
        key: '6',
        name: '新人助手',
        avatarUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/group-avatar.png', 
        overview: '你好你好你好你好你好',
        time: '9: 00',
        unreadCount: 0
    }, {
        key: '7',
        name: '新人助手',
        avatarUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/group-avatar.png', 
        overview: '你好你好你好你好你好',
        time: '9: 00',
        unreadCount: 0
    }, {
        key: '8',
        name: '新人助手',
        avatarUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/group-avatar.png', 
        overview: '你好你好你好你好你好',
        time: '9: 00',
        unreadCount: 0
    }, {
        key: '9',
        name: '新人助手',
        avatarUri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/group-avatar.png', 
        overview: '你好你好你好你好你好',
        time: '9: 00',
        unreadCount: 0
    }]

    const goTChat = () => {
        const RNBridge = NativeModules.RNBridge
        RNBridge.jumpNativePage({
            name: 'chat',
            params: null
        })
    }

    const NoticeTab = () => (
        <View style={styles.noticeTab}>
            <TouchableOpacity 
                activeOpacity={1} 
                onPress={() => props.navigation.navigate('InteractiveNotification')}>
                <View style={[styles.noticeTabItem, { backgroundColor: '#f36968' }]}>
                    <Image
                        source={{ uri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/interactive-notification.png' }}
                        style={styles.noticeTabItemIcon} />
                    <Text style={styles.noticeTabItemText}>互动通知</Text>
                </View>
            </TouchableOpacity>
            <TouchableOpacity 
                activeOpacity={1} 
                onPress={() => props.navigation.navigate('ActivityList')}>
                <View style={[styles.noticeTabItem, { backgroundColor: '#6ad8af' }]}>
                    <Image
                        source={{ uri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/activity-list.png' }}
                        style={styles.noticeTabItemIcon} />
                    <Text style={styles.noticeTabItemText}>活动列表</Text>
                </View>
            </TouchableOpacity>
            <TouchableOpacity 
                activeOpacity={1} 
                onPress={() => props.navigation.navigate('FriendsList')}>
                <View style={[styles.noticeTabItem, { backgroundColor: '#62a6fc' }]}>
                    <Image
                        source={{ uri: 'https://tbears-1300872647.cos.ap-beijing.myqcloud.com/friends-list.png' }}
                        style={styles.noticeTabItemIcon} />
                    <Text style={styles.noticeTabItemText}>好友列表</Text>
                </View>
            </TouchableOpacity>
        </View>
    )
    const renderNoticeListItem = data => (
        <TouchableOpacity
            style={styles.noticeListItemRowFrontWrapper}
            activeOpacity={1}
            onPress={goTChat} >
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
        </TouchableOpacity>
    )
    const renderNoticeHiddenItem = () => (
        <View style={styles.noticeListItemRowBack}>
            <TouchableHighlight style={[styles.backRightBtn, styles.backRightBtnToTop]}>
                <Text style={styles.backRightBtnText}>置顶</Text>
            </TouchableHighlight>
            <TouchableHighlight style={[styles.backRightBtn, styles.backRightBtnRead]}>
                <View>
                    <Text style={styles.backRightBtnText}>标为</Text>
                    <Text style={[styles.backRightBtnText, { marginTop: 5 }]}>已读</Text>
                </View>
            </TouchableHighlight>
            <TouchableHighlight style={[styles.backRightBtn, styles.backRightBtnDelete]}>
                <Text style={styles.backRightBtnText}>删除</Text>
            </TouchableHighlight>
        </View> 
    )
    const NoticeList = () => (
        <View style={styles.noticeList}>
            <SwipeListView
                style={styles.noticeListView}
                data={data}
                renderItem={renderNoticeListItem} 
                renderHiddenItem={renderNoticeHiddenItem}
                showsVerticalScrollIndicator={false}
                disableRightSwipe={true}
                leftOpenValue={scaleSize(300)}
                rightOpenValue={scaleSize(-550)} />
        </View>
    )
    return (
        <View style={styles.root}>
            <Header
                title="消息"
                left={null}
                right={
                    <TouchableOpacity 
                        activeOpacity={.6}
                        onPress={() => props.navigation.navigate('AddFriends')}>
                        <Text style={styles.headerRightText}>添加好友</Text>
                    </TouchableOpacity>
                } />
            <View style={styles.body}>
                <NoticeTab />
                <NoticeList />
            </View>
        </View>
    )
}