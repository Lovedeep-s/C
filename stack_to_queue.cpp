//This code is made by Lovedeep singh
#include<bits/stdc++.h>
using namespace std;
int front=0,rear=0;
int a[5];
int top=0;
int st[5];
void push();
void pop();
void pr();
void nq(int x)
{
    int i,j;
    if(rear>5)
    cout<<"Overflow";
    else
    {
        for ( j = 0; j < i;j++)
        {
            a[ j ]= x;
            rear++;

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

void q()
{
    pop();
}
/*void circlur()
{
    int n;
    cout<<"Enter your choice";
    cin>>n;
    switch (n)
    {   
        case 1 : nq1(); break;
        case 2 : dq1();break;
        case 3: print1(); break;

        default: exit ;break;
    }
}*/

void s()
{
    push();
} 
void push()
{ int ele;
    cout<<"enter the element";
    cin>>ele;
    if(top>4) //overflow
    {
        cout<<"stack overflow";
        
    }
    else
    {
       st[top]=ele;
       top++;
    }
}
void pop()
{
   if(top<0)
   cout<<"underflow";
   
   else
   {
       nq(st[top]);
       cout<<"popped element="<<st[top];
       top--;
   }
   
}
void pr()
{
    for(int j=0;j<top;j++)
    cout<<st[j];
}
int main()
{
    int i=0,j=0,n;
    
do
{
    cin>>n;
    switch (n)
    {
        case 1 : q();break;
        //case 2 : circlur();break;
        case 3 : s();break;
        case 4: print();break;
        case 5: pr(); break;
        default: exit ;   break;
    }
}while(n!=6);
}