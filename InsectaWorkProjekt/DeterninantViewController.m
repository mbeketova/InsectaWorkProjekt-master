//
//  DeterninantViewController.m
//  InsectaWorkProjekt
//
//  Created by Admin on 15.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "DeterninantViewController.h"

@interface DeterninantViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button_GrownDeterminant;

@end

@implementation DeterninantViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //устанавливаем селекторы на срабатывание кнопок:
    [self.button_GrownDeterminant addTarget:self action:@selector(go_GrownDeterminant) forControlEvents:UIControlEventTouchUpInside];
 //   [self.button_struct addTarget:self action:@selector(go_struct) forControlEvents:UIControlEventTouchUpInside];
 //   [self.button_klass addTarget:self action:@selector(go_klass) forControlEvents:UIControlEventTouchUpInside];

}



- (void) go_GrownDeterminant {
    
    GrownDeterninantViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"grown"];
    [self.navigationController pushViewController:view animated:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
