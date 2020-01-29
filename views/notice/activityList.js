/**
 * 活动列表
 */

import React from 'react'
import { View, Text, Image, FlatList } from 'react-native'
import Header from '@views/common/header'
import styles from '@styles/notice/activityList'

export default props => {
    const data = [{
        key: '1',
        title: '一起来团建',
        avatarUri: 'http://q4pas9fmo.bkt.clouddn.com/group-avatar.png',
        time: '2019-8-12',
        location: '北京市海淀区XXXXXXXX',
        participantsCount: 10,
        cost: 10
    }, {
        key: '2',
        title: '一起来团建',
        avatarUri: 'http://q4pas9fmo.bkt.clouddn.com/group-avatar.png',
        time: '2019-8-12',
        location: '北京市海淀区XXXXXXXX',
        participantsCount: 10,
        cost: 10
    }, {
        key: '3',
        title: '一起来团建',
        avatarUri: 'http://q4pas9fmo.bkt.clouddn.com/group-avatar.png',
        time: '2019-8-12',
        location: '北京市海淀区XXXXXXXX',
        participantsCount: 10,
        cost: 10
    }]
    const renderActivityListItem = data => (
        <View style={styles.activityListItem}>
            <View style={styles.activityListItemAvatarWrapper}>
                <Image
                    style={styles.activityListItemAvatar}
                    source={{ uri: data.item.avatarUri }} />
            </View>
            <View style={styles.activityListItemContent}>
                <Text style={styles.activityListItemTitle}>{data.item.title}</Text>
                <Text style={styles.activityListItemTime}><Text>活动时间：</Text>{data.item.time}</Text>
                <View>
                    <Text style={styles.activityListItemLocationText}>{data.item.location}</Text>
                </View>
                <View style={styles.activityListItemNumberWrapper}>
                    <View style={styles.activityListItemNumber}>
                        <Text style={styles.activityListItemNumberDes}>参与人数</Text>
                        <Text style={styles.activityListItemNumberCount}>{data.item.participantsCount}<Text>人</Text></Text>
                    </View>
                    <View style={styles.activityListItemNumberSplit}></View>
                    <View style={styles.activityListItemNumber}>
                        <Text style={styles.activityListItemNumberDes}>活动费用</Text>
                        <Text style={styles.activityListItemNumberCount}>{data.item.cost}<Text>元</Text></Text>
                    </View>
                </View>
                <View style={styles.activityDetailButton}>
                    <Text style={styles.activityDetailButtonText}>查看活动详情</Text>
                </View>
            </View>
        </View>
    )
    return (
        <View style={styles.root}>
            <Header { ...props } title="活动列表" />
            <View style={styles.bodyTop}>
                <View style={styles.tip}>
                    <Image
                        source={{ uri: 'http://q4pas9fmo.bkt.clouddn.com/tip.png' }}
                        style={styles.tipIcon} />
                    <Text style={styles.tipText}>此处只展示关系网内活动</Text>
                </View>
            </View>
            <View style={styles.activityListWrapper}>
                <FlatList 
                    style={styles.activityList}
                    data={data}
                    showsVerticalScrollIndicator={false}
                    renderItem={renderActivityListItem} />
            </View>
        </View>
    )
}