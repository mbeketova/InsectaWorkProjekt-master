//
//  GrownDeterninantViewController.m
//  InsectaWorkProjekt
//
//  Created by Admin on 15.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "GrownDeterninantViewController.h"

@interface GrownDeterninantViewController ()

@property (weak, nonatomic) IBOutlet UITextView *text_GrownDeterminant;
@property (weak, nonatomic) IBOutlet UIButton *button_YES;
@property (weak, nonatomic) IBOutlet UIButton *button_NO;
@property (weak, nonatomic) IBOutlet UIButton *button_GoContent;

@end

@implementation GrownDeterninantViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.button_GoContent addTarget:self action:@selector(go_content) forControlEvents:UIControlEventTouchUpInside];
    [self.button_YES addTarget:self action:@selector(go_YES) forControlEvents:UIControlEventTouchUpInside];
    [self.button_NO addTarget:self action:@selector(go_NO) forControlEvents:UIControlEventTouchUpInside];
    
//флаг 1
    self.text_GrownDeterminant.text = @"Насекомые с одной передней парой крыльев, имеющих четкие жилки. Задняя пара крыльев преобразована в жужжальца.";
    if (self.isFirstReply == YES) {
        NSLog(@"Отряд Двукрылые");
//флаг 2
        self.text_GrownDeterminant.text = @" Антенны длинные, многочлениковые, обычно длиннее головы. Ротовой аппарат колюще-сосущий";
        
        if (self.isFirstReply == YES) {
            NSLog(@"Подотряд Длинноусые Двукрылые - Nevatocera.");
            //результат
            }
//флаг 3
        self.text_GrownDeterminant.text = @"Антенны короткие, состоящие из 3 члеников. Ротовой аппарат в большинстве сосуще-лижущий";
        
        if (self.isFirstReply == YES) {
            NSLog(@"Подотряд Короткоусые двукрылые - Brachycera");
            //результат
        }
        //возврат в 2
    }
