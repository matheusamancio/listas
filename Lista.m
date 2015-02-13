//
//  Lista.m
//  fila1.1
//
//  Created by Matheus Amancio Seixeiro on 2/12/15.
//  Copyright (c) 2015 Matheus Amancio Seixeiro. All rights reserved.
//

#import "Lista.h"

@implementation Lista

- (instancetype)   init;
{
    self = [super init];
    if (self)
    {
    elemento = [[NSMutableArray alloc]init];
    
//    for(int i=0; i < 10; i++)
//    {[elemento addObject:[NSNull null]];}
//    
    }
    return self;
}

- (NSObject *) acessar: (int) posicao;
{
    if (posicao < [self tamanho])
    return elemento[posicao] ;
    else
        return elemento[0];
}
- (void) inserir: (NSObject *) coisa;
{
    if (elemento == nil) {
        return;
    }
    else{
        [elemento addObject:coisa];
    }
}
- (void) inserir: (NSObject *) coisa noId : (int) posicao;
{
  
 
    [elemento insertObject:coisa atIndex:posicao];
    
}

- (void) remover: (NSObject *) coisa;
{
    [elemento removeObject:coisa];
}
- (int) tamanho;
{
    return (int)[elemento count] ;
}
- (bool) vazio;
{
    if ([elemento count] == 0) {
        return true;
    }
    else
        return false;
}
 

- (void) ordenar;
{
    [ elemento sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {

        if ([obj1 length] < [obj2 length]) {
            return NSOrderedAscending;
        } else if ([obj1 length] > [obj2 length]) {
            return NSOrderedDescending;
        } else {
            return NSOrderedSame;
        }
      
    }];
  
}

- (void) removerid: (int)posicao;
{
    [elemento removeObjectAtIndex:posicao];
}

@end
