import React from 'react'
import { createAppContainer } from 'react-navigation'
import { createStackNavigator } from 'react-navigation-stack'
import routeConfig from '@router/routeConfig'
import stackNavigatorConfig from '@router/stackNavigatorConfig'

const AppContainer = createAppContainer(createStackNavigator(routeConfig, stackNavigatorConfig))

export default () => (
    <AppContainer />
)
