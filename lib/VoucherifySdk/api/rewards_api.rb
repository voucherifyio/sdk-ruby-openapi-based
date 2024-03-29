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
  class RewardsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Reward Assignment
    # Assigns a reward to a specified loyalty campaign.
    # @param reward_id [String] A unique reward ID.
    # @param [Hash] opts the optional parameters
    # @option opts [RewardsAssignmentsCreateRequestBody] :rewards_assignments_create_request_body Provide the campaign ID of the campaign to which the reward is to be assigned and define the cost of the reward in terms of loyalty points.
    # @return [RewardsAssignmentsCreateResponseBody]
    def create_reward_assignment(reward_id, opts = {})
      data, _status_code, _headers = create_reward_assignment_with_http_info(reward_id, opts)
      data
    end

    # Create Reward Assignment
    # Assigns a reward to a specified loyalty campaign.
    # @param reward_id [String] A unique reward ID.
    # @param [Hash] opts the optional parameters
    # @option opts [RewardsAssignmentsCreateRequestBody] :rewards_assignments_create_request_body Provide the campaign ID of the campaign to which the reward is to be assigned and define the cost of the reward in terms of loyalty points.
    # @return [Array<(RewardsAssignmentsCreateResponseBody, Integer, Hash)>] RewardsAssignmentsCreateResponseBody data, response status code and response headers
    private def create_reward_assignment_with_http_info(reward_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardsApi.create_reward_assignment ...'
      end
      # verify the required parameter 'reward_id' is set
      if @api_client.config.client_side_validation && reward_id.nil?
        fail ArgumentError, "Missing the required parameter 'reward_id' when calling RewardsApi.create_reward_assignment"
      end
      # resource path
      local_var_path = '/v1/rewards/{rewardId}/assignments'.sub('{' + 'rewardId' + '}', CGI.escape(reward_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'rewards_assignments_create_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'RewardsAssignmentsCreateResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"RewardsApi.create_reward_assignment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardsApi#create_reward_assignment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Reward
    # Delete a reward.
    # @param reward_id [String] A unique reward ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_reward(reward_id, opts = {})
      delete_reward_with_http_info(reward_id, opts)
      nil
    end

    # Delete Reward
    # Delete a reward.
    # @param reward_id [String] A unique reward ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    private def delete_reward_with_http_info(reward_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardsApi.delete_reward ...'
      end
      # verify the required parameter 'reward_id' is set
      if @api_client.config.client_side_validation && reward_id.nil?
        fail ArgumentError, "Missing the required parameter 'reward_id' when calling RewardsApi.delete_reward"
      end
      # resource path
      local_var_path = '/v1/rewards/{rewardId}'.sub('{' + 'rewardId' + '}', CGI.escape(reward_id.to_s))

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
        :operation => :"RewardsApi.delete_reward",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardsApi#delete_reward\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Reward Assignment
    # This method deletes a reward assignment for a particular reward.
    # @param reward_id [String] A unique reward ID.
    # @param assignment_id [String] A unique reward assignment ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_reward_assignment(reward_id, assignment_id, opts = {})
      delete_reward_assignment_with_http_info(reward_id, assignment_id, opts)
      nil
    end

    # Delete Reward Assignment
    # This method deletes a reward assignment for a particular reward.
    # @param reward_id [String] A unique reward ID.
    # @param assignment_id [String] A unique reward assignment ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    private def delete_reward_assignment_with_http_info(reward_id, assignment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardsApi.delete_reward_assignment ...'
      end
      # verify the required parameter 'reward_id' is set
      if @api_client.config.client_side_validation && reward_id.nil?
        fail ArgumentError, "Missing the required parameter 'reward_id' when calling RewardsApi.delete_reward_assignment"
      end
      # verify the required parameter 'assignment_id' is set
      if @api_client.config.client_side_validation && assignment_id.nil?
        fail ArgumentError, "Missing the required parameter 'assignment_id' when calling RewardsApi.delete_reward_assignment"
      end
      # resource path
      local_var_path = '/v1/rewards/{rewardId}/assignments/{assignmentId}'.sub('{' + 'rewardId' + '}', CGI.escape(reward_id.to_s)).sub('{' + 'assignmentId' + '}', CGI.escape(assignment_id.to_s))

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
        :operation => :"RewardsApi.delete_reward_assignment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardsApi#delete_reward_assignment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Reward Assignment
    # Retrieve a reward assignment.
    # @param reward_id [String] A unique reward ID.
    # @param assignment_id [String] A unique reward assignment ID.
    # @param [Hash] opts the optional parameters
    # @return [RewardsAssignmentsGetResponseBody]
    def get_reward_assignment(reward_id, assignment_id, opts = {})
      data, _status_code, _headers = get_reward_assignment_with_http_info(reward_id, assignment_id, opts)
      data
    end

    # Get Reward Assignment
    # Retrieve a reward assignment.
    # @param reward_id [String] A unique reward ID.
    # @param assignment_id [String] A unique reward assignment ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RewardsAssignmentsGetResponseBody, Integer, Hash)>] RewardsAssignmentsGetResponseBody data, response status code and response headers
    private def get_reward_assignment_with_http_info(reward_id, assignment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardsApi.get_reward_assignment ...'
      end
      # verify the required parameter 'reward_id' is set
      if @api_client.config.client_side_validation && reward_id.nil?
        fail ArgumentError, "Missing the required parameter 'reward_id' when calling RewardsApi.get_reward_assignment"
      end
      # verify the required parameter 'assignment_id' is set
      if @api_client.config.client_side_validation && assignment_id.nil?
        fail ArgumentError, "Missing the required parameter 'assignment_id' when calling RewardsApi.get_reward_assignment"
      end
      # resource path
      local_var_path = '/v1/rewards/{rewardId}/assignments/{assignmentId}'.sub('{' + 'rewardId' + '}', CGI.escape(reward_id.to_s)).sub('{' + 'assignmentId' + '}', CGI.escape(assignment_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RewardsAssignmentsGetResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"RewardsApi.get_reward_assignment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardsApi#get_reward_assignment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Reward Assignments
    # Retrieve reward assignments by the reward ID.
    # @param reward_id [String] A unique reward ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100 items.
    # @option opts [Integer] :page Which page of results to return.
    # @return [RewardsAssignmentsListResponseBody]
    def list_reward_assignments(reward_id, opts = {})
      data, _status_code, _headers = list_reward_assignments_with_http_info(reward_id, opts)
      data
    end

    # List Reward Assignments
    # Retrieve reward assignments by the reward ID.
    # @param reward_id [String] A unique reward ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100 items.
    # @option opts [Integer] :page Which page of results to return.
    # @return [Array<(RewardsAssignmentsListResponseBody, Integer, Hash)>] RewardsAssignmentsListResponseBody data, response status code and response headers
    private def list_reward_assignments_with_http_info(reward_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardsApi.list_reward_assignments ...'
      end
      # verify the required parameter 'reward_id' is set
      if @api_client.config.client_side_validation && reward_id.nil?
        fail ArgumentError, "Missing the required parameter 'reward_id' when calling RewardsApi.list_reward_assignments"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RewardsApi.list_reward_assignments, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RewardsApi.list_reward_assignments, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling RewardsApi.list_reward_assignments, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/v1/rewards/{rewardId}/assignments'.sub('{' + 'rewardId' + '}', CGI.escape(reward_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RewardsAssignmentsListResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"RewardsApi.list_reward_assignments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardsApi#list_reward_assignments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Reward Assignment
    # Update the number of points needed to successfully redeem the reward.
    # @param reward_id [String] A unique reward ID.
    # @param assignment_id [String] A unique reward assignment ID.
    # @param [Hash] opts the optional parameters
    # @option opts [RewardsAssignmentsUpdateRequestBody] :rewards_assignments_update_request_body Define the number of points required to exchange for the reward.
    # @return [RewardsAssignmentsUpdateResponseBody]
    def update_reward_assignment(reward_id, assignment_id, opts = {})
      data, _status_code, _headers = update_reward_assignment_with_http_info(reward_id, assignment_id, opts)
      data
    end

    # Update Reward Assignment
    # Update the number of points needed to successfully redeem the reward.
    # @param reward_id [String] A unique reward ID.
    # @param assignment_id [String] A unique reward assignment ID.
    # @param [Hash] opts the optional parameters
    # @option opts [RewardsAssignmentsUpdateRequestBody] :rewards_assignments_update_request_body Define the number of points required to exchange for the reward.
    # @return [Array<(RewardsAssignmentsUpdateResponseBody, Integer, Hash)>] RewardsAssignmentsUpdateResponseBody data, response status code and response headers
    private def update_reward_assignment_with_http_info(reward_id, assignment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardsApi.update_reward_assignment ...'
      end
      # verify the required parameter 'reward_id' is set
      if @api_client.config.client_side_validation && reward_id.nil?
        fail ArgumentError, "Missing the required parameter 'reward_id' when calling RewardsApi.update_reward_assignment"
      end
      # verify the required parameter 'assignment_id' is set
      if @api_client.config.client_side_validation && assignment_id.nil?
        fail ArgumentError, "Missing the required parameter 'assignment_id' when calling RewardsApi.update_reward_assignment"
      end
      # resource path
      local_var_path = '/v1/rewards/{rewardId}/assignments/{assignmentId}'.sub('{' + 'rewardId' + '}', CGI.escape(reward_id.to_s)).sub('{' + 'assignmentId' + '}', CGI.escape(assignment_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'rewards_assignments_update_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'RewardsAssignmentsUpdateResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"RewardsApi.update_reward_assignment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardsApi#update_reward_assignment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
