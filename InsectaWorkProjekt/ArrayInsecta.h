//
//  ArrayInsecta.h
//  InsectaWorkProjekt
//
//  Created by Admin on 11.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol ArrayInsectaDelegate;


@interface ArrayInsecta : NSObject

- (void) makeFirstArray;
- (void) makeAnotherArray;

- (void) makeSubArrayDiptera;
- (void) makeSubArrayHomoptera;
- (void) makeSubArrayColeoptera;
- (void) makeSubArrayOdonatoptera;
- (void) makeSubArrayOrthoptera;
- (void) makeSubArrayHymenoptera;


@property (weak, nonatomic) id <ArrayInsectaDelegate> delegate;



@end

@protocol ArrayInsectaDelegate <NSObject>

//@required - указывать, если обязательные

@optional
//к первой таблице (выгрузка отрядов):
- (void) makeArraysFirstArrayReady:(ArrayInsecta*) makeArrays FirstArray:(NSMutableArray*) firstArray;
- (void) makeArraysSecondArrayReady:(ArrayInsecta*) makeArrays SecondArray:(NSMutableArray*) secondArray;

//ко второй таблице (выгрузка подотрядов):
- (void) makeSubArrayDipteraArrays: (ArrayInsecta*) makeSubArrays DipteraArray:(NSMutableArray*) dipteraArray;
- (void) makeSubArrayHomopteraArrays: (ArrayInsecta*) makeSubArrays HomopteraArray:(NSMutableArray*) homopteraArray;
- (void) makeSubArrayColeopteraArrays:(ArrayInsecta *) makeSubArrays ColeopteraArray:(NSMutableArray *)coleopteraArray;
- (void) makeSubArrayOdonatopteraArrays:(ArrayInsecta *) makeSubArrays OdonatopteraArray:(NSMutableArray *)odonatopteraArray;
- (void) makeSubArrayOrthopteraArrays:(ArrayInsecta *) makeSubArrays OrthopteraArray:(NSMutableArray *)orthopteraArray;
- (void) makeSubArrayHymenopteraArrays:(ArrayInsecta *) makeSubArrays HymenopteraArray:(NSMutableArray *)hymenopteraArray;

@end


//@optional - если есть какие-либо необязательные методы

