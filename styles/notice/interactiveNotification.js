import { StyleSheet } from 'react-native'
import { scaleSize, scaleFont } from '@utils/scaleUtil'

export default StyleSheet.create({
    root: {
        flexGrow: 1,
        backgroundColor: '#ffffff'
    },
    interactiveListWrapper: {
        flex: 1
    },
    interactiveList: {
        flex: 1
    },
    interactiveListItem: {
        flexDirection: 'row',
        alignItems: 'center',
        paddingTop: scaleSize(65),
        paddingBottom: scaleSize(45),
        paddingLeft: scaleSize(55),
        paddingRight: scaleSize(55),
        borderBottomWidth: 1,
        borderBottomColor: '#f2f2f2'
    },
    interactiveListItemAvatar: {
        width: scaleSize(132),
        height: scaleSize(132)
    },
    interactiveListItemActivityWrapper: {
        marginLeft: scaleSize(33)
    },
    interactiveListItemActivity: {
        fontSize: scaleFont(21),
        color: '#333333'
    }
})