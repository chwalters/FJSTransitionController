//
//  DummyViewController.m
//  FJSKeyedViewController
//
//  Created by Corey Floyd on 3/13/10.
//  Copyright 2010 Flying Jalapeño Software. All rights reserved.
//

#import "DummyViewController.h"
#import "FJSTransitionController.h"

@implementation DummyViewController


- (IBAction)newxtVC{
	
	FJSAnimationType type = arc4random() % 9;
	FJSAnimationDirection direction = arc4random() % 4;

	self.transitionController.animationType = type;
	self.transitionController.animationDuration = 1.0;
	self.transitionController.animationDirection = direction;

	[self.transitionController loadViewControllerForKey:@"Another"]; 
	
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
