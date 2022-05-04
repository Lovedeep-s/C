#include<iostream>
using namespace std;
int main()
{
int n,s;
int i;
int arr[100];
cin>>n;
cin>>s;
for (int k=0;k<n;k++)
{
    cin>>arr[k];
}
for (i=0;i<n;i++)
{
    for(int j=0;j<n;j++)
    {
        if ((arr[i]+arr[j])==s)
        {
            cout<<arr[i]<<"  "<<arr[j];
            i=n+1;
            j=n+1;
        }
        
        
    }
}
if (i==n)
{
    cout<<"no subarry";
}
    
}