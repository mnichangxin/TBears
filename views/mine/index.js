/**
 *  我的
 */

import React from 'react'
import { View, Image, Text,ImageBackground } from 'react-native'
import Header from '@views/common/header'
import styles from '@styles/mine'
const imageUrl = {
    configIcon:require('../../assets/mine/download-icon.png'),
    avatarBg:require('../../assets/mine/avatar-bg.png'),
    avatar:require('../../assets/mine/avatar.jpeg'),
    sexIcon:require('../../assets/mine/QR-icon.png'),
    netIcon:require('../../assets/mine/QR-icon.png'),
    hobbyIcon:require('../../assets/mine/bulb.png'),
    locationIcon:require('../../assets/mine/bulb.png'),
    QRCodeIcon:require('../../assets/mine/QR-icon.png'),
    EditIcon:require('../../assets/mine/edit.png'),
    done:require('../../assets/mine/undone-icon.png'),
    wareHouse:require('../../assets/mine/warehouse-icon.png'),
    unDone:require('../../assets/mine/undone-icon.png'),
}

export default () => (
    <View>
        <Header title="我的" left={null} />
        <ImageBackground style={styles.persionalTab} source={imageUrl.avatar}>
            <View style={styles.bgaWrapper}>
                <View style={styles.settingBox}>
                    <Image source={imageUrl.configIcon}  style={styles.configIcon}/>
                    <Text style={styles.configFont}>设置</Text>
                </View>
                <View style={styles.avatarOutter}>
                    <View style={styles.avatarWrapper}>
                        <Image source={imageUrl.avatar} style={styles.avatarInner}/>
                    </View>
                </View>
                <View style={styles.userBox}>
                    <Text style={styles.userName}>王二麻子</Text>
                    <Image source={imageUrl.sexIcon}  style={styles.userSex}/> 
                </View>
                <View style={styles.releationNet}>
                    <Text style={styles.netPerson}>关系网人数：</Text>
                    <Image source={imageUrl.netIcon}  style={styles.netIcon}/> 
                    <Text style={styles.netPersonNum}>8979</Text>
                </View>
                <View style={styles.hobbyWrapper}>
                    <View style={styles.hobbyInner}>
                        <Image source={imageUrl.hobbyIcon} style={styles.hobbyIcon}></Image>
                        <Text style={styles.hobbyItem}>篮球</Text>
                        <Text style={styles.hobbyItem}>火锅</Text>
                        <Text style={styles.hobbyItem}>爬山</Text>
                        <Text style={styles.hobbyItem}>Party</Text>
                        <Text style={styles.hobbyItem}>足疗</Text>
                        <Text style={styles.hobbyItem}>游泳</Text>
                    </View>
                </View>
                <View style={styles.userProfile}>
                    <Image source={imageUrl.locationIcon} style={styles.locationIcon}/>
                    <Text style={styles.location}>【北京】</Text>
                    <Text style={styles.profileText}>钱罗罗能写完，能学会ReactNative,能升职加薪，能买房买车，以后再也不用写写代码了</Text>
                </View>
                <View style={styles.operationBox}>
                    <View style={[styles.operationBtn,styles.leftBtn]}>
                        <Image source={imageUrl.QRCodeIcon} style={styles.btnIcon}></Image>
                        <Text style={styles.btnText}>二维码</Text>
                    </View>
                    <View style={styles.operationBtn}>
                        <Image source={imageUrl.EditIcon} style={styles.btnIcon}></Image>
                        <Text style={styles.btnText}>编辑资料</Text>
                    </View>
                </View>
            </View>
        </ImageBackground>
        <View style={styles.activityBox}>
            <View style={styles.activityInner}>
                <View style={styles.activityImage}>
                    <Image source={imageUrl.done} style={styles.activityIcon}></Image>
                </View>
                <Text style={styles.activityText}>已完成</Text>
            </View>
            <View style={styles.activityInner}>
                <View style={styles.activityImage}>
                    <Image source={imageUrl.wareHouse} style={styles.activityIcon}></Image>
                </View>
                <Text style={styles.activityText}>仓库</Text>
            </View>
            <View style={styles.activityInner}>
                <View style={styles.activityImage}>
                    <Image source={imageUrl.unDone} style={styles.activityIcon}></Image>
                </View>
                <Text style={styles.activityText}>未完成</Text>
            </View>
        </View>
        <View style={styles.lineSpace}></View>
        <View style={styles.tabWrapper}>
            <View style={styles.tabHeader}>
                <View style={styles.tabItem}>
                    <Text style={[styles.tabText,styles.tabTextActive]}>活动</Text>
                    <View style={styles.tabBar}></View>
                </View>
                <View style={styles.tabItem}>
                    <Text style={styles.tabText}>动态</Text>
                </View>
            </View>
        </View>
    </View>
)