import { StyleSheet } from 'react-native'

export default StyleSheet.create({
    header: {
        flexDirection: 'row',
        justifyContent: 'center',
        alignItems: 'center',
        height: 80,
        borderBottomWidth: 1,
        borderBottomColor: '#f2f2f2'
    },
    headerLeft: {
        position: 'absolute',
        left: 27
    },
    headerTitle: {
        justifyContent: 'center',
        alignItems: 'center'
    },
    headerTitleText: {
        fontSize: 24,
        fontWeight: 'bold',
        color: '#333333'
    },
    headerRight: {
        position: 'absolute',
        right: 27
    },
    headerRightText: {
        fontSize: 19,
        color: '#999999'
    }
})