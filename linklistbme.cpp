//This code is made by Lovedeep singh
#include<bits/stdc++.h>
using namespace std;
struct link
{
    int item;
    struct link *next;
};
typedef struct link node;
node *head=NULL;
int create()
{
    if (head==NULL)
    {
        head = new node;
        cout<<"Enter the Element";
        cin>>head->item;
        head->next=NULL;
    }
}
int insert_end()
{
    if(head==NULL)
    create();
    node *p = head;

    node *q=new node;
    while(p->next!=NULL)
    {
        p = p->next;
    }

    p->next=q;
    cout<<"Enter the Element";
    cin>>q->item;
    q->next=NULL;
    p->next=q;


}

int insert_beg()
{
    if(head==NULL)
    create();
    node *q;
    q= new node;
    cout<<"Enter the Element";
    cin>>q->item;
    q->next=head;
    head = q;
}
int insert_middle()
{
    if(head==NULL)
    create();
    int num;
    cout<<"Enter the number you want to enter after ";
    cin>>num;
    node *r=head;
    while(r->item==num)
    {
        r=r->next;
    }
    node *q=new node;
    cout<<"Enter the element= ";
    cin>>q->item;
    q->next=r->next;
    r->next=q;
}
void search()
{
    int n,count=0;
    cout<<"Enter the element you want to search = ";
    cin>>n;
    node *p=head;
    while(p !=NULL)
    {
        if(p->item==n){
            cout<<"element found\n";
            cout<<"The element is at "<<count+1<<"of the list\n";
            return;
        }
        p=p->next;
        count++;
        
    }
    cout<<"element is not found";
    
    
}
int print()
{
    node *p = head;
    while (p!=NULL)
    {
        cout<<p->item<<" ";
        p= p->next;

    }
    
}
int main()
{
    int choice;
    do{
    cout<<"Enter your choice";
    cin>> choice;
   
    switch (choice)
    {
    case 1: create();
        break;
    case 2:insert_end();
        break;
    case 3:insert_beg();
        break;
    case 4:insert_middle();
        break;
    case 5: print();
        break;
    case 6: search();
        break;
    }
   }while(choice!=7);

}