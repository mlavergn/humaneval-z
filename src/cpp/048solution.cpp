bool is_palindrome(string text){
    string pr(text.rbegin(),text.rend());
    return pr==text;
}
