import React, { Component } from 'react'
import { View, Text, Image} from 'react-native'
import Header from '@views/common/header'
import styles from '@styles/config'
const arrow = require('../../assets/mine/arrow_right.png')

export default class Config extends Component {
    state = {
        text:''
    }
    render (){
        return (
            <View style={styles.configWrap}>
                <Header title="设置" left={null} />
                <View style={styles.configInner}>
                    <View style={styles.configItem}>
                        <Text style={styles.configItemText}>探熊介绍及反馈</Text>
                        <Image source={arrow} style={styles.configItemArrow}/>
                    </View>
                    <View style={styles.configItem}>
                        <Text style={styles.configItemText}>账号安全(手机号/密码/找回账号)</Text>
                        <Image source={arrow} style={styles.configItemArrow} />
                    </View>
                    <View style={styles.configItem}>
                        <Text style={styles.configItemText}>通知设置</Text>
                        <Image source={arrow}style={styles.configItemArrow} />
                    </View>
                    <View style={styles.configItem}>
                        <Text style={styles.configItemText}>隐私保护</Text>
                        <Image source={arrow} style={styles.configItemArrow} />
                    </View>
                    <View style={styles.configItem}>
                        <Text style={styles.configItemText}>通用</Text>
                        <Image source={arrow} style={styles.configItemArrow} />
                    </View>
                    <View style={styles.configItem}>
                        <Text style={styles.configItemText}>版本号</Text>
                        <Text style={styles.configItemDes}>V1.0.0</Text>
                    </View>
                    <Text style={styles.logoutBtn}>退出登录</Text>
                </View>
            </View>
        )
    }
}