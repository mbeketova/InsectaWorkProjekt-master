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


+ (NSMutableArray *) makeSubArrayDiptera;
+ (NSMutableArray *) makeSubArrayHomoptera;
+ (NSMutableArray *) makeSubArrayColeoptera;
+ (NSMutableArray *) makeSubArrayOdonatoptera;
+ (NSMutableArray *) makeSubArrayOrthoptera;
+ (NSMutableArray *) makeSubArrayHymenoptera;

@property (weak, nonatomic) id <ArrayInsectaDelegate> delegate;

@end

@protocol ArrayInsectaDelegate <NSObject>

@required

- (void) makeArraysFirstArrayReady:(ArrayInsecta*) makeArrays FirstArray:(NSMutableArray*) firstArray;
- (void) makeArraysSecondArrayReady:(ArrayInsecta*) makeArrays SecondArray:(NSMutableArray*) secondArray;

//@optional
//- сюда запишем остальные таблицы для реализации Подотрядов


@end