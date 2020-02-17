import React from 'react'
import { View, Image, Text,ImageBackground } from 'react-native'
import Header from '@views/common/header'
import styles from '@styles/qrCode'

const imgUrl = {
    scanIcon: require('../../assets/mine/QR-icon.png'),
    arrowIcon: require('../../assets/mine/QR-icon.png'),
    qrCodeBg:require('../../assets/mine/QR-code-bg.png'),
    avatar: require('../../assets/mine/avatar.jpeg'),
    downloadIcon:require('../../assets/mine/download-icon.png'),
    shareIcon: require('../../assets/mine/share-icon.png')
}
export default () => (
    <View style={styles.pages}>
        <Header title="我的二维码" left={null} />
        <View style={styles.qrItemBox} >
            <View style={styles.qrItem}>
                <Image suorce={imgUrl.scanIcon} style={styles.scanIcon}/>
                <Text style={styles.scanText}>扫一扫</Text>
            </View>
            <View style={styles.qrItem}>
                <Text style={styles.arrowText}>探熊加我好友</Text>
                <Image suorce={imgUrl.arrowIcon} style={styles.arrowIcon}/>
            </View>
        </View>
        <View style={styles.qrCodeWrapper}>
            <ImageBackground source={imgUrl.qrCodeBg} style={styles.qrBg}>
                <Image source={imgUrl.avatar} style={styles.avatar}></Image> 
                <Text style={styles.userName}>钱罗罗</Text> 
                <View style={styles.qrCode}></View> 
            </ImageBackground> 
        </View>
        <View style={styles.operationBox}>
            <View style={styles.operationItem}>
                <Image source={imgUrl.downloadIcon} style={styles.btnIcon}></Image>
                <Text style={styles.btnText}>下载</Text>
            </View> 
            <View style={styles.operationItem}>
                <Image source={imgUrl.shareIcon} style={styles.btnIcon}></Image>
                <Text style={styles.btnText}>分享</Text>
            </View> 
        </View>
        <Text style={styles.slogan}>走，带你去看花花世界</Text> 
    </View>
)