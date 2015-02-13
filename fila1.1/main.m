//
//  main.m
//  fila1.1
//
//  Created by Matheus Amancio Seixeiro on 2/12/15.
//  Copyright (c) 2015 Matheus Amancio Seixeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lista.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
    
        Lista *nomes =[[Lista alloc]init];
        NSObject *n1 =@"matheus";
        NSObject *n2 =@"evandro";
        NSObject *n3 =@"ilana";
        NSObject *n4 =@"basile";
        [nomes inserir:n1 noId:0];
        [nomes inserir:n2 noId:1];
        [nomes inserir:n3 noId:2];
        [nomes inserir:n4 noId:3];
        for (int i=0; i < [nomes tamanho]; i++) {
            NSLog(@"%@",(NSString *)[nomes acessar:i]);
        }
       
        
            printf("%s", "coloque nomes na lista\n");
            char word[40];
            scanf("%39s", word);
            printf("%s", "coloque a posicao\n");
            int pos;
            scanf("%i", &pos);
            
       
        
        
        NSString* word2 = [NSString stringWithUTF8String: word];
        
        [nomes inserir:  word2 noId:pos];
        for (int i =0; i<[nomes tamanho]; i++) {
            NSLog(@"%@",(NSString *)[nomes acessar:i]);
        }
        
        printf("%s", "remova algum nome\n");
        scanf("%39s", word);
        NSString* word3 = [NSString stringWithUTF8String: word];
        [nomes remover:word3];
        for (int i =0; i<[nomes tamanho]; i++) {
            NSLog(@"%@", (NSString *) [nomes acessar:i]);
        }
        
        for (int i = [nomes tamanho]-1; i >=0; i--) {
            if ([nomes acessar:i] == [NSNull null]) {
                [nomes removerid:i];
            }
        }
        
        
       
        for (int i = 0; i<3; i++)
        {
            printf("%s", "coloque nomes na lista\n");
            char word[40];
            scanf("%39s", word);
            printf("%s", "coloque a posicao\n");
            int pos;
            scanf("%i", &pos);
            NSString* word4 = [NSString stringWithUTF8String: word];
            
            [nomes inserir:  word4 noId:pos];

        }
        
        
        for (int i =0; i<[nomes tamanho]; i++)
        {
            
            NSLog(@"%@",(NSString *)[nomes acessar:i]);
            
        }
        
     
        
        [nomes ordenar];
        
        for (int i =0; i<[nomes tamanho]; i++)
        {
            
            NSLog(@"%@",(NSString *)[nomes acessar:i]);
            
        }
  
        return 0;}
}
