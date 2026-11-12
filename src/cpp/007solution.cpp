vector<string> filter_by_substring(vector<string> strings, string substring){
    vector<string> out;
    for (int i=0;i<strings.size();i++)
    {
        if (strings[i].find(substring)!=strings[i].npos)
        out.push_back(strings[i]);
    }
    return out;
}
