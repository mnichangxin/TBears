import { StyleSheet } from 'react-native'

export default StyleSheet.create({
    rootWrapper: {
        backgroundColor: '#ffffff'
    },
    root: {
        flexGrow: 1,
        position: 'relative',
        height: '100%',
        backgroundColor: '#ffffff'
    },
    tabScreen: {
        flexGrow: 1
    },
    tabBar: {
        flexDirection: 'row',
        height: 70.5,
        paddingLeft: 25,
        paddingRight: 25,
        borderTopWidth: 1,
        borderTopColor: '#f2f2f2'
    },
    tabBarItem: {
        flexGrow: 1,
        alignItems: 'center',
        justifyContent: 'center'
    },
    tabBarItemPublish: {
        width: 85
    },
    tabBarItemIcon: {
        width: 29,
        height: 29
    },
    tabBarItemLabel: {
        marginTop: 4.5,
        fontSize: 16.5,
        color: '#c2c2c2'
    },
    tabBarItemLabelActive: {
        color: '#564f5f'
    },
    tabBarItemIconPublish: {
        position: 'relative',
        top: -23.5,
        width: 85,
        height: 85
    }
})