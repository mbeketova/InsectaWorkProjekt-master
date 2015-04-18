//
//  ViewController.m
//  InsectaWorkProjekt
//
//  Created by Admin on 10.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "ViewController.h"
#import "DatailViewController.h"
#import "CustomTableViewCell.h"
#import "EntryViewController.h"
#import "InformationViewController.h"
#import "ContentViewController.h"
#import "StructureViewController.h"




//Ипользовала эту работу как домашнее задание к 7 уроку


@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) ArrayInsecta * arrayInsecta;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.arrayM = [[NSMutableArray alloc]init];
    self.arrayInsecta = [ArrayInsecta new];

    
    if (self.isFirstArray) {
        [self makeFirst];
    }
    else {
        [self makeAnother];
    }
    
    
   
}


- (void) makeFirst {
    ArrayInsecta * arrayInsecta = [[ArrayInsecta alloc]init];
    [arrayInsecta setDelegate:self];
    [arrayInsecta makeFirstArray];
}


- (void) makeAnother {
    ArrayInsecta * arrayInsecta = [[ArrayInsecta alloc]init];
    [arrayInsecta setDelegate:self];
    [arrayInsecta makeAnotherArray];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [NSNotificationCenter set_Notif:ARRAY_NOTIF Selector:@selector(makeFirstArray:) Object:self];

    
}

- (void)viewWillDisappear:(BOOL)animated{
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //пришлось вставить вот так грубо, а не через категорию, т.к. метод видит, но не срабатывает... чудеса!
}

//возвращает первый массив для таблички (обработанный методом makeFirstArray из класса ArrayInsecta - при нажатии на кнопку "безкрылые" на текущей странице
- (void) makeFirstArray:(NSNotification*)notification {

    
       [self.arrayM removeAllObjects]; // очищаем массив
        self.arrayM = [notification.userInfo objectForKey: ARRAY_KEY];

        self.isFirstArray = YES;
        [self reloadTableView]; //перегружаем таблицу

}

//возвращает второй массив для таблички (обработанный методом makeFirstArray из класса ArrayInsecta - при нажатии на кнопку "безкрылые" на текущей странице
- (void) makeAnotherArray:(NSNotification*)notification {
    
    [self.arrayM removeAllObjects]; // очищаем массив
    self.arrayM = [notification.userInfo objectForKey: ARRAY_KEY];
    
    self.isFirstArray = NO;
    [self reloadTableView]; //перегружаем таблицу

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


//кнопка на текущем вьюконтроллере, которая обновляет экран и загружает таблицу с бескрылыми
- (IBAction)push_One:(id)sender {
    [self.arrayInsecta makeFirstArray]; //обращаемся к методу который загружает первую таблицу
 
    
}

//кнопка на данном вьюконтроллере, которая обновляет экран и загружает таблицу с крылатыми
- (IBAction)push_Two:(id)sender {
    [self.arrayInsecta makeAnotherArray]; //обращаемся к методу который загружает вторую таблицу
}


#pragma mark - ArrayInsectaDelegate

//метод из протокола ArrayInsectaDelegate на загрузку первого массива:
- (void) makeArraysFirstArrayReady:(ArrayInsecta*) makeArrays FirstArray:(NSMutableArray*) firstArray {

    [self.arrayM removeAllObjects]; // очищаем массив
     self.arrayM = firstArray; //получаем таблицу по методу протокола
    [self reloadTableView]; //перегружаем таблицу

}

//метод из протокола ArrayInsectaDelegate на загрузку второго массива:
- (void) makeArraysSecondArrayReady:(ArrayInsecta*) makeArrays SecondArray:(NSMutableArray*) secondArray {
    [self.arrayM removeAllObjects];
    self.arrayM = secondArray;
    [self reloadTableView];
}


//метод, который перезагружает таблицу в текущем окне:
- (void) reloadTableView {
    dispatch_async(dispatch_get_main_queue(), ^{
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];});
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
