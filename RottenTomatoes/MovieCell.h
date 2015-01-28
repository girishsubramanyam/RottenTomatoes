//
//  MovieCell.h
//  RottenTomatoes
//
//  Created by Girish Subramanyam on 1/27/15.
//  Copyright (c) 2015 girishsu@yahoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UIImageView *movieImageThumbnail;

@end
