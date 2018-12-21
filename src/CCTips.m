//
//  CCTips.m
//  CCTips
//
//  Created by dengyouhua on 2018/12/21.
//  Copyright © 2018 cc | ccworld1000@gmail.com. All rights reserved.
//

#import "CCTips.h"

#define CCTipsTimeInterval 1.0

@implementation CCTips

+ (void) message:(NSString *)msg view:(UIView *)view {
    if (!msg || (![msg isKindOfClass:[NSString class]]) || ([msg length] <= 0) || !view) {
        NSLog(@"meg or view error");
        return;
    }

    [view makeToast:msg duration:CCTipsTimeInterval position:CSToastPositionCenter];
}

+ (void) message:(NSString *)msg view:(UIView *)view type:(CCTipsMessageType)type {
    if (!msg || (![msg isKindOfClass:[NSString class]]) || ([msg length] <= 0) || !view) {
        NSLog(@"meg or view error");
        if (type == CCTipsMessageTypeUIVIew) {
            return;
        }
    }

    switch (type) {
        case CCTipsMessageTypeOther:
        {
            return;
        }
        break;
        case CCTipsMessageTypeNSLog:
        {
            NSLog(@"[debug message] %@", msg);
        }
        break;
        case CCTipsMessageTypeUIVIew:
        {
            [CCTips message:msg view:view];
        }
        break;
        default: {
            return;
        }
                 break;
    } /* switch */
} /* message */


+ (void) message:(NSString *)msg window:(UIWindow *)window duration:(NSInteger)duration {
    if (!msg || (![msg isKindOfClass:[NSString class]]) || ([msg length] <= 0) || !window) {
        NSLog(@"meg or view error");
        return;
    }

    CGFloat time = duration;
    if (time < CCTipsTimeInterval) {
        time = CCTipsTimeInterval;
    }

    [[UIApplication sharedApplication].keyWindow makeToast:msg duration:time position:CSToastPositionCenter];
}

@end
