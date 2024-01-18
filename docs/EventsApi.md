# VoucherifySdk::EventsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**track_custom_event**](EventsApi.md#track_custom_event) | **POST** /v1/events | Track Custom Event |
| [**track_custom_event_client_side**](EventsApi.md#track_custom_event_client_side) | **POST** /client/v1/events | Track Custom Event (client-side) |


## track_custom_event

> <EventsCreateResponseBody> track_custom_event(opts)

Track Custom Event

To track a custom event, you create an event object.    The event object must be linked to the customer who performs the action. If a customer doesn't exist in Voucherify, the customer will be created.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-App-Id
  config.api_key['X-App-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Id'] = 'Bearer'

  # Configure API key authorization: X-App-Token
  config.api_key['X-App-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Token'] = 'Bearer'
end

api_instance = VoucherifySdk::EventsApi.new
opts = {
  events_create_request_body: VoucherifySdk::EventsCreateRequestBody.new({event: 'event_example', customer: VoucherifySdk::Customer.new}) # EventsCreateRequestBody | Specify the details of the custom event.
}

begin
  # Track Custom Event
  result = api_instance.track_custom_event(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling EventsApi->track_custom_event: #{e}"
end
```

#### Using the track_custom_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventsCreateResponseBody>, Integer, Hash)> track_custom_event_with_http_info(opts)

```ruby
begin
  # Track Custom Event
  data, status_code, headers = api_instance.track_custom_event_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventsCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling EventsApi->track_custom_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events_create_request_body** | [**EventsCreateRequestBody**](EventsCreateRequestBody.md) | Specify the details of the custom event. | [optional] |

### Return type

[**EventsCreateResponseBody**](EventsCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## track_custom_event_client_side

> <ClientEventsCreateResponseBody> track_custom_event_client_side(origin, opts)

Track Custom Event (client-side)

To track a custom event, you create an event object.    The event object must be linked to the customer who performs the action. If a customer doesn't exist in Voucherify, the customer will be created.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Client-Application-Id
  config.api_key['X-Client-Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Client-Application-Id'] = 'Bearer'

  # Configure API key authorization: X-Client-Token
  config.api_key['X-Client-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Client-Token'] = 'Bearer'
end

api_instance = VoucherifySdk::EventsApi.new
origin = 'origin_example' # String | Indicates the origin (scheme, hostname, and port).
opts = {
  client_events_create_request_body: VoucherifySdk::ClientEventsCreateRequestBody.new({event: 'event_example', customer: VoucherifySdk::Customer.new}) # ClientEventsCreateRequestBody | Specify the details of the custom event.
}

begin
  # Track Custom Event (client-side)
  result = api_instance.track_custom_event_client_side(origin, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling EventsApi->track_custom_event_client_side: #{e}"
end
```

#### Using the track_custom_event_client_side_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientEventsCreateResponseBody>, Integer, Hash)> track_custom_event_client_side_with_http_info(origin, opts)

```ruby
begin
  # Track Custom Event (client-side)
  data, status_code, headers = api_instance.track_custom_event_client_side_with_http_info(origin, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientEventsCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling EventsApi->track_custom_event_client_side_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **origin** | **String** | Indicates the origin (scheme, hostname, and port). |  |
| **client_events_create_request_body** | [**ClientEventsCreateRequestBody**](ClientEventsCreateRequestBody.md) | Specify the details of the custom event. | [optional] |

### Return type

[**ClientEventsCreateResponseBody**](ClientEventsCreateResponseBody.md)

### Authorization

[X-Client-Application-Id](../README.md#X-Client-Application-Id), [X-Client-Token](../README.md#X-Client-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

