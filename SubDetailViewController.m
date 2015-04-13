//
//  SubDetailViewController.m
//  InsectaWorkProjekt
//
//  Created by Admin on 13.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "SubDetailViewController.h"
#import "SubTableViewCell.h"
#import "ArrayInsecta.h"
#import "DatailViewController.h"

@interface SubDetailViewController ()

@property (strong, nonatomic) IBOutlet UITableView *SubTableView;



@end

@implementation SubDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //прописываем действия кнопок:
    
    self.arrayMSub = [[NSMutableArray alloc]init];
    //производим выбор метода при нажатии кнопок:
    if (self.isFirstArray) {
        
        [self makeFirstArray];
    }
    else {
        [self makeAnotherArray];
    }
    
    
}

//здесь должен подгружаться один из двух массивов (в плане их должно быть 2 или 6 - в зависимости от названия лейбла)
//но в результате получаю пустой массив:

- (void) makeFirstArray {
    self.isFirstArray = YES;
    self.arrayMSub = [[NSMutableArray alloc]init];
    DatailViewController * datailViewController = [[DatailViewController alloc]init];
    NSString*textValue;
    [datailViewController tabSubOder:textValue];
    if ([textValue isEqualToString:@"двукрылые"]) {
        [self.arrayMSub removeAllObjects];
        self.arrayMSub = [ArrayInsecta makeSubArrayDiptera];
    }
    else if ([textValue isEqualToString:@"равнокрылые"]) {
        [self.arrayMSub removeAllObjects];
        self.arrayMSub = [ArrayInsecta makeSubArrayHomoptera];
    }
    

}

//возвращает второй массив для таблички (обработанный методом makeAnotherArray из класса ArrayInsecta
- (void) makeAnotherArray {
    self.isFirstArray = NO;


}






#pragma mark - UITableViewDelegate


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrayMSub.count;
    
}

//здесь заполняем таблицу отряд-латиниское название:
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString * simpleTaibleIndefir = @"Cell2";
    SubTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:simpleTaibleIndefir];
    
    cell.label_SubOrder.text = [[self.arrayMSub objectAtIndex:indexPath.row]objectForKey:@"valueSub"];
    cell.label_SubOrderLat.text = [[self.arrayMSub objectAtIndex:indexPath.row]objectForKey:@"latvalueSub"];
    
    //указываем картинку для заполнения в кастомной ячейке:
    UIImage * image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[[self.arrayMSub objectAtIndex:indexPath.row]objectForKey:@"valueSub"]]];
    cell.image_SubOrder.image = image;
    
    
    return cell;
    
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



@end
