//
//  NHReturnRemind.m
//  AnhChe
//
//  Created by Nguyen Cong Huy on 1/18/15.
//  Copyright (c) 2015 Nguyen Cong Huy. All rights reserved.
//

#import "NHReturnReminder.h"

@implementation NHReturnReminder

- (instancetype)initWithString:(NSString*)message {
    if(self = [super init]) {
        self.timerReminds = @[@172800.0, @345600.0, @864000.0];
        self.messsage = message;
    }
    return self;
}

- (void)requestLocalNotification {
    if ([UIApplication instancesRespondToSelector:@selector(registerUserNotificationSettings:)]){
        [[UIApplication sharedApplication] registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert|UIUserNotificationTypeSound categories:nil]];
    }
}

- (void)start {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationDidEnterBackgroundNotification:) name:UIApplicationDidEnterBackgroundNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationWillTerminateNotification:) name:UIApplicationWillTerminateNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationWillEnterForegroundNotification:) name:UIApplicationWillEnterForegroundNotification object:nil];
}

- (void)addLocalNotificationWithTimeRemind:(NSTimeInterval)timeRemind {
    UILocalNotification* localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:timeRemind];
    localNotification.alertBody = self.messsage;
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
}

- (void)addLocalNotifications {
    [self cancelAllLocalNotification];
    
    for (NSNumber *timeRemindNumber in self.timerReminds) {
        [self addLocalNotificationWithTimeRemind:[timeRemindNumber doubleValue]];
    }
}

- (void)cancelAllLocalNotification {
    NSArray *notificationArray = [[UIApplication sharedApplication] scheduledLocalNotifications];
    for(UILocalNotification *notification in notificationArray){
        [[UIApplication sharedApplication] cancelLocalNotification:notification] ;
    }
}

- (void)applicationDidEnterBackgroundNotification:(NSNotification*)notification {
    [self addLocalNotifications];
}

- (void)applicationWillTerminateNotification:(NSNotification*)notification {
    [self addLocalNotifications];
}

- (void)applicationWillEnterForegroundNotification:(NSNotification*)notification {
    [self cancelAllLocalNotification];
}

@end
