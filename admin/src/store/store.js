import { configureStore } from "@reduxjs/toolkit";
import chartReducer from '../features/chartSlice.js'
import isOnlineReducer from '../features/isOnlineSlice.js'
import advancedSearchReducer from '../features/advancedSearchSlice.js'

const store = configureStore({
    reducer:{
        chart: chartReducer,
        isOnline:  isOnlineReducer,
        advancedSearch: advancedSearchReducer
    }
})

export default store;