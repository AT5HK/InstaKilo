//
//  CollectionViewItems.m
//  InstaKilo
//
//  Created by Auston Salvana on 7/16/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "CollectionViewItems.h"
#import <UIKit/UIKit.h>

@implementation CollectionViewItems

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.imageSection1 = @[
                               [UIImage imageNamed:@"space0"],
                               [UIImage imageNamed:@"space1"],
                               [UIImage imageNamed:@"space2"],
                               [UIImage imageNamed:@"space3"]
                                 ];
        
        self.imageSection2 = @[
                               [UIImage imageNamed:@"space4"],
                               [UIImage imageNamed:@"space5"],
                               [UIImage imageNamed:@"space6"]
                               ];
        
        self.imageSection3 = @[
                               [UIImage imageNamed:@"space8"],
                               [UIImage imageNamed:@"space9"],
                               [UIImage imageNamed:@"space7"]
                               ];
        
        self.arrayOfSections = @[
                        self.imageSection1,
                        self.imageSection2,
                        self.imageSection3
                        ];
    }
    return self;
}

@end
