//
//  EntryViewController.m
//  InsectaWorkProjekt
//
//  Created by Admin on 11.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "EntryViewController.h"

@interface EntryViewController ()

@property (strong, nonatomic) IBOutlet UIButton *button_Entry;
@end

@implementation EntryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.button_Entry addTarget:self action:@selector(go_content) forControlEvents:UIControlEventTouchUpInside];
}
    
- (void) go_content {
    
    ContentViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"content"];
    [self.navigationController pushViewController:view animated:YES];
  
    }



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



@end
