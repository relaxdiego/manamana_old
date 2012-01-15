//
//  MMManagedObjectViewController.h
//  ManaMana
//
//  Created by Mark Maglana on 1/15/12.
//  Copyright (c) 2012 Relaxdiego, Inc. All rights reserved.
//

// IMPORTANT: This is an ABSTRACT class to be subclassed by other view controllers

#import <Cocoa/Cocoa.h>

@interface MMManagedObjectViewController : NSViewController

@property (strong) NSManagedObjectContext *managedObjectContext;

@end
