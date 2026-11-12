vector<int> maximum(vector<int> arr,int k){
    sort(arr.begin(),arr.end());
    vector<int> out(arr.end()-k,arr.end());
    return out;
}
