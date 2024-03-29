=begin
#Voucherify API

#Voucherify promotion engine REST API. Please see https://docs.voucherify.io/docs for more details.

The version of the OpenAPI document: v2018-08-01
Contact: support@voucherify.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module VoucherifySdk
  class SegmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete Segment
    # This method deletes a customer segment.
    # @param segment_id [String] A unique customer segment ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_segment(segment_id, opts = {})
      delete_segment_with_http_info(segment_id, opts)
      nil
    end

    # Delete Segment
    # This method deletes a customer segment.
    # @param segment_id [String] A unique customer segment ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    private def delete_segment_with_http_info(segment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SegmentsApi.delete_segment ...'
      end
      # verify the required parameter 'segment_id' is set
      if @api_client.config.client_side_validation && segment_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_id' when calling SegmentsApi.delete_segment"
      end
      # resource path
      local_var_path = '/v1/segments/{segmentId}'.sub('{' + 'segmentId' + '}', CGI.escape(segment_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"SegmentsApi.delete_segment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SegmentsApi#delete_segment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
