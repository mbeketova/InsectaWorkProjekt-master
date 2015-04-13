//
//  MenuViewController.m
//  InsectaWorkProjekt
//
//  Created by Admin on 11.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "MenuViewController.h"


@interface MenuViewController ()

//объявляем свойства для кнопок: Первичнобезкрылые и Крылоносные

@property (strong, nonatomic) IBOutlet UIButton *button_First;
@property (strong, nonatomic) IBOutlet UIButton *button_Another;


@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    //устанавливаем селекторы на срабатывание кнопок
    [self.button_First addTarget:self action:@selector(go_First) forControlEvents:UIControlEventTouchUpInside];
    [self.button_Another addTarget:self action:@selector(go_Another) forControlEvents:UIControlEventTouchUpInside];
   
}

//метод на срабатывание первой кнопки:
- (void) go_First {
    
    //если нажимается первая кнопка, то isFirstArray = YES
    
    ViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"Cell"];
    [self.navigationController pushViewController:view animated:YES];

    view.isFirstArray = YES;
    
}

//метод на срабатывание второй кнопки:
- (void) go_Another {
    
    //если нажимается вторая кнопка, то isFirstArray = NO
    
    ViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"Cell"];
    [self.navigationController pushViewController:view animated:YES];
    
    view.isFirstArray = NO;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



@end
