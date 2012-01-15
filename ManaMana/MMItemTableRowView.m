//
//  MMItemRowView.m
//  ManaMana
//
//  Created by Mark Maglana on 1/14/12.
//  Copyright (c) 2012 Relaxdiego, Inc. All rights reserved.
//

#import "MMItemTableRowView.h"

@implementation MMItemTableRowView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)drawSelectionInRect:(NSRect)dirtyRect
{
    // Don't draw any selection rect
}

@end
