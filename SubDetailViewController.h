//
//  SubDetailViewController.h
//  InsectaWorkProjekt
//
//  Created by Admin on 13.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ArrayInsecta.h"

@interface SubDetailViewController : UIViewController <ArrayInsectaDelegate>

@property (nonatomic, strong) NSMutableArray * arrayMSub;
@property (nonatomic, assign) BOOL isFirstArray;
@property (nonatomic, strong) NSString *string_MainValue;

@end
