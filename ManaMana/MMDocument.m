//
//  MMDocument.m
//  ManaMana
//
//  Created by Mark Maglana on 1/14/12.
//  Copyright (c) 2012 Relaxdiego, Inc. All rights reserved.
//

#import "MMDocument.h"

@implementation MMDocument

- (id)init
{
    self = [super init];
    if (self) {
        // Add subclass-specific initialization here.
        // If an error occurs here, return nil.
    }
    return self;
}

- (NSString *)windowNibName
{
    return @"MMDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    
    itemTableViewController = [[MMItemTableViewController alloc] init];
    [itemTableViewController setManagedObjectContext:[self managedObjectContext]];
    [itemTableViewContainer setContentView:[itemTableViewController view]];
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

@end
