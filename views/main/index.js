import React from 'react'
import { View, Text } from 'react-native'
import styles from '@styles/main/index'

export default () => (
    <View style={styles.root}>
        <View style={styles.tabContent}></View>
        <View style={styles.tabBar}>
            <View style={styles.tabBarItemWrapper}>
                <Text>首页</Text>
                <Text>擦肩</Text>
            </View>
            <View style={styles.tabBarItemWrapper}></View>
            <View style={styles.tabBarItemWrapper}>
                <Text>消息</Text>
                <Text>我的</Text>
            </View>
        </View>
    </View>
)