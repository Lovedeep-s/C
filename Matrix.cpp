//This code is made by Lovedeep singh
#include<bits/stdc++.h>
using namespace std;
int main()
{
    int arrr[]={1,2,3,4,5,6,7,8,9};
    int k=0,m=0,h=0;
    for(int i= 0;i<3;i++)
    {
        for (int j = 0; j < 3; j++)
        {
            if(k%3==0)
            {
                cout<<"\n";
            }
            if (i<j)
            {
                cout<<arrr[m++];
                // cout<<"0";
            }
            if (i==j)
            {
                cout<<arrr[m++];
            }
            if(i>j)
            {
                cout<<arrr[h++];

            }
            k++;
            
        }
        
    }

}