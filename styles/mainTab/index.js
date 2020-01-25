import { StyleSheet } from 'react-native'

export default StyleSheet.create({
    root: {
        flexGrow: 1,
        position: 'relative',
        height: '100%',
        borderWidth: 1,
        borderColor: 'red'
    },
    tabContent: {
        flexGrow: 1
    },
    tabBar: {
        flexDirection: 'row',
        height: 40,
        paddingLeft: 25,
        paddingRight: 25,
        borderTopWidth: .5,
        borderTopColor: '#eaeaea'
    },
    tabBarItemWrapper: {
        flexDirection: 'row',
        flexGrow: 1
    }
})