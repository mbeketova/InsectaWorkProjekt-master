//
//  ViewController.m
//  InsectaWorkProjekt
//
//  Created by Admin on 10.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "ViewController.h"
#import "ArrayInsecta.h"
#import "DatailViewController.h"
#import "CustomTableViewCell.h"
#import "EntryViewController.h"
#import "InformationViewController.h"
#import "ContentViewController.h"
#import "StructureViewController.h"



//Ипользовала эту работу как домашнее задание к 6 уроку


@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *button_one;
@property (weak, nonatomic) IBOutlet UIButton *button_two;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.arrayM = [[NSMutableArray alloc]init];

//производим выбор метода при нажатии кнопок:
    if (self.isFirstArray) {
        [self makeFirstArray];
    }
    else {
        [self makeAnotherArray];
    }
    
    
}






//возвращает первый массив для таблички (обработанный методом makeFirstArray из класса ArrayInsecta
- (void) makeFirstArray {
    
    ArrayInsecta * arrayInsecta = [[ArrayInsecta alloc]init];
    [arrayInsecta setDelegate:self];
    [arrayInsecta makeFirstArray];


    
    
}

//возвращает второй массив для таблички (обработанный методом makeAnotherArray из класса ArrayInsecta
- (void) makeAnotherArray {

    ArrayInsecta * arInsecta = [[ArrayInsecta alloc]init];
    [arInsecta setDelegate:self];
    [arInsecta makeAnotherArray];

}




#pragma mark - UITableViewDelegate


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrayM.count;

}

//здесь заполняем таблицу отряд-латиниское название:
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString * simpleTaibleIndefir = @"Cell";
    CustomTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:simpleTaibleIndefir];
  
    cell.custum_labelValue.text = [[self.arrayM objectAtIndex:indexPath.row]objectForKey:@"value"];
    cell.custum_labelValueLat.text = [[self.arrayM objectAtIndex:indexPath.row]objectForKey:@"latvalue"];
 
//указываем картинку для заполнения в кастомной ячейке:
    UIImage * image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[[self.arrayM objectAtIndex:indexPath.row]objectForKey:@"value"]]];
    cell.label_imageView.image = image;
    
  
    return cell;

}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    заполняем наследуемый вьюконтроллер DatailViewController (наименование, латинское наименование, описание)
    
    DatailViewController * detal = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
    [self.navigationController pushViewController:detal animated:YES];
    
    NSDictionary * dict = [self.arrayM objectAtIndex:indexPath.row];

    detal.string_MainValue = [dict objectForKey:@"value"];
    detal.string_textView = [dict objectForKey:@"discr"];
    detal.string_MainValueLat = [dict objectForKey:@"latvalue"];
    
}





- (IBAction)button_One:(id)sender {
    [self.makeArrays makeFirstArray];
}

- (IBAction)button_Two:(id)sender {
    [self.makeArrays makeAnotherArray];
}



#pragma mark - ArrayInsectaDelegate

- (void) makeArraysFirstArrayReady:(ArrayInsecta*) makeArrays FirstArray:(NSMutableArray*) firstArray {
    
    [self.arrayM removeAllObjects];
     self.arrayM = firstArray;
     self.isFirstArray = YES;
    
    
    
    
}
- (void) makeArraysSecondArrayReady:(ArrayInsecta*) makeArrays SecondArray:(NSMutableArray*) secondArray {
    
    [self.arrayM removeAllObjects];
     self.arrayM = secondArray;
     self.isFirstArray = NO;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
