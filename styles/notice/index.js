import { StyleSheet } from 'react-native'
import { scaleSize, scaleFont } from '@utils/scaleUtil'

export default StyleSheet.create({
    root: {
        flexGrow: 1
    },
    header: {
        flexDirection: 'row',
        justifyContent: 'center',
        alignItems: 'center',
        height: scaleSize(159),
        borderBottomWidth: 1,
        borderBottomColor: '#f2f2f2'
    },
    headerLeft: {
        position: 'absolute',
        left: scaleSize(54)
    },
    headerTitle: {
        justifyContent: 'center',
        alignItems: 'center'
    },
    headerTitleText: {
        fontSize: scaleFont(24),
        fontWeight: 'bold',
        color: '#333333'
    },
    headerRight: {
        position: 'absolute',
        right: scaleSize(54)
    },
    headerRightText: {
        fontSize: scaleFont(19),
        color: '#999999'
    },
    body: {
        flexGrow: 1,
        backgroundColor: '#f2f2f2'
    },
    noticeTab: {
        flexDirection: 'row',
        justifyContent: 'space-around',
        alignItems: 'center',
        paddingTop: scaleSize(75),
        paddingBottom: scaleSize(75),
        backgroundColor: '#ffffff'
    },
    noticeTabItem: {
        justifyContent: 'space-between',
        alignItems: 'center',
        width: scaleSize(218),
        height: scaleSize(267),
        paddingTop: scaleSize(45),
        paddingBottom: scaleSize(40),
        borderRadius: scaleSize(24)
    },
    noticeTabItemIcon: {
        width: scaleSize(90),
        height: scaleSize(108)
    },
    noticeTabItemText: {
        fontSize: scaleFont(18),
        color: '#ffffff'
    }
})