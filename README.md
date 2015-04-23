# UIImage - Resize and Crop
Simple class extension to resize and crop UIImages with just two functions.

### Usage
Add both files to your project, then import the class extension where you need it.

###### Examples

```
// Imports the class extension
#import "UIImage+ResizeAndCrop.h"

// Resizes an image to 100x100 pixels
UIImage * exampleImage = [UIImage imageNamed:@"yourImageFile"];
UIImage * resizedImage = [exampleImage resizeToSize:CGSizeMake(100.0f, 100.0f)];
if (resizedImage != nil) {
	// Your image was resized
} else {
	// Something went wrong
}

// Crops an image to 100x100 pixels, 150px from left and 200px from top
UIImage * exampleImage = [UIImage imageNamed:@"yourImageFile"];
UIImage * croppedImage = [exampleImage cropToRect:CGRectMake(150.0f, 200.0f, 100.0f, 100.0f)];
if (croppedImage != nil) {
	// Your image was cropped
} else {
	// Something went wrong
}
```