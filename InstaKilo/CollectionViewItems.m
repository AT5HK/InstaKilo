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
        self.imageSection1 = @[ @{@"image": [UIImage imageNamed:@"space0"], @"subject":@"spindel", @"location":@"vancouver"},
                                @{@"image": [UIImage imageNamed:@"space1"], @"subject":@"irregular", @"location":@"vancouver"},
                                @{@"image": [UIImage imageNamed:@"space2"], @"subject":@"spherical", @"location":@"vancouver"},
                                @{@"image": [UIImage imageNamed:@"space3"], @"subject":@"spindel", @"location":@"vancouver"}
                               ];
        
        self.imageSection2 = @[ @{@"image": [UIImage imageNamed:@"space4"], @"subject":@"spindel", @"location":@"london"},
                                @{@"image": [UIImage imageNamed:@"space5"], @"subject":@"irregular", @"location":@"london"},
                                @{@"image": [UIImage imageNamed:@"space6"], @"subject":@"spherical", @"location":@"london"}
                                ];
        
        self.imageSection3 = @[ @{@"image": [UIImage imageNamed:@"space7"], @"subject":@"spindel", @"location":@"paris"},
                                @{@"image": [UIImage imageNamed:@"space8"], @"subject":@"irregular", @"location":@"paris"},
                                @{@"image": [UIImage imageNamed:@"space9"], @"subject":@"spherical", @"location":@"paris"}
                                ];
        
        self.arrayOfSections = @[
                                self.imageSection1,
                                self.imageSection2,
                                self.imageSection3
                                ];
    }
    return self;
}

-(NSString*)headerSubject:(int)currentSubject {
    switch (currentSubject) {
        case spindel:
            return @"Spindel";
            break;
            
        case irregular:
            return @"Irregular";
            break;
            
        case spherical:
            return @"Spherical";
            break;
            
        default:
            break;
    }
    return nil;
}

-(NSArray*)reorderBySubject:(NSArray*)arrayOfSections {
    NSMutableArray *arrayOfSpindel = [NSMutableArray array];
    NSMutableArray *arrayOfIrregular = [NSMutableArray array];
    NSMutableArray *arrayOfSpherical = [NSMutableArray array];

    for (NSArray *section in arrayOfSections) {
        for (NSDictionary *dict in section) {
            if ([dict[@"subject"] isEqualToString:@"spindel"]) {
                [arrayOfSpindel addObject:dict];
            }
            else if ([dict[@"subject"] isEqualToString:@"irregular"]) {
                [arrayOfIrregular addObject:dict];
            }
            else {
                [arrayOfSpherical addObject:dict];
            }
        }
    }
    return @[arrayOfSpindel, arrayOfIrregular, arrayOfSpherical];
}

-(NSArray*)reorderByLocation:(NSArray*)arrayOfSections {
    NSMutableArray *arrayOfVancouver = [NSMutableArray array];
    NSMutableArray *arrayOfLondon = [NSMutableArray array];
    NSMutableArray *arrayOfParis = [NSMutableArray array];
    
    for (NSArray *section in arrayOfSections) {
        for (NSDictionary *dict in section) {
            if ([dict[@"location"] isEqualToString:@"vancouver"]) {
                [arrayOfVancouver addObject:dict];
            }
            else if ([dict[@"location"] isEqualToString:@"london"]) {
                [arrayOfLondon addObject:dict];
            }
            else {
                [arrayOfParis addObject:dict];
            }
        }
    }
    return @[arrayOfVancouver, arrayOfLondon, arrayOfParis];
}

@end
