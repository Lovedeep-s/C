
//This code is made by Lovedeep singh
#include<bits/stdc++.h>
using namespace std;
void swap(int *a,int *b){
    int t=*a;
    *a=*b;
    *b=t;
}
int partition(int arr[],int l,int r){
    int pivot=arr[r];
    int i=l-1;
    for(int j=l;j<r;j++){
        if (arr[j]<=pivot){
            i++;
            swap(&arr[i],&arr[j]);
        }
        
    }
    swap(&arr[i+1],&arr[r]);
    return i+1;
}
void quick_sort(int arr[],int l,int r){
    
    if (l<r){
        int j=partition(arr,l,r);
        quick_sort(arr,l,j-1);
        quick_sort(arr,j+1,r);
    }
}
int main(){
    int arr[15],h;
    cout<<"\nEnter Number of Elements";
    cin>>h;
    cout<<"\nEnter the element";
    for (int i=0;i<h;i++)
    {
        cin>>arr[i];
    }
    int n= h;
    quick_sort(arr,0,n-1);
    for(int i=0;i<h;i++){
        cout<<arr[i]<<"\t";
    }
}

