//
//  CustomTableViewCell.h
//  InsectaWorkProjekt
//
//  Created by Admin on 11.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *label_imageView;
@property (strong, nonatomic) IBOutlet UILabel *custum_labelValue;
@property (strong, nonatomic) IBOutlet UILabel *custum_labelValueLat;


@end
