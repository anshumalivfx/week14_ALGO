#include <Foundation/Foundation.h>
@interface QuestionTwo : NSObject
- (BOOL)isSegmentable:(NSString *)input withDictionary:(NSArray *)dictionary;
@end

@implementation QuestionTwo
- (BOOL)isSegmentable:(NSString *)input withDictionary:(NSArray *)dictionary {
    NSMutableArray *words = [NSMutableArray arrayWithArray:dictionary];
    NSMutableArray *segments = [NSMutableArray array];
    NSMutableString *segment = [NSMutableString string];
    for (int i = 0; i < input.length; i++) {
        NSString *letter = [input substringWithRange:NSMakeRange(i, 1)];
        if ([words containsObject:letter]) {
            [segment appendString:letter];
        } else {
            if (segment.length > 0) {
                [segments addObject:segment];
                segment = [NSMutableString string];
            } 
        } 
    } 
    if (segment.length > 0) {
        [segments addObject:segment];
    }
    for (NSString *segment in segments) {
        if (![words containsObject:segment]) {
            return NO;
        }
    }
    return YES;
}
@end

int main() {
    QuestionTwo *questionTwo = [QuestionTwo new];
    NSString *input = @"ilikesamsung";
    NSArray *dictionary = @[@"i", @"like", @"sam", @"sung", @"samsung", @"mobile", @"ice", @"cream", @"1cecream", @"man", @"go", @"mango"];
    BOOL result = [questionTwo isSegmentable:input withDictionary:dictionary];
    NSLog(@"%d", result);
    return 0;
}