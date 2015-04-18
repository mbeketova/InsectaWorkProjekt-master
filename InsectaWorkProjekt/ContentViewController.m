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
    [self.button_detect addTarget:self action:@selector(go_determinant) forControlEvents:UIControlEventTouchUpInside];
 //   [self.button_prog addTarget:self action:@selector(go_Another) forControlEvents:UIControlEventTouchUpInside];
    
}

//метод на срабатывание первой кнопки - переход в "Общая информация":
- (void) go_inform {
 
    InformationViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"inform"];
    [self.navigationController pushViewController:view animated:YES];
    

    
}

//метод на срабатывание второй кнопки - переход в строение насекомых:
- (void) go_struct {

    
    StructureViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"struct"];
    [self.navigationController pushViewController:view animated:YES];
    
}
    

//метод на срабатывание третьей кнопки - переход в выбор подкласса (безкрылые или крылоносные)
- (void) go_klass {
    
    MenuViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"Menu"];
    [self.navigationController pushViewController:view animated:YES];
   
}


//метод на срабатывание четвертой кнопки - переход в выбор определителя
- (void) go_determinant {
    
    DeterninantViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"determinant"];
    [self.navigationController pushViewController:view animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



@end
