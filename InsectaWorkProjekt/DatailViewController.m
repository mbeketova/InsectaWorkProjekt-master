//
//  DatailViewController.m
//  InsectaWorkProjekt
//
//  Created by Admin on 10.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "DatailViewController.h"
#import "ArrayInsecta.h"
#import "SubTableViewCell.h"




@interface DatailViewController ()
@property (strong, nonatomic) IBOutlet UIButton *button_SubOrder;
@property (strong, nonatomic) IBOutlet UIButton *button_RodOrder;



@end

@implementation DatailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//заполнение лейбов, картинки и текста в окне деталей:
    self.label_MainValue.text = self.string_MainValue;
    self.label_textView.text = self.string_textView;
    self.label_MainValueLat.text = self.string_MainValueLat;
    
    
    UIImage * image = [UIImage imageNamed: [NSString stringWithFormat:@"%@.jpg", self.string_MainValue]];
    self.label_imageView.image = image;
    
    
    //устанавливаем селекторы на срабатывание кнопок
    
    if ([self.label_MainValue.text isEqualToString:@"двукрылые"]) {
        [self.button_SubOrder addTarget:self action:@selector(makeSubArrayOder) forControlEvents:UIControlEventTouchUpInside];
        
    }
    
    else if ([self.label_MainValue.text isEqualToString:@"равнокрылые"]){
        [self.button_SubOrder addTarget:self action:@selector(makeSubArrayOder) forControlEvents:UIControlEventTouchUpInside];
    }
    
    else {
        [self.button_RodOrder addTarget:self action:@selector(makeSubArrayRod) forControlEvents:UIControlEventTouchUpInside];
    }


    
}



//метод на срабатывание первой кнопки:

- (void) makeSubArrayOder {

        
        SubDetailViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"Cell2"];
        [self.navigationController pushViewController:view animated:YES];
        view.isFirstArray = YES;

}




- (void) makeSubArrayRod {
        SubDetailViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"Cell2"];
        [self.navigationController pushViewController:view animated:YES];
        view.isFirstArray = NO;

}

//метод проверяет что написано на кнопке, и присваивает значение textValue
//но судя по тому, что массив пустой - это место и не работает

- (void) tabSubOder:(NSString*)textValue {
        self.label_MainValue.text = self.string_MainValue;
    if ([self.label_MainValue.text isEqualToString:@"двукрылые"]) {
        textValue = @"двукрылые";}
    else if([self.label_MainValue.text isEqualToString:@"равнокрылые"]) {
        textValue = @"равнокрылые";
    }
    NSLog(@"%@", textValue);
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}




@end