import React, {Component} from 'react';
import {SafeAreaView, View, Text, StyleSheet} from 'react-native';
import {Form, Input} from 'beeshell';

export default class Login extends Component {
  constructor(props) {
    super(props);
    this.state = {
      userPhone: '',
      userCode: '',
      btnText: '获取验证码',
    };
    this.changePhone = this.changePhone.bind(this);
    this.changeCode = this.changeCode.bind(this);
  }
  changePhone(phone) {
    this.setState({
      userPhone: phone.substr(0, 11),
    });
  }
  changeCode(code) {
    this.setState({
      userCode: code.substr(0, 6),
    });
  }
  render() {
    return (
      <SafeAreaView>
        <View>
          <View style={styles.header}>
            <Text style={styles.headerText}>登录后更精彩</Text>
          </View>
          <View style={styles.loginForm}>
            <Form>
              <Form.Item label=" " labelWidth={10} hasLine>
                <Input
                  value={this.state.userPhone}
                  onChange={this.changePhone}
                  style={styles.formItem}
                  placeholder="输入手机号"
                />
              </Form.Item>
              <Form.Item label=" " labelWidth={10} hasLine>
                <Input
                  value={this.state.userCode}
                  onChange={this.changeCode}
                  style={styles.formItem}
                  placeholder="输入验证码"
                />
                {/* <Text>{this.state.btnText}</Text> */}
              </Form.Item>
            </Form>
          </View>
        </View>
      </SafeAreaView>
    );
  }
}

const styles = StyleSheet.create({
  header: {
    marginTop: 117,
    marginBottom: 81,
  },
  headerText: {
    fontSize: 26,
    color: '#564F5F',
    textAlign: 'center',
  },
  loginForm: {},
  formItem: {
    fontSize: 21,
    color: 'pink',
    margin: 0,
    padding: 0,
    textAlign: 'right',
  },
});
