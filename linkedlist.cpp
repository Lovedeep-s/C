#include<iostream>
using namespace std;
struct linkedlist
    {
        char name[15];
        int Rollnumber;
        int age;
        struct linkedlist *next;
    };    
typedef struct linkedlist node;
node *head =NULL;
node *body =NULL;
int main ()
{
head= new node;
head->next=body;
body= new node;
body->next=NULL;
cout<<"Enter 1st student details \n";
cout<<"Enter Name = ";
cin>> head->name;
cout<<"Enter Rollnumber = ";
cin>> head->Rollnumber;
cout<<"Enter Age = ";
cin>> head->age;
cout<<"Enter 2nd student details \n";
cout<<"Enter Name = ";
cin>> body->name;
cout<<"Enter Rollnumber = ";
cin>> body->Rollnumber;
cout<<"Enter Age = ";
    cin>> body->age;
cout<<"Student details"<<"\n";
cout<<head->name<<"\n";
cout<<head->Rollnumber<<"\n";
cout<<head->age<<"\n";
cout<<body->name<<"\n";
cout<<body->Rollnumber<<"\n";
cout<<body->age<<"\n";
}
