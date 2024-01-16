# VoucherifySdk::ValidationsValidateResponseBody

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::ValidationsValidateResponseBody.openapi_one_of
# =>
# [
#   :'ValidationsValidateAllResponseBody',
#   :'ValidationsValidatePartialResponseBody'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::ValidationsValidateResponseBody.build(data)
# => #<ValidationsValidateAllResponseBody:0x00007fdd4aab02a0>

VoucherifySdk::ValidationsValidateResponseBody.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ValidationsValidateAllResponseBody`
- `ValidationsValidatePartialResponseBody`
- `nil` (if no type matches)

