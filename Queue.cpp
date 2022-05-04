#include<iostream>
using namespace std;
int a[10];
int rear=-1,front=0;
void nq();
void dq();
void print();

int main()
{
    int n=0;
    while(n!=4)
    {
    cout<<"enter your choice";
    cin>>n;   
    switch (n)
    {
    case 1:dq(); break;
    case 2:nq(); break;
    case 3:print(); break;
    case 4:exit; 
    default:exit;
    }
    }
}
void nq()
{
    int i,j;
    cout<<"enter  of element";
    cin>>i;
    if(rear>5)
    cout<<"Overflow";
    else
    {
        for ( j = 0; j < i;j++)
        {
            rear++;
            cin>>a[ rear];
            

        }
    }
}
void print()
 {
     int i=front;
        for(; i < rear; i++)
    {
        cout<<a[i];
    }
    
}
void dq()
{
    int i,j;
    cout<<"enter  of element";
    cin>>i;
    if(front > rear)
    cout<<"under flow";
    else
    {
        for ( j = 0; j < i;j++)
        {
            front++;

        }
    }
}