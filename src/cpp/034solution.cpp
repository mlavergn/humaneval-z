vector<int> unique(vector<int> l){
    vector<int> out={};
    for (int i=0;i<l.size();i++)
        if (find(out.begin(),out.end(),l[i])==out.end())
            out.push_back(l[i]);
    sort(out.begin(),out.end());
    return out;
}
