//
//  RubberPlanetScene.m
//  RubberPlanet
//
//  Created by Stephen Rood on 10/26/15.
//  Copyright © 2015 Stephen Rood. All rights reserved.
//

#import "RubberPlanetScene.h"

@implementation RubberPlanetScene

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    
    myLabel.text = @"Rubber Planet";
    myLabel.fontSize = 34;
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    
    [self addChild:myLabel];
}

@end
