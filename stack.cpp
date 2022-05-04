//This code is made by Lovedeep singh
#include<bits/stdc++.h>
using namespace std;
int top =-1,arr[100];
void push()
{
    int n;
    cout<<"number of inputs you want to push";
    cin>>n;
    cout<<"Enter the number";
    if(top>=100)
    {
        cout<<"Overflow";
        exit;
    }
    for(int i=0;i<n;i++)
    {
        top++;
        cin>>arr[top];   
    }

}
void pop()
{
    
    int n;
    cout<<"number of inputs you want to pop";
    cin>>n;
    top =top - n;
    if(top<=-1)
    {
        cout<<"Underflow";
        exit;
    }

}
void print ()
{
    cout<<"Stack Contain \n";
    for (int i = top; i >=0  ; i--)
    {
        cout<<arr[i]<<" ";
    }
    
}
int main()
{
    int n = 1;
    do
    {
          cout<<"\n Enter the choice";
          cin>>n; 
    switch (n)
        {
        case 1:
            push();
            break;
        case 2:
            pop();
            break;
        case 3:
            print();
            break;
        default:
            break;
        }
    }while (n>0&&n<4);
}