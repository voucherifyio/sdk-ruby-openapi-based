# VoucherifySdk::SegmentsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_segment**](SegmentsApi.md#delete_segment) | **DELETE** /v1/segments/{segmentId} | Delete Segment |


## delete_segment

> delete_segment(segment_id)

Delete Segment

This method deletes a customer segment.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-App-Id-1
  config.api_key['X-App-Id-1'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Id-1'] = 'Bearer'

  # Configure API key authorization: X-App-Token-1
  config.api_key['X-App-Token-1'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Token-1'] = 'Bearer'
end

api_instance = VoucherifySdk::SegmentsApi.new
segment_id = 'segment_id_example' # String | A unique customer segment ID.

begin
  # Delete Segment
  api_instance.delete_segment(segment_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling SegmentsApi->delete_segment: #{e}"
end
```

#### Using the delete_segment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_segment_with_http_info(segment_id)

```ruby
begin
  # Delete Segment
  data, status_code, headers = api_instance.delete_segment_with_http_info(segment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VoucherifySdk::ApiError => e
  puts "Error when calling SegmentsApi->delete_segment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segment_id** | **String** | A unique customer segment ID. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id-1](../README.md#X-App-Id-1), [X-App-Token-1](../README.md#X-App-Token-1)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

