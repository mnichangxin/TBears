import { StyleSheet } from 'react-native'
import { scaleSize, scaleFont } from '@utils/scaleUtil'

export default StyleSheet.create({
    root: {
        flexGrow: 1,
        // backgroundColor: '#ffffff'
    },
    addFriendsWrapper: {
        flex: 1,
        backgroundColor: '#f2f2f2'
    },
    addFriendsNav: {
        backgroundColor: '#ffffff'
    },
    addFriendsSearchWrapper: {
        paddingTop: scaleSize(132),
        paddingBottom: scaleSize(30),
        paddingLeft: scaleSize(55),
        paddingRight: scaleSize(55)
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
    }

    // friendsList: {
    //     flex: 1
    // },
    // friendsListItemWrapper: {
    //     paddingLeft: scaleSize(55),
    //     paddingRight: scaleSize(55)
    // },
    // friendsListItem: {
    //     flexDirection: 'row',
    //     alignItems: 'center',
    //     paddingTop: scaleSize(65),
    //     paddingBottom: scaleSize(45),
    //     borderBottomWidth: 1,
    //     borderBottomColor: '#f2f2f2'
    // },
    // friendsListItemLeft: {
    //     flexDirection: 'row',
    //     alignItems: 'center'
    // },
    // friendsListItemAvatar: {
    //     width: scaleSize(132),
    //     height: scaleSize(132)
    // },
    // friendsListItemNickname: {
    //     marginLeft: scaleSize(42),
    //     fontSize: scaleFont(48),
    //     color: '#333333'
    // }
})