//
//  ContentViewController.m
//  InsectaWorkProjekt
//
//  Created by Admin on 11.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "ContentViewController.h"
#import "EntryViewController.h"

@interface ContentViewController ()
@property (strong, nonatomic) IBOutlet UIButton *button_inform;

@property (strong, nonatomic) IBOutlet UIButton *button_struct;

@property (strong, nonatomic) IBOutlet UIButton *button_klass;
@property (strong, nonatomic) IBOutlet UIButton *button_detect;
@property (strong, nonatomic) IBOutlet UIButton *button_prog;

@end

@implementation ContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    //устанавливаем селекторы на срабатывание кнопок
    [self.button_inform addTarget:self action:@selector(go_inform) forControlEvents:UIControlEventTouchUpInside];
    [self.button_struct addTarget:self action:@selector(go_struct) forControlEvents:UIControlEventTouchUpInside];
    [self.button_klass addTarget:self action:@selector(go_klass) forControlEvents:UIControlEventTouchUpInside];
 //   [self.button_detect addTarget:self action:@selector(go_Another) forControlEvents:UIControlEventTouchUpInside];
 //   [self.button_prog addTarget:self action:@selector(go_Another) forControlEvents:UIControlEventTouchUpInside];
    
}

//метод на срабатывание первой кнопки:
- (void) go_inform {
    

    
    InformationViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"inform"];
    [self.navigationController pushViewController:view animated:YES];
    

    
}

//метод на срабатывание второй кнопки:
- (void) go_struct {
    

    
    StructureViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"struct"];
    [self.navigationController pushViewController:view animated:YES];
    
}
    

- (void) go_klass {
        

        
    MenuViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"Menu"];
    [self.navigationController pushViewController:view animated:YES];
        

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



@end
