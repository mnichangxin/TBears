import { StyleSheet } from 'react-native'
import { scaleSize, scaleFont } from '@utils/scaleUtil'

export default StyleSheet.create({
    root: {
        flexGrow: 1
    },
    addFriendsWrapper: {
        flex: 1,
        backgroundColor: '#f2f2f2'
    },
    addFriendsNav: {
        backgroundColor: '#ffffff'
    },
    addFriendsSearchWrapper: {
        paddingTop: scaleSize(90),
        paddingBottom: scaleSize(30),
        paddingLeft: scaleSize(55),
        paddingRight: scaleSize(55)
    },
    addFriendsSearchIcon: {
        position: 'absolute',
        top: scaleSize(90 + 35),
        left: scaleSize(55 + 37),
        width: scaleSize(53),
        height: scaleSize(53),
        zIndex: 100
    },
    addFriendsSearchInput: {
        paddingTop: scaleSize(35),
        paddingBottom: scaleSize(35),
        paddingLeft: scaleSize(37 + 53 + 18),
        paddingRight: scaleSize(37),
        borderRadius: scaleSize(12),
        fontSize: scaleFont(39),
        backgroundColor: '#F5F5F5'
    },
    addFriendsNavFeatures: {
        paddingLeft: scaleSize(55),
        paddingRight: scaleSize(55)
    },
    addFriendsNavFeature: {
        justifyContent: 'space-between',
        paddingTop: scaleSize(54),
        paddingBottom: scaleSize(54)
    },
    addFriendsNavFeatureText: {
        fontSize: scaleFont(42),
        color: '#333333'
    },
    addFriendsListItemRowFrontWrapper: {
        paddingLeft: scaleSize(55),
        paddingRight: scaleSize(55),
        backgroundColor: '#ffffff' 
    },
    addFriendsListItemTimeline: {
        paddingTop: scaleSize(31),
        paddingBottom: 0
    },
    addFriendsListItemTimelineText: {
        fontSize: scaleFont(42),
        color: '#333333'
    },
    addFriendsListItemRowFront: {
        flexDirection: 'row',
        justifyContent: 'space-between',
        alignItems: 'center',
        paddingTop: scaleSize(65),
        paddingBottom: scaleSize(45),
        borderBottomWidth: 1,
        borderBottomColor: '#f2f2f2'
    },
    addFriendsListItemFrontLeft: {
        flexDirection: 'row',
        alignItems: 'center'
    },
    addFriendsListItemAvatar: {
        width: scaleSize(132),
        height: scaleSize(132)
    },
    addFriendsListItemAvatar: {
        width: scaleSize(132),
        height: scaleSize(132)
    },
    addFriendsListItemHint: {
        marginLeft: scaleSize(42)
    },
    addFriendsListItemName: {
        fontSize: scaleFont(42),
        color: '#333333'
    },
    addFriendsListItemOverview: {
        marginTop: scaleSize(16),
        fontSize: scaleFont(39),
        color: '#999999'
    },
    addFriendsListItemFrontRight: {
        alignItems: 'flex-end'
    },
    addFriendsListItemTime: {
        fontSize: scaleFont(39),
        color: '#999999'
    },
    verifyStatusText: {
        fontSize: scaleFont(39),
        color: '#999999'
    },
    verifyStatusBtn: {
        paddingTop: scaleSize(7),
        paddingBottom: scaleSize(7),
        paddingLeft: scaleSize(30),
        paddingRight: scaleSize(30),
        borderRadius: scaleSize(8),
        backgroundColor: '#E2E1E8'
    },
    verifyStatusBtnText: {
        fontSize: scaleFont(39),
        color: '#897FDD'
    }
})