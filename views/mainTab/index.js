import React from 'react'
import { View, SafeAreaView, Text, Image, TouchableOpacity } from 'react-native'
import { bindActionCreators } from 'redux'
import { connect } from 'react-redux'
import * as actions from '@actions/index.js'
import tabNavigatorConfig from '@router/tabNavigatorConfig'
import styles from '@styles/mainTab'

const mapStateToProps = state => ({
    current_tab: state.current_tab
})
const mapDispatchToProps = dispatch => ({ actions: bindActionCreators(actions, dispatch) })

export default connect(mapStateToProps, mapDispatchToProps)(props => {
    const onTabItemPress = tabItem => () => {
        props.actions.switch_tab(tabItem.name)
    }
    const CurrentTabScreen = () => {
        for (let i = 0, len = tabNavigatorConfig.length; i < len; i++) {
            if (tabNavigatorConfig[i].name === props.current_tab) {
                return tabNavigatorConfig[i].screen()
            }
        }
        return null
    }
    return (
        <View style={styles.rootWrapper}>
            <SafeAreaView>
                <View style={styles.root}>
                    <View style={styles.tabScreen}>
                       <CurrentTabScreen />
                    </View>
                    <View style={styles.tabBar}>
                        {
                            tabNavigatorConfig.map(tabItem => (
                                tabItem.name !== 'Publish'
                                ?
                                <TouchableOpacity 
                                    activeOpacity={1}
                                    style={styles.tabBarItem}
                                    key={tabItem.name}
                                    onPress={onTabItemPress(tabItem)}>
                                    <Image 
                                        source={{ uri: props.current_tab === tabItem.name ? tabItem.iconActiveUri : tabItem.iconInactiveUri }}
                                        style={styles.tabBarItemIcon} />
                                    <Text 
                                        style={[styles.tabBarItemLabel, 
                                        props.current_tab === tabItem.name && styles.tabBarItemLabelActive]}>
                                        { tabItem.label }
                                    </Text>
                                </TouchableOpacity>
                                :
                                <TouchableOpacity 
                                    style={[styles.tabBarItem, styles.tabBarItemPublish]}
                                    key={tabItem.name}>
                                    <Image 
                                        source={{ uri: tabItem.iconInactiveUri }}
                                        style={styles.tabBarItemIconPublish} />
                                </TouchableOpacity>
                            ))
                        }
                    </View>
                </View>
            </SafeAreaView>
        </View>
    )
})