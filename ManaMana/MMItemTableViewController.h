//
//  MMItemTableViewController.h
//  ManaMana
//
//  Created by Mark Maglana on 1/14/12.
//  Copyright (c) 2012 Relaxdiego, Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MMManagedObjectViewController.h"
#import "MMItemViewController.h"
#import "MMItemTableRowView.h"

@interface MMItemTableViewController : MMManagedObjectViewController <NSTableViewDelegate, NSTableViewDataSource>
{
    NSMutableArray *itemViewControllers;
}

@property (readonly, strong) NSArray *backlogItemsSortDescriptor;

@end
