import { createSlice, createAsyncThunk } from '@reduxjs/toolkit';

// Async Thunk for fetching resources with search query
export const fetchResources = createAsyncThunk(
  "resource/fetchResources",
  async (query = "") => {
    console.log(query)
    const response = await fetch(`http://localhost:3001/api/online-catalog/resources?search=${query}`);
    if (!response.ok) throw new Error("Failed to fetch resources");
    return response.json();
  }
);

const resourceSlice = createSlice({
  name: "resource",
  initialState: {
    resource: [],
    loading: false,
    error: null,
    searchQuery: ''
  },
  reducers:{
    setSearchQuery: (state, action) => {
        state.searchQuery = action.payload;
    }
  },
  extraReducers: (builder) => {
    builder
      .addCase(fetchResources.pending, (state) => {
        state.loading = true;
      })
      .addCase(fetchResources.fulfilled, (state, action) => {
        state.loading = false;
        state.resource = action.payload;
      })
      .addCase(fetchResources.rejected, (state, action) => {
        state.loading = false;
        state.error = action.error.message;
      });
  }
});

export const { setSearchQuery } = resourceSlice.actions;
export default resourceSlice.reducer;
