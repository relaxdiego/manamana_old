//
//  MMItemTableViewController.m
//  ManaMana
//
//  Created by Mark Maglana on 1/14/12.
//  Copyright (c) 2012 Relaxdiego, Inc. All rights reserved.
//

#import "MMItemTableViewController.h"

NSString *ManaManaItemsDropType = @"ManaManaItemsDropType";

@implementation MMItemTableViewController

@synthesize backlogItemsSortDescriptor = __backlogItemsSortDescriptor;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (id)init
{
    itemViewControllers = [[NSMutableArray alloc] init];
    
    return [self initWithNibName:@"MMItemTableView" bundle:nil];
}

# pragma mark - Sort descriptors

- (NSArray *)backlogItemsSortDescriptors
{
	if( __backlogItemsSortDescriptor == nil )
	{
		__backlogItemsSortDescriptor = [NSArray arrayWithObject:[[NSSortDescriptor alloc] initWithKey:@"position" ascending:YES]];
	}
	return __backlogItemsSortDescriptor;
}

# pragma mark - table display methods

- (NSView *)tableView:(NSTableView *)tableView
   viewForTableColumn:(NSTableColumn *)tableColumn
                  row:(NSInteger)row 
{
    NSView *itemView = [tableView makeViewWithIdentifier:@"MMItemView" owner:self];
    
    if (!itemView) {
        MMItemViewController *viewController = [[MMItemViewController alloc] init];
        [itemViewControllers addObject:viewController];
        itemView = [viewController view];
        [itemView setIdentifier:@"MMItemView"];
    }
    
    return itemView;
}

- (NSTableRowView *)tableView:(NSTableView *)tableView rowViewForRow:(NSInteger)row
{
    NSTableRowView *rowView = [tableView makeViewWithIdentifier:@"MMItemRowView" owner:self];
    
    if (!rowView) {
        rowView = [[MMItemTableRowView alloc] init];
        [rowView setIdentifier:@"MMItemRowView"];
    }
    
    return rowView;
}

# pragma mark - table drag and drop support methods

- (BOOL)tableView:(NSTableView *)tv writeRowsWithIndexes:(NSIndexSet *)rowIndexes toPasteboard:(NSPasteboard*)pasteboard
{
	NSData *data = [NSKeyedArchiver archivedDataWithRootObject:rowIndexes];
	[pasteboard declareTypes:[NSArray arrayWithObject:ManaManaItemsDropType] owner:self];
	[pasteboard setData:data forType:ManaManaItemsDropType];
	return YES;
}

- (NSDragOperation)tableView:(NSTableView*)tv validateDrop:(id <NSDraggingInfo>)info proposedRow:(NSInteger)row proposedDropOperation:(NSTableViewDropOperation)operation
{
	if( [info draggingSource] == [self view] && operation == NSTableViewDropAbove) {
		return NSDragOperationMove;
	} else {
		return NSDragOperationNone;
	}
}

/*
 The delegate method that handles the drop needs to do various things. First, it needs to extract the indexes of the rows that are being dropped and collect the items to which those indexes refer. It should set the viewPosition of these items to the temporaryViewPosition value so that they are not returned by subsequent fetches. Second, it needs to collect two arrays of items — one of objects with viewPosition less than and the other greater than the proposed drop row. Finally, it should renumber the viewPositions of the objects in these arrays in the correct order.
 */
- (BOOL)tableView:(NSTableView *)aTableView acceptDrop:(id <NSDraggingInfo>)info row:(NSInteger)row dropOperation:(NSTableViewDropOperation)operation
{
//	NSPasteboard *pasteboard = [info draggingPasteboard];
//	NSData *rowData = [pasteboard dataForType:ManaManaItemsDropType];
//	NSIndexSet *rowIndexes = [NSKeyedUnarchiver unarchiveObjectWithData:rowData];
//    
//	NSArray *allItemsArray = [itemsArrayController arrangedObjects];
//	NSMutableArray *draggedItemsArray = [NSMutableArray arrayWithCapacity:[rowIndexes count]];
//    
//	NSUInteger currentItemIndex;
//	NSRange range = NSMakeRange( 0, [rowIndexes lastIndex] + 1 );
//	while([rowIndexes getIndexes:&currentItemIndex maxCount:1 inIndexRange:&range] > 0)
//	{
//		NSManagedObject *thisItem = [allItemsArray objectAtIndex:currentItemIndex];
//        
//		[draggedItemsArray addObject:thisItem];
//	}
//    
//	int count;
//	for( count = 0; count < [draggedItemsArray count]; count++ )
//	{
//		NSManagedObject *currentItemToMove = [draggedItemsArray objectAtIndex:count];
//		[currentItemToMove setValue:temporaryPositionNum forKey:@"position"];
//	}
//    
//    /*
//     The tempRow calculation is used if the user performs a drop at the top of the table. In this case, the incoming row value would be 0 so the object at viewPosition 0 would be modified twice (it would be picked up both by “itemsWithViewPositionBetween 0 and 0″ and “itemsWithViewPositionGreaterThan -1″) leaving the viewPositions out by a value of 1.
//     */
//	int tempRow;
//	if( row == 0 )
//		tempRow = -1;
//	else
//		tempRow = row - 1;
//    
//	NSArray *startItemsArray = [self itemsWithPositionBetween:0 and:tempRow];
//	NSArray *endItemsArray = [self itemsWithPositionGreaterThanOrEqualTo:row];
//    
//	int currentViewPosition;
//    
//	currentViewPosition = [self renumberPositionsOfItems:startItemsArray startingAt:0];
//    
//	currentViewPosition = [self renumberPositionsOfItems:draggedItemsArray startingAt:currentViewPosition];
//    
//	currentViewPosition = [self renumberPositionsOfItems:endItemsArray startingAt:currentViewPosition];
//    
//    [self recalculateETAs];
    
	return YES;
}

- (void)tableView:(NSTableView *)tableView didAddRowView:(NSTableRowView *)rowView forRow:(NSInteger)row
{
//    NSManagedObject *item = [[itemsArrayController arrangedObjects] objectAtIndex:row];
//    
//    // We need to check the isNew attribute because this method actually gets
//    // called for every item displayed in the table.
//    BOOL isNew = [[item valueForKey:@"isNew"] boolValue];
//    if ( isNew ) {
//        [tableView editColumn:0
//                          row:row
//                    withEvent:nil
//                       select:YES];
//        [item setValue:[NSNumber numberWithBool:NO] forKey:@"isNew"];
//    }
//    
//    NSTimeInterval timeInterval = [[item valueForKey:@"estimatedCompletion"] timeIntervalSinceDate:[NSDate date]];
//    
//    if ( timeInterval > (3600 * 24) && timeInterval < (3600 * 48) ) {
//        [rowView setBackgroundColor:[NSColor yellowColor]];
//    } else if ( timeInterval > (3600 * 48) ) {
//        [rowView setBackgroundColor:[NSColor redColor]];
//    } 
}



@end
