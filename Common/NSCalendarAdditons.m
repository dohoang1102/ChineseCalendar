//
//  NSCalendarAdditons.m
//  Calendar
//
//  Created by Tony Li on 4/7/12.
//  Copyright (c) 2012 Tony Li. All rights reserved.
//

#import "NSCalendarAdditons.h"

@implementation NSCalendar(TLLunarCalendarAdditions)

+ (id)sharedCalendar {
    static NSCalendar *sCalendar = nil;
    @synchronized(self) {
        if (sCalendar == nil) {
            sCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
            [sCalendar setLocale:[NSLocale currentLocale]];
            [sCalendar setTimeZone:[NSTimeZone localTimeZone]];
        }
    }
    return sCalendar;
}

- (NSArray *)chineseWeekdaysWithPrefix:(NSString *)prefix {
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:7];
//    static const NSString *WEEKDAYS[7] = { @"周日", @"周一", @"周二", @"周三", @"周四", @"周五", @"周六" };
    static const NSString *WEEKDAYS[7] = { @"日", @"一", @"二", @"三", @"四", @"五", @"六" };
    for (int index = [self firstWeekday] - 1; index < 7; index++) {
        [array addObject:[NSString stringWithFormat:@"%@%@", prefix, WEEKDAYS[index]]];
    }
    for (int i = 0; i < [self firstWeekday] - 1; i++) {
        [array addObject:[NSString stringWithFormat:@"%@%@", prefix, WEEKDAYS[i]]];
    }
    return [array autorelease];
}

@end
