//
//  NSNotificationCenter+NotificationsOptions.h
//  InsectaWorkProjekt
//
//  Created by Admin on 18.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "ViewController.h" - почему-то без этого объявления у меня программа падает и в упор не видит UIViewController

@interface NSNotificationCenter (NotificationsOptions)

+ (void) set_Notif:(NSString*) name_Notif Selector:(SEL) name_Metod Object:(UIViewController*) controller;
+ (void) call_Notif:(NSString*) name_Notif Dictionary:(NSDictionary *)dictionary;
+ (void) call_Notif_With_Data:(NSString*) name_Notif;
+ (void) delete_Notif;

@end
