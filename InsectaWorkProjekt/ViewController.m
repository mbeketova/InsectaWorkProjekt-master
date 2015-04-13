//
//  ViewController.m
//  InsectaWorkProjekt
//
//  Created by Admin on 10.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "ViewController.h"
#import "DatailViewController.h"
#import "ArrayInsecta.h"
#import "CustomTableViewCell.h"
#import "EntryViewController.h"
#import "InformationViewController.h"
#import "ContentViewController.h"
#import "StructureViewController.h"

//Ипользовала эту работу как домашнее задание к 5 уроку


@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITableView *tableView;


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
    self.isFirstArray = YES;
    [self.arrayM removeAllObjects];
    self.arrayM = [ArrayInsecta makeFirstArray];
    
}

//возвращает второй массив для таблички (обработанный методом makeAnotherArray из класса ArrayInsecta
- (void) makeAnotherArray {
    self.isFirstArray = NO;
    [self.arrayM removeAllObjects];
    self.arrayM = [ArrayInsecta makeAnotherArray];
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



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


@end
