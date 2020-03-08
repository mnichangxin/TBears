import React, { Component } from 'react'
import { View, Text, Image} from 'react-native'
import Header from '@views/common/header'
import styles from '@styles/editInfo'

const avatar = require('../../assets/mine/avatar.jpeg')
const camera = require('../../assets/mine/camera-icon.png')
const arrow = require('../../assets/mine/arrow_right.png')
const tbears = require('../../assets/mine/tbears.png')

export default class EditInfo extends Component {
    state = {
        text:''
    }
    render (){
        return (
            <View style={styles.editInfoWrap}>
                <Header title="编辑资料" left={null} />
                <View style={styles.editInfoMain}>
                    <View style={styles.avatarWrap}>
                        <View style={styles.avatarItemWrap}>
                            <Image source={avatar} style={styles.avatarItem}></Image>
                            <Image source={camera} style={styles.avatarCamera}></Image>
                        </View>
                    </View>
                    <Text style={styles.avatarEdit}>编辑头像</Text>
                    <View style={styles.avatarCoverWrap}>
                        <View style={styles.avatarCoverBtn}>
                            <Text style={styles.avatarCover}>更换封面</Text>
                        </View>
                    </View>
                </View>
                <View style={styles.infoFormWrap}>
                    <View style={styles.infoFormItem}>
                        <Text style={styles.formItemTitle}>修改昵称</Text>
                    </View>
                    <View style={styles.infoFormItem}>
                        <Text style={styles.formItemTitle}>常驻地</Text>
                    </View>
                    <View style={styles.infoFormItem}>
                        <Text style={styles.formItemTitle}>生日</Text>
                        <Image source={arrow} style={styles.arrow}/>
                    </View>
                </View>
                <View style={styles.chatWrap}>
                    <Image source={tbears} style={styles.tbears}/>
                    <View style={styles.tbearsChat}>
                        <Text style={styles.tbearsChatText}>你喜欢什么呢，可以选出来告诉小熊吗？这样方便好友找你组团活动哦</Text>
                    </View>
                </View>
                <View style={styles.hobbyWrap}>
                    <View style={styles.hobbyList}>
                        <Text style={styles.hobbyItem}>+健身</Text>
                        <Text style={styles.hobbyItem}>+健身</Text>
                        <Text style={styles.hobbyItem}>健身</Text>
                        <Text style={styles.hobbyItem}>+健身</Text>
                        <Text style={styles.hobbyItem}>+健身</Text>
                        <Text style={styles.hobbyItem}>健身</Text>
                        <Text style={styles.hobbyItem}>+健身</Text>
                        <Text style={styles.hobbyItem}>+健身</Text>
                        <Text style={styles.hobbyItem}>+健身</Text>
                        <Text style={styles.hobbyItem}>健身</Text>
                        <Text style={styles.hobbyItem}>+健身</Text>
                        <Text style={styles.hobbyItem}>+健身</Text>
                    </View>
                    <View style={styles.hobbyAddBtn}>
                        <Text  style={styles.hobbyAddBtnText}>手动添加更多</Text>
                        <Image source={arrow} style={styles.arrow}/>
                    </View>
                </View>
            </View>
        )
    }
}