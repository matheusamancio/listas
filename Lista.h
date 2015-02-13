//
//  Lista.h
//  fila1.1
//
//  Created by Matheus Amancio Seixeiro on 2/12/15.
//  Copyright (c) 2015 Matheus Amancio Seixeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Lista : NSObject

{
    NSMutableArray *elemento;
}
- (NSObject *) acessar: (int) posicao;
- (void) inserir: (NSObject *) coisa;
- (void) inserir: (NSObject *) coisa noId : (int) posicao;
- (void) remover: (NSObject *) coisa;
- (int) tamanho;
- (bool) vazio;
- (void) ordenar;
- (void) removerid: (int)posicao;
@end
