//
//  MMItemView.h
//  ManaMana
//
//  Created by Mark Maglana on 1/14/12.
//  Copyright (c) 2012 Relaxdiego, Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MMItemView : NSTableCellView
{
    NSColor    *normalHighlight;
    NSColor    *normalShadow;
    NSColor    *selectedHighlight;
    NSColor    *selectedShadow;
    NSGradient *normalGradient;
    NSGradient *selectedGradient;
}
@end
