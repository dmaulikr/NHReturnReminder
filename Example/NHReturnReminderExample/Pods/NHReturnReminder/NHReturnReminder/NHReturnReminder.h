//
//  NHReturnRemind.h
//  AnhChe
//
//  Created by Nguyen Cong Huy on 1/18/15.
//  Copyright (c) 2015 Nguyen Cong Huy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NHReturnReminder : NSObject

@property (nonatomic) NSString* messsage;

// an NSNumber array descript num second from home action, that notification will fire
@property (nonatomic) NSArray *timerReminds;

- (instancetype)initWithString:(NSString*)message;

// request local notification if you not want to do it by yourself
- (void)requestLocalNotification;

- (void)start;

@end
