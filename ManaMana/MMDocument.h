//
//  MMDocument.h
//  ManaMana
//
//  Created by Mark Maglana on 1/14/12.
//  Copyright (c) 2012 Relaxdiego, Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MMItemTableViewController.h"

@interface MMDocument : NSPersistentDocument
{
    IBOutlet NSWindow          *window;
    IBOutlet NSBox             *itemTableViewContainer;
    IBOutlet NSArrayController *itemArrayController;
    MMItemTableViewController  *itemTableViewController;
}

@property (readonly, strong) NSArrayController *itemArrayController;

- (IBAction)addProjectItem:(id)sender;
- (IBAction)removeProjectItem:(id)sender;

@end
