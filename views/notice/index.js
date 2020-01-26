import React from 'react'
import { View, Text } from 'react-native'
import styles from '@styles/notice/index'

export default () => (
    <View>
        <View style={styles.header}>
            <View style={styles.headerLeft}></View>
            <View style={styles.headerTitle}>
                <Text style={styles.headerTitleText}>消息</Text>
            </View>
            <View style={styles.headerRight}>
                <Text style={styles.headerRightText}>添加好友</Text>
            </View>
        </View>
        <Text>Notice</Text>
    </View>
)