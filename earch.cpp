//This code is made by Lovedeep singh
#include<bits/stdc++.h>
using namespace std;
int main()
{
int a[]={5,10,15,20,22,25,35};
int b=0,end=6;
int mid,i,num;
cout<<"enter the number ";
cin>>num;
for(i=0;i<7;i++)
{
    mid =(b+end)/2;
    if(num<a[mid])
    end =mid-1;
    if(num>a[mid])
    b=mid+1;
}
cout<<"index of the number in the array "<<mid;
}