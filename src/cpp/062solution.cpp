vector<float> derivative(vector<float> xs){
    vector<float> out={};
    for (int i=1;i<xs.size();i++)
        out.push_back(i*xs[i]);
    return out;
}
