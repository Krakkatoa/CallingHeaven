//
//  DiaryEntry.h
//  CallingHeaven
//
//  Created by My Mac on 2/19/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

#ifndef CallingHeaven_DiaryEntry_h
#define CallingHeaven_DiaryEntry_h


#endif

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ENUM(int16_t, DiaryEntryMood) {
    DiaryEntryMoodGood = 0,
    DiaryEntryMoodAverage = 1,
    DiaryEntryMoodBad = 2
    
};


@interface DiaryEntry : NSManagedObject

@property (nonatomic) NSTimeInterval date;
@property (nonatomic, retain) NSString * body;
@property (nonatomic, retain) NSData * imageData;
@property (nonatomic) int16_t mood;
@property (nonatomic, retain) NSString * location;

@end
