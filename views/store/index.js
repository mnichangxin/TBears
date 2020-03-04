import React, { Component } from 'react'
import { View,Text } from 'react-native'
import Header from '@views/common/header'
import styles from '@styles/store'

export default class Store extends Component {
    state = {
        text:''
    }
    render (){
        return (
            <View style={styles.storeWrap}>
                <Header title="仓库" left={null} />
                <View style={styles.storeCountWrap}>
                    {/* 圆角盒子 */}
                    <View style={styles.storeCountBox}>
                        {/* 上层金额盒子 */}
                        <View style={styles.storeCountNum}>
                            {/* 左右余额和待入账 */}
                            <View style={styles.storeCountItem}>
                                {/* 数额 */}
                                <View style={styles.storeNumber}>
                                    <Text style={styles.storeMoney}>1,200.0</Text>
                                    <Text style={styles.storeYuan}>元</Text>
                                </View>
                                {/* 名称 */}
                                <Text style={styles.storeNumberTitle}>钱庄余额</Text>
                            </View>
                            <View style={styles.storeCountItem}>
                                <View style={styles.storeNumber}>
                                    <Text style={styles.storeMoney}>1,200.0</Text>
                                    <Text style={styles.storeYuan}>元</Text>
                                </View>
                                <Text style={styles.storeNumberTitle}>待入账</Text>
                            </View>
                            {/* </View>、按钮盒子 */}
                        </View>
                        <View style={styles.storeCountBtnBox}>
                            <Text style={styles.storeCountBtnItem}>充值</Text>
                            <Text style={styles.storeCountBtnItem}>体现</Text>
                        </View>
                    </View>
                </View>
                <View style={styles.storeTipsWrap}>
                    <Text style={styles.storeTipsTitle}>温馨提示：</Text>
                    <Text style={styles.storeTipsPoint}>1.我是活动参与者：</Text>
                    <Text style={styles.storeTipsDes}>若活动方原因导致活动未举行，可在两个工作日投诉，申请退款哦</Text>
                    <Text style={styles.storeTipsPoint}>1.我是活动发布者：</Text>
                    <Text style={styles.storeTipsDes}>发布的活动按时举行，则活动费用会在三个工作日内到账</Text>
                </View>
            </View>
        ) 
    }   
}