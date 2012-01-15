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
    IBOutlet NSWindow         *window;
    IBOutlet NSBox            *itemTableViewContainer;
    MMItemTableViewController *itemTableViewController;
}
@end
