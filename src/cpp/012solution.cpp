string longest(vector<string> strings){
    string out;
    for (int i=0;i<strings.size();i++)
    {
        if (strings[i].length()>out.length()) out=strings[i];
    }
    return out;
}
