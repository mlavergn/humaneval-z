vector<string> all_prefixes(string str){
    vector<string> out;
    string current="";
    for (int i=0;i<str.length();i++)
    {
        current=current+str[i];
        out.push_back(current);
    }
    return out;
}
