//This code is made by Lovedeep singh
#include<bits/stdc++.h>
using namespace std;
struct dlinklist
{
    struct dlinklist *prev;
    int item;
    struct dlinklist *next;
};
typedef struct dlinklist node;
node *head =NULL;
void create()
{
    if(head==NULL)
    {
        head = new node;
        head->prev=NULL;
        cout<<"enter the element";
        cin>>head->item;
        head->next=NULL;
    }
}
void insert_end()
{
    if(head==NULL)
    {
        create();
    }
    else
    {
        node*p=head;
        while(p->next!=NULL)
        {
            p=p->next;
        }
        p->next=new node;
        cout<<"enter the element";
        cin>>p->next->item;
        p->next->next=NULL;
        p->next->prev=p;

    }
}
void insert_beg()
{
    node * p;
    p = new node;
    p->prev=NULL;
    cout<<"enter the element";
    cin>>p->item;
    p->next=head;
    head->prev=p;
    head = p;
}
int insert_middle()
{
    if(head==NULL)
    {
    create();
    }
    else{
    int num;
    cout<<"Enter the number you want to enter after ";
    cin>>num;
    node *p=head;
    while(p->item!=num)
    {
        p=p->next;
    }
    node *q= new node;
    cout<<"enter the element";
    cin>> q->item;
    q->prev=p;
    q->next=p->next;
    p->next->prev=q;
    p->next=q;

    }
}
void del()
{
head =head->next;
free(head->prev);
head->prev=NULL;
}
void del_end()
{
    node *p=head;
    while(p->next!=NULL)
    {
        p=p->next;
    }
    p->prev->next=NULL;
}
void del_search()
{
    int n,count=0;
    cout<<"Enter the element you want to delete = ";
    cin>>n;
    node *p=head;
    while(p !=NULL)
    {
        if(p->item==n)
        {
            cout<<"element deleted\n";
            p->prev->next =p->next;
            p->next->prev =p->prev;
        }
        p=p->next;
        
    }
    cout<<"element is not found";
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
    do
    {
        cout << "Enter your choice";
        cin >> choice;

        switch (choice)
        {
        case 1:
            create();
            break;
        case 2:
            insert_end();
            break;
        case 3:
            insert_beg();
            break;
        case 4:
            insert_middle();
            break;
        case 5:
            print();
            break;
        case 6:
            search();
            break;
        case 7:del();
        break;
        case 8:del_search();
        break;
        case 9:del_end();
        break;
        }
    } while (choice != 10);

}