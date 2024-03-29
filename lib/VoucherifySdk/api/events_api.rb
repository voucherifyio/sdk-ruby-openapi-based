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
  class EventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Track Custom Event
    # To track a custom event, you create an event object.   The event object must be linked to the customer who performs the action. If a customer doesnt exist in Voucherify, the customer will be created.
    # @param [Hash] opts the optional parameters
    # @option opts [EventsCreateRequestBody] :events_create_request_body Specify the details of the custom event.
    # @return [EventsCreateResponseBody]
    def track_custom_event(opts = {})
      data, _status_code, _headers = track_custom_event_with_http_info(opts)
      data
    end

    # Track Custom Event
    # To track a custom event, you create an event object.   The event object must be linked to the customer who performs the action. If a customer doesnt exist in Voucherify, the customer will be created.
    # @param [Hash] opts the optional parameters
    # @option opts [EventsCreateRequestBody] :events_create_request_body Specify the details of the custom event.
    # @return [Array<(EventsCreateResponseBody, Integer, Hash)>] EventsCreateResponseBody data, response status code and response headers
    private def track_custom_event_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.track_custom_event ...'
      end
      # resource path
      local_var_path = '/v1/events'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'events_create_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'EventsCreateResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"EventsApi.track_custom_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#track_custom_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
