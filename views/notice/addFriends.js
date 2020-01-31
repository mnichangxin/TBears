/**
 * 挖好友
 */

import React from 'react'
import { View, Text, Image, ScrollView, TextInput, FlatList } from 'react-native'
import Header from '@views/common/header'
import styles from '@styles/notice/addFriends'

export default props => {
    const data = [{
        key: '1',
        avatarUri: 'http://q4pas9fmo.bkt.clouddn.com/add-friends.png',
    }, {
        key: '2',
        avatarUri: 'http://q4pas9fmo.bkt.clouddn.com/group-avatar.png',
        nickname: '李二麻子'
    }, {
        key: '3',
        avatarUri: 'http://q4pas9fmo.bkt.clouddn.com/group-avatar.png',
        nickname: '李二麻子'
    }, {
        key: '4',
        avatarUri: 'http://q4pas9fmo.bkt.clouddn.com/group-avatar.png',
        nickname: '李二麻子'
    }, {
        key: '5',
        avatarUri: 'http://q4pas9fmo.bkt.clouddn.com/group-avatar.png',
        nickname: '李二麻子'
    }]
    const renderFriendsListItem = data => (
        <View style={styles.friendsListItemWrapper}>
            <View style={styles.friendsListItem}>
                <View style={styles.friendsListItemLeft}>
                    <Image
                        style={styles.friendsListItemAvatar}
                        source={{ uri: data.item.avatarUri }} />
                    <Text style={styles.friendsListItemNickname}>
                        { data.item.key === '1' ? '新的朋友' : data.item.nickname }
                    </Text>
                </View>
            </View>
        </View>
    )
    return (
        <View style={styles.root}>
            <Header { ...props } title="挖好友" />
            <ScrollView style={styles.addFriendsWrapper}>
                <View style={styles.addFriendsNav}>
                    <View style={styles.addFriendsSearchWrapper}>
                        <TextInput />
                    </View>
                    <View style={styles.addFriendsNavFeatures}>
                        <View style={[styles.addFriendsNavFeature, { borderBottomWidth: 1, borderBottomColor: '#f2f2f2' }]}>
                            <Text style={styles.addFriendsNavFeatureText}>扫一扫</Text>
                            <View></View>
                        </View>
                        <View style={styles.addFriendsNavFeature}>
                            <Text style={styles.addFriendsNavFeatureText}>手机联系人</Text>
                            <View></View>
                        </View>
                    </View>
                </View>
                {/* <FlatList 
                    style={styles.friendsList}
                    data={data}
                    showsVerticalScrollIndicator={false}
                    renderItem={renderFriendsListItem} /> */}
            </ScrollView>
        </View>
    )
}