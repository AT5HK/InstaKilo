//
//  CustomCollectionViewCell.h
//  InstaKilo
//
//  Created by Auston Salvana on 7/16/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *cellPhoto;
@property (nonatomic) NSString *subject;
@end
