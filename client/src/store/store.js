import { configureStore } from "@reduxjs/toolkit";
import resourceReducer from '../features/resourceSlice.js'

const store = configureStore({
    reducer:{
        resource: resourceReducer
    }
})

export default store;