//флаг 4
    self.text_GrownDeterminant.text = @"Насекомые с двумя парами крыльев или крылья отсутствуют.";
        
        if (self.isFirstReply == YES) {
//флаг 5
            self.text_GrownDeterminant.text = @"Ротовой аппарат сосущий. часто в виде спирально закрученного хоботка. Крылья пленчатые, покрыты легко стирающимися чешуйками ";
            if (self.isFirstReply == YES)  {

                NSLog(@"Отряд Чешуекрылые, или Бабочки - Lepidoptera");
                //результат
            }
//флаг 6
            self.text_GrownDeterminant.text = @"Крылья без чешуек (голые или покрытые мучнистым налетом) или передние крылья ороговевшие";
            if (self.isFirstReply == YES) {
//флаг 7
                self.text_GrownDeterminant.text = @" Обе пары крыльев узкие с бахромой длинных волосков, иногда недоразвитые. Мелкие (0,5-2мм) насекомые с удлиненным телом и короткими ногами. Лапки 1-2 члениковые с пузырьком на конце.";
                if (self.isFirstReply == YES) {
                    NSLog(@"Отряд Бахромчатокрылые, или трипсы - Thysanoptera");
                    // результат
                }
//флаг 8
                self.text_GrownDeterminant.text = @"По крайней мере, передний край передних крыльев без бахромы из длинных волосков. Лапки с коготками.";
                if (self.isFirstReply == YES) {
                    
//флаг 9
                    self.text_GrownDeterminant.text = @"Ротовой аппарат колюще-сосущий в виде членистого хоботка.";
                    
                    if (self.isFirstReply == YES) {
//флаг 10
                        self.text_GrownDeterminant.text = @"Передние крылья однородные, пленчатые или кожистые, обычно сложенные в покое кровлеобразно. Есть бескрылые формы. Хоботок причленяется к задней части головы.";
                        
                        if (self.isFirstReply == YES) {
                            NSLog(@"Отряд Равнокрылые - Homoptera");
//флаг 11
                            self.text_GrownDeterminant.text = @"Лапки 3-члениковые. Антенны очень короткие, 3-члениковые. Крылья с продольными и поперечными жилками.";
                            if (self.isFirstReply == YES) {
                                NSLog(@"Отряд Равнокрылые - Homoptera. Подотряд Цикадовые - Cicadinea");
                                //результат
                            }
//флаг 12
                            self.text_GrownDeterminant.text = @"Лапки 1-2 члениковые или отсутствуют. Крылья, если развиты, без поперечных жилок.";
                            if (self.isFirstReply==YES) {
//флаг 13
                                self.text_GrownDeterminant.text = @"Лапки обычно 2-члениковые, всегда с парой коготков. Крыльев две пары или они отсутствуют.";
                                
                                if (self.isFirstReply == YES) {
//флаг 14
                                    self.text_GrownDeterminant.text = @"Ноги короткие, задние ноги с утолщенными бедрами, прыгательные. Антенны 10-члениковые.";
                                    
                                    if (self.isFirstReply == YES) {
                                        NSLog(@"Отряд Равнокрылые - Homoptera. Подотряд Листоблошки - Psyllinea");
                                        //результат
                                    }
//флаг 15
                                    self.text_GrownDeterminant.text = @"Ноги удлиненные, с тонкими бедрами. Антенны состоят не более чем из 7 члеников.";
                                    
                                    if (self.isFirstReply == YES) {
//флаг 16
                                        self.text_GrownDeterminant.text = @"Антенны 7-и члениковые. Обе пары крыльев покрыты белым налетом, непрозрачные.";
                                        
                                        if (self.isFirstReply == YES) {
                                            NSLog(@"Отряд Равнокрылые - Homoptera. Подотряд Белокрылки - Aleurodinea");
                                            //результат
                                        }
//флаг 17
                                        self.text_GrownDeterminant.text = @"Антенны 3-6 члениковые, крылья прозрачные, задние крылья меньше передних.";
                                        
                                        if (self.isFirstReply == YES) {
                                            NSLog(@"Отряд Равнокрылые - Homoptera. Подотряд Тли - Aphidinea");
                                            //результат
                                        }
                                        //здесь поставить условие возврата в 16
                                      }
                                    //здесь поставить условие возврата в 14
                                }
//флаг 18
                                self.text_GrownDeterminant.text = @"Лапки 1-члениковые, всегда с одним коготком. Крыльев одна пара или они отсутствуют.";
                                
                                if (self.isFirstReply == YES) {
                                    NSLog(@"Отряд Равнокрылые - Homoptera. Подотряд Кокциды - Coccinea");
                                    //результат
                                }
                                //здесь поставить условие возврата в 13
                            }
                           //здесь поставить условие возврата в 11
                        }
//флаг 19
                        self.text_GrownDeterminant.text = @"Передние крылья неоднородные: на вершине пленчатые, в остальной части плотные. В покое крылья плоско сложены на теле, иногда укорочены или отсутствуют. Хоботок причленен к передней части головы.";
                        if (self.isFirstReply == YES) {
                            NSLog(@"Отряд Полужесткокрылые - Hemiptera");
                            //результат
                        }
                        //здесь поставить условие возврата в 10
                    }
//флаг 20
                    self.text_GrownDeterminant.text = @"Ротовой аппарат грызущий или грызуще-лижущий с хорошо развитыми мандибулами.";
                    if (self.isFirstReply == YES) {
//флаг 21
                        self.text_GrownDeterminant.text = @"Передние крылья представляют собой плотные ороговевшие надкрылья, утратившие жилкование, в сложенном состоянии сходятся по шву.";
                        
                        if (self.isFirstReply == YES) {
//флаг 22
                            self.text_GrownDeterminant.text = @"Надкрылья укорочены и прикрывают только часть брюшка. На конце тела нет клещевидных придатков.";
                            
                            if (self.isFirstReply == YES) {
                                NSLog(@"Отряд Уховертки - Dermaptera");
                                //результат
                            }
//флаг 23
                            self.text_GrownDeterminant.text = @"Надкрылья покрывают все брюшко или его часть. На конце тела нет клещевидных придатков. ";
                            
                            if (self.isFirstReply == YES) {
                                NSLog(@"Отряд Жесткокрылые - Coleoptera");
//флаг 24
                                self.text_GrownDeterminant.text = @"Тазики задних ног большие, неподвижные.";
                                if (self.isFirstReply == YES) {
                                    NSLog(@"Отряд Жесткокрылые - Coleoptera. Подотряд Плотоядные жесткокрылые - Adephaga");
                                    //результат
                                }
//флаг 25
                                self.text_GrownDeterminant.text = @"Тазики задних ног обычно короткие, подвижные.";
                                if (self.isFirstReply == YES) {
                                    NSLog(@"Отряд Жесткокрылые - Coleoptera. Подотряд Разноядные жесткокрылые - Polyphaga.");
                                    //результат
                                }
                                //возврат в 24
                            }
                           //возврат в 22
                        }
//флаг 26
                        self.text_GrownDeterminant.text = @"Передние крылья пленчатые или уплотненные, кожистые, с хорошо сохранившимся жилкованием.";
                        
                        if (self.isFirstReply == YES) {
//флаг 27
                            self.text_GrownDeterminant.text = @"Антенны короче головы. Крылья пленчатые, с сетчатым жилкованием. Брюшко удлиненное. ";
                            
                            if (self.isFirstReply == YES) {
                                NSLog(@"Отряд Стрекозы - Odonatoptera");
//флаг 28
                                self.text_GrownDeterminant.text = @"Передние и задние крылья одинаковы по форме и жилкованию";
                                if (self.isFirstReply == YES) {
                                    NSLog(@"Отряд Стрекозы - Odonatoptera. Подотряд Равнокрылые стрекозы - Zygoptera");
                                    //результат
                                }
//флаг 29
                                self.text_GrownDeterminant.text = @"Передние и задние крылья одинаковы по форме и жилкованию. Имеется крыловой треугольник.";
                                if (self.isFirstReply == YES) {
                                    NSLog(@"Отряд Стрекозы - Odonatoptera. Подотряд Разнокрылые стрекозы - Anisoptera.");
                                    //результат
                                }
                                //здесь поставить условие возврата в 28
                            }
//флаг 30
                            self.text_GrownDeterminant.text = @"Антенны длиннее головы";
                            
                            if (self.isFirstReply == YES) {
//флаг 31
                                self.text_GrownDeterminant.text = @"Тазики ног расставлены. Переднеспинка крупная. Задние ноги обычно прыгательные, с утощенными бедрами или передние ноги копательные.";
                                
                                if (self.isFirstReply == YES) {
                                    NSLog(@"Отряд Прямокрылые - Orthoptera");
//флаг 32
                                    self.text_GrownDeterminant.text = @"Антенны длиннее половины тела. Орган слуха расположен на передних голенях. Самки обычно с длинным яйцекладом.";
                                    if (self.isFirstReply == YES) {
                                        NSLog(@"Отряд Прямокрылые - Orthoptera. Подотряд Длинноусые прямокрылые - Dolichoera (Ensifera)");
                                        //результат
                                    }
//флаг 33
                                    self.text_GrownDeterminant.text = @"Антенны короткие, не длиннее половины тела. Органы слуха размещаются по бокам первого сегмента брюшка. Самки с коротким яйцекладом.";
                                    if (self.isFirstReply == YES) {
                                        NSLog(@"Отряд Прямокрылые - Orthoptera. Подотряд Короткоусые прямокрылые - Caelifera");
                                        //результат
                                    }
                                    //здесь поставить условие возврата в 32
                                }
//флаг 34
                                self.text_GrownDeterminant.text = @"Тазики ног каждой пары соприкосающиеся, крупные.";
                                
                                if (self.isFirstReply == YES) {
                                    
//флаг 35
                                    self.text_GrownDeterminant.text = @"Передние крылья кожистые, более твердые, чем задние пленчатые. Крылья лежат на брюшке плоско.";
                                    
                                    if (self.isFirstReply == YES) {
//флаг 36
                                        self.text_GrownDeterminant.text = @"Передние ноги хватательные. Тело вытянутое, переднеспинка удлиненная.";
                                        
                                        if (self.isFirstReply == YES) {
                                            NSLog(@"Отряд Богомолы - Mantoptera");
                                            //результат
                                        }
//флаг 37
                                        self.text_GrownDeterminant.text = @"Все ноги бегательные. Тело плоское. Переднеспинка расширенная, частично или полностью прикрывает голову сверху.";
                                        
                                        if (self.isFirstReply == YES) {
                                            NSLog(@"Отряд Тараканы - Blattoptera");
                                            //результат
                                        }
                                        
                                        //здесь поставить условие возврата в 36
                                    }
                                    
//флаг 38
                                    self.text_GrownDeterminant.text = @"Передние и задние крылья пленчатые.";
                                    
                                    if (self.isFirstReply == YES) {
//флаг 39
                                        self.text_GrownDeterminant.text = @"Передние крылья длиннее задних и расширяются от основания к вершине. Задние крылья способны сцепляться с передними. Покровы твердые.";
                                        
                                        if (self.isFirstReply == YES) {
                                            NSLog(@"Отряд Перепончатокрылые - Hymenoptera.");
//флаг 40
                                            self.text_GrownDeterminant.text = @"Брюшко сидячее, т.е. не сужено или едва сужено у основания. Крылья с замкнутыми ячейками.";
                                            
                                            if (self.isFirstReply == YES) {
                                                NSLog(@"Отряд Перепончатокрылые - Hymenoptera. Подотряд Сидячебрюхие перепончатокрылые - Symphyta");
                                                //результат
                                            }
//флаг 41
                                            self.text_GrownDeterminant.text = @"Брюшко сильно сужено у основания, стебельчатое. У мелких форм сидячее, но тогда крылья без замкнутых ячеек.";
                                            
                                            if (self.isFirstReply == YES) {
                                                NSLog(@"Отряд Перепончатокрылые - Hymenoptera. Подотряд Стебельчатобрюхие перепончатокрылые - Apocrita");
                                                //результат
                                            }
                                            //здесь поставить условие возврата в 40
                                            
                                        }
//флаг 42
                                        self.text_GrownDeterminant.text = @"Передние и задние крылья сходны по размерам и форме. Жилкование сетчатое.";
                                        
                                        if (self.isFirstReply == YES) {
                                            NSLog(@"Отряд Сетчатокрылые - Neuroptera");
                                            //результат
                                        }
                                        //здесь поставить условие возврата в 39
                                    }
                                    //здесь поставить условие возврата в 35
                                }
                                //здесь поставить условие возврата в 31
                            }
                            //здесь поставить условие возврата в 27
                        }
                        //здесь поставить условие возврата в 21
                    }
                    //здесь поставить условие возврата в 9
                    
                }
                //здесь поставить условие возврата в 7
                
            }
            
         //здесь поставить условие возврата в 5
        }
        
       //здесь поставить условие возврата в 1

 
    
    
    
    
    
    
    
}

- (void) go_YES {
    self.isFirstReply = YES;

    
}

- (void) go_NO {
    self.isFirstReply = NO;
    
}



- (void) go_content { // переход в оглавление
    
    ContentViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"content"];
    [self.navigationController pushViewController:view animated:YES];
}



















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



@end
