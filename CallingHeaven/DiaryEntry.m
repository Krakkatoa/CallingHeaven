//
//  DiaryEntry.m
//  CallingHeaven
//
//  Created by My Mac on 2/19/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DiaryEntry.h"


@implementation DiaryEntry

@dynamic date;
@dynamic body;
@dynamic imageData;
@dynamic mood;
@dynamic location;

- (NSString *)sectionName {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:self.date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMM yyyy"];
    
    return [dateFormatter stringFromDate:date];
}

@end
