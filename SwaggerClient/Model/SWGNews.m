#import "SWGNews.h"

@implementation SWGNews

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"varNewsId": @"news_id", @"varNewsTitle": @"news_title", @"varNewsContent": @"news_content", @"varNewsAuthor": @"news_author", @"varNewsSport": @"news_sport", @"varNewsSourceUrl": @"news_source_url", @"varNewsPublishTs": @"news_publish_ts", @"varNewsImageUrl": @"news_image_url" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"varNewsId", @"varNewsTitle", @"varNewsContent", @"varNewsAuthor", @"varNewsSport", @"varNewsSourceUrl", @"varNewsPublishTs", @"varNewsImageUrl"];
  return [optionalProperties containsObject:propertyName];
}

@end
