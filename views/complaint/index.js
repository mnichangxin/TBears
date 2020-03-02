import React, { Component } from 'react'
import { View,TextInput, Text } from 'react-native'
import Header from '@views/common/header'
import styles from '@styles/complaint'

export default class Complaint extends Component {
    state = {
        text:''
    }
    render (){
        return (
            <View style={styles.complaintWrap}>
                <Header title="投诉" left={null} />
                <View style={styles.complaintInput}>
                    <TextInput 
                        style={styles.inputItem} 
                        placeholder='编辑文字...' 
                        onChangeText={(text) => this.setState({text})}
                        value={this.state.text}></TextInput>
                </View>
                <Text style={styles.complaintSubmitBtn}>
                    提交
                </Text>
            </View>
        ) 
    }   
}