import { StyleSheet } from 'react-native'
import { scaleSize, scaleFont } from '@utils/scaleUtil'

export default StyleSheet.create({
    complaintWrap:{
        backgroundColor: '#ffffff',
        display:'flex',
        flexDirection:'column',
        justifyContent:'space-between',
        height:'100%'
    },
    complaintSubmitBtn:{
        height:scaleSize(180),
        backgroundColor:'#564f5f',
        textAlign:'center',
        lineHeight:scaleSize(140),
        fontSize:scaleFont(48),
        color:'#fff'
    },
    complaintInput:{
        flex:1,
        padding:scaleSize(50)
    },
    inputItem:{
        width:'100%',
        overflow:'hidden',
        fontSize:scaleFont(42),
        color:'#666'

    }
})