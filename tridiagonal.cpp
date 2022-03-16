//This code is made by Lovedeep singh
#include<bits/stdc++.h>
using namespace std;
int main()
{
int a[9] = {2,1,3,1,3,5,2,7,9};
int i, j ,k=0;
for(i=0;i<4;i++)
{
    for(j=0;j<4;j++)
    {
        if(i-j==-1||i-j==0||i-j==1)
        {
            cout<<a[k];
            k++;
        }
        else{
            cout<<"0";

        }
        
    }cout<<"\n";
}
}