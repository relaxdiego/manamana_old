//
//  MySpotlightImporter.h
//  ManaManaImporter
//
//  Created by Mark Maglana on 1/14/12.
//  Copyright (c) 2012 Relaxdiego, Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MySpotlightImporter : NSObject

@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (BOOL)importFileAtPath:(NSString *)filePath attributes:(NSMutableDictionary *)attributes error:(NSError **)error;

@end
