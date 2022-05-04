#include <iostream>
using namespace std;
int top=-1;
int front1=-1;
int rear1=-1;
int sim_queue[5];
int cir_queue[5];
int num;
int stack[5];
int main()
{
    //int stack[10];
    void push(int);
    int pop();
    void enqueue1(int);
    void enqueue2(int);
    void dequeue1();
    for(int i=0;i<5;i++)//insert into stack
    {
        cin>>num;
        push(num);
    }
    for(int i=0;i<5;i++)
    {
    int x=pop();
   // cout<<x;
    enqueue1(x); //inserting into simple queue
    //enqueue2(x); //inserting into circular queue (Try this in the similar manner)
    }
    dequeue1(); //deleting from simple queue
    //dequeue2(); // deleting from circular queue (Try this in the similar manner)
    return 0;
}
void push(int num)
{
    top++;
    stack[top]=num;
    //cout<<stack[top];
}
int pop()
{
    return stack[top--];
}
void enqueue1(int x)
{
    if(front1==-1)
    {
    front1=0;
    rear1=0;
    }
    sim_queue[rear1] = x;
    rear1++;
   
}
void dequeue1()
{
    for(int i=front1;i<rear1;i++)
    cout<<sim_queue[i];
}