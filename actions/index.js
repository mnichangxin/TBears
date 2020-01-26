import { SWITCH_TAB } from '@constants/index'

export const switch_tab = tab_name => ({
    type: SWITCH_TAB,
    tab_name: tab_name
})