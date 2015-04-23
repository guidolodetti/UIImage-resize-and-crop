//
//  UIImage+ResizeAndCrop.h
//
//  Created by Guido Lodetti on 13/04/15.
//  Copyright (c) 2015 Guido Lodetti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage(ResizeAndCrop)
-(UIImage *)resizeToSize:(CGSize)size;
-(UIImage*)cropToRect:(CGRect)rect;
@end