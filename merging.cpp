//This code is made by Lovedeep singh
#include<bits/stdc++.h>
using namespace std;
int arr1[100],arr2[100],arr3[100];
int top1=-1,top2=-1 ,k =0;
void ar1()
{
    int count;
    cout<<"Enter the number of elements in the array";
    cin>>count;
    cout<<"enter the numbers";
    for (int i = 0; i < count; i++)
    {
        top1++;
        cin>>arr1[top1];
    }
    
}
void ar2()
{
    int count;
    cout<<"Enter the number of elements in the array";
    cin>>count;
    cout<<"enter the numbers";
    for (int i = 0; i < count; i++)
    {
        top2++;
        cin>>arr2[top2];
        
    }
    
}
void merg()
{
    int i=0,j=0;
    while(i<=top1&&j<=top2)
    {
            if(arr1[i]<arr2[j])
            {
                arr3[k++]=arr1[i++];
            }
            if(arr1[i]>arr2[j])
            {
                arr3[k++]=arr2[j++];
            }
            
            if(arr1[i]==arr2[j])
            {
                arr3[k++]=arr1[i++];
            }
        
    }
    while(i<=top1)
    arr3[k++]=arr1[i++];
    while(j<=top2)
    arr3[k++]=arr2[j++];
    
}
void print()
{
    cout<<"\n"<<"Stack 1 = ";
    for (int i = top1; i >= 0; i--)
    {
        
        cout<<arr1[i]<<" ";
    }
   cout<<"\n"<<"Stack 2 = ";
    for (int i = top2; i >= 0; i--)
    {
        
        cout<<arr2[i]<<" ";
    }
     cout<<"\n"<<"Queue = ";
    for (int i = 0; i < k; i++)
    {
       
        cout<<arr3[i]<<" ";
    }
    
}

int main()
{
    int n= 1;
    do
    {
        cout<<"Enter your choice";
        cin>>n;
        switch (n)
        {
        case 1: ar1();break;
        case 2: ar2();break;
        case 3: merg();break;
        case 4: print();break;
        default:break;
        }
    } while (n>0&&n<4);
    

}