//
//  UIImage+ResizeAndCrop.m
//
//  Created by Guido Lodetti on 13/04/15.
//  Copyright (c) 2015 Guido Lodetti. All rights reserved.
//

#import "UIImage+ResizeAndCrop.h"

@implementation UIImage (ResizeAndCrop)

// Resizes an input image (self) to a specified size
- (UIImage *)resizeToSize:(CGSize)size {
    // Begins an image context with the specified size
    UIGraphicsBeginImageContextWithOptions(size, false, 0.0);
    // Draws the input image (self) in the specified size
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    // Gets an UIImage from the image context
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    // Ends the image context
    UIGraphicsEndImageContext();
    // Returns the final image, or NULL on error
    return result;
}

// Crops an input image (self) to a specified rect
- (UIImage *)cropToRect:(CGRect)rect {
    // Correct rect size based on the device screen scale
    rect = CGRectMake(rect.origin.x * self.scale, rect.origin.y * self.scale, rect.size.width * self.scale, rect.size.height * self.scale);
    // New CGImage reference based on the input image (self) and the specified rect
    CGImageRef imageRef = CGImageCreateWithImageInRect(self.CGImage, rect);
    // Gets an UIImage from the CGImage
    UIImage *result = [UIImage imageWithCGImage:imageRef scale:self.scale orientation:self.imageOrientation];
    // Releases the CGImage
    CGImageRelease(imageRef);
    // Returns the final image, or NULL on error
    return result;
}

@end