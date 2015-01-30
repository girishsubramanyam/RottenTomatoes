//
//  MovieDetails.m
//  RottenTomatoes
//
//  Created by Girish Subramanyam on 1/28/15.
//  Copyright (c) 2015 girishsu@yahoo. All rights reserved.
//

#import "MovieDetails.h"
#import "UIImageView+AFNetworking.h"

@interface MovieDetails ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageBackground;

@end

@implementation MovieDetails

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
    self.titleLabel.text = self.movie[@"title"];
    self.synopsisLabel.text = self.movie[@"synopsis"];
    NSString *url = [self.movie valueForKeyPath:@"posters.thumbnail"];
    [self.imageBackground setImageWithURL:[NSURL URLWithString:url]];
    NSString *high_resolution_url = [url stringByReplacingOccurrencesOfString:@"_tmb" withString:@"_ori"];
    [self.imageBackground setImageWithURL:[NSURL URLWithString:high_resolution_url]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
