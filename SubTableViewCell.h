//
//  SubTableViewCell.h
//  InsectaWorkProjekt
//
//  Created by Admin on 13.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SubTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *image_SubOrder;
@property (strong, nonatomic) IBOutlet UILabel *label_SubOrder;
@property (strong, nonatomic) IBOutlet UILabel *label_SubOrderLat;

@end
