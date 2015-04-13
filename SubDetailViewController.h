//
//  SubDetailViewController.h
//  InsectaWorkProjekt
//
//  Created by Admin on 13.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SubDetailViewController : UIViewController
@property (nonatomic, strong) NSMutableArray * arrayMSub;

@property (nonatomic, assign) BOOL isFirstArray;

@property (nonatomic, strong) NSString *string_MainValue;
@property (nonatomic, strong) NSString *string_MainValueLat;
@property (nonatomic, strong) NSString *string_textView;
@property (nonatomic, strong) IBOutlet UILabel *label_MainValue;



@end
