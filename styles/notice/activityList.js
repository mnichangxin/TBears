import { StyleSheet } from 'react-native'
import { scaleSize, scaleFont } from '@utils/scaleUtil'

export default StyleSheet.create({
    root: {
        flexGrow: 1,
        backgroundColor: '#ffffff'
    },
    bodyTop: {
        padding: scaleSize(54)
    },
    tip: {
        flexGrow: 1,
        flexDirection: 'row',
        alignItems: 'center',
        paddingLeft: scaleSize(40),
        paddingRight: scaleSize(40),
        height: scaleSize(76),
        borderRadius: scaleSize(38),
        backgroundColor: '#f2f2f2'
    },
    tipIcon: {
        width: scaleSize(52),
        height: scaleSize(52)
    },
    tipText: {
        marginLeft: scaleSize(16),
        fontSize: scaleFont(36),
        color: '#333333'
    },
    activityListWrapper: {
        flex: 1,
        paddingLeft: scaleSize(40),
        paddingRight: scaleSize(40)
    },
    activityList: {
        flex: 1
    },
    activityListItem: {
        flexGrow: 1,
        height: scaleSize(625),
        marginBottom: scaleSize(72),
        borderRadius: 12,
        borderWidth: 1,
        borderColor: 'rgba(42,6,73,0.09)'
    },
    activityListItemAvatarWrapper: {
        position: 'absolute',
        top: scaleSize(36),
        left: scaleSize(52)
    },
    activityListItemAvatar: {
        width: scaleSize(108),
        height: scaleSize(108)
    },
    activityListItemContent: {
        justifyContent: 'space-around',
        alignItems: 'center',
        paddingTop: scaleSize(54),
        paddingBottom: scaleSize(52)
    },
    activityListItemTitle: {
        fontSize: scaleFont(48),
        color: '#333333',
        fontWeight: 'bold'
    },
    activityListItemTime: {
        marginTop: scaleSize(28),
        fontSize: scaleFont(42),
        color: '#999999'
    },
    activityListItemLocationText: {
        marginTop: scaleSize(28),
        fontSize: scaleFont(36),
        color: '#999999'
    },
    activityListItemNumberWrapper: {
        marginTop: scaleSize(46),
        flexDirection: 'row',
        justifyContent: 'space-around',
        alignItems: 'flex-end'
    },
    activityListItemNumber: {
        alignItems: 'center',
        width: scaleSize(480)
    },
    activityListItemNumberSplit: {
        width: scaleSize(3),
        height: scaleSize(90),
        backgroundColor: '#f3f3f3'
    },
    activityListItemNumberDes: {
        fontSize: scaleFont(42),
        fontWeight: 'bold',
        color: '#333333'
    },
    activityListItemNumberCount: {
        marginTop: scaleSize(25),
        fontSize: scaleFont(42),
        fontWeight: 'bold',
        color: '#897fdd' 
    },
    activityDetailButton: {
        justifyContent: 'center',
        alignItems: 'center',
        marginTop: scaleSize(42),
        width: scaleSize(406),
        height: scaleSize(92),
        borderRadius: scaleSize(46),
        backgroundColor: '#564f5f'
    },
    activityDetailButtonText: {
        fontSize: scaleFont(36),
        fontWeight: 'bold',
        color: '#ffffff'
    }
})