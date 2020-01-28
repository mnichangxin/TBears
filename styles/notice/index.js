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
    },
    noticeList: {
        flexDirection: 'row',
        marginTop: scaleSize(24),
        backgroundColor: '#ffffff'
    },
    noticeListItemRowFrontWrapper: {
        paddingTop: scaleSize(65),
        paddingBottom: scaleSize(45),
        paddingLeft: scaleSize(55),
        paddingRight: scaleSize(55),
        borderBottomWidth: 1,
        borderBottomColor: '#f2f2f2',
        backgroundColor: '#ffffff' 
    },
    noticeListItemRowFront: {
        flexDirection: 'row',
        justifyContent: 'space-between',
        alignItems: 'center'
    },
    noticeListItemFrontLeft: {
        flexDirection: 'row',
        alignItems: 'center'
    },
    noticeListItemAvatar: {
        width: scaleSize(132),
        height: scaleSize(132)
    },
    noticeListItemHint: {
        marginLeft: scaleSize(42)
    },
    noticeListItemName: {
        fontSize: scaleFont(21),
        color: '#333333'
    },
    noticeListItemOverview: {
        marginTop: scaleSize(16),
        fontSize: scaleFont(19.5),
        color: '#999999'
    },
    noticeListItemFrontRight: {
        alignItems: 'flex-end'
    },
    noticeListItemTime: {
        fontSize: scaleFont(19.5),
        color: '#999999'
    },
    noticeListItemUreadCount: {
        justifyContent: 'center',
        alignItems: 'center',
        marginTop: scaleSize(14.7),
        width: scaleSize(57),
        height: scaleSize(57),
        borderRadius: scaleSize(57),
        backgroundColor: '#d86161' 
    },
    noticeListItemUreadCountNumber: {
        fontSize: scaleFont(20),
        color: '#ffffff'
    },
    noticeListItemRowBack: {
        flexGrow: 1,
        flexDirection: 'row'
    },
    backRightBtn: {
        alignItems: 'center',
        justifyContent: 'center',
        position: 'absolute',
        top: 0,
        bottom: 0,
        width: scaleSize(150)
    },
    backRightBtnToTop: {
        backgroundColor: '#c2c2c2',
        right: scaleSize(300)
    },
    backRightBtnRead: {
        backgroundColor: '#c9c9c9',
        right: scaleSize(150)
    },
    backRightBtnDelete: {
        backgroundColor: '#d86161',
        right: 0
    },
    backRightBtnText: {
        color: '#ffffff'
    }
})