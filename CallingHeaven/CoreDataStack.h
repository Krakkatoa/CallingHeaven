//
//  CoreDataStack.h
//  CallingHeaven
//
//  Created by My Mac on 2/19/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

#ifndef CallingHeaven_CoreDataStack_h
#define CallingHeaven_CoreDataStack_h


#endif
#import <Foundation/Foundation.h>

@interface CoreDataStack : NSObject

+(instancetype)defaultStack;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;


- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
