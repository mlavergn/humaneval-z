typedef std::list<boost::any> list_any;
vector<int> filter_integers(list_any values){
    list_any::iterator it;
    boost::any anyone;
    vector<int> out;
    for (it=values.begin();it!=values.end();it++)
    {
         anyone=*it;
        if( anyone.type() == typeid(int) )
           out.push_back(boost::any_cast<int>(*it));
    }
    return out;
}
