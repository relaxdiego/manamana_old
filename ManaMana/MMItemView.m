//
//  MMItemView.m
//  ManaMana
//
//  Created by Mark Maglana on 1/14/12.
//  Copyright (c) 2012 Relaxdiego, Inc. All rights reserved.
//

#import "MMItemView.h"

@implementation MMItemView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        normalHighlight   = [[NSColor whiteColor] shadowWithLevel:0.03];
        normalShadow      = [[NSColor whiteColor] shadowWithLevel:0.05];
        selectedHighlight = [[NSColor yellowColor] highlightWithLevel:0.74];
        selectedShadow    = [[NSColor yellowColor] highlightWithLevel:0.70];
        
        normalGradient    = [[NSGradient alloc] initWithStartingColor:normalShadow
                                                          endingColor:normalHighlight];      
        selectedGradient  = [[NSGradient alloc] initWithStartingColor:selectedShadow
                                                          endingColor:selectedHighlight];
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    [super drawRect:dirtyRect];

    NSBezierPath *path = [[NSBezierPath alloc] init];
    NSRect        rect = [self bounds];
    NSGradient   *bg;
    
//    rect.origin.x    +=  6;
//    rect.origin.y    +=  2;
//    rect.size.width  -= 12;
//    rect.size.height -=  4;
    
    NSTableRowView *rowView = (NSTableRowView *) [self superview];
    
    if ([rowView isSelected]){
        bg = selectedGradient; 
    } else {
        bg = normalGradient;
    }
    
    [path appendBezierPathWithRoundedRect:rect xRadius:3 yRadius:3];
    [bg drawInBezierPath:path angle:90];
}

// Keep the subviews from going white when the ItemView is selected
- (void)setBackgroundStyle:(NSBackgroundStyle)backgroundStyle {
    [super setBackgroundStyle:NSBackgroundStyleLight];
}

@end
