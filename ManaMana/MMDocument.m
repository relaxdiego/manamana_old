//
//  MMDocument.m
//  ManaMana
//
//  Created by Mark Maglana on 1/14/12.
//  Copyright (c) 2012 Relaxdiego, Inc. All rights reserved.
//

#import "MMDocument.h"

@implementation MMDocument

@synthesize itemArrayController;

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

#pragma mark - Item array manipulation

- (IBAction)addProjectItem:(id)sender
{
    NSLog(@"MMDocument addItem");
    
    // The following lines will have to be encapsulated in a model class.
    // For now, I want to keep things easy to understand for a beginner like me.
    
    NSManagedObject *newItem = [NSEntityDescription insertNewObjectForEntityForName:@"ProjectItem" inManagedObjectContext:[self managedObjectContext]];
    
	[newItem setValue:@"New Item" forKey:@"subject"];
}

- (IBAction)removeProjectItem:(id)sender
{
    NSLog(@"MMDocument removeItem");
}

@end
