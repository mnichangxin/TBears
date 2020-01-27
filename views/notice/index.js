import React from 'react'
import { View, Text, Image } from 'react-native'
import styles from '@styles/notice/index'

export default () => (
    <View style={styles.root}>
        <View style={styles.header}>
            <View style={styles.headerLeft}></View>
            <View style={styles.headerTitle}>
                <Text style={styles.headerTitleText}>消息</Text>
            </View>
            <View style={styles.headerRight}>
                <Text style={styles.headerRightText}>添加好友</Text>
            </View>
        </View>
        <View style={styles.body}>
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
        </View>
    </View>
)