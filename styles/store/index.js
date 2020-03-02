import { StyleSheet } from 'react-native'
import { scaleSize, scaleFont } from '@utils/scaleUtil'

export default StyleSheet.create({
    storeWrap:{

    },
    storeCountWrap:{
        display:'flex',
        flexDirection:'row',
        justifyContent:'center',
        marginTop:scaleSize(54),
        marginBottom:scaleSize(184)
    },
    storeCountBox:{
        width:'100%'
    },
    storeCountNum:{
        display:'flex',
        flexDirection:'row',
        justifyContent:'center'
    },
    storeCountItem:{
        flex:1,
    },
    storeNumber:{
        display:'flex',
        flexDirection:'row',
        justifyContent:'center',
        marginBottom:scaleSize(39),
    },
    storeMoney:{
        fontSize:scaleFont(60),
        color:'#333'
    },
    storeYuan:{
        fontSize:scaleFont(48),
        color:'#333',
        lineHeight:scaleFont(75)
    },
    storeNumberTitle:{
        textAlign:'center',
        fontSize:scaleFont(42),
        color:'#333',
    },
    storeCount:{
        height:scaleSize(453),
        width:scaleSize(972),
        borderRadius: scaleSize(26),
        borderWidth:1,
        borderColor:'#ccc',
    },
    storeTipsWrap:{
        padding:scaleSize(50)
    },
    storeTipsTitle:{
        color: '#333',
        fontSize:scaleFont(42),
        marginBottom:scaleSize(13)
    },
    storeTipsDes:{
        color: '#666',
        fontSize:scaleFont(39),
        lineHeight:scaleSize(54),
        marginBottom:scaleSize(22)
    },
    storeTipsPoint:{
        color: '#666',
        fontSize:scaleFont(39),
        lineHeight:scaleSize(54)
    },
    storeCountBtnBox:{
        display:'flex',
        flexDirection:'row',
        borderTopColor:'#f2f2f2',
        borderTopWidth:scaleSize(1),
        borderStyle:'solid'
    },
    storeCountBtnItem:{
        flex:1,
        textAlign:'center',
        paddingTop:scaleSize(60),
        color: '#7063E3',
        fontSize:scaleFont(42)  
    }
})