//
//  main.cpp
//  trieWithSuggestions
//
//  Created by Arun P on 10/12/17.
//  Copyright © 2017 Arun P. All rights reserved.
//


// C++ implementation of search and insert
// operations on Trie

#include <iostream>

using namespace std;


const int ALPHABET_SIZE = 26;

// trie node
struct TrieNode
{
    struct TrieNode *children[ALPHABET_SIZE];
    // isEndOfWord is true if the node represents
    // end of a word
    bool isEndOfWord;
    
    TrieNode(){
        isEndOfWord = false;
        
        for (int i = 0; i < ALPHABET_SIZE; i++)
            children[i] = NULL;
    }
};



// If not present, inserts key into trie
// If the key is prefix of trie node, just
// marks leaf node
void insert(struct TrieNode *root, string key)
{
    struct TrieNode *pCrawl = root;
    
    for (int i = 0; i < key.length(); i++)
    {
        int index = key[i] - 'a';
        if (!pCrawl->children[index])
            pCrawl->children[index] = new TrieNode();
        
        pCrawl = pCrawl->children[index];
    }
    
    // mark last node as leaf
    pCrawl->isEndOfWord = true;
}

// Returns true if key presents in trie, else
// false
bool search(struct TrieNode *root, string key)
{
    struct TrieNode *pCrawl = root;
    
    for (int i = 0; i < key.length(); i++)
    {
        int index = key[i] - 'a';
        if (!pCrawl->children[index])
            return false;
        
        pCrawl = pCrawl->children[index];
    }
    
    return (pCrawl != NULL && pCrawl->isEndOfWord);
}

void printWord(char Word[],int k,string suffix){
    
    cout<<suffix;
    for(int i=0;i<k;i++) {
        cout<<Word[i];
    }
    
    cout<<"\n";
}

void printAllWordsInTrie(TrieNode *root,char Word[],int k,string suffix){
    
    if(root!=NULL){
        
        if(root->isEndOfWord == true){
            printWord(Word,k,suffix);
        }
        
        for(int i=0;i<ALPHABET_SIZE;i++){
            if(root->children[i]!=NULL){
                Word[k] = char(i+97);
                printAllWordsInTrie(root->children[i],Word,k+1,suffix);
            }
        }
        
    }
}


TrieNode* getTrieWithAllSuggestions(string S,TrieNode *T){
    
    TrieNode *temp = T;
    
    for(int i=0;i<S.length();i++){
        
        int index = S[i]-'a';
        
        if(T->children[index]==NULL){
            
        }
        
        T = T->children[index];
    }
    
    return T;
    
}


// Driver
int main()
{
    // Input keys (use only 'a' through 'z'
    // and lower case)
    string keys[] = {"the", "a", "there",
        "answer", "any", "by",
        "bye", "their" };
    int n = sizeof(keys)/sizeof(keys[0]);
    
    struct TrieNode *root = new TrieNode();
    
    // Construct trie
    for (int i = 0; i < n; i++)
        insert(root, keys[i]);
    
    // Search for different keys
    search(root, "the")? cout << "Yes\n" :
    cout << "No\n";
    search(root, "these")? cout << "Yes\n" :
    cout << "No\n";
    
    char Word[100];
    printAllWordsInTrie(root,Word,0," ");
    
    
    string S;
    //string suggestions for entered word
    TrieNode *trieWithSuggestions;
    while(cin>>S){
        trieWithSuggestions=getTrieWithAllSuggestions(S,root);
        char Word[100];
        
        cout<<"Word Entered:"<<S<<"\n";
        
        cout<<"Suggestions:"<<"\n";
        string suffix = S;
        printAllWordsInTrie(trieWithSuggestions,Word,0,suffix);
    }
    
    return 0;
}
