#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface Controller : NSObject {
    IBOutlet UILabel *label;
    IBOutlet UISlider *slider;
}
- (IBAction)sliderChanged;
@end
