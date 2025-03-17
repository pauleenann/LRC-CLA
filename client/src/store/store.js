import { configureStore } from "@reduxjs/toolkit";
import resourceReducer from '../features/resourceSlice.js'
import typeReducer from '../features/typeSlice.js'
import deptReducer from '../features/deptSlice.js'
import topicReducer from '../features/topicSlice.js'

const store = configureStore({
    reducer:{
        resource: resourceReducer,
        type:  typeReducer,
        dept: deptReducer,
        topic: topicReducer
    }
})

export default store;