//
//  EntryCell.h
//  CallingHeaven
//
//  Created by My Mac on 2/19/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

#ifndef CallingHeaven_EntryCell_h
#define CallingHeaven_EntryCell_h


#endif

#import <UIKit/UIKit.h>



@class DiaryEntry;

@interface EntryCell : UITableViewCell

+ (CGFloat)heightForEntry:(DiaryEntry *)entry;

- (void)configureCellForEntry:(DiaryEntry *)entry;

@end