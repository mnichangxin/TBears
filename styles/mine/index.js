import { StyleSheet } from 'react-native'
import { scaleSize, scaleFont } from '@utils/scaleUtil'

export default StyleSheet.create({
    persionalTab:{},
    bgaWrapper:{
        width:'100%',
        height:scaleSize(1157),
        padding:scaleSize(54),
        backgroundColor:'rgba(0,0,0,.5)',
    },
    settingBox:{
        margin:scaleSize(56),
        height:scaleSize(48),
        width:scaleSize(140),
        position:'absolute',
        right:0,
        display:'flex',
        flexDirection:'row'
    },
    configIcon:{
        width:scaleSize(48),
        height:scaleSize(48),
        marginRight:scaleSize(12),
    },
    configFont:{
        fontSize:scaleFont(39),
        color:"#fff"
    },
    avatarOutter:{
        display:'flex',
        justifyContent:'center',
        alignItems:'center',
    },
    avatarWrapper:{
        width:scaleSize(300),
        height:scaleSize(300),
        borderRadius:scaleSize(150),
        backgroundColor:'#fff',
        marginTop:scaleSize(109),
        display:'flex',
        justifyContent:'center',
        alignItems:'center'
    },
    avatarInner:{
        width:scaleSize(264),
        height:scaleSize(264),
        borderRadius:scaleSize(132)
    },
    userBox:{
        display:'flex',
        flexDirection:'row',
        justifyContent:'center',
        alignItems:'center',
        marginTop:scaleSize(30),
        height:scaleSize(92)
    },
    userName:{
        fontSize:scaleFont(66),
        fontWeight:'bold',
        marginRight:scaleSize(8),
        color:'#fff'
    },
    userSex:{
        width:scaleSize(40),
        height:scaleSize(40),
        lineHeight:scaleSize(92),
        color:'#fff'
    },
    releationNet:{
        color:'#FFF',
        display:'flex',
        flexDirection:'row',
        alignItems:'center',
        justifyContent:'center',
        marginTop:scaleSize(13),
        height:scaleSize(50)
    },
    netPerson:{
        fontSize:scaleFont(36),
        color:'#fff'
    },
    netPersonNum:{
        fontSize:scaleFont(42),
        color:'#fff'
    },
    netIcon:{
        width:scaleSize(46),
        height:scaleSize(46)
    },
    hobbyWrapper:{
        display:'flex',
        justifyContent:'center'
    },
    hobbyInner:{
        width:scaleSize(810),
        height:scaleSize(80),
        borderRadius:scaleSize(40),
        borderWidth:scaleSize(3),
        borderColor:'#c2c2c2',
        display:'flex',
        flexDirection:'row',
        justifyContent:'space-between',
        paddingLeft:scaleSize(56),
        paddingRight:scaleSize(56),
        backgroundColor:'rgba(204,204,204,.23)',
        marginTop:scaleSize(42)
    },
    hobbyIcon:{
        width:scaleSize(60),
        height:scaleSize(60),
        marginTop:scaleSize(10)
    },
    hobbyItem:{
        fontSize:scaleFont(32),
        opacity:0.78,
        color:'#fff',
        lineHeight:scaleSize(80)
    },
    userProfile:{
        marginTop:scaleSize(50),
        paddingLeft:scaleSize(80),
        paddingRight:scaleSize(80),
        display:'flex',
        flexDirection:'row',
        flexWrap:'wrap'
    },
    locationIcon:{
        width:scaleSize(42),
        height:scaleSize(42)
    },
    location:{
        fontSize:scaleFont(34),
        color:'#fff'
    },
    profileText:{
        fontSize:scaleFont(36),
        color:'#fff'
    },
    operationBox:{
        marginTop:scaleSize(54),
        height:scaleSize(76),
        display:'flex',
        flexDirection:'row',
        justifyContent:'center'
    },
    operationBtn:{
        width:scaleSize(243),
        height:scaleSize(76),
        backgroundColor:'#fff',
        fontSize:scaleFont(36),
        color:'#ccc',
        borderRadius:scaleSize(38),
        display:'flex',
        flexDirection:'row',
        justifyContent:'center'
    },
    btnIcon:{
        width:scaleSize(32),
        height:scaleSize(32),
        marginTop:scaleSize(22)
    },
    btnText:{
        fontSize:scaleFont(36),
        color:'#333',
        lineHeight:scaleSize(76)
    },
    leftBtn:{
        marginRight:scaleSize(85)
    },
    activityBox:{
        paddingTop:scaleSize(55),
        paddingBottom:scaleSize(55),
        paddingLeft:scaleSize(115),
        paddingRight:scaleSize(115),
        display:'flex',
        flexDirection:'row',
        justifyContent:'space-between',
        marginBottom:scaleSize(24)
    },
    activityInner:{
        width:scaleSize(151)
    },
    activityImage:{
        height:scaleSize(151),
        display:'flex',
        alignItems:'center',
        justifyContent:'center',
        borderRadius:scaleSize(75.5),
        backgroundColor:'#f1f1f1',
        marginBottom:scaleSize(12)
    },
    activityIcon:{
        height:scaleSize(90),
        width:scaleSize(90)
    },
    activityText:{
        color:'#333',
        fontSize:scaleFont(42),
        textAlign:'center'
    },
    lineSpace:{
        height:scaleSize(24),
        backgroundColor:'#f2f2f2'
    },
    tabWrapper:{

    },
    tabHeader:{
        marginTop:scaleSize(68),
        paddingLeft:scaleSize(357),
        paddingRight:scaleSize(357),
        display:'flex',
        flexDirection:'row',
        justifyContent:'space-between'
    },
    tabItem:{
    },
    tabText:{
        fontSize:scaleFont(42),
        color:'#999'
    },
    tabTextActive:{
        fontSize:scaleFont(48),
        color:'#564f5f'
    },
    tabBar:{
        width:scaleSize(50),
        height:scaleSize(4),
        borderRadius:scaleSize(2),
        backgroundColor:'#564f5f',
        marginTop:scaleSize(10)
    }
})