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
  class RedemptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Redemption
    # Return a redemption or redemption rollback object. This object can either be a successfull or failed redemption or redemption rollback.
    # @param redemption_id [String] ID of previously created redemption.
    # @param [Hash] opts the optional parameters
    # @return [RedemptionsGetResponseBody]
    def get_redemption(redemption_id, opts = {})
      data, _status_code, _headers = get_redemption_with_http_info(redemption_id, opts)
      data
    end

    # Get Redemption
    # Return a redemption or redemption rollback object. This object can either be a successfull or failed redemption or redemption rollback.
    # @param redemption_id [String] ID of previously created redemption.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RedemptionsGetResponseBody, Integer, Hash)>] RedemptionsGetResponseBody data, response status code and response headers
    def get_redemption_with_http_info(redemption_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RedemptionsApi.get_redemption ...'
      end
      # verify the required parameter 'redemption_id' is set
      if @api_client.config.client_side_validation && redemption_id.nil?
        fail ArgumentError, "Missing the required parameter 'redemption_id' when calling RedemptionsApi.get_redemption"
      end
      # resource path
      local_var_path = '/v1/redemptions/{redemptionId}'.sub('{' + 'redemptionId' + '}', CGI.escape(redemption_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RedemptionsGetResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"RedemptionsApi.get_redemption",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RedemptionsApi#get_redemption\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Voucher's Redemptions
    # Retrieve the number of times a voucher was redeemed and each of the redemption details.
    # @param code [String] A **code** that identifies the voucher.
    # @param [Hash] opts the optional parameters
    # @return [VouchersRedemptionGetResponseBody]
    def get_voucher_redemptions(code, opts = {})
      data, _status_code, _headers = get_voucher_redemptions_with_http_info(code, opts)
      data
    end

    # Get Voucher&#39;s Redemptions
    # Retrieve the number of times a voucher was redeemed and each of the redemption details.
    # @param code [String] A **code** that identifies the voucher.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VouchersRedemptionGetResponseBody, Integer, Hash)>] VouchersRedemptionGetResponseBody data, response status code and response headers
    def get_voucher_redemptions_with_http_info(code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RedemptionsApi.get_voucher_redemptions ...'
      end
      # verify the required parameter 'code' is set
      if @api_client.config.client_side_validation && code.nil?
        fail ArgumentError, "Missing the required parameter 'code' when calling RedemptionsApi.get_voucher_redemptions"
      end
      # resource path
      local_var_path = '/v1/vouchers/{code}/redemption'.sub('{' + 'code' + '}', CGI.escape(code.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VouchersRedemptionGetResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"RedemptionsApi.get_voucher_redemptions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RedemptionsApi#get_voucher_redemptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Redemptions
    # Returns a list of redemptions previously created. The redemptions are returned in a sorted order, with the most recent redemptions appearing first. The response returns a list of redemptions of all vouchers.   ## Filtering results The result can be narrowed according to specified (or default) filters, for example, you can sort redemptions by date: `https://api.voucherify.io/v1/redemptions?limit=3&[created_at][before]=2017-09-08T13:52:18.227Z`. A filter based on the object `created_at` field narrows down the results and lists redemptions done before or after a particular date time. You can use the following options: `[created_at][after]`, `[created_at][before]`. A date value must be presented in ISO 8601 format (`2016-11-16T14:14:31Z` or `2016-11-16`). An example: `[created_at][before]=2017-09-08T13:52:18.227Z`.  ## Failed Redemptions  A redemption may fail for various reasons. You can figure out an exact reason from the `failure_code`: - `resource_not_found` - voucher with given code does not exist - `voucher_not_active` - voucher is not active yet (before start date) - `voucher_expired` - voucher has already expired (after expiration date) - `voucher_disabled` -  voucher has been disabled (`active: false`) - `quantity_exceeded` - voucher's redemptions limit has been exceeded - `gift_amount_exceeded` - gift amount has been exceeded - `customer_rules_violated` - customer did not match the segment - `order_rules_violated` - order did not match validation rules - `invalid_order` - order was specified incorrectly - `invalid_amount` - order amount was specified incorrectly - `missing_amount` - order amount was not specified - `missing_order_items` - order items were not specified - `missing_customer` - customer was not specified
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100 items.
    # @option opts [Integer] :page Which page of results to return.
    # @option opts [String] :result A filter on the list based on the redemption result. Available options are: &#x60;SUCCESS&#x60;, &#x60;FAILURE&#x60;. You can provide multiple values by repeating the param.
    # @option opts [String] :campaign A filter by the campaign **name** that the redemption resources originate from.
    # @option opts [String] :customer Return redemptions performed by the customer with given &#x60;id&#x60; or &#x60;source_id&#x60;.
    # @option opts [ParameterOrderListRedemptions] :order Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
    # @option opts [ParameterCreatedBeforeAfter] :created_at A filter on the list based on the object &#x60;created_at&#x60; field. The value is a dictionary with the following options: &#x60;before&#x60;, &#x60;after&#x60;. A date value must be presented in ISO 8601 format (&#x60;2016-11-16T14:14:31Z&#x60; or &#x60;2016-11-16&#x60;). An example: &#x60;[created_at][before]&#x3D;2017-09-08T13:52:18.227Z&#x60;
    # @option opts [ParameterFiltersListRedemptions] :filters Filters for listing responses.
    # @return [RedemptionsListResponseBody]
    def list_redemptions(opts = {})
      data, _status_code, _headers = list_redemptions_with_http_info(opts)
      data
    end

    # List Redemptions
    # Returns a list of redemptions previously created. The redemptions are returned in a sorted order, with the most recent redemptions appearing first. The response returns a list of redemptions of all vouchers.   ## Filtering results The result can be narrowed according to specified (or default) filters, for example, you can sort redemptions by date: &#x60;https://api.voucherify.io/v1/redemptions?limit&#x3D;3&amp;[created_at][before]&#x3D;2017-09-08T13:52:18.227Z&#x60;. A filter based on the object &#x60;created_at&#x60; field narrows down the results and lists redemptions done before or after a particular date time. You can use the following options: &#x60;[created_at][after]&#x60;, &#x60;[created_at][before]&#x60;. A date value must be presented in ISO 8601 format (&#x60;2016-11-16T14:14:31Z&#x60; or &#x60;2016-11-16&#x60;). An example: &#x60;[created_at][before]&#x3D;2017-09-08T13:52:18.227Z&#x60;.  ## Failed Redemptions  A redemption may fail for various reasons. You can figure out an exact reason from the &#x60;failure_code&#x60;: - &#x60;resource_not_found&#x60; - voucher with given code does not exist - &#x60;voucher_not_active&#x60; - voucher is not active yet (before start date) - &#x60;voucher_expired&#x60; - voucher has already expired (after expiration date) - &#x60;voucher_disabled&#x60; -  voucher has been disabled (&#x60;active: false&#x60;) - &#x60;quantity_exceeded&#x60; - voucher&#39;s redemptions limit has been exceeded - &#x60;gift_amount_exceeded&#x60; - gift amount has been exceeded - &#x60;customer_rules_violated&#x60; - customer did not match the segment - &#x60;order_rules_violated&#x60; - order did not match validation rules - &#x60;invalid_order&#x60; - order was specified incorrectly - &#x60;invalid_amount&#x60; - order amount was specified incorrectly - &#x60;missing_amount&#x60; - order amount was not specified - &#x60;missing_order_items&#x60; - order items were not specified - &#x60;missing_customer&#x60; - customer was not specified
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100 items.
    # @option opts [Integer] :page Which page of results to return.
    # @option opts [String] :result A filter on the list based on the redemption result. Available options are: &#x60;SUCCESS&#x60;, &#x60;FAILURE&#x60;. You can provide multiple values by repeating the param.
    # @option opts [String] :campaign A filter by the campaign **name** that the redemption resources originate from.
    # @option opts [String] :customer Return redemptions performed by the customer with given &#x60;id&#x60; or &#x60;source_id&#x60;.
    # @option opts [ParameterOrderListRedemptions] :order Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
    # @option opts [ParameterCreatedBeforeAfter] :created_at A filter on the list based on the object &#x60;created_at&#x60; field. The value is a dictionary with the following options: &#x60;before&#x60;, &#x60;after&#x60;. A date value must be presented in ISO 8601 format (&#x60;2016-11-16T14:14:31Z&#x60; or &#x60;2016-11-16&#x60;). An example: &#x60;[created_at][before]&#x3D;2017-09-08T13:52:18.227Z&#x60;
    # @option opts [ParameterFiltersListRedemptions] :filters Filters for listing responses.
    # @return [Array<(RedemptionsListResponseBody, Integer, Hash)>] RedemptionsListResponseBody data, response status code and response headers
    def list_redemptions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RedemptionsApi.list_redemptions ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RedemptionsApi.list_redemptions, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RedemptionsApi.list_redemptions, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling RedemptionsApi.list_redemptions, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/v1/redemptions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'result'] = opts[:'result'] if !opts[:'result'].nil?
      query_params[:'campaign'] = opts[:'campaign'] if !opts[:'campaign'].nil?
      query_params[:'customer'] = opts[:'customer'] if !opts[:'customer'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'created_at'] = opts[:'created_at'] if !opts[:'created_at'].nil?
      query_params[:'filters'] = opts[:'filters'] if !opts[:'filters'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RedemptionsListResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"RedemptionsApi.list_redemptions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RedemptionsApi#list_redemptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Redeem Stackable Discounts
    # ## How API returns calculated discounts and order amounts in the response  In the table below, you can see the logic the API follows to calculate discounts and amounts:  | **Field** | **Calculation** | **Description** | |:---|:---|:---| | amount | N/A | This field shows the order amount before applying any discount | | total_amount | `total_amount` = `amount` - `total_discount_amount` | This field shows the order amount after applying all the discounts | | discount_amount | `discount_amount` = `previous_discount_amount` + `applied_discount_amount` | This field sums up all order-level discounts up to and including the specific discount being calculated for the stacked redemption. | | items_discount_amount | sum(items, i => i.discount_amount) | This field sums up all product-specific discounts | | total_discount_amount | `total_discount_amount` = `discount_amount` + `items_discount_amount` | This field sums up all order-level and all product-specific discounts | | applied_discount_amount | N/A | This field shows the order-level discount applied in a particular request | | items_applied_discount_amount | sum(items, i => i.applied_discount_amount) | This field sums up all product-specific discounts applied in a particular request | | total_applied_discount_amount | `total_applied_discount_amount` = `applied_discount_amount` + `items_applied_discount_amount` | This field sums up all order-level and all product-specific discounts applied in a particular request |  <!-- theme: info --> > 📘 Rollbacks > > You can't roll back a child redemption. When you call rollback on a stacked redemption, all child redemptions will be rolled back. You need to refer to a parent redemption ID in your <!-- [rollback request](OpenAPI.json/paths/~1redemptions~1{parentRedemptionId}~1rollbacks/post) -->[rollback request](ref:rollback-stacked-redemptions).      <!-- theme: info --> > 📘 Also available on client-side > > This method is also accessible through public keys which you can use in client-side​ apps: mobile and web browser apps. Go to the dedicated [endpoint](ref:redeem-stacked-discounts-client-side) to learn more. > - Use `X-Client-Application-Id` as the application ID header. > - Use `X-Client-Token` as the appliction secret key header. > - Use client-side base URL. > - Use an `origin` header for your custom domain.
    # @param [Hash] opts the optional parameters
    # @option opts [RedemptionsRedeemRequestBody] :redemptions_redeem_request_body 
    # @return [RedemptionsRedeemResponseBody]
    def redeem_stacked_discounts(opts = {})
      data, _status_code, _headers = redeem_stacked_discounts_with_http_info(opts)
      data
    end

    # Redeem Stackable Discounts
    # ## How API returns calculated discounts and order amounts in the response  In the table below, you can see the logic the API follows to calculate discounts and amounts:  | **Field** | **Calculation** | **Description** | |:---|:---|:---| | amount | N/A | This field shows the order amount before applying any discount | | total_amount | &#x60;total_amount&#x60; &#x3D; &#x60;amount&#x60; - &#x60;total_discount_amount&#x60; | This field shows the order amount after applying all the discounts | | discount_amount | &#x60;discount_amount&#x60; &#x3D; &#x60;previous_discount_amount&#x60; + &#x60;applied_discount_amount&#x60; | This field sums up all order-level discounts up to and including the specific discount being calculated for the stacked redemption. | | items_discount_amount | sum(items, i &#x3D;&gt; i.discount_amount) | This field sums up all product-specific discounts | | total_discount_amount | &#x60;total_discount_amount&#x60; &#x3D; &#x60;discount_amount&#x60; + &#x60;items_discount_amount&#x60; | This field sums up all order-level and all product-specific discounts | | applied_discount_amount | N/A | This field shows the order-level discount applied in a particular request | | items_applied_discount_amount | sum(items, i &#x3D;&gt; i.applied_discount_amount) | This field sums up all product-specific discounts applied in a particular request | | total_applied_discount_amount | &#x60;total_applied_discount_amount&#x60; &#x3D; &#x60;applied_discount_amount&#x60; + &#x60;items_applied_discount_amount&#x60; | This field sums up all order-level and all product-specific discounts applied in a particular request |  &lt;!-- theme: info --&gt; &gt; 📘 Rollbacks &gt; &gt; You can&#39;t roll back a child redemption. When you call rollback on a stacked redemption, all child redemptions will be rolled back. You need to refer to a parent redemption ID in your &lt;!-- [rollback request](OpenAPI.json/paths/~1redemptions~1{parentRedemptionId}~1rollbacks/post) --&gt;[rollback request](ref:rollback-stacked-redemptions).      &lt;!-- theme: info --&gt; &gt; 📘 Also available on client-side &gt; &gt; This method is also accessible through public keys which you can use in client-side​ apps: mobile and web browser apps. Go to the dedicated [endpoint](ref:redeem-stacked-discounts-client-side) to learn more. &gt; - Use &#x60;X-Client-Application-Id&#x60; as the application ID header. &gt; - Use &#x60;X-Client-Token&#x60; as the appliction secret key header. &gt; - Use client-side base URL. &gt; - Use an &#x60;origin&#x60; header for your custom domain.
    # @param [Hash] opts the optional parameters
    # @option opts [RedemptionsRedeemRequestBody] :redemptions_redeem_request_body 
    # @return [Array<(RedemptionsRedeemResponseBody, Integer, Hash)>] RedemptionsRedeemResponseBody data, response status code and response headers
    def redeem_stacked_discounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RedemptionsApi.redeem_stacked_discounts ...'
      end
      # resource path
      local_var_path = '/v1/redemptions'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'redemptions_redeem_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'RedemptionsRedeemResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"RedemptionsApi.redeem_stacked_discounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RedemptionsApi#redeem_stacked_discounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Rollback Redemption
    # Your business logic may include a case when you need to undo a redemption. You can revert a redemption by calling this API endpoint.    ## Effect  The operation  - creates a rollback entry in voucher's redemption history (`redemption.redemption_entries`) and  - gives 1 redemption back to the pool (decreases `redeemed_quantity` by 1).  ## Returned funds  In case of *gift card vouchers*, this method returns funds back according to the source redemption. In case of *loyalty card vouchers*, this method returns points back according to the source redemption.
    # @param redemption_id [String] The original redemption ID to be rolled back (undone).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :reason Reason for the rollback.
    # @option opts [String] :tracking_id Customer&#39;s &#x60;source_id&#x60;.
    # @option opts [RedemptionsRollbackCreateRequestBody] :redemptions_rollback_create_request_body Add information about the original customer and order. Customer data and Redemption metadata can be updated in Voucherify when passing the customer data in the request body.
    # @return [RedemptionsRollbackCreateResponseBody]
    def rollback_redemption(redemption_id, opts = {})
      data, _status_code, _headers = rollback_redemption_with_http_info(redemption_id, opts)
      data
    end

    # Rollback Redemption
    # Your business logic may include a case when you need to undo a redemption. You can revert a redemption by calling this API endpoint.    ## Effect  The operation  - creates a rollback entry in voucher&#39;s redemption history (&#x60;redemption.redemption_entries&#x60;) and  - gives 1 redemption back to the pool (decreases &#x60;redeemed_quantity&#x60; by 1).  ## Returned funds  In case of *gift card vouchers*, this method returns funds back according to the source redemption. In case of *loyalty card vouchers*, this method returns points back according to the source redemption.
    # @param redemption_id [String] The original redemption ID to be rolled back (undone).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :reason Reason for the rollback.
    # @option opts [String] :tracking_id Customer&#39;s &#x60;source_id&#x60;.
    # @option opts [RedemptionsRollbackCreateRequestBody] :redemptions_rollback_create_request_body Add information about the original customer and order. Customer data and Redemption metadata can be updated in Voucherify when passing the customer data in the request body.
    # @return [Array<(RedemptionsRollbackCreateResponseBody, Integer, Hash)>] RedemptionsRollbackCreateResponseBody data, response status code and response headers
    def rollback_redemption_with_http_info(redemption_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RedemptionsApi.rollback_redemption ...'
      end
      # verify the required parameter 'redemption_id' is set
      if @api_client.config.client_side_validation && redemption_id.nil?
        fail ArgumentError, "Missing the required parameter 'redemption_id' when calling RedemptionsApi.rollback_redemption"
      end
      # resource path
      local_var_path = '/v1/redemptions/{redemptionId}/rollback'.sub('{' + 'redemptionId' + '}', CGI.escape(redemption_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'reason'] = opts[:'reason'] if !opts[:'reason'].nil?
      query_params[:'tracking_id'] = opts[:'tracking_id'] if !opts[:'tracking_id'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'redemptions_rollback_create_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'RedemptionsRollbackCreateResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"RedemptionsApi.rollback_redemption",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RedemptionsApi#rollback_redemption\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Rollback Stackable Redemptions
    # Rollback a stackable redemption. When you rollback a stacked redemption, all child redemptions will be rolled back. Provide the parent redemption ID as the path parameter.
    # @param parent_redemption_id [String] Unique identifier of a parent redemption, e.g. &#x60;r_JQfm73zWSJFQxs3bGxweYjgm&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :reason Reason for the rollback.
    # @option opts [String] :tracking_id Customer&#39;s &#x60;source_id&#x60;.
    # @option opts [RedemptionsRollbacksCreateRequestBody] :redemptions_rollbacks_create_request_body Add information about the original customer and order. Customer data and Redemption metadata can be updated in Voucherify when passing the customer data in the request body.
    # @return [RedemptionsRollbacksCreateResponseBody]
    def rollback_stacked_redemptions(parent_redemption_id, opts = {})
      data, _status_code, _headers = rollback_stacked_redemptions_with_http_info(parent_redemption_id, opts)
      data
    end

    # Rollback Stackable Redemptions
    # Rollback a stackable redemption. When you rollback a stacked redemption, all child redemptions will be rolled back. Provide the parent redemption ID as the path parameter.
    # @param parent_redemption_id [String] Unique identifier of a parent redemption, e.g. &#x60;r_JQfm73zWSJFQxs3bGxweYjgm&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :reason Reason for the rollback.
    # @option opts [String] :tracking_id Customer&#39;s &#x60;source_id&#x60;.
    # @option opts [RedemptionsRollbacksCreateRequestBody] :redemptions_rollbacks_create_request_body Add information about the original customer and order. Customer data and Redemption metadata can be updated in Voucherify when passing the customer data in the request body.
    # @return [Array<(RedemptionsRollbacksCreateResponseBody, Integer, Hash)>] RedemptionsRollbacksCreateResponseBody data, response status code and response headers
    def rollback_stacked_redemptions_with_http_info(parent_redemption_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RedemptionsApi.rollback_stacked_redemptions ...'
      end
      # verify the required parameter 'parent_redemption_id' is set
      if @api_client.config.client_side_validation && parent_redemption_id.nil?
        fail ArgumentError, "Missing the required parameter 'parent_redemption_id' when calling RedemptionsApi.rollback_stacked_redemptions"
      end
      # resource path
      local_var_path = '/v1/redemptions/{parentRedemptionId}/rollbacks'.sub('{' + 'parentRedemptionId' + '}', CGI.escape(parent_redemption_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'reason'] = opts[:'reason'] if !opts[:'reason'].nil?
      query_params[:'tracking_id'] = opts[:'tracking_id'] if !opts[:'tracking_id'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'redemptions_rollbacks_create_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'RedemptionsRollbacksCreateResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"RedemptionsApi.rollback_stacked_redemptions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RedemptionsApi#rollback_stacked_redemptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
