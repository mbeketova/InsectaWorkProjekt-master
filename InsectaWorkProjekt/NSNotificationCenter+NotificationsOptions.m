//
//  NSNotificationCenter+NotificationsOptions.m
//  InsectaWorkProjekt
//
//  Created by Admin on 18.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "NSNotificationCenter+NotificationsOptions.h"

@implementation NSNotificationCenter (NotificationsOptions)


+ (void) set_Notif:(NSString*) name_Notif Selector:(SEL) name_Metod Object:(UIViewController *) controller {
    //подписываемся на нотификацию:
    [[NSNotificationCenter defaultCenter] addObserver:controller selector:name_Metod name:name_Notif object:nil];
}



+ (void) call_Notif:(NSString*) name_Notif Dictionary:(NSDictionary *)dictionary {
    [[NSNotificationCenter defaultCenter]postNotificationName:name_Notif object:nil userInfo:dictionary];
}


+ (void) call_Notif_With_Data:(NSString*) name_Notif {
    [[NSNotificationCenter defaultCenter]postNotificationName:name_Notif object:nil];
}

+ (void) delete_Notif {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
