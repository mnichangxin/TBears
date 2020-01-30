/**
 * 头部组件
 */

import React from 'react'
import { View, Text, Image, TouchableOpacity } from 'react-native'
import styles from '@styles/common/header'

export default props => (
    <View style={styles.headerContainer}>
        <View style={styles.header}>
            <View style={styles.headerLeft}>
                {
                    props.left || props.left === null 
                    ? props.left
                    : (
                        <TouchableOpacity
                            activeOpacity={.6}
                            onPress={() => props.navigation && props.navigation.goBack()}>
                            <Image
                                source={{ uri: 'http://q4pas9fmo.bkt.clouddn.com/goBack.png' }}
                                style={styles.headerGoBackIcon} />
                        </TouchableOpacity>
                    )
                }
            </View>
            <View style={styles.headerTitle}>
                <Text style={styles.headerTitleText}>{ props.title || '' }</Text>
            </View>
            <View style={styles.headerRight}>
                {
                    props.right && props.right
                }
            </View>
        </View>
    </View>
)