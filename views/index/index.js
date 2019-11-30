import React, {Component} from 'react';
import {SafeAreaView} from 'react-native';
import Login from '../login/index';
export default class Index extends Component {
  render() {
    return (
      <SafeAreaView>
        <Login />
      </SafeAreaView>
    );
  }
}
