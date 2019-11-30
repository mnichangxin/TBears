/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React from 'react';
import {SafeAreaView} from 'react-native';
import Index from './views/index/index';

const App: () => React$Node = () => {
  return (
    <SafeAreaView>
      <Index />
    </SafeAreaView>
  );
};
export default App;
