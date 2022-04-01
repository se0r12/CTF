#include<bits/stdc++.h>
using namespace std;

int main(void){
	string cipher;
	char tmp;
	getline(cin,cipher);
	for (int i = 0; i < cipher.size(); i++){
		if ( 'a' <= cipher.at(i) && cipher.at(i) <= 'z'){
			if(cipher.at(i) < 'n'){
				tmp = cipher.at(i) + 13;
				cout << tmp;
			}
			else{
				tmp = cipher.at(i) - 13;
				cout << tmp;
			}
		}
		else if ('A' <= cipher.at(i) && cipher.at(i) <= 'Z'){
			if( cipher.at(i) < 'N'){
				tmp = cipher.at(i) + 13;
				cout << tmp;
			}
			else{
				tmp = cipher.at(i) -13;
				cout << tmp;
			}
		}
		else{
			cout << ' ' ;
		}
	}
	cout << endl;
}
