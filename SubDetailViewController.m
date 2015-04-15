//
//  SubDetailViewController.m
//  InsectaWorkProjekt
//
//  Created by Admin on 13.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "SubDetailViewController.h"
#import "SubTableViewCell.h"
#import "DatailViewController.h"


@interface SubDetailViewController ()

@property (strong, nonatomic) IBOutlet UITableView *subTableView;




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

//здесь подгружается один из 6 массивов (в зависимости от того, какой отряд отображается на лейбле)

- (void) makeFirstArray {

    self.arrayMSub = [[NSMutableArray alloc]init];
    ArrayInsecta * arrayInsecta = [[ArrayInsecta alloc]init];
    [arrayInsecta setDelegate:self];

    if ([self.string_MainValue  isEqualToString:@"двукрылые"]) {
        
        [arrayInsecta makeSubArrayDiptera];
    }
    else if ([self.string_MainValue isEqualToString:@"равнокрылые"]) {
     
        [arrayInsecta makeSubArrayHomoptera];
    }
    
    else if ([self.string_MainValue isEqualToString:@"жесткокрылые"]) {
 
        [arrayInsecta makeSubArrayColeoptera];
    }
    else if ([self.string_MainValue isEqualToString:@"стрекозы"]) {
  
        [arrayInsecta makeSubArrayOdonatoptera];
    }
    else if ([self.string_MainValue isEqualToString:@"прямокрылые"]) {
    
        [arrayInsecta makeSubArrayOrthoptera];
    }
    else if ([self.string_MainValue isEqualToString:@"перепончатокрылые"]) {

        [arrayInsecta makeSubArrayHymenoptera];
    }
    
    

}

//возвращает второй массив для таблички (обработанный методом makeAnotherArray из класса ArrayInsecta
- (void) makeAnotherArray {
    self.isFirstArray = NO;
    [self reloadTableView]; //перегружаем таблицу
    [self.arrayMSub removeAllObjects]; // очищаем массив


}

#pragma mark - ArrayInsectaDelegate

//получаем таблицу:

- (void) makeSubArrayDipteraArrays: (ArrayInsecta*) makeSubArrays DipteraArray:(NSMutableArray*) dipteraArray; {
        [self reloadTableView]; //перегружаем таблицу
        [self.arrayMSub removeAllObjects]; // очищаем массив
        self.arrayMSub = dipteraArray; //получаем таблицу по методу протокола
        self.isFirstArray = YES;
    
}
- (void) makeSubArrayHomopteraArrays: (ArrayInsecta*) makeSubArrays HomopteraArray:(NSMutableArray*) homopteraArray;{
        [self reloadTableView]; //перегружаем таблицу
        [self.arrayMSub removeAllObjects]; // очищаем массив
        self.arrayMSub = homopteraArray; //получаем таблицу по методу протокола
        self.isFirstArray = YES;
    
}
- (void) makeSubArrayColeopteraArrays:(ArrayInsecta *) makeSubArrays ColeopteraArray:(NSMutableArray *)coleopteraArray;{
        [self reloadTableView]; //перегружаем таблицу
        [self.arrayMSub removeAllObjects]; // очищаем массив
        self.arrayMSub = coleopteraArray; //получаем таблицу по методу протокола
        self.isFirstArray = YES;
    
}
- (void) makeSubArrayOdonatopteraArrays:(ArrayInsecta *) makeSubArrays OdonatopteraArray:(NSMutableArray *)odonatopteraArray;{
        [self reloadTableView]; //перегружаем таблицу
        [self.arrayMSub removeAllObjects]; // очищаем массив
        self.arrayMSub = odonatopteraArray; //получаем таблицу по методу протокола
        self.isFirstArray = YES;

    
}
- (void) makeSubArrayOrthopteraArrays:(ArrayInsecta *) makeSubArrays OrthopteraArray:(NSMutableArray *)orthopteraArray;{
        [self reloadTableView]; //перегружаем таблицу
        [self.arrayMSub removeAllObjects]; // очищаем массив
        self.arrayMSub = orthopteraArray; //получаем таблицу по методу протокола
        self.isFirstArray = YES;

    
}
- (void) makeSubArrayHymenopteraArrays:(ArrayInsecta *) makeSubArrays HymenopteraArray:(NSMutableArray *)hymenopteraArray;{
        [self reloadTableView]; //перегружаем таблицу
        [self.arrayMSub removeAllObjects]; // очищаем массив
        self.arrayMSub = hymenopteraArray; //получаем таблицу по методу протокола
        self.isFirstArray = YES;
    
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

- (IBAction)button_SubOrder:(id)sender {
    [self makeFirstArray];
}

- (IBAction)button_FamilyOrder:(id)sender {
    [self makeAnotherArray];
}




//метод, который перезагружает таблицу в текущем окне:
- (void) reloadTableView {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.subTableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];});
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



@end
