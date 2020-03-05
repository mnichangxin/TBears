import React, { Component } from 'react'
import { View, Text, Image} from 'react-native'
import Header from '@views/common/header'
import styles from '@styles/editInfo'

const avatar = require('../../assets/mine/avatar.jpeg')
const camera = require('../../assets/mine/camera-icon.png')

export default class EditInfo extends Component {
    state = {
        text:''
    }
    render (){
        return (
            <View style={styles.editInfoWrap}>
                <Header title="编辑资料" left={null} />
                <View>
                    <View style={styles.avatarWrap}>
                        <Image source={avatar} style={styles.avatarItem}></Image>
                        <Image source={camera} style={styles.avatarCamera}></Image>
                    </View>
                    <View>编辑头像</View>
                    <View>更换封面</View>
                </View>
            </View>
        )
    }
}