#include<iostream>
using namespace std;
int main()
{
int n,s;
int i,sum=0;
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
        sum = sum +arr[i]+arr[j];
        if ((sum)==s)
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