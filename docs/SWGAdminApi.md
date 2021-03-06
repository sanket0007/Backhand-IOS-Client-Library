# SWGAdminApi

All URIs are relative to *http://www.back-hand.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEventPost**](SWGAdminApi.md#createeventpost) | **POST** /create_event | Create a new event
[**uploadPicturePost**](SWGAdminApi.md#uploadpicturepost) | **POST** /upload_picture | Upload a picture


# **createEventPost**
```objc
-(NSURLSessionTask*) createEventPostWithEventName: (NSString*) eventName
    eventDescription: (NSString*) eventDescription
    eventCity: (NSString*) eventCity
    eventGameSport: (NSString*) eventGameSport
    eventStartDate: (NSString*) eventStartDate
    eventEndDate: (NSString*) eventEndDate
    eventBackgroundPicture: (NSString*) eventBackgroundPicture
    eventLat: (NSString*) eventLat
    eventLon: (NSString*) eventLon
        completionHandler: (void (^)(SWGEvent* output, NSError* error)) handler;
```

Create a new event

Create a new sports event/meet

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* eventName = @"eventName_example"; // Event Name
NSString* eventDescription = @"eventDescription_example"; // Description
NSString* eventCity = @"eventCity_example"; // City
NSString* eventGameSport = @"eventGameSport_example"; // Sport
NSString* eventStartDate = @"eventStartDate_example"; // Start Date Format DD/MM/YYYY
NSString* eventEndDate = @"eventEndDate_example"; // End Date Format DD/MM/YYYY
NSString* eventBackgroundPicture = @"eventBackgroundPicture_example"; // Picture URL
NSString* eventLat = @"eventLat_example"; // Event ID
NSString* eventLon = @"eventLon_example"; // Event ID

SWGAdminApi*apiInstance = [[SWGAdminApi alloc] init];

// Create a new event
[apiInstance createEventPostWithEventName:eventName
              eventDescription:eventDescription
              eventCity:eventCity
              eventGameSport:eventGameSport
              eventStartDate:eventStartDate
              eventEndDate:eventEndDate
              eventBackgroundPicture:eventBackgroundPicture
              eventLat:eventLat
              eventLon:eventLon
          completionHandler: ^(SWGEvent* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAdminApi->createEventPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventName** | **NSString***| Event Name | 
 **eventDescription** | **NSString***| Description | 
 **eventCity** | **NSString***| City | 
 **eventGameSport** | **NSString***| Sport | 
 **eventStartDate** | **NSString***| Start Date Format DD/MM/YYYY | 
 **eventEndDate** | **NSString***| End Date Format DD/MM/YYYY | 
 **eventBackgroundPicture** | **NSString***| Picture URL | 
 **eventLat** | **NSString***| Event ID | 
 **eventLon** | **NSString***| Event ID | 

### Return type

[**SWGEvent***](SWGEvent.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadPicturePost**
```objc
-(NSURLSessionTask*) uploadPicturePostWithFile: (NSURL*) file
        completionHandler: (void (^)(SWGUrl* output, NSError* error)) handler;
```

Upload a picture

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: TokenAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSURL* file = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // File to upload Accepted formats jpg,jpeg,png

SWGAdminApi*apiInstance = [[SWGAdminApi alloc] init];

// Upload a picture
[apiInstance uploadPicturePostWithFile:file
          completionHandler: ^(SWGUrl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAdminApi->uploadPicturePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **NSURL***| File to upload Accepted formats jpg,jpeg,png | 

### Return type

[**SWGUrl***](SWGUrl.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

