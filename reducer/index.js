import { SWITCH_TAB } from '@constants/index'

const initState = {
    current_tab: 'Home' 
}

export default (state = initState, action) => {
    switch (action.type) {
        case SWITCH_TAB:
            return {
                ...state,
                current_tab: action.tab_name
            }
        default:
            return state
    }
}