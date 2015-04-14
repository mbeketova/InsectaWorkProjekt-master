//
//  ViewController.h
//  InsectaWorkProjekt
//
//  Created by Admin on 10.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray * arrayM;
@property (nonatomic, strong) NSMutableArray * arrayMSub;
@property (nonatomic, assign) BOOL isFirstArray;

@end

