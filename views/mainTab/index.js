// import React from 'react'
// import { View, Text } from 'react-native'
import { createAppContainer } from 'react-navigation'
import { createBottomTabNavigator } from 'react-navigation-tabs'
import Home from '@views/home/index'
import Meet from '@views/meet/index'
import Notice from '@views/notice/index'
import Mine from '@views/mine/index'
// import styles from '@styles/mainTab'


// export default () => (
//     <View style={styles.root}>
//         <View style={styles.tabContent}></View>
//         <View style={styles.tabBar}>
//             <View style={styles.tabBarItemWrapper}>
//                 <Text>首页</Text>
//                 <Text>擦肩</Text>
//             </View>
//             <View style={styles.tabBarItemWrapper}></View>
//             <View style={styles.tabBarItemWrapper}>
//                 <Text>消息</Text>
//                 <Text>我的</Text>
//             </View>
//         </View>
//     </View>
// )

const TabNavigator = createBottomTabNavigator({
    Home: Home,
    Meet: Meet,
    Notice: Notice,
    Mine: Mine
}, {
    headerMode: 'none'
})

export default createAppContainer(TabNavigator)