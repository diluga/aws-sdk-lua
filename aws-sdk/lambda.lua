--- GENERATED CODE - DO NOT MODIFY
-- AWS Lambda (lambda-2015-03-31)

local M = {}

M.metadata = {
	api_version = "2015-03-31",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "lambda",
	service_abbreviation = "",
	service_full_name = "AWS Lambda",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "lambda-2015-03-31",
}

local keys = {}
local asserts = {}

keys.ListTagsRequest = { ["Resource"] = true, nil }

function asserts.AssertListTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsRequest to be of type 'table'")
	assert(struct["Resource"], "Expected key Resource to exist in table")
	if struct["Resource"] then asserts.AssertFunctionArn(struct["Resource"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsRequest[k], "ListTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Resource [FunctionArn] <p>The ARN (Amazon Resource Name) of the function.</p>
-- Required key: Resource
-- @return ListTagsRequest structure as a key-value pair table
function M.ListTagsRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{ARN}"] = args["Resource"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Resource"] = args["Resource"],
	}
	asserts.AssertListTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAliasesResponse = { ["NextMarker"] = true, ["Aliases"] = true, nil }

function asserts.AssertListAliasesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesResponse to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertString(struct["NextMarker"]) end
	if struct["Aliases"] then asserts.AssertAliasList(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAliasesResponse[k], "ListAliasesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [String] <p>A string, present if there are more aliases.</p>
-- * Aliases [AliasList] <p>A list of aliases.</p>
-- @return ListAliasesResponse structure as a key-value pair table
function M.ListAliasesResponse(args)
	assert(args, "You must provide an argument table when creating ListAliasesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Aliases"] = args["Aliases"],
	}
	asserts.AssertListAliasesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListVersionsByFunctionRequest = { ["Marker"] = true, ["FunctionName"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListVersionsByFunctionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVersionsByFunctionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["MaxItems"] then asserts.AssertMaxListItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVersionsByFunctionRequest[k], "ListVersionsByFunctionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVersionsByFunctionRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> Optional string. An opaque pagination token returned from a previous <code>ListVersionsByFunction</code> operation. If present, indicates where to continue the listing. </p>
-- * FunctionName [FunctionName] <p>Function name whose versions to list. You can specify a function name (for example, <code>Thumbnail</code>) or you can specify Amazon Resource Name (ARN) of the function (for example, <code>arn:aws:lambda:us-west-2:account-id:function:ThumbNail</code>). AWS Lambda also allows you to specify a partial ARN (for example, <code>account-id:Thumbnail</code>). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. </p>
-- * MaxItems [MaxListItems] <p>Optional integer. Specifies the maximum number of AWS Lambda function versions to return in response. This parameter value must be greater than 0.</p>
-- Required key: FunctionName
-- @return ListVersionsByFunctionRequest structure as a key-value pair table
function M.ListVersionsByFunctionRequest(args)
	assert(args, "You must provide an argument table when creating ListVersionsByFunctionRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["FunctionName"] = args["FunctionName"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListVersionsByFunctionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TracingConfig = { ["Mode"] = true, nil }

function asserts.AssertTracingConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TracingConfig to be of type 'table'")
	if struct["Mode"] then asserts.AssertTracingMode(struct["Mode"]) end
	for k,_ in pairs(struct) do
		assert(keys.TracingConfig[k], "TracingConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TracingConfig
-- <p>The parent object that contains your function's tracing settings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Mode [TracingMode] <p>Can be either PassThrough or Active. If PassThrough, Lambda will only trace the request from an upstream service if it contains a tracing header with "sampled=1". If Active, Lambda will respect any tracing header it receives from an upstream service. If no tracing header is received, Lambda will call X-Ray for a tracing decision.</p>
-- @return TracingConfig structure as a key-value pair table
function M.TracingConfig(args)
	assert(args, "You must provide an argument table when creating TracingConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Mode"] = args["Mode"],
	}
	asserts.AssertTracingConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateAliasRequest = { ["Description"] = true, ["FunctionVersion"] = true, ["FunctionName"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAliasRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["FunctionVersion"] then asserts.AssertVersion(struct["FunctionVersion"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["Name"] then asserts.AssertAlias(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAliasRequest[k], "UpdateAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAliasRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [Description] <p>You can change the description of the alias using this parameter.</p>
-- * FunctionVersion [Version] <p>Using this parameter you can change the Lambda function version to which the alias points.</p>
-- * FunctionName [FunctionName] <p>The function name for which the alias is created. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * Name [Alias] <p>The alias name.</p>
-- Required key: FunctionName
-- Required key: Name
-- @return UpdateAliasRequest structure as a key-value pair table
function M.UpdateAliasRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAliasRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
        ["{Name}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["FunctionVersion"] = args["FunctionVersion"],
		["FunctionName"] = args["FunctionName"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateAliasRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KMSInvalidStateException = { ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertKMSInvalidStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSInvalidStateException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSInvalidStateException[k], "KMSInvalidStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSInvalidStateException
-- <p>Lambda was unable to decrypt the environment variables because the KMS key used is in an invalid state for Decrypt. Check the function's KMS key settings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- * Type [String] 
-- @return KMSInvalidStateException structure as a key-value pair table
function M.KMSInvalidStateException(args)
	assert(args, "You must provide an argument table when creating KMSInvalidStateException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Type"] = args["Type"],
	}
	asserts.AssertKMSInvalidStateException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvokeAsyncRequest = { ["FunctionName"] = true, ["InvokeArgs"] = true, nil }

function asserts.AssertInvokeAsyncRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvokeAsyncRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["InvokeArgs"], "Expected key InvokeArgs to exist in table")
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["InvokeArgs"] then asserts.AssertBlobStream(struct["InvokeArgs"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvokeAsyncRequest[k], "InvokeAsyncRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvokeAsyncRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [FunctionName] <p>The Lambda function name. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * InvokeArgs [BlobStream] <p>JSON that you want to provide to your Lambda function as input.</p>
-- Required key: FunctionName
-- Required key: InvokeArgs
-- @return InvokeAsyncRequest structure as a key-value pair table
function M.InvokeAsyncRequest(args)
	assert(args, "You must provide an argument table when creating InvokeAsyncRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["InvokeArgs"] = args["InvokeArgs"],
	}
	asserts.AssertInvokeAsyncRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Environment = { ["Variables"] = true, nil }

function asserts.AssertEnvironment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Environment to be of type 'table'")
	if struct["Variables"] then asserts.AssertEnvironmentVariables(struct["Variables"]) end
	for k,_ in pairs(struct) do
		assert(keys.Environment[k], "Environment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Environment
-- <p>The parent object that contains your environment's configuration settings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Variables [EnvironmentVariables] <p>The key-value pairs that represent your environment's configuration settings.</p>
-- @return Environment structure as a key-value pair table
function M.Environment(args)
	assert(args, "You must provide an argument table when creating Environment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Variables"] = args["Variables"],
	}
	asserts.AssertEnvironment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListVersionsByFunctionResponse = { ["NextMarker"] = true, ["Versions"] = true, nil }

function asserts.AssertListVersionsByFunctionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVersionsByFunctionResponse to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertString(struct["NextMarker"]) end
	if struct["Versions"] then asserts.AssertFunctionList(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVersionsByFunctionResponse[k], "ListVersionsByFunctionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVersionsByFunctionResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [String] <p>A string, present if there are more function versions.</p>
-- * Versions [FunctionList] <p>A list of Lambda function versions.</p>
-- @return ListVersionsByFunctionResponse structure as a key-value pair table
function M.ListVersionsByFunctionResponse(args)
	assert(args, "You must provide an argument table when creating ListVersionsByFunctionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Versions"] = args["Versions"],
	}
	asserts.AssertListVersionsByFunctionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListEventSourceMappingsRequest = { ["Marker"] = true, ["EventSourceArn"] = true, ["FunctionName"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListEventSourceMappingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEventSourceMappingsRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["EventSourceArn"] then asserts.AssertArn(struct["EventSourceArn"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["MaxItems"] then asserts.AssertMaxListItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEventSourceMappingsRequest[k], "ListEventSourceMappingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEventSourceMappingsRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>Optional string. An opaque pagination token returned from a previous <code>ListEventSourceMappings</code> operation. If present, specifies to continue the list from where the returning call left off. </p>
-- * EventSourceArn [Arn] <p>The Amazon Resource Name (ARN) of the Amazon Kinesis stream. (This parameter is optional.)</p>
-- * FunctionName [FunctionName] <p>The name of the Lambda function.</p> <p> You can specify the function name (for example, <code>Thumbnail</code>) or you can specify Amazon Resource Name (ARN) of the function (for example, <code>arn:aws:lambda:us-west-2:account-id:function:ThumbNail</code>). If you are using versioning, you can also provide a qualified function ARN (ARN that is qualified with function version or alias name as suffix). AWS Lambda also allows you to specify only the function name with the account ID qualifier (for example, <code>account-id:Thumbnail</code>). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. </p>
-- * MaxItems [MaxListItems] <p>Optional integer. Specifies the maximum number of event sources to return in response. This value must be greater than 0.</p>
-- @return ListEventSourceMappingsRequest structure as a key-value pair table
function M.ListEventSourceMappingsRequest(args)
	assert(args, "You must provide an argument table when creating ListEventSourceMappingsRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["EventSourceArn"] = args["EventSourceArn"],
        ["FunctionName"] = args["FunctionName"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["EventSourceArn"] = args["EventSourceArn"],
		["FunctionName"] = args["FunctionName"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListEventSourceMappingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccountUsage = { ["FunctionCount"] = true, ["TotalCodeSize"] = true, nil }

function asserts.AssertAccountUsage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountUsage to be of type 'table'")
	if struct["FunctionCount"] then asserts.AssertLong(struct["FunctionCount"]) end
	if struct["TotalCodeSize"] then asserts.AssertLong(struct["TotalCodeSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountUsage[k], "AccountUsage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountUsage
-- <p>Provides code size usage and function count associated with the current account and region.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionCount [Long] <p>The number of your account's existing functions per region.</p>
-- * TotalCodeSize [Long] <p>Total size, in bytes, of the account's deployment packages per region.</p>
-- @return AccountUsage structure as a key-value pair table
function M.AccountUsage(args)
	assert(args, "You must provide an argument table when creating AccountUsage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionCount"] = args["FunctionCount"],
		["TotalCodeSize"] = args["TotalCodeSize"],
	}
	asserts.AssertAccountUsage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KMSNotFoundException = { ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertKMSNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSNotFoundException[k], "KMSNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSNotFoundException
-- <p>Lambda was unable to decrypt the environment variables because the KMS key was not found. Check the function's KMS key settings. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- * Type [String] 
-- @return KMSNotFoundException structure as a key-value pair table
function M.KMSNotFoundException(args)
	assert(args, "You must provide an argument table when creating KMSNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Type"] = args["Type"],
	}
	asserts.AssertKMSNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteFunctionRequest = { ["FunctionName"] = true, ["Qualifier"] = true, nil }

function asserts.AssertDeleteFunctionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFunctionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["Qualifier"] then asserts.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFunctionRequest[k], "DeleteFunctionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFunctionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [FunctionName] <p>The Lambda function to delete.</p> <p> You can specify the function name (for example, <code>Thumbnail</code>) or you can specify Amazon Resource Name (ARN) of the function (for example, <code>arn:aws:lambda:us-west-2:account-id:function:ThumbNail</code>). If you are using versioning, you can also provide a qualified function ARN (ARN that is qualified with function version or alias name as suffix). AWS Lambda also allows you to specify only the function name with the account ID qualifier (for example, <code>account-id:Thumbnail</code>). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. </p>
-- * Qualifier [Qualifier] <p>Using this optional parameter you can specify a function version (but not the <code>$LATEST</code> version) to direct AWS Lambda to delete a specific function version. If the function version has one or more aliases pointing to it, you will get an error because you cannot have aliases pointing to it. You can delete any function version but not the <code>$LATEST</code>, that is, you cannot specify <code>$LATEST</code> as the value of this parameter. The <code>$LATEST</code> version can be deleted only when you want to delete all the function versions and aliases.</p> <p>You can only specify a function version, not an alias name, using this parameter. You cannot delete a function version using its alias.</p> <p>If you don't specify this parameter, AWS Lambda will delete the function, including all of its versions and aliases.</p>
-- Required key: FunctionName
-- @return DeleteFunctionRequest structure as a key-value pair table
function M.DeleteFunctionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteFunctionRequest")
    local query_args = { 
        ["Qualifier"] = args["Qualifier"],
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["Qualifier"] = args["Qualifier"],
	}
	asserts.AssertDeleteFunctionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFunctionRequest = { ["FunctionName"] = true, ["Qualifier"] = true, nil }

function asserts.AssertGetFunctionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFunctionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["Qualifier"] then asserts.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFunctionRequest[k], "GetFunctionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFunctionRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [FunctionName] <p>The Lambda function name.</p> <p> You can specify a function name (for example, <code>Thumbnail</code>) or you can specify Amazon Resource Name (ARN) of the function (for example, <code>arn:aws:lambda:us-west-2:account-id:function:ThumbNail</code>). AWS Lambda also allows you to specify a partial ARN (for example, <code>account-id:Thumbnail</code>). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. </p>
-- * Qualifier [Qualifier] <p>Using this optional parameter to specify a function version or an alias name. If you specify function version, the API uses qualified function ARN for the request and returns information about the specific Lambda function version. If you specify an alias name, the API uses the alias ARN and returns information about the function version to which the alias points. If you don't provide this parameter, the API uses unqualified function ARN and returns information about the <code>$LATEST</code> version of the Lambda function.</p>
-- Required key: FunctionName
-- @return GetFunctionRequest structure as a key-value pair table
function M.GetFunctionRequest(args)
	assert(args, "You must provide an argument table when creating GetFunctionRequest")
    local query_args = { 
        ["Qualifier"] = args["Qualifier"],
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["Qualifier"] = args["Qualifier"],
	}
	asserts.AssertGetFunctionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PublishVersionRequest = { ["CodeSha256"] = true, ["FunctionName"] = true, ["Description"] = true, nil }

function asserts.AssertPublishVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublishVersionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["CodeSha256"] then asserts.AssertString(struct["CodeSha256"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.PublishVersionRequest[k], "PublishVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublishVersionRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CodeSha256 [String] <p>The SHA256 hash of the deployment package you want to publish. This provides validation on the code you are publishing. If you provide this parameter value must match the SHA256 of the $LATEST version for the publication to succeed.</p>
-- * FunctionName [FunctionName] <p>The Lambda function name. You can specify a function name (for example, <code>Thumbnail</code>) or you can specify Amazon Resource Name (ARN) of the function (for example, <code>arn:aws:lambda:us-west-2:account-id:function:ThumbNail</code>). AWS Lambda also allows you to specify a partial ARN (for example, <code>account-id:Thumbnail</code>). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. </p>
-- * Description [Description] <p>The description for the version you are publishing. If not provided, AWS Lambda copies the description from the $LATEST version.</p>
-- Required key: FunctionName
-- @return PublishVersionRequest structure as a key-value pair table
function M.PublishVersionRequest(args)
	assert(args, "You must provide an argument table when creating PublishVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["CodeSha256"] = args["CodeSha256"],
		["FunctionName"] = args["FunctionName"],
		["Description"] = args["Description"],
	}
	asserts.AssertPublishVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAliasRequest = { ["FunctionName"] = true, ["Name"] = true, nil }

function asserts.AssertDeleteAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAliasRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["Name"] then asserts.AssertAlias(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAliasRequest[k], "DeleteAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAliasRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [FunctionName] <p>The Lambda function name for which the alias is created. Deleting an alias does not delete the function version to which it is pointing. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * Name [Alias] <p>Name of the alias to delete.</p>
-- Required key: FunctionName
-- Required key: Name
-- @return DeleteAliasRequest structure as a key-value pair table
function M.DeleteAliasRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAliasRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
        ["{Name}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteAliasRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvocationRequest = { ["FunctionName"] = true, ["InvocationType"] = true, ["LogType"] = true, ["ClientContext"] = true, ["Payload"] = true, ["Qualifier"] = true, nil }

function asserts.AssertInvocationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvocationRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["InvocationType"] then asserts.AssertInvocationType(struct["InvocationType"]) end
	if struct["LogType"] then asserts.AssertLogType(struct["LogType"]) end
	if struct["ClientContext"] then asserts.AssertString(struct["ClientContext"]) end
	if struct["Payload"] then asserts.AssertBlob(struct["Payload"]) end
	if struct["Qualifier"] then asserts.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvocationRequest[k], "InvocationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvocationRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [FunctionName] <p>The Lambda function name.</p> <p> You can specify a function name (for example, <code>Thumbnail</code>) or you can specify Amazon Resource Name (ARN) of the function (for example, <code>arn:aws:lambda:us-west-2:account-id:function:ThumbNail</code>). AWS Lambda also allows you to specify a partial ARN (for example, <code>account-id:Thumbnail</code>). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. </p>
-- * InvocationType [InvocationType] <p>By default, the <code>Invoke</code> API assumes <code>RequestResponse</code> invocation type. You can optionally request asynchronous execution by specifying <code>Event</code> as the <code>InvocationType</code>. You can also use this parameter to request AWS Lambda to not execute the function but do some verification, such as if the caller is authorized to invoke the function and if the inputs are valid. You request this by specifying <code>DryRun</code> as the <code>InvocationType</code>. This is useful in a cross-account scenario when you want to verify access to a function without running it. </p>
-- * LogType [LogType] <p>You can set this optional parameter to <code>Tail</code> in the request only if you specify the <code>InvocationType</code> parameter with value <code>RequestResponse</code>. In this case, AWS Lambda returns the base64-encoded last 4 KB of log data produced by your Lambda function in the <code>x-amz-log-result</code> header. </p>
-- * ClientContext [String] <p>Using the <code>ClientContext</code> you can pass client-specific information to the Lambda function you are invoking. You can then process the client information in your Lambda function as you choose through the context variable. For an example of a <code>ClientContext</code> JSON, see <a href="http://docs.aws.amazon.com/mobileanalytics/latest/ug/PutEvents.html">PutEvents</a> in the <i>Amazon Mobile Analytics API Reference and User Guide</i>.</p> <p>The ClientContext JSON must be base64-encoded.</p>
-- * Payload [Blob] <p>JSON that you want to provide to your Lambda function as input.</p>
-- * Qualifier [Qualifier] <p>You can use this optional parameter to specify a Lambda function version or alias name. If you specify a function version, the API uses the qualified function ARN to invoke a specific Lambda function. If you specify an alias name, the API uses the alias ARN to invoke the Lambda function version to which the alias points.</p> <p>If you don't provide this parameter, then the API uses unqualified function ARN which results in invocation of the <code>$LATEST</code> version.</p>
-- Required key: FunctionName
-- @return InvocationRequest structure as a key-value pair table
function M.InvocationRequest(args)
	assert(args, "You must provide an argument table when creating InvocationRequest")
    local query_args = { 
        ["Qualifier"] = args["Qualifier"],
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
        ["X-Amz-Invocation-Type"] = args["InvocationType"],
        ["X-Amz-Log-Type"] = args["LogType"],
        ["X-Amz-Client-Context"] = args["ClientContext"],
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["InvocationType"] = args["InvocationType"],
		["LogType"] = args["LogType"],
		["ClientContext"] = args["ClientContext"],
		["Payload"] = args["Payload"],
		["Qualifier"] = args["Qualifier"],
	}
	asserts.AssertInvocationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAliasRequest = { ["FunctionName"] = true, ["Name"] = true, nil }

function asserts.AssertGetAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAliasRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["Name"] then asserts.AssertAlias(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAliasRequest[k], "GetAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAliasRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [FunctionName] <p>Function name for which the alias is created. An alias is a subresource that exists only in the context of an existing Lambda function so you must specify the function name. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * Name [Alias] <p>Name of the alias for which you want to retrieve information.</p>
-- Required key: FunctionName
-- Required key: Name
-- @return GetAliasRequest structure as a key-value pair table
function M.GetAliasRequest(args)
	assert(args, "You must provide an argument table when creating GetAliasRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
        ["{Name}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["Name"] = args["Name"],
	}
	asserts.AssertGetAliasRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateFunctionCodeRequest = { ["DryRun"] = true, ["FunctionName"] = true, ["ZipFile"] = true, ["Publish"] = true, ["S3Bucket"] = true, ["S3Key"] = true, ["S3ObjectVersion"] = true, nil }

function asserts.AssertUpdateFunctionCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFunctionCodeRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["DryRun"] then asserts.AssertBoolean(struct["DryRun"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["ZipFile"] then asserts.AssertBlob(struct["ZipFile"]) end
	if struct["Publish"] then asserts.AssertBoolean(struct["Publish"]) end
	if struct["S3Bucket"] then asserts.AssertS3Bucket(struct["S3Bucket"]) end
	if struct["S3Key"] then asserts.AssertS3Key(struct["S3Key"]) end
	if struct["S3ObjectVersion"] then asserts.AssertS3ObjectVersion(struct["S3ObjectVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFunctionCodeRequest[k], "UpdateFunctionCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFunctionCodeRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DryRun [Boolean] <p>This boolean parameter can be used to test your request to AWS Lambda to update the Lambda function and publish a version as an atomic operation. It will do all necessary computation and validation of your code but will not upload it or a publish a version. Each time this operation is invoked, the <code>CodeSha256</code> hash value the provided code will also be computed and returned in the response.</p>
-- * FunctionName [FunctionName] <p>The existing Lambda function name whose code you want to replace.</p> <p> You can specify a function name (for example, <code>Thumbnail</code>) or you can specify Amazon Resource Name (ARN) of the function (for example, <code>arn:aws:lambda:us-west-2:account-id:function:ThumbNail</code>). AWS Lambda also allows you to specify a partial ARN (for example, <code>account-id:Thumbnail</code>). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. </p>
-- * ZipFile [Blob] <p>The contents of your zip file containing your deployment package. If you are using the web API directly, the contents of the zip file must be base64-encoded. If you are using the AWS SDKs or the AWS CLI, the SDKs or CLI will do the encoding for you. For more information about creating a .zip file, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role.html">Execution Permissions</a> in the <i>AWS Lambda Developer Guide</i>. </p>
-- * Publish [Boolean] <p>This boolean parameter can be used to request AWS Lambda to update the Lambda function and publish a version as an atomic operation.</p>
-- * S3Bucket [S3Bucket] <p>Amazon S3 bucket name where the .zip file containing your deployment package is stored. This bucket must reside in the same AWS Region where you are creating the Lambda function.</p>
-- * S3Key [S3Key] <p>The Amazon S3 object (the deployment package) key name you want to upload.</p>
-- * S3ObjectVersion [S3ObjectVersion] <p>The Amazon S3 object (the deployment package) version you want to upload.</p>
-- Required key: FunctionName
-- @return UpdateFunctionCodeRequest structure as a key-value pair table
function M.UpdateFunctionCodeRequest(args)
	assert(args, "You must provide an argument table when creating UpdateFunctionCodeRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DryRun"] = args["DryRun"],
		["FunctionName"] = args["FunctionName"],
		["ZipFile"] = args["ZipFile"],
		["Publish"] = args["Publish"],
		["S3Bucket"] = args["S3Bucket"],
		["S3Key"] = args["S3Key"],
		["S3ObjectVersion"] = args["S3ObjectVersion"],
	}
	asserts.AssertUpdateFunctionCodeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateFunctionConfigurationRequest = { ["TracingConfig"] = true, ["DeadLetterConfig"] = true, ["FunctionName"] = true, ["VpcConfig"] = true, ["KMSKeyArn"] = true, ["MemorySize"] = true, ["Environment"] = true, ["Handler"] = true, ["Role"] = true, ["Timeout"] = true, ["Runtime"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateFunctionConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFunctionConfigurationRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["TracingConfig"] then asserts.AssertTracingConfig(struct["TracingConfig"]) end
	if struct["DeadLetterConfig"] then asserts.AssertDeadLetterConfig(struct["DeadLetterConfig"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["KMSKeyArn"] then asserts.AssertKMSKeyArn(struct["KMSKeyArn"]) end
	if struct["MemorySize"] then asserts.AssertMemorySize(struct["MemorySize"]) end
	if struct["Environment"] then asserts.AssertEnvironment(struct["Environment"]) end
	if struct["Handler"] then asserts.AssertHandler(struct["Handler"]) end
	if struct["Role"] then asserts.AssertRoleArn(struct["Role"]) end
	if struct["Timeout"] then asserts.AssertTimeout(struct["Timeout"]) end
	if struct["Runtime"] then asserts.AssertRuntime(struct["Runtime"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFunctionConfigurationRequest[k], "UpdateFunctionConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFunctionConfigurationRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TracingConfig [TracingConfig] <p>The parent object that contains your function's tracing settings.</p>
-- * DeadLetterConfig [DeadLetterConfig] <p>The parent object that contains the target ARN (Amazon Resource Name) of an Amazon SQS queue or Amazon SNS topic.</p>
-- * FunctionName [FunctionName] <p>The name of the Lambda function.</p> <p> You can specify a function name (for example, <code>Thumbnail</code>) or you can specify Amazon Resource Name (ARN) of the function (for example, <code>arn:aws:lambda:us-west-2:account-id:function:ThumbNail</code>). AWS Lambda also allows you to specify a partial ARN (for example, <code>account-id:Thumbnail</code>). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 character in length. </p>
-- * VpcConfig [VpcConfig] 
-- * KMSKeyArn [KMSKeyArn] <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt your function's environment variables. If you elect to use the AWS Lambda default service key, pass in an empty string ("") for this parameter.</p>
-- * MemorySize [MemorySize] <p>The amount of memory, in MB, your Lambda function is given. AWS Lambda uses this memory size to infer the amount of CPU allocated to your function. Your function use-case determines your CPU and memory requirements. For example, a database operation might need less memory compared to an image processing function. The default value is 128 MB. The value must be a multiple of 64 MB.</p>
-- * Environment [Environment] <p>The parent object that contains your environment's configuration settings.</p>
-- * Handler [Handler] <p>The function that Lambda calls to begin executing your function. For Node.js, it is the <code>module-name.export</code> value in your function. </p>
-- * Role [RoleArn] <p>The Amazon Resource Name (ARN) of the IAM role that Lambda will assume when it executes your function.</p>
-- * Timeout [Timeout] <p>The function execution time at which AWS Lambda should terminate the function. Because the execution time has cost implications, we recommend you set this value based on your expected execution time. The default is 3 seconds.</p>
-- * Runtime [Runtime] <p>The runtime environment for the Lambda function.</p> <p>To use the Python runtime v3.6, set the value to "python3.6". To use the Python runtime v2.7, set the value to "python2.7". To use the Node.js runtime v6.10, set the value to "nodejs6.10". To use the Node.js runtime v4.3, set the value to "nodejs4.3". To use the Python runtime v3.6, set the value to "python3.6". To use the Python runtime v2.7, set the value to "python2.7".</p> <note> <p>Node v0.10.42 is currently marked as deprecated. You must migrate existing functions to the newer Node.js runtime versions available on AWS Lambda (nodejs4.3 or nodejs6.10) as soon as possible. You can request a one-time extension until June 30, 2017 by going to the Lambda console and following the instructions provided. Failure to do so will result in an invalid parameter value error being returned. Note that you will have to follow this procedure for each region that contains functions written in the Node v0.10.42 runtime.</p> </note>
-- * Description [Description] <p>A short user-defined function description. AWS Lambda does not use this value. Assign a meaningful description as you see fit.</p>
-- Required key: FunctionName
-- @return UpdateFunctionConfigurationRequest structure as a key-value pair table
function M.UpdateFunctionConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating UpdateFunctionConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["TracingConfig"] = args["TracingConfig"],
		["DeadLetterConfig"] = args["DeadLetterConfig"],
		["FunctionName"] = args["FunctionName"],
		["VpcConfig"] = args["VpcConfig"],
		["KMSKeyArn"] = args["KMSKeyArn"],
		["MemorySize"] = args["MemorySize"],
		["Environment"] = args["Environment"],
		["Handler"] = args["Handler"],
		["Role"] = args["Role"],
		["Timeout"] = args["Timeout"],
		["Runtime"] = args["Runtime"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateFunctionConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AliasConfiguration = { ["AliasArn"] = true, ["FunctionVersion"] = true, ["Name"] = true, ["Description"] = true, nil }

function asserts.AssertAliasConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AliasConfiguration to be of type 'table'")
	if struct["AliasArn"] then asserts.AssertFunctionArn(struct["AliasArn"]) end
	if struct["FunctionVersion"] then asserts.AssertVersion(struct["FunctionVersion"]) end
	if struct["Name"] then asserts.AssertAlias(struct["Name"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.AliasConfiguration[k], "AliasConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AliasConfiguration
-- <p>Provides configuration information about a Lambda function version alias.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AliasArn [FunctionArn] <p>Lambda function ARN that is qualified using the alias name as the suffix. For example, if you create an alias called <code>BETA</code> that points to a helloworld function version, the ARN is <code>arn:aws:lambda:aws-regions:acct-id:function:helloworld:BETA</code>.</p>
-- * FunctionVersion [Version] <p>Function version to which the alias points.</p>
-- * Name [Alias] <p>Alias name.</p>
-- * Description [Description] <p>Alias description.</p>
-- @return AliasConfiguration structure as a key-value pair table
function M.AliasConfiguration(args)
	assert(args, "You must provide an argument table when creating AliasConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AliasArn"] = args["AliasArn"],
		["FunctionVersion"] = args["FunctionVersion"],
		["Name"] = args["Name"],
		["Description"] = args["Description"],
	}
	asserts.AssertAliasConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAccountSettingsResponse = { ["AccountLimit"] = true, ["AccountUsage"] = true, nil }

function asserts.AssertGetAccountSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountSettingsResponse to be of type 'table'")
	if struct["AccountLimit"] then asserts.AssertAccountLimit(struct["AccountLimit"]) end
	if struct["AccountUsage"] then asserts.AssertAccountUsage(struct["AccountUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAccountSettingsResponse[k], "GetAccountSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountSettingsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountLimit [AccountLimit] 
-- * AccountUsage [AccountUsage] 
-- @return GetAccountSettingsResponse structure as a key-value pair table
function M.GetAccountSettingsResponse(args)
	assert(args, "You must provide an argument table when creating GetAccountSettingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountLimit"] = args["AccountLimit"],
		["AccountUsage"] = args["AccountUsage"],
	}
	asserts.AssertGetAccountSettingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VpcConfigResponse = { ["SubnetIds"] = true, ["VpcId"] = true, ["SecurityGroupIds"] = true, nil }

function asserts.AssertVpcConfigResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VpcConfigResponse to be of type 'table'")
	if struct["SubnetIds"] then asserts.AssertSubnetIds(struct["SubnetIds"]) end
	if struct["VpcId"] then asserts.AssertVpcId(struct["VpcId"]) end
	if struct["SecurityGroupIds"] then asserts.AssertSecurityGroupIds(struct["SecurityGroupIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.VpcConfigResponse[k], "VpcConfigResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VpcConfigResponse
-- <p>VPC configuration associated with your Lambda function.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIds [SubnetIds] <p>A list of subnet IDs associated with the Lambda function.</p>
-- * VpcId [VpcId] <p>The VPC ID associated with you Lambda function.</p>
-- * SecurityGroupIds [SecurityGroupIds] <p>A list of security group IDs associated with the Lambda function.</p>
-- @return VpcConfigResponse structure as a key-value pair table
function M.VpcConfigResponse(args)
	assert(args, "You must provide an argument table when creating VpcConfigResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetIds"] = args["SubnetIds"],
		["VpcId"] = args["VpcId"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
	}
	asserts.AssertVpcConfigResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvocationResponse = { ["LogResult"] = true, ["FunctionError"] = true, ["Payload"] = true, ["StatusCode"] = true, nil }

function asserts.AssertInvocationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvocationResponse to be of type 'table'")
	if struct["LogResult"] then asserts.AssertString(struct["LogResult"]) end
	if struct["FunctionError"] then asserts.AssertString(struct["FunctionError"]) end
	if struct["Payload"] then asserts.AssertBlob(struct["Payload"]) end
	if struct["StatusCode"] then asserts.AssertInteger(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvocationResponse[k], "InvocationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvocationResponse
-- <p>Upon success, returns an empty response. Otherwise, throws an exception.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LogResult [String] <p> It is the base64-encoded logs for the Lambda function invocation. This is present only if the invocation type is <code>RequestResponse</code> and the logs were requested. </p>
-- * FunctionError [String] <p>Indicates whether an error occurred while executing the Lambda function. If an error occurred this field will have one of two values; <code>Handled</code> or <code>Unhandled</code>. <code>Handled</code> errors are errors that are reported by the function while the <code>Unhandled</code> errors are those detected and reported by AWS Lambda. Unhandled errors include out of memory errors and function timeouts. For information about how to report an <code>Handled</code> error, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/programming-model.html">Programming Model</a>. </p>
-- * Payload [Blob] <p> It is the JSON representation of the object returned by the Lambda function. This is present only if the invocation type is <code>RequestResponse</code>. </p> <p>In the event of a function error this field contains a message describing the error. For the <code>Handled</code> errors the Lambda function will report this message. For <code>Unhandled</code> errors AWS Lambda reports the message. </p>
-- * StatusCode [Integer] <p>The HTTP status code will be in the 200 range for successful request. For the <code>RequestResponse</code> invocation type this status code will be 200. For the <code>Event</code> invocation type this status code will be 202. For the <code>DryRun</code> invocation type the status code will be 204. </p>
-- @return InvocationResponse structure as a key-value pair table
function M.InvocationResponse(args)
	assert(args, "You must provide an argument table when creating InvocationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["X-Amz-Log-Result"] = args["LogResult"],
        ["X-Amz-Function-Error"] = args["FunctionError"],
    }
	local all_args = { 
		["LogResult"] = args["LogResult"],
		["FunctionError"] = args["FunctionError"],
		["Payload"] = args["Payload"],
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertInvocationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CodeStorageExceededException = { ["message"] = true, ["Type"] = true, nil }

function asserts.AssertCodeStorageExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeStorageExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.CodeStorageExceededException[k], "CodeStorageExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeStorageExceededException
-- <p>You have exceeded your maximum total code size per account. <a href="http://docs.aws.amazon.com/lambda/latest/dg/limits.html">Limits</a> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- * Type [String] <p/>
-- @return CodeStorageExceededException structure as a key-value pair table
function M.CodeStorageExceededException(args)
	assert(args, "You must provide an argument table when creating CodeStorageExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["Type"] = args["Type"],
	}
	asserts.AssertCodeStorageExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyRequestsException = { ["message"] = true, ["Type"] = true, ["Reason"] = true, ["retryAfterSeconds"] = true, nil }

function asserts.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	if struct["Reason"] then asserts.AssertThrottleReason(struct["Reason"]) end
	if struct["retryAfterSeconds"] then asserts.AssertString(struct["retryAfterSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyRequestsException[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- * Type [String] 
-- * Reason [ThrottleReason] 
-- * retryAfterSeconds [String] <p>The number of seconds the caller should wait before retrying.</p>
-- @return TooManyRequestsException structure as a key-value pair table
function M.TooManyRequestsException(args)
	assert(args, "You must provide an argument table when creating TooManyRequestsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Retry-After"] = args["retryAfterSeconds"],
    }
	local all_args = { 
		["message"] = args["message"],
		["Type"] = args["Type"],
		["Reason"] = args["Reason"],
		["retryAfterSeconds"] = args["retryAfterSeconds"],
	}
	asserts.AssertTooManyRequestsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ENILimitReachedException = { ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertENILimitReachedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ENILimitReachedException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.ENILimitReachedException[k], "ENILimitReachedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ENILimitReachedException
-- <p>AWS Lambda was not able to create an Elastic Network Interface (ENI) in the VPC, specified as part of Lambda function configuration, because the limit for network interfaces has been reached.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- * Type [String] 
-- @return ENILimitReachedException structure as a key-value pair table
function M.ENILimitReachedException(args)
	assert(args, "You must provide an argument table when creating ENILimitReachedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Type"] = args["Type"],
	}
	asserts.AssertENILimitReachedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateEventSourceMappingRequest = { ["FunctionName"] = true, ["StartingPositionTimestamp"] = true, ["BatchSize"] = true, ["Enabled"] = true, ["EventSourceArn"] = true, ["StartingPosition"] = true, nil }

function asserts.AssertCreateEventSourceMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEventSourceMappingRequest to be of type 'table'")
	assert(struct["EventSourceArn"], "Expected key EventSourceArn to exist in table")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["StartingPosition"], "Expected key StartingPosition to exist in table")
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["StartingPositionTimestamp"] then asserts.AssertDate(struct["StartingPositionTimestamp"]) end
	if struct["BatchSize"] then asserts.AssertBatchSize(struct["BatchSize"]) end
	if struct["Enabled"] then asserts.AssertEnabled(struct["Enabled"]) end
	if struct["EventSourceArn"] then asserts.AssertArn(struct["EventSourceArn"]) end
	if struct["StartingPosition"] then asserts.AssertEventSourcePosition(struct["StartingPosition"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEventSourceMappingRequest[k], "CreateEventSourceMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEventSourceMappingRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [FunctionName] <p>The Lambda function to invoke when AWS Lambda detects an event on the stream.</p> <p> You can specify the function name (for example, <code>Thumbnail</code>) or you can specify Amazon Resource Name (ARN) of the function (for example, <code>arn:aws:lambda:us-west-2:account-id:function:ThumbNail</code>). </p> <p> If you are using versioning, you can also provide a qualified function ARN (ARN that is qualified with function version or alias name as suffix). For more information about versioning, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a> </p> <p>AWS Lambda also allows you to specify only the function name with the account ID qualifier (for example, <code>account-id:Thumbnail</code>). </p> <p>Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * StartingPositionTimestamp [Date] <p>The timestamp of the data record from which to start reading. Used with <a href="http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType">shard iterator type</a> AT_TIMESTAMP. If a record with this exact timestamp does not exist, the iterator returned is for the next (later) record. If the timestamp is older than the current trim horizon, the iterator returned is for the oldest untrimmed data record (TRIM_HORIZON). Valid only for Kinesis streams. </p>
-- * BatchSize [BatchSize] <p>The largest number of records that AWS Lambda will retrieve from your event source at the time of invoking your function. Your function receives an event with all the retrieved records. The default is 100 records.</p>
-- * Enabled [Enabled] <p>Indicates whether AWS Lambda should begin polling the event source. By default, <code>Enabled</code> is true. </p>
-- * EventSourceArn [Arn] <p>The Amazon Resource Name (ARN) of the Amazon Kinesis or the Amazon DynamoDB stream that is the event source. Any record added to this stream could cause AWS Lambda to invoke your Lambda function, it depends on the <code>BatchSize</code>. AWS Lambda POSTs the Amazon Kinesis event, containing records, to your Lambda function as JSON.</p>
-- * StartingPosition [EventSourcePosition] <p>The position in the stream where AWS Lambda should start reading. Valid only for Kinesis streams. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType">ShardIteratorType</a> in the <i>Amazon Kinesis API Reference</i>. </p>
-- Required key: EventSourceArn
-- Required key: FunctionName
-- Required key: StartingPosition
-- @return CreateEventSourceMappingRequest structure as a key-value pair table
function M.CreateEventSourceMappingRequest(args)
	assert(args, "You must provide an argument table when creating CreateEventSourceMappingRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["StartingPositionTimestamp"] = args["StartingPositionTimestamp"],
		["BatchSize"] = args["BatchSize"],
		["Enabled"] = args["Enabled"],
		["EventSourceArn"] = args["EventSourceArn"],
		["StartingPosition"] = args["StartingPosition"],
	}
	asserts.AssertCreateEventSourceMappingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemovePermissionRequest = { ["StatementId"] = true, ["FunctionName"] = true, ["Qualifier"] = true, nil }

function asserts.AssertRemovePermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemovePermissionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["StatementId"], "Expected key StatementId to exist in table")
	if struct["StatementId"] then asserts.AssertStatementId(struct["StatementId"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["Qualifier"] then asserts.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemovePermissionRequest[k], "RemovePermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemovePermissionRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StatementId [StatementId] <p>Statement ID of the permission to remove.</p>
-- * FunctionName [FunctionName] <p>Lambda function whose resource policy you want to remove a permission from.</p> <p> You can specify a function name (for example, <code>Thumbnail</code>) or you can specify Amazon Resource Name (ARN) of the function (for example, <code>arn:aws:lambda:us-west-2:account-id:function:ThumbNail</code>). AWS Lambda also allows you to specify a partial ARN (for example, <code>account-id:Thumbnail</code>). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. </p>
-- * Qualifier [Qualifier] <p>You can specify this optional parameter to remove permission associated with a specific function version or function alias. If you don't specify this parameter, the API removes permission associated with the unqualified function ARN.</p>
-- Required key: FunctionName
-- Required key: StatementId
-- @return RemovePermissionRequest structure as a key-value pair table
function M.RemovePermissionRequest(args)
	assert(args, "You must provide an argument table when creating RemovePermissionRequest")
    local query_args = { 
        ["Qualifier"] = args["Qualifier"],
    }
    local uri_args = { 
        ["{StatementId}"] = args["StatementId"],
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["StatementId"] = args["StatementId"],
		["FunctionName"] = args["FunctionName"],
		["Qualifier"] = args["Qualifier"],
	}
	asserts.AssertRemovePermissionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListFunctionsRequest = { ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListFunctionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFunctionsRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxItems"] then asserts.AssertMaxListItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFunctionsRequest[k], "ListFunctionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFunctionsRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>Optional string. An opaque pagination token returned from a previous <code>ListFunctions</code> operation. If present, indicates where to continue the listing. </p>
-- * MaxItems [MaxListItems] <p>Optional integer. Specifies the maximum number of AWS Lambda functions to return in response. This parameter value must be greater than 0.</p>
-- @return ListFunctionsRequest structure as a key-value pair table
function M.ListFunctionsRequest(args)
	assert(args, "You must provide an argument table when creating ListFunctionsRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListFunctionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EC2UnexpectedException = { ["Message"] = true, ["Type"] = true, ["EC2ErrorCode"] = true, nil }

function asserts.AssertEC2UnexpectedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2UnexpectedException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	if struct["EC2ErrorCode"] then asserts.AssertString(struct["EC2ErrorCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.EC2UnexpectedException[k], "EC2UnexpectedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2UnexpectedException
-- <p>AWS Lambda received an unexpected EC2 client exception while setting up for the Lambda function.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- * Type [String] 
-- * EC2ErrorCode [String] 
-- @return EC2UnexpectedException structure as a key-value pair table
function M.EC2UnexpectedException(args)
	assert(args, "You must provide an argument table when creating EC2UnexpectedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Type"] = args["Type"],
		["EC2ErrorCode"] = args["EC2ErrorCode"],
	}
	asserts.AssertEC2UnexpectedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceRequest = { ["TagKeys"] = true, ["Resource"] = true, nil }

function asserts.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["Resource"], "Expected key Resource to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	if struct["Resource"] then asserts.AssertFunctionArn(struct["Resource"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceRequest[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagKeys [TagKeyList] <p>The list of tag keys to be deleted from the function.</p>
-- * Resource [FunctionArn] <p>The ARN (Amazon Resource Name) of the function.</p>
-- Required key: Resource
-- Required key: TagKeys
-- @return UntagResourceRequest structure as a key-value pair table
function M.UntagResourceRequest(args)
	assert(args, "You must provide an argument table when creating UntagResourceRequest")
    local query_args = { 
        ["tagKeys"] = args["TagKeys"],
    }
    local uri_args = { 
        ["{ARN}"] = args["Resource"],
    }
    local header_args = { 
    }
	local all_args = { 
		["TagKeys"] = args["TagKeys"],
		["Resource"] = args["Resource"],
	}
	asserts.AssertUntagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateFunctionRequest = { ["TracingConfig"] = true, ["Code"] = true, ["DeadLetterConfig"] = true, ["FunctionName"] = true, ["VpcConfig"] = true, ["Tags"] = true, ["KMSKeyArn"] = true, ["MemorySize"] = true, ["Publish"] = true, ["Environment"] = true, ["Handler"] = true, ["Role"] = true, ["Timeout"] = true, ["Runtime"] = true, ["Description"] = true, nil }

function asserts.AssertCreateFunctionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFunctionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["Runtime"], "Expected key Runtime to exist in table")
	assert(struct["Role"], "Expected key Role to exist in table")
	assert(struct["Handler"], "Expected key Handler to exist in table")
	assert(struct["Code"], "Expected key Code to exist in table")
	if struct["TracingConfig"] then asserts.AssertTracingConfig(struct["TracingConfig"]) end
	if struct["Code"] then asserts.AssertFunctionCode(struct["Code"]) end
	if struct["DeadLetterConfig"] then asserts.AssertDeadLetterConfig(struct["DeadLetterConfig"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["KMSKeyArn"] then asserts.AssertKMSKeyArn(struct["KMSKeyArn"]) end
	if struct["MemorySize"] then asserts.AssertMemorySize(struct["MemorySize"]) end
	if struct["Publish"] then asserts.AssertBoolean(struct["Publish"]) end
	if struct["Environment"] then asserts.AssertEnvironment(struct["Environment"]) end
	if struct["Handler"] then asserts.AssertHandler(struct["Handler"]) end
	if struct["Role"] then asserts.AssertRoleArn(struct["Role"]) end
	if struct["Timeout"] then asserts.AssertTimeout(struct["Timeout"]) end
	if struct["Runtime"] then asserts.AssertRuntime(struct["Runtime"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFunctionRequest[k], "CreateFunctionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFunctionRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TracingConfig [TracingConfig] <p>The parent object that contains your function's tracing settings.</p>
-- * Code [FunctionCode] <p>The code for the Lambda function.</p>
-- * DeadLetterConfig [DeadLetterConfig] <p>The parent object that contains the target ARN (Amazon Resource Name) of an Amazon SQS queue or Amazon SNS topic. </p>
-- * FunctionName [FunctionName] <p>The name you want to assign to the function you are uploading. The function names appear in the console and are returned in the <a>ListFunctions</a> API. Function names are used to specify functions to other AWS Lambda API operations, such as <a>Invoke</a>. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. </p>
-- * VpcConfig [VpcConfig] <p>If your Lambda function accesses resources in a VPC, you provide this parameter identifying the list of security group IDs and subnet IDs. These must belong to the same VPC. You must provide at least one security group and one subnet ID.</p>
-- * Tags [Tags] <p>The list of tags (key-value pairs) assigned to the new function.</p>
-- * KMSKeyArn [KMSKeyArn] <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt your function's environment variables. If not provided, AWS Lambda will use a default service key.</p>
-- * MemorySize [MemorySize] <p>The amount of memory, in MB, your Lambda function is given. Lambda uses this memory size to infer the amount of CPU and memory allocated to your function. Your function use-case determines your CPU and memory requirements. For example, a database operation might need less memory compared to an image processing function. The default value is 128 MB. The value must be a multiple of 64 MB.</p>
-- * Publish [Boolean] <p>This boolean parameter can be used to request AWS Lambda to create the Lambda function and publish a version as an atomic operation.</p>
-- * Environment [Environment] 
-- * Handler [Handler] <p>The function within your code that Lambda calls to begin execution. For Node.js, it is the <i>module-name</i>.<i>export</i> value in your function. For Java, it can be <code>package.class-name::handler</code> or <code>package.class-name</code>. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/java-programming-model-handler-types.html">Lambda Function Handler (Java)</a>. </p>
-- * Role [RoleArn] <p>The Amazon Resource Name (ARN) of the IAM role that Lambda assumes when it executes your function to access any other Amazon Web Services (AWS) resources. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html">AWS Lambda: How it Works</a>. </p>
-- * Timeout [Timeout] <p>The function execution time at which Lambda should terminate the function. Because the execution time has cost implications, we recommend you set this value based on your expected execution time. The default is 3 seconds.</p>
-- * Runtime [Runtime] <p>The runtime environment for the Lambda function you are uploading.</p> <p>To use the Python runtime v3.6, set the value to "python3.6". To use the Python runtime v2.7, set the value to "python2.7". To use the Node.js runtime v6.10, set the value to "nodejs6.10". To use the Node.js runtime v4.3, set the value to "nodejs4.3".</p> <note> <p>Node v0.10.42 is currently marked as deprecated. You must migrate existing functions to the newer Node.js runtime versions available on AWS Lambda (nodejs4.3 or nodejs6.10) as soon as possible. You can request a one-time extension until June 30, 2017 by going to the Lambda console and following the instructions provided. Failure to do so will result in an invalid parmaeter error being returned. Note that you will have to follow this procedure for each region that contains functions written in the Node v0.10.42 runtime.</p> </note>
-- * Description [Description] <p>A short, user-defined function description. Lambda does not use this value. Assign a meaningful description as you see fit.</p>
-- Required key: FunctionName
-- Required key: Runtime
-- Required key: Role
-- Required key: Handler
-- Required key: Code
-- @return CreateFunctionRequest structure as a key-value pair table
function M.CreateFunctionRequest(args)
	assert(args, "You must provide an argument table when creating CreateFunctionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TracingConfig"] = args["TracingConfig"],
		["Code"] = args["Code"],
		["DeadLetterConfig"] = args["DeadLetterConfig"],
		["FunctionName"] = args["FunctionName"],
		["VpcConfig"] = args["VpcConfig"],
		["Tags"] = args["Tags"],
		["KMSKeyArn"] = args["KMSKeyArn"],
		["MemorySize"] = args["MemorySize"],
		["Publish"] = args["Publish"],
		["Environment"] = args["Environment"],
		["Handler"] = args["Handler"],
		["Role"] = args["Role"],
		["Timeout"] = args["Timeout"],
		["Runtime"] = args["Runtime"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateFunctionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KMSDisabledException = { ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertKMSDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSDisabledException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSDisabledException[k], "KMSDisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSDisabledException
-- <p>Lambda was unable to decrypt the environment variables because the KMS key used is disabled. Check the Lambda function's KMS key settings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- * Type [String] 
-- @return KMSDisabledException structure as a key-value pair table
function M.KMSDisabledException(args)
	assert(args, "You must provide an argument table when creating KMSDisabledException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Type"] = args["Type"],
	}
	asserts.AssertKMSDisabledException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KMSAccessDeniedException = { ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertKMSAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSAccessDeniedException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSAccessDeniedException[k], "KMSAccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSAccessDeniedException
-- <p>Lambda was unable to decrypt the environment variables because KMS access was denied. Check the Lambda function's KMS permissions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- * Type [String] 
-- @return KMSAccessDeniedException structure as a key-value pair table
function M.KMSAccessDeniedException(args)
	assert(args, "You must provide an argument table when creating KMSAccessDeniedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Type"] = args["Type"],
	}
	asserts.AssertKMSAccessDeniedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnvironmentResponse = { ["Variables"] = true, ["Error"] = true, nil }

function asserts.AssertEnvironmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentResponse to be of type 'table'")
	if struct["Variables"] then asserts.AssertEnvironmentVariables(struct["Variables"]) end
	if struct["Error"] then asserts.AssertEnvironmentError(struct["Error"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentResponse[k], "EnvironmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentResponse
-- <p>The parent object returned that contains your environment's configuration settings or any error information associated with your configuration settings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Variables [EnvironmentVariables] <p>The key-value pairs returned that represent your environment's configuration settings or error information.</p>
-- * Error [EnvironmentError] 
-- @return EnvironmentResponse structure as a key-value pair table
function M.EnvironmentResponse(args)
	assert(args, "You must provide an argument table when creating EnvironmentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Variables"] = args["Variables"],
		["Error"] = args["Error"],
	}
	asserts.AssertEnvironmentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EC2AccessDeniedException = { ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertEC2AccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2AccessDeniedException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.EC2AccessDeniedException[k], "EC2AccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2AccessDeniedException
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- * Type [String] 
-- @return EC2AccessDeniedException structure as a key-value pair table
function M.EC2AccessDeniedException(args)
	assert(args, "You must provide an argument table when creating EC2AccessDeniedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Type"] = args["Type"],
	}
	asserts.AssertEC2AccessDeniedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidRequestContentException = { ["message"] = true, ["Type"] = true, nil }

function asserts.AssertInvalidRequestContentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestContentException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidRequestContentException[k], "InvalidRequestContentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestContentException
-- <p>The request body could not be parsed as JSON.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p/>
-- * Type [String] <p/>
-- @return InvalidRequestContentException structure as a key-value pair table
function M.InvalidRequestContentException(args)
	assert(args, "You must provide an argument table when creating InvalidRequestContentException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["Type"] = args["Type"],
	}
	asserts.AssertInvalidRequestContentException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FunctionConfiguration = { ["TracingConfig"] = true, ["Version"] = true, ["CodeSha256"] = true, ["FunctionName"] = true, ["VpcConfig"] = true, ["KMSKeyArn"] = true, ["MemorySize"] = true, ["CodeSize"] = true, ["FunctionArn"] = true, ["Environment"] = true, ["Handler"] = true, ["Role"] = true, ["Timeout"] = true, ["LastModified"] = true, ["DeadLetterConfig"] = true, ["Runtime"] = true, ["Description"] = true, nil }

function asserts.AssertFunctionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FunctionConfiguration to be of type 'table'")
	if struct["TracingConfig"] then asserts.AssertTracingConfigResponse(struct["TracingConfig"]) end
	if struct["Version"] then asserts.AssertVersion(struct["Version"]) end
	if struct["CodeSha256"] then asserts.AssertString(struct["CodeSha256"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfigResponse(struct["VpcConfig"]) end
	if struct["KMSKeyArn"] then asserts.AssertKMSKeyArn(struct["KMSKeyArn"]) end
	if struct["MemorySize"] then asserts.AssertMemorySize(struct["MemorySize"]) end
	if struct["CodeSize"] then asserts.AssertLong(struct["CodeSize"]) end
	if struct["FunctionArn"] then asserts.AssertFunctionArn(struct["FunctionArn"]) end
	if struct["Environment"] then asserts.AssertEnvironmentResponse(struct["Environment"]) end
	if struct["Handler"] then asserts.AssertHandler(struct["Handler"]) end
	if struct["Role"] then asserts.AssertRoleArn(struct["Role"]) end
	if struct["Timeout"] then asserts.AssertTimeout(struct["Timeout"]) end
	if struct["LastModified"] then asserts.AssertTimestamp(struct["LastModified"]) end
	if struct["DeadLetterConfig"] then asserts.AssertDeadLetterConfig(struct["DeadLetterConfig"]) end
	if struct["Runtime"] then asserts.AssertRuntime(struct["Runtime"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.FunctionConfiguration[k], "FunctionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FunctionConfiguration
-- <p>A complex type that describes function metadata.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TracingConfig [TracingConfigResponse] <p>The parent object that contains your function's tracing settings.</p>
-- * Version [Version] <p>The version of the Lambda function.</p>
-- * CodeSha256 [String] <p>It is the SHA256 hash of your function deployment package.</p>
-- * FunctionName [FunctionName] <p>The name of the function. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * VpcConfig [VpcConfigResponse] <p>VPC configuration associated with your Lambda function.</p>
-- * KMSKeyArn [KMSKeyArn] <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt your function's environment variables. If empty, it means you are using the AWS Lambda default service key.</p>
-- * MemorySize [MemorySize] <p>The memory size, in MB, you configured for the function. Must be a multiple of 64 MB.</p>
-- * CodeSize [Long] <p>The size, in bytes, of the function .zip file you uploaded.</p>
-- * FunctionArn [FunctionArn] <p>The Amazon Resource Name (ARN) assigned to the function.</p>
-- * Environment [EnvironmentResponse] <p>The parent object that contains your environment's configuration settings.</p>
-- * Handler [Handler] <p>The function Lambda calls to begin executing your function.</p>
-- * Role [RoleArn] <p>The Amazon Resource Name (ARN) of the IAM role that Lambda assumes when it executes your function to access any other Amazon Web Services (AWS) resources.</p>
-- * Timeout [Timeout] <p>The function execution time at which Lambda should terminate the function. Because the execution time has cost implications, we recommend you set this value based on your expected execution time. The default is 3 seconds.</p>
-- * LastModified [Timestamp] <p>The time stamp of the last time you updated the function. The time stamp is conveyed as a string complying with ISO-8601 in this way YYYY-MM-DDThh:mm:ssTZD (e.g., 1997-07-16T19:20:30+01:00). For more information, see <a href="https://www.w3.org/TR/NOTE-datetime">Date and Time Formats</a>.</p>
-- * DeadLetterConfig [DeadLetterConfig] <p>The parent object that contains the target ARN (Amazon Resource Name) of an Amazon SQS queue or Amazon SNS topic.</p>
-- * Runtime [Runtime] <p>The runtime environment for the Lambda function.</p>
-- * Description [Description] <p>The user-provided description.</p>
-- @return FunctionConfiguration structure as a key-value pair table
function M.FunctionConfiguration(args)
	assert(args, "You must provide an argument table when creating FunctionConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TracingConfig"] = args["TracingConfig"],
		["Version"] = args["Version"],
		["CodeSha256"] = args["CodeSha256"],
		["FunctionName"] = args["FunctionName"],
		["VpcConfig"] = args["VpcConfig"],
		["KMSKeyArn"] = args["KMSKeyArn"],
		["MemorySize"] = args["MemorySize"],
		["CodeSize"] = args["CodeSize"],
		["FunctionArn"] = args["FunctionArn"],
		["Environment"] = args["Environment"],
		["Handler"] = args["Handler"],
		["Role"] = args["Role"],
		["Timeout"] = args["Timeout"],
		["LastModified"] = args["LastModified"],
		["DeadLetterConfig"] = args["DeadLetterConfig"],
		["Runtime"] = args["Runtime"],
		["Description"] = args["Description"],
	}
	asserts.AssertFunctionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidSecurityGroupIDException = { ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertInvalidSecurityGroupIDException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSecurityGroupIDException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidSecurityGroupIDException[k], "InvalidSecurityGroupIDException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSecurityGroupIDException
-- <p>The Security Group ID provided in the Lambda function VPC configuration is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- * Type [String] 
-- @return InvalidSecurityGroupIDException structure as a key-value pair table
function M.InvalidSecurityGroupIDException(args)
	assert(args, "You must provide an argument table when creating InvalidSecurityGroupIDException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Type"] = args["Type"],
	}
	asserts.AssertInvalidSecurityGroupIDException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvokeAsyncResponse = { ["Status"] = true, nil }

function asserts.AssertInvokeAsyncResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvokeAsyncResponse to be of type 'table'")
	if struct["Status"] then asserts.AssertHttpStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvokeAsyncResponse[k], "InvokeAsyncResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvokeAsyncResponse
-- <p>Upon success, it returns empty response. Otherwise, throws an exception.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [HttpStatus] <p>It will be 202 upon success.</p>
-- @return InvokeAsyncResponse structure as a key-value pair table
function M.InvokeAsyncResponse(args)
	assert(args, "You must provide an argument table when creating InvokeAsyncResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
	}
	asserts.AssertInvokeAsyncResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceException = { ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceException[k], "ServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceException
-- <p>The AWS Lambda service encountered an internal error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- * Type [String] 
-- @return ServiceException structure as a key-value pair table
function M.ServiceException(args)
	assert(args, "You must provide an argument table when creating ServiceException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Type"] = args["Type"],
	}
	asserts.AssertServiceException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAliasRequest = { ["Description"] = true, ["FunctionVersion"] = true, ["FunctionName"] = true, ["Name"] = true, nil }

function asserts.AssertCreateAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAliasRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["FunctionVersion"], "Expected key FunctionVersion to exist in table")
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["FunctionVersion"] then asserts.AssertVersion(struct["FunctionVersion"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["Name"] then asserts.AssertAlias(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAliasRequest[k], "CreateAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAliasRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [Description] <p>Description of the alias.</p>
-- * FunctionVersion [Version] <p>Lambda function version for which you are creating the alias.</p>
-- * FunctionName [FunctionName] <p>Name of the Lambda function for which you want to create an alias. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * Name [Alias] <p>Name for the alias you are creating.</p>
-- Required key: FunctionName
-- Required key: Name
-- Required key: FunctionVersion
-- @return CreateAliasRequest structure as a key-value pair table
function M.CreateAliasRequest(args)
	assert(args, "You must provide an argument table when creating CreateAliasRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["FunctionVersion"] = args["FunctionVersion"],
		["FunctionName"] = args["FunctionName"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateAliasRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEventSourceMappingRequest = { ["UUID"] = true, nil }

function asserts.AssertDeleteEventSourceMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEventSourceMappingRequest to be of type 'table'")
	assert(struct["UUID"], "Expected key UUID to exist in table")
	if struct["UUID"] then asserts.AssertString(struct["UUID"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEventSourceMappingRequest[k], "DeleteEventSourceMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEventSourceMappingRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UUID [String] <p>The event source mapping ID.</p>
-- Required key: UUID
-- @return DeleteEventSourceMappingRequest structure as a key-value pair table
function M.DeleteEventSourceMappingRequest(args)
	assert(args, "You must provide an argument table when creating DeleteEventSourceMappingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{UUID}"] = args["UUID"],
    }
    local header_args = { 
    }
	local all_args = { 
		["UUID"] = args["UUID"],
	}
	asserts.AssertDeleteEventSourceMappingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnsupportedMediaTypeException = { ["message"] = true, ["Type"] = true, nil }

function asserts.AssertUnsupportedMediaTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedMediaTypeException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedMediaTypeException[k], "UnsupportedMediaTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedMediaTypeException
-- <p>The content type of the <code>Invoke</code> request body is not JSON.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- * Type [String] 
-- @return UnsupportedMediaTypeException structure as a key-value pair table
function M.UnsupportedMediaTypeException(args)
	assert(args, "You must provide an argument table when creating UnsupportedMediaTypeException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["Type"] = args["Type"],
	}
	asserts.AssertUnsupportedMediaTypeException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEventSourceMappingRequest = { ["BatchSize"] = true, ["Enabled"] = true, ["UUID"] = true, ["FunctionName"] = true, nil }

function asserts.AssertUpdateEventSourceMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEventSourceMappingRequest to be of type 'table'")
	assert(struct["UUID"], "Expected key UUID to exist in table")
	if struct["BatchSize"] then asserts.AssertBatchSize(struct["BatchSize"]) end
	if struct["Enabled"] then asserts.AssertEnabled(struct["Enabled"]) end
	if struct["UUID"] then asserts.AssertString(struct["UUID"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEventSourceMappingRequest[k], "UpdateEventSourceMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEventSourceMappingRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BatchSize [BatchSize] <p>The maximum number of stream records that can be sent to your Lambda function for a single invocation.</p>
-- * Enabled [Enabled] <p>Specifies whether AWS Lambda should actively poll the stream or not. If disabled, AWS Lambda will not poll the stream.</p>
-- * UUID [String] <p>The event source mapping identifier.</p>
-- * FunctionName [FunctionName] <p>The Lambda function to which you want the stream records sent.</p> <p> You can specify a function name (for example, <code>Thumbnail</code>) or you can specify Amazon Resource Name (ARN) of the function (for example, <code>arn:aws:lambda:us-west-2:account-id:function:ThumbNail</code>). AWS Lambda also allows you to specify a partial ARN (for example, <code>account-id:Thumbnail</code>). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. </p> <p>If you are using versioning, you can also provide a qualified function ARN (ARN that is qualified with function version or alias name as suffix). For more information about versioning, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a> </p> <p>Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 character in length.</p>
-- Required key: UUID
-- @return UpdateEventSourceMappingRequest structure as a key-value pair table
function M.UpdateEventSourceMappingRequest(args)
	assert(args, "You must provide an argument table when creating UpdateEventSourceMappingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{UUID}"] = args["UUID"],
    }
    local header_args = { 
    }
	local all_args = { 
		["BatchSize"] = args["BatchSize"],
		["Enabled"] = args["Enabled"],
		["UUID"] = args["UUID"],
		["FunctionName"] = args["FunctionName"],
	}
	asserts.AssertUpdateEventSourceMappingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAccountSettingsRequest = { nil }

function asserts.AssertGetAccountSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountSettingsRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetAccountSettingsRequest[k], "GetAccountSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountSettingsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetAccountSettingsRequest structure as a key-value pair table
function M.GetAccountSettingsRequest(args)
	assert(args, "You must provide an argument table when creating GetAccountSettingsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGetAccountSettingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidRuntimeException = { ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertInvalidRuntimeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRuntimeException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidRuntimeException[k], "InvalidRuntimeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRuntimeException
-- <p>The runtime or runtime version specified is not supported.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- * Type [String] 
-- @return InvalidRuntimeException structure as a key-value pair table
function M.InvalidRuntimeException(args)
	assert(args, "You must provide an argument table when creating InvalidRuntimeException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Type"] = args["Type"],
	}
	asserts.AssertInvalidRuntimeException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFunctionResponse = { ["Code"] = true, ["Configuration"] = true, ["Tags"] = true, nil }

function asserts.AssertGetFunctionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFunctionResponse to be of type 'table'")
	if struct["Code"] then asserts.AssertFunctionCodeLocation(struct["Code"]) end
	if struct["Configuration"] then asserts.AssertFunctionConfiguration(struct["Configuration"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFunctionResponse[k], "GetFunctionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFunctionResponse
-- <p>This response contains the object for the Lambda function location (see <a>FunctionCodeLocation</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Code [FunctionCodeLocation] 
-- * Configuration [FunctionConfiguration] 
-- * Tags [Tags] <p>Returns the list of tags associated with the function.</p>
-- @return GetFunctionResponse structure as a key-value pair table
function M.GetFunctionResponse(args)
	assert(args, "You must provide an argument table when creating GetFunctionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Code"] = args["Code"],
		["Configuration"] = args["Configuration"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertGetFunctionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FunctionCode = { ["S3Bucket"] = true, ["S3Key"] = true, ["ZipFile"] = true, ["S3ObjectVersion"] = true, nil }

function asserts.AssertFunctionCode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FunctionCode to be of type 'table'")
	if struct["S3Bucket"] then asserts.AssertS3Bucket(struct["S3Bucket"]) end
	if struct["S3Key"] then asserts.AssertS3Key(struct["S3Key"]) end
	if struct["ZipFile"] then asserts.AssertBlob(struct["ZipFile"]) end
	if struct["S3ObjectVersion"] then asserts.AssertS3ObjectVersion(struct["S3ObjectVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.FunctionCode[k], "FunctionCode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FunctionCode
-- <p>The code for the Lambda function.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3Bucket [S3Bucket] <p>Amazon S3 bucket name where the .zip file containing your deployment package is stored. This bucket must reside in the same AWS region where you are creating the Lambda function.</p>
-- * S3Key [S3Key] <p>The Amazon S3 object (the deployment package) key name you want to upload.</p>
-- * ZipFile [Blob] <p>The contents of your zip file containing your deployment package. If you are using the web API directly, the contents of the zip file must be base64-encoded. If you are using the AWS SDKs or the AWS CLI, the SDKs or CLI will do the encoding for you. For more information about creating a .zip file, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role.html">Execution Permissions</a> in the <i>AWS Lambda Developer Guide</i>. </p>
-- * S3ObjectVersion [S3ObjectVersion] <p>The Amazon S3 object (the deployment package) version you want to upload.</p>
-- @return FunctionCode structure as a key-value pair table
function M.FunctionCode(args)
	assert(args, "You must provide an argument table when creating FunctionCode")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3Bucket"] = args["S3Bucket"],
		["S3Key"] = args["S3Key"],
		["ZipFile"] = args["ZipFile"],
		["S3ObjectVersion"] = args["S3ObjectVersion"],
	}
	asserts.AssertFunctionCode(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceNotFoundException = { ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The resource (for example, a Lambda function or access policy statement) specified in the request does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- * Type [String] 
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provide an argument table when creating ResourceNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Type"] = args["Type"],
	}
	asserts.AssertResourceNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TracingConfigResponse = { ["Mode"] = true, nil }

function asserts.AssertTracingConfigResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TracingConfigResponse to be of type 'table'")
	if struct["Mode"] then asserts.AssertTracingMode(struct["Mode"]) end
	for k,_ in pairs(struct) do
		assert(keys.TracingConfigResponse[k], "TracingConfigResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TracingConfigResponse
-- <p>Parent object of the tracing information associated with your Lambda function.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Mode [TracingMode] <p>The tracing mode associated with your Lambda function.</p>
-- @return TracingConfigResponse structure as a key-value pair table
function M.TracingConfigResponse(args)
	assert(args, "You must provide an argument table when creating TracingConfigResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Mode"] = args["Mode"],
	}
	asserts.AssertTracingConfigResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FunctionCodeLocation = { ["RepositoryType"] = true, ["Location"] = true, nil }

function asserts.AssertFunctionCodeLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FunctionCodeLocation to be of type 'table'")
	if struct["RepositoryType"] then asserts.AssertString(struct["RepositoryType"]) end
	if struct["Location"] then asserts.AssertString(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.FunctionCodeLocation[k], "FunctionCodeLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FunctionCodeLocation
-- <p>The object for the Lambda function location.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RepositoryType [String] <p>The repository from which you can download the function.</p>
-- * Location [String] <p>The presigned URL you can use to download the function's .zip file that you previously uploaded. The URL is valid for up to 10 minutes.</p>
-- @return FunctionCodeLocation structure as a key-value pair table
function M.FunctionCodeLocation(args)
	assert(args, "You must provide an argument table when creating FunctionCodeLocation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RepositoryType"] = args["RepositoryType"],
		["Location"] = args["Location"],
	}
	asserts.AssertFunctionCodeLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccountLimit = { ["CodeSizeUnzipped"] = true, ["ConcurrentExecutions"] = true, ["CodeSizeZipped"] = true, ["TotalCodeSize"] = true, nil }

function asserts.AssertAccountLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountLimit to be of type 'table'")
	if struct["CodeSizeUnzipped"] then asserts.AssertLong(struct["CodeSizeUnzipped"]) end
	if struct["ConcurrentExecutions"] then asserts.AssertInteger(struct["ConcurrentExecutions"]) end
	if struct["CodeSizeZipped"] then asserts.AssertLong(struct["CodeSizeZipped"]) end
	if struct["TotalCodeSize"] then asserts.AssertLong(struct["TotalCodeSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountLimit[k], "AccountLimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountLimit
-- <p>Provides limits of code size and concurrency associated with the current account and region.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CodeSizeUnzipped [Long] <p>Size, in bytes, of code/dependencies that you can zip into a deployment package (uncompressed zip/jar size) for uploading. The default limit is 250 MB.</p>
-- * ConcurrentExecutions [Integer] <p>Number of simultaneous executions of your function per region. For more information or to request a limit increase for concurrent executions, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html">Lambda Function Concurrent Executions</a>. The default limit is 100.</p>
-- * CodeSizeZipped [Long] <p>Size, in bytes, of a single zipped code/dependencies package you can upload for your Lambda function(.zip/.jar file). Try using Amazon S3 for uploading larger files. Default limit is 50 MB.</p>
-- * TotalCodeSize [Long] <p>Maximum size, in bytes, of a code package you can upload per region. The default size is 75 GB. </p>
-- @return AccountLimit structure as a key-value pair table
function M.AccountLimit(args)
	assert(args, "You must provide an argument table when creating AccountLimit")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CodeSizeUnzipped"] = args["CodeSizeUnzipped"],
		["ConcurrentExecutions"] = args["ConcurrentExecutions"],
		["CodeSizeZipped"] = args["CodeSizeZipped"],
		["TotalCodeSize"] = args["TotalCodeSize"],
	}
	asserts.AssertAccountLimit(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventSourceMappingConfiguration = { ["UUID"] = true, ["StateTransitionReason"] = true, ["LastModified"] = true, ["BatchSize"] = true, ["State"] = true, ["FunctionArn"] = true, ["EventSourceArn"] = true, ["LastProcessingResult"] = true, nil }

function asserts.AssertEventSourceMappingConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSourceMappingConfiguration to be of type 'table'")
	if struct["UUID"] then asserts.AssertString(struct["UUID"]) end
	if struct["StateTransitionReason"] then asserts.AssertString(struct["StateTransitionReason"]) end
	if struct["LastModified"] then asserts.AssertDate(struct["LastModified"]) end
	if struct["BatchSize"] then asserts.AssertBatchSize(struct["BatchSize"]) end
	if struct["State"] then asserts.AssertString(struct["State"]) end
	if struct["FunctionArn"] then asserts.AssertFunctionArn(struct["FunctionArn"]) end
	if struct["EventSourceArn"] then asserts.AssertArn(struct["EventSourceArn"]) end
	if struct["LastProcessingResult"] then asserts.AssertString(struct["LastProcessingResult"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventSourceMappingConfiguration[k], "EventSourceMappingConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSourceMappingConfiguration
-- <p>Describes mapping between an Amazon Kinesis stream and a Lambda function.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UUID [String] <p>The AWS Lambda assigned opaque identifier for the mapping.</p>
-- * StateTransitionReason [String] <p>The reason the event source mapping is in its current state. It is either user-requested or an AWS Lambda-initiated state transition.</p>
-- * LastModified [Date] <p>The UTC time string indicating the last time the event mapping was updated.</p>
-- * BatchSize [BatchSize] <p>The largest number of records that AWS Lambda will retrieve from your event source at the time of invoking your function. Your function receives an event with all the retrieved records.</p>
-- * State [String] <p>The state of the event source mapping. It can be <code>Creating</code>, <code>Enabled</code>, <code>Disabled</code>, <code>Enabling</code>, <code>Disabling</code>, <code>Updating</code>, or <code>Deleting</code>.</p>
-- * FunctionArn [FunctionArn] <p>The Lambda function to invoke when AWS Lambda detects an event on the stream.</p>
-- * EventSourceArn [Arn] <p>The Amazon Resource Name (ARN) of the Amazon Kinesis stream that is the source of events.</p>
-- * LastProcessingResult [String] <p>The result of the last AWS Lambda invocation of your Lambda function.</p>
-- @return EventSourceMappingConfiguration structure as a key-value pair table
function M.EventSourceMappingConfiguration(args)
	assert(args, "You must provide an argument table when creating EventSourceMappingConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UUID"] = args["UUID"],
		["StateTransitionReason"] = args["StateTransitionReason"],
		["LastModified"] = args["LastModified"],
		["BatchSize"] = args["BatchSize"],
		["State"] = args["State"],
		["FunctionArn"] = args["FunctionArn"],
		["EventSourceArn"] = args["EventSourceArn"],
		["LastProcessingResult"] = args["LastProcessingResult"],
	}
	asserts.AssertEventSourceMappingConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnvironmentError = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertEnvironmentError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentError to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertString(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertSensitiveString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentError[k], "EnvironmentError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentError
-- <p>The parent object that contains error information associated with your configuration settings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [String] <p>The error code returned by the environment error object.</p>
-- * Message [SensitiveString] <p>The message returned by the environment error object.</p>
-- @return EnvironmentError structure as a key-value pair table
function M.EnvironmentError(args)
	assert(args, "You must provide an argument table when creating EnvironmentError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertEnvironmentError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPolicyRequest = { ["FunctionName"] = true, ["Qualifier"] = true, nil }

function asserts.AssertGetPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["Qualifier"] then asserts.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyRequest[k], "GetPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [FunctionName] <p>Function name whose resource policy you want to retrieve.</p> <p> You can specify the function name (for example, <code>Thumbnail</code>) or you can specify Amazon Resource Name (ARN) of the function (for example, <code>arn:aws:lambda:us-west-2:account-id:function:ThumbNail</code>). If you are using versioning, you can also provide a qualified function ARN (ARN that is qualified with function version or alias name as suffix). AWS Lambda also allows you to specify only the function name with the account ID qualifier (for example, <code>account-id:Thumbnail</code>). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. </p>
-- * Qualifier [Qualifier] <p>You can specify this optional query parameter to specify a function version or an alias name in which case this API will return all permissions associated with the specific qualified ARN. If you don't provide this parameter, the API will return permissions that apply to the unqualified function ARN.</p>
-- Required key: FunctionName
-- @return GetPolicyRequest structure as a key-value pair table
function M.GetPolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetPolicyRequest")
    local query_args = { 
        ["Qualifier"] = args["Qualifier"],
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["Qualifier"] = args["Qualifier"],
	}
	asserts.AssertGetPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubnetIPAddressLimitReachedException = { ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertSubnetIPAddressLimitReachedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetIPAddressLimitReachedException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubnetIPAddressLimitReachedException[k], "SubnetIPAddressLimitReachedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetIPAddressLimitReachedException
-- <p>AWS Lambda was not able to set up VPC access for the Lambda function because one or more configured subnets has no available IP addresses.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- * Type [String] 
-- @return SubnetIPAddressLimitReachedException structure as a key-value pair table
function M.SubnetIPAddressLimitReachedException(args)
	assert(args, "You must provide an argument table when creating SubnetIPAddressLimitReachedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Type"] = args["Type"],
	}
	asserts.AssertSubnetIPAddressLimitReachedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetEventSourceMappingRequest = { ["UUID"] = true, nil }

function asserts.AssertGetEventSourceMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEventSourceMappingRequest to be of type 'table'")
	assert(struct["UUID"], "Expected key UUID to exist in table")
	if struct["UUID"] then asserts.AssertString(struct["UUID"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetEventSourceMappingRequest[k], "GetEventSourceMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEventSourceMappingRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UUID [String] <p>The AWS Lambda assigned ID of the event source mapping.</p>
-- Required key: UUID
-- @return GetEventSourceMappingRequest structure as a key-value pair table
function M.GetEventSourceMappingRequest(args)
	assert(args, "You must provide an argument table when creating GetEventSourceMappingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{UUID}"] = args["UUID"],
    }
    local header_args = { 
    }
	local all_args = { 
		["UUID"] = args["UUID"],
	}
	asserts.AssertGetEventSourceMappingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EC2ThrottledException = { ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertEC2ThrottledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2ThrottledException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.EC2ThrottledException[k], "EC2ThrottledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2ThrottledException
-- <p>AWS Lambda was throttled by Amazon EC2 during Lambda function initialization using the execution role provided for the Lambda function.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- * Type [String] 
-- @return EC2ThrottledException structure as a key-value pair table
function M.EC2ThrottledException(args)
	assert(args, "You must provide an argument table when creating EC2ThrottledException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Type"] = args["Type"],
	}
	asserts.AssertEC2ThrottledException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddPermissionResponse = { ["Statement"] = true, nil }

function asserts.AssertAddPermissionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddPermissionResponse to be of type 'table'")
	if struct["Statement"] then asserts.AssertString(struct["Statement"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddPermissionResponse[k], "AddPermissionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddPermissionResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Statement [String] <p>The permission statement you specified in the request. The response returns the same as a string using a backslash ("\") as an escape character in the JSON.</p>
-- @return AddPermissionResponse structure as a key-value pair table
function M.AddPermissionResponse(args)
	assert(args, "You must provide an argument table when creating AddPermissionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Statement"] = args["Statement"],
	}
	asserts.AssertAddPermissionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFunctionConfigurationRequest = { ["FunctionName"] = true, ["Qualifier"] = true, nil }

function asserts.AssertGetFunctionConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFunctionConfigurationRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["Qualifier"] then asserts.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFunctionConfigurationRequest[k], "GetFunctionConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFunctionConfigurationRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [FunctionName] <p>The name of the Lambda function for which you want to retrieve the configuration information.</p> <p> You can specify a function name (for example, <code>Thumbnail</code>) or you can specify Amazon Resource Name (ARN) of the function (for example, <code>arn:aws:lambda:us-west-2:account-id:function:ThumbNail</code>). AWS Lambda also allows you to specify a partial ARN (for example, <code>account-id:Thumbnail</code>). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. </p>
-- * Qualifier [Qualifier] <p>Using this optional parameter you can specify a function version or an alias name. If you specify function version, the API uses qualified function ARN and returns information about the specific function version. If you specify an alias name, the API uses the alias ARN and returns information about the function version to which the alias points.</p> <p>If you don't specify this parameter, the API uses unqualified function ARN, and returns information about the <code>$LATEST</code> function version.</p>
-- Required key: FunctionName
-- @return GetFunctionConfigurationRequest structure as a key-value pair table
function M.GetFunctionConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating GetFunctionConfigurationRequest")
    local query_args = { 
        ["Qualifier"] = args["Qualifier"],
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["Qualifier"] = args["Qualifier"],
	}
	asserts.AssertGetFunctionConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListFunctionsResponse = { ["Functions"] = true, ["NextMarker"] = true, nil }

function asserts.AssertListFunctionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFunctionsResponse to be of type 'table'")
	if struct["Functions"] then asserts.AssertFunctionList(struct["Functions"]) end
	if struct["NextMarker"] then asserts.AssertString(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFunctionsResponse[k], "ListFunctionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFunctionsResponse
-- <p>Contains a list of AWS Lambda function configurations (see <a>FunctionConfiguration</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Functions [FunctionList] <p>A list of Lambda functions.</p>
-- * NextMarker [String] <p>A string, present if there are more functions.</p>
-- @return ListFunctionsResponse structure as a key-value pair table
function M.ListFunctionsResponse(args)
	assert(args, "You must provide an argument table when creating ListFunctionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Functions"] = args["Functions"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertListFunctionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidSubnetIDException = { ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertInvalidSubnetIDException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSubnetIDException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidSubnetIDException[k], "InvalidSubnetIDException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSubnetIDException
-- <p>The Subnet ID provided in the Lambda function VPC configuration is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- * Type [String] 
-- @return InvalidSubnetIDException structure as a key-value pair table
function M.InvalidSubnetIDException(args)
	assert(args, "You must provide an argument table when creating InvalidSubnetIDException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Type"] = args["Type"],
	}
	asserts.AssertInvalidSubnetIDException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPolicyResponse = { ["Policy"] = true, nil }

function asserts.AssertGetPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyResponse to be of type 'table'")
	if struct["Policy"] then asserts.AssertString(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyResponse[k], "GetPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [String] <p>The resource policy associated with the specified function. The response returns the same as a string using a backslash ("\") as an escape character in the JSON.</p>
-- @return GetPolicyResponse structure as a key-value pair table
function M.GetPolicyResponse(args)
	assert(args, "You must provide an argument table when creating GetPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
	}
	asserts.AssertGetPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAliasesRequest = { ["Marker"] = true, ["FunctionVersion"] = true, ["FunctionName"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListAliasesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["FunctionVersion"] then asserts.AssertVersion(struct["FunctionVersion"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["MaxItems"] then asserts.AssertMaxListItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAliasesRequest[k], "ListAliasesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>Optional string. An opaque pagination token returned from a previous <code>ListAliases</code> operation. If present, indicates where to continue the listing.</p>
-- * FunctionVersion [Version] <p>If you specify this optional parameter, the API returns only the aliases that are pointing to the specific Lambda function version, otherwise the API returns all of the aliases created for the Lambda function.</p>
-- * FunctionName [FunctionName] <p>Lambda function name for which the alias is created. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * MaxItems [MaxListItems] <p>Optional integer. Specifies the maximum number of aliases to return in response. This parameter value must be greater than 0.</p>
-- Required key: FunctionName
-- @return ListAliasesRequest structure as a key-value pair table
function M.ListAliasesRequest(args)
	assert(args, "You must provide an argument table when creating ListAliasesRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["FunctionVersion"] = args["FunctionVersion"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["FunctionVersion"] = args["FunctionVersion"],
		["FunctionName"] = args["FunctionName"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListAliasesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RequestTooLargeException = { ["message"] = true, ["Type"] = true, nil }

function asserts.AssertRequestTooLargeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestTooLargeException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestTooLargeException[k], "RequestTooLargeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestTooLargeException
-- <p>The request payload exceeded the <code>Invoke</code> request body JSON input limit. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/limits.html">Limits</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- * Type [String] 
-- @return RequestTooLargeException structure as a key-value pair table
function M.RequestTooLargeException(args)
	assert(args, "You must provide an argument table when creating RequestTooLargeException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["Type"] = args["Type"],
	}
	asserts.AssertRequestTooLargeException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListEventSourceMappingsResponse = { ["NextMarker"] = true, ["EventSourceMappings"] = true, nil }

function asserts.AssertListEventSourceMappingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEventSourceMappingsResponse to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertString(struct["NextMarker"]) end
	if struct["EventSourceMappings"] then asserts.AssertEventSourceMappingsList(struct["EventSourceMappings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEventSourceMappingsResponse[k], "ListEventSourceMappingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEventSourceMappingsResponse
-- <p>Contains a list of event sources (see <a>EventSourceMappingConfiguration</a>)</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [String] <p>A string, present if there are more event source mappings.</p>
-- * EventSourceMappings [EventSourceMappingsList] <p>An array of <code>EventSourceMappingConfiguration</code> objects.</p>
-- @return ListEventSourceMappingsResponse structure as a key-value pair table
function M.ListEventSourceMappingsResponse(args)
	assert(args, "You must provide an argument table when creating ListEventSourceMappingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["EventSourceMappings"] = args["EventSourceMappings"],
	}
	asserts.AssertListEventSourceMappingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeadLetterConfig = { ["TargetArn"] = true, nil }

function asserts.AssertDeadLetterConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeadLetterConfig to be of type 'table'")
	if struct["TargetArn"] then asserts.AssertResourceArn(struct["TargetArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeadLetterConfig[k], "DeadLetterConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeadLetterConfig
-- <p>The parent object that contains the target ARN (Amazon Resource Name) of an Amazon SQS queue or Amazon SNS topic.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetArn [ResourceArn] <p>The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic you specify as your Dead Letter Queue (DLQ).</p>
-- @return DeadLetterConfig structure as a key-value pair table
function M.DeadLetterConfig(args)
	assert(args, "You must provide an argument table when creating DeadLetterConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetArn"] = args["TargetArn"],
	}
	asserts.AssertDeadLetterConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddPermissionRequest = { ["FunctionName"] = true, ["Qualifier"] = true, ["StatementId"] = true, ["Action"] = true, ["SourceAccount"] = true, ["SourceArn"] = true, ["EventSourceToken"] = true, ["Principal"] = true, nil }

function asserts.AssertAddPermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddPermissionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["StatementId"], "Expected key StatementId to exist in table")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["Principal"], "Expected key Principal to exist in table")
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["Qualifier"] then asserts.AssertQualifier(struct["Qualifier"]) end
	if struct["StatementId"] then asserts.AssertStatementId(struct["StatementId"]) end
	if struct["Action"] then asserts.AssertAction(struct["Action"]) end
	if struct["SourceAccount"] then asserts.AssertSourceOwner(struct["SourceAccount"]) end
	if struct["SourceArn"] then asserts.AssertArn(struct["SourceArn"]) end
	if struct["EventSourceToken"] then asserts.AssertEventSourceToken(struct["EventSourceToken"]) end
	if struct["Principal"] then asserts.AssertPrincipal(struct["Principal"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddPermissionRequest[k], "AddPermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddPermissionRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [FunctionName] <p>Name of the Lambda function whose resource policy you are updating by adding a new permission.</p> <p> You can specify a function name (for example, <code>Thumbnail</code>) or you can specify Amazon Resource Name (ARN) of the function (for example, <code>arn:aws:lambda:us-west-2:account-id:function:ThumbNail</code>). AWS Lambda also allows you to specify partial ARN (for example, <code>account-id:Thumbnail</code>). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. </p>
-- * Qualifier [Qualifier] <p>You can use this optional query parameter to describe a qualified ARN using a function version or an alias name. The permission will then apply to the specific qualified ARN. For example, if you specify function version 2 as the qualifier, then permission applies only when request is made using qualified function ARN:</p> <p> <code>arn:aws:lambda:aws-region:acct-id:function:function-name:2</code> </p> <p>If you specify an alias name, for example <code>PROD</code>, then the permission is valid only for requests made using the alias ARN:</p> <p> <code>arn:aws:lambda:aws-region:acct-id:function:function-name:PROD</code> </p> <p>If the qualifier is not specified, the permission is valid only when requests is made using unqualified function ARN.</p> <p> <code>arn:aws:lambda:aws-region:acct-id:function:function-name</code> </p>
-- * StatementId [StatementId] <p>A unique statement identifier.</p>
-- * Action [Action] <p>The AWS Lambda action you want to allow in this statement. Each Lambda action is a string starting with <code>lambda:</code> followed by the API name . For example, <code>lambda:CreateFunction</code>. You can use wildcard (<code>lambda:*</code>) to grant permission for all AWS Lambda actions. </p>
-- * SourceAccount [SourceOwner] <p>This parameter is used for S3 and SES. The AWS account ID (without a hyphen) of the source owner. For example, if the <code>SourceArn</code> identifies a bucket, then this is the bucket owner's account ID. You can use this additional condition to ensure the bucket you specify is owned by a specific account (it is possible the bucket owner deleted the bucket and some other AWS account created the bucket). You can also use this condition to specify all sources (that is, you don't specify the <code>SourceArn</code>) owned by a specific account. </p>
-- * SourceArn [Arn] <p>This is optional; however, when granting permission to invoke your function, you should specify this field with the Amazon Resource Name (ARN) as its value. This ensures that only events generated from the specified source can invoke the function.</p> <important> <p>If you add a permission without providing the source ARN, any AWS account that creates a mapping to your function ARN can send events to invoke your Lambda function.</p> </important>
-- * EventSourceToken [EventSourceToken] <p>A unique token that must be supplied by the principal invoking the function. This is currently only used for Alexa Smart Home functions.</p>
-- * Principal [Principal] <p>The principal who is getting this permission. It can be Amazon S3 service Principal (<code>s3.amazonaws.com</code>) if you want Amazon S3 to invoke the function, an AWS account ID if you are granting cross-account permission, or any valid AWS service principal such as <code>sns.amazonaws.com</code>. For example, you might want to allow a custom application in another AWS account to push events to AWS Lambda by invoking your function. </p>
-- Required key: FunctionName
-- Required key: StatementId
-- Required key: Action
-- Required key: Principal
-- @return AddPermissionRequest structure as a key-value pair table
function M.AddPermissionRequest(args)
	assert(args, "You must provide an argument table when creating AddPermissionRequest")
    local query_args = { 
        ["Qualifier"] = args["Qualifier"],
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["Qualifier"] = args["Qualifier"],
		["StatementId"] = args["StatementId"],
		["Action"] = args["Action"],
		["SourceAccount"] = args["SourceAccount"],
		["SourceArn"] = args["SourceArn"],
		["EventSourceToken"] = args["EventSourceToken"],
		["Principal"] = args["Principal"],
	}
	asserts.AssertAddPermissionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourceRequest = { ["Resource"] = true, ["Tags"] = true, nil }

function asserts.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["Resource"], "Expected key Resource to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Resource"] then asserts.AssertFunctionArn(struct["Resource"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceRequest[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Resource [FunctionArn] <p>The ARN (Amazon Resource Name) of the Lambda function.</p>
-- * Tags [Tags] <p>The list of tags (key-value pairs) you are assigning to the Lambda function.</p>
-- Required key: Resource
-- Required key: Tags
-- @return TagResourceRequest structure as a key-value pair table
function M.TagResourceRequest(args)
	assert(args, "You must provide an argument table when creating TagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{ARN}"] = args["Resource"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Resource"] = args["Resource"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertTagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsResponse = { ["Tags"] = true, nil }

function asserts.AssertListTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsResponse to be of type 'table'")
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsResponse[k], "ListTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [Tags] <p>The list of tags assigned to the function.</p>
-- @return ListTagsResponse structure as a key-value pair table
function M.ListTagsResponse(args)
	assert(args, "You must provide an argument table when creating ListTagsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
	}
	asserts.AssertListTagsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceConflictException = { ["message"] = true, ["Type"] = true, nil }

function asserts.AssertResourceConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceConflictException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceConflictException[k], "ResourceConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceConflictException
-- <p>The resource already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p/>
-- * Type [String] <p/>
-- @return ResourceConflictException structure as a key-value pair table
function M.ResourceConflictException(args)
	assert(args, "You must provide an argument table when creating ResourceConflictException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["Type"] = args["Type"],
	}
	asserts.AssertResourceConflictException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VpcConfig = { ["SubnetIds"] = true, ["SecurityGroupIds"] = true, nil }

function asserts.AssertVpcConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VpcConfig to be of type 'table'")
	if struct["SubnetIds"] then asserts.AssertSubnetIds(struct["SubnetIds"]) end
	if struct["SecurityGroupIds"] then asserts.AssertSecurityGroupIds(struct["SecurityGroupIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.VpcConfig[k], "VpcConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VpcConfig
-- <p>If your Lambda function accesses resources in a VPC, you provide this parameter identifying the list of security group IDs and subnet IDs. These must belong to the same VPC. You must provide at least one security group and one subnet ID.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIds [SubnetIds] <p>A list of one or more subnet IDs in your VPC.</p>
-- * SecurityGroupIds [SecurityGroupIds] <p>A list of one or more security groups IDs in your VPC.</p>
-- @return VpcConfig structure as a key-value pair table
function M.VpcConfig(args)
	assert(args, "You must provide an argument table when creating VpcConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetIds"] = args["SubnetIds"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
	}
	asserts.AssertVpcConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidParameterValueException = { ["message"] = true, ["Type"] = true, nil }

function asserts.AssertInvalidParameterValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValueException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterValueException[k], "InvalidParameterValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValueException
-- <p>One of the parameters in the request is invalid. For example, if you provided an IAM role for AWS Lambda to assume in the <code>CreateFunction</code> or the <code>UpdateFunctionConfiguration</code> API, that AWS Lambda is unable to assume you will get this exception. You will also get this exception if you have selected a deprecated runtime, such as Node v0.10.42. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p/>
-- * Type [String] <p/>
-- @return InvalidParameterValueException structure as a key-value pair table
function M.InvalidParameterValueException(args)
	assert(args, "You must provide an argument table when creating InvalidParameterValueException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["Type"] = args["Type"],
	}
	asserts.AssertInvalidParameterValueException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidZipFileException = { ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertInvalidZipFileException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidZipFileException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidZipFileException[k], "InvalidZipFileException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidZipFileException
-- <p>AWS Lambda could not unzip the function zip file.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- * Type [String] 
-- @return InvalidZipFileException structure as a key-value pair table
function M.InvalidZipFileException(args)
	assert(args, "You must provide an argument table when creating InvalidZipFileException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Type"] = args["Type"],
	}
	asserts.AssertInvalidZipFileException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicyLengthExceededException = { ["message"] = true, ["Type"] = true, nil }

function asserts.AssertPolicyLengthExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyLengthExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyLengthExceededException[k], "PolicyLengthExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyLengthExceededException
-- <p>Lambda function access policy is limited to 20 KB.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- * Type [String] 
-- @return PolicyLengthExceededException structure as a key-value pair table
function M.PolicyLengthExceededException(args)
	assert(args, "You must provide an argument table when creating PolicyLengthExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["Type"] = args["Type"],
	}
	asserts.AssertPolicyLengthExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertSensitiveString(str)
	assert(str)
	assert(type(str) == "string", "Expected SensitiveString to be of type 'string'")
end

--  
function M.SensitiveString(str)
	asserts.AssertSensitiveString(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertQualifier(str)
	assert(str)
	assert(type(str) == "string", "Expected Qualifier to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Qualifier(str)
	asserts.AssertQualifier(str)
	return str
end

function asserts.AssertEnvironmentVariableValue(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentVariableValue to be of type 'string'")
end

--  
function M.EnvironmentVariableValue(str)
	asserts.AssertEnvironmentVariableValue(str)
	return str
end

function asserts.AssertFunctionName(str)
	assert(str)
	assert(type(str) == "string", "Expected FunctionName to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FunctionName(str)
	asserts.AssertFunctionName(str)
	return str
end

function asserts.AssertEventSourceToken(str)
	assert(str)
	assert(type(str) == "string", "Expected EventSourceToken to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.EventSourceToken(str)
	asserts.AssertEventSourceToken(str)
	return str
end

function asserts.AssertKMSKeyArn(str)
	assert(str)
	assert(type(str) == "string", "Expected KMSKeyArn to be of type 'string'")
end

--  
function M.KMSKeyArn(str)
	asserts.AssertKMSKeyArn(str)
	return str
end

function asserts.AssertThrottleReason(str)
	assert(str)
	assert(type(str) == "string", "Expected ThrottleReason to be of type 'string'")
end

--  
function M.ThrottleReason(str)
	asserts.AssertThrottleReason(str)
	return str
end

function asserts.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
end

--  
function M.Arn(str)
	asserts.AssertArn(str)
	return str
end

function asserts.AssertEventSourcePosition(str)
	assert(str)
	assert(type(str) == "string", "Expected EventSourcePosition to be of type 'string'")
end

--  
function M.EventSourcePosition(str)
	asserts.AssertEventSourcePosition(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
end

--  
function M.ResourceArn(str)
	asserts.AssertResourceArn(str)
	return str
end

function asserts.AssertSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetId to be of type 'string'")
end

--  
function M.SubnetId(str)
	asserts.AssertSubnetId(str)
	return str
end

function asserts.AssertTimestamp(str)
	assert(str)
	assert(type(str) == "string", "Expected Timestamp to be of type 'string'")
end

--  
function M.Timestamp(str)
	asserts.AssertTimestamp(str)
	return str
end

function asserts.AssertTracingMode(str)
	assert(str)
	assert(type(str) == "string", "Expected TracingMode to be of type 'string'")
end

--  
function M.TracingMode(str)
	asserts.AssertTracingMode(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertSecurityGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityGroupId to be of type 'string'")
end

--  
function M.SecurityGroupId(str)
	asserts.AssertSecurityGroupId(str)
	return str
end

function asserts.AssertFunctionArn(str)
	assert(str)
	assert(type(str) == "string", "Expected FunctionArn to be of type 'string'")
end

--  
function M.FunctionArn(str)
	asserts.AssertFunctionArn(str)
	return str
end

function asserts.AssertSourceOwner(str)
	assert(str)
	assert(type(str) == "string", "Expected SourceOwner to be of type 'string'")
end

--  
function M.SourceOwner(str)
	asserts.AssertSourceOwner(str)
	return str
end

function asserts.AssertEnvironmentVariableName(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentVariableName to be of type 'string'")
end

--  
function M.EnvironmentVariableName(str)
	asserts.AssertEnvironmentVariableName(str)
	return str
end

function asserts.AssertHandler(str)
	assert(str)
	assert(type(str) == "string", "Expected Handler to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.Handler(str)
	asserts.AssertHandler(str)
	return str
end

function asserts.AssertRuntime(str)
	assert(str)
	assert(type(str) == "string", "Expected Runtime to be of type 'string'")
end

--  
function M.Runtime(str)
	asserts.AssertRuntime(str)
	return str
end

function asserts.AssertLogType(str)
	assert(str)
	assert(type(str) == "string", "Expected LogType to be of type 'string'")
end

--  
function M.LogType(str)
	asserts.AssertLogType(str)
	return str
end

function asserts.AssertAction(str)
	assert(str)
	assert(type(str) == "string", "Expected Action to be of type 'string'")
end

--  
function M.Action(str)
	asserts.AssertAction(str)
	return str
end

function asserts.AssertS3Key(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Key to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.S3Key(str)
	asserts.AssertS3Key(str)
	return str
end

function asserts.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Version(str)
	asserts.AssertVersion(str)
	return str
end

function asserts.AssertS3ObjectVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected S3ObjectVersion to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.S3ObjectVersion(str)
	asserts.AssertS3ObjectVersion(str)
	return str
end

function asserts.AssertRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleArn to be of type 'string'")
end

--  
function M.RoleArn(str)
	asserts.AssertRoleArn(str)
	return str
end

function asserts.AssertStatementId(str)
	assert(str)
	assert(type(str) == "string", "Expected StatementId to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StatementId(str)
	asserts.AssertStatementId(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertInvocationType(str)
	assert(str)
	assert(type(str) == "string", "Expected InvocationType to be of type 'string'")
end

--  
function M.InvocationType(str)
	asserts.AssertInvocationType(str)
	return str
end

function asserts.AssertS3Bucket(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Bucket to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.S3Bucket(str)
	asserts.AssertS3Bucket(str)
	return str
end

function asserts.AssertAlias(str)
	assert(str)
	assert(type(str) == "string", "Expected Alias to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Alias(str)
	asserts.AssertAlias(str)
	return str
end

function asserts.AssertVpcId(str)
	assert(str)
	assert(type(str) == "string", "Expected VpcId to be of type 'string'")
end

--  
function M.VpcId(str)
	asserts.AssertVpcId(str)
	return str
end

function asserts.AssertPrincipal(str)
	assert(str)
	assert(type(str) == "string", "Expected Principal to be of type 'string'")
end

--  
function M.Principal(str)
	asserts.AssertPrincipal(str)
	return str
end

function asserts.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	asserts.AssertLong(long)
	return long
end

function asserts.AssertHttpStatus(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HttpStatus to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.HttpStatus(integer)
	asserts.AssertHttpStatus(integer)
	return integer
end

function asserts.AssertMemorySize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MemorySize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1536, "Expected integer to be max 1536")
	assert(integer >= 128, "Expected integer to be min 128")
end

function M.MemorySize(integer)
	asserts.AssertMemorySize(integer)
	return integer
end

function asserts.AssertMaxListItems(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxListItems to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxListItems(integer)
	asserts.AssertMaxListItems(integer)
	return integer
end

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
end

function asserts.AssertTimeout(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Timeout to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.Timeout(integer)
	asserts.AssertTimeout(integer)
	return integer
end

function asserts.AssertBatchSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BatchSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.BatchSize(integer)
	asserts.AssertBatchSize(integer)
	return integer
end

function asserts.AssertEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Enabled to be of type 'boolean'")
end

function M.Enabled(boolean)
	asserts.AssertEnabled(boolean)
	return boolean
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertTags(map)
	assert(map)
	assert(type(map) == "table", "Expected Tags to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertTagKey(k)
		asserts.AssertTagValue(v)
	end
end

function M.Tags(map)
	asserts.AssertTags(map)
	return map
end

function asserts.AssertEnvironmentVariables(map)
	assert(map)
	assert(type(map) == "table", "Expected EnvironmentVariables to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertEnvironmentVariableName(k)
		asserts.AssertEnvironmentVariableValue(v)
	end
end

function M.EnvironmentVariables(map)
	asserts.AssertEnvironmentVariables(map)
	return map
end

function asserts.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	asserts.AssertDate(timestamp)
	return timestamp
end

function asserts.AssertBlobStream(blob)
	assert(blob)
	assert(type(string) == "string", "Expected BlobStream to be of type 'string'")
end

function M.BlobStream(blob)
	asserts.AssertBlobStream(blob)
	return blob
end

function asserts.AssertBlob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Blob to be of type 'string'")
end

function M.Blob(blob)
	asserts.AssertBlob(blob)
	return blob
end

function asserts.AssertSubnetIds(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetIds to be of type ''table")
	assert(#list <= 16, "Expected list to be contain 16 elements")
	for _,v in ipairs(list) do
		asserts.AssertSubnetId(v)
	end
end

--  
-- List of SubnetId objects
function M.SubnetIds(list)
	asserts.AssertSubnetIds(list)
	return list
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeyList(list)
	asserts.AssertTagKeyList(list)
	return list
end

function asserts.AssertAliasList(list)
	assert(list)
	assert(type(list) == "table", "Expected AliasList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAliasConfiguration(v)
	end
end

--  
-- List of AliasConfiguration objects
function M.AliasList(list)
	asserts.AssertAliasList(list)
	return list
end

function asserts.AssertFunctionList(list)
	assert(list)
	assert(type(list) == "table", "Expected FunctionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFunctionConfiguration(v)
	end
end

--  
-- List of FunctionConfiguration objects
function M.FunctionList(list)
	asserts.AssertFunctionList(list)
	return list
end

function asserts.AssertEventSourceMappingsList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventSourceMappingsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventSourceMappingConfiguration(v)
	end
end

--  
-- List of EventSourceMappingConfiguration objects
function M.EventSourceMappingsList(list)
	asserts.AssertEventSourceMappingsList(list)
	return list
end

function asserts.AssertSecurityGroupIds(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroupIds to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertSecurityGroupId(v)
	end
end

--  
-- List of SecurityGroupId objects
function M.SecurityGroupIds(list)
	asserts.AssertSecurityGroupIds(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "lambda.amazonaws.com"
		end
	end
	local ss = { "lambda" }
	if use_dualstack then
		ss[#ss + 1] = "dualstack"
	end
	ss[#ss + 1] = region
	ss[#ss + 1] = "amazonaws.com"
	if region == "cn-north-1" then
		ss[#ss + 1] = "cn"
	end
	return table.concat(ss, ".")
end


function M.init(config)
	assert(config, "You must provide a config table")
	assert(config.region, "You must provide a region in the config table")

	settings.service = M.metadata.endpoint_prefix
	settings.protocol = M.metadata.protocol
	settings.region = config.region
	settings.endpoint = config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
	settings.signature_version = M.metadata.signature_version
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call ListEventSourceMappings asynchronously, invoking a callback when done
-- @param ListEventSourceMappingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListEventSourceMappingsAsync(ListEventSourceMappingsRequest, cb)
	assert(ListEventSourceMappingsRequest, "You must provide a ListEventSourceMappingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListEventSourceMappings",
	}
	for header,value in pairs(ListEventSourceMappingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/event-source-mappings/", ListEventSourceMappingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListEventSourceMappings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListEventSourceMappingsRequest
-- @return response
-- @return error_message
function M.ListEventSourceMappingsSync(ListEventSourceMappingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListEventSourceMappingsAsync(ListEventSourceMappingsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFunction asynchronously, invoking a callback when done
-- @param DeleteFunctionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteFunctionAsync(DeleteFunctionRequest, cb)
	assert(DeleteFunctionRequest, "You must provide a DeleteFunctionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteFunction",
	}
	for header,value in pairs(DeleteFunctionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}", DeleteFunctionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteFunction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFunctionRequest
-- @return response
-- @return error_message
function M.DeleteFunctionSync(DeleteFunctionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFunctionAsync(DeleteFunctionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateEventSourceMapping asynchronously, invoking a callback when done
-- @param UpdateEventSourceMappingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateEventSourceMappingAsync(UpdateEventSourceMappingRequest, cb)
	assert(UpdateEventSourceMappingRequest, "You must provide a UpdateEventSourceMappingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateEventSourceMapping",
	}
	for header,value in pairs(UpdateEventSourceMappingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/event-source-mappings/{UUID}", UpdateEventSourceMappingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateEventSourceMapping synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateEventSourceMappingRequest
-- @return response
-- @return error_message
function M.UpdateEventSourceMappingSync(UpdateEventSourceMappingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateEventSourceMappingAsync(UpdateEventSourceMappingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAlias asynchronously, invoking a callback when done
-- @param UpdateAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAliasAsync(UpdateAliasRequest, cb)
	assert(UpdateAliasRequest, "You must provide a UpdateAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateAlias",
	}
	for header,value in pairs(UpdateAliasRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/aliases/{Name}", UpdateAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAliasRequest
-- @return response
-- @return error_message
function M.UpdateAliasSync(UpdateAliasRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAliasAsync(UpdateAliasRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListFunctions asynchronously, invoking a callback when done
-- @param ListFunctionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListFunctionsAsync(ListFunctionsRequest, cb)
	assert(ListFunctionsRequest, "You must provide a ListFunctionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListFunctions",
	}
	for header,value in pairs(ListFunctionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/", ListFunctionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListFunctions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListFunctionsRequest
-- @return response
-- @return error_message
function M.ListFunctionsSync(ListFunctionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFunctionsAsync(ListFunctionsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateEventSourceMapping asynchronously, invoking a callback when done
-- @param CreateEventSourceMappingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateEventSourceMappingAsync(CreateEventSourceMappingRequest, cb)
	assert(CreateEventSourceMappingRequest, "You must provide a CreateEventSourceMappingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateEventSourceMapping",
	}
	for header,value in pairs(CreateEventSourceMappingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/event-source-mappings/", CreateEventSourceMappingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateEventSourceMapping synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateEventSourceMappingRequest
-- @return response
-- @return error_message
function M.CreateEventSourceMappingSync(CreateEventSourceMappingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateEventSourceMappingAsync(CreateEventSourceMappingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFunctionConfiguration asynchronously, invoking a callback when done
-- @param GetFunctionConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetFunctionConfigurationAsync(GetFunctionConfigurationRequest, cb)
	assert(GetFunctionConfigurationRequest, "You must provide a GetFunctionConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetFunctionConfiguration",
	}
	for header,value in pairs(GetFunctionConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/configuration", GetFunctionConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFunctionConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFunctionConfigurationRequest
-- @return response
-- @return error_message
function M.GetFunctionConfigurationSync(GetFunctionConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFunctionConfigurationAsync(GetFunctionConfigurationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAliases asynchronously, invoking a callback when done
-- @param ListAliasesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAliasesAsync(ListAliasesRequest, cb)
	assert(ListAliasesRequest, "You must provide a ListAliasesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListAliases",
	}
	for header,value in pairs(ListAliasesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/aliases", ListAliasesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAliases synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAliasesRequest
-- @return response
-- @return error_message
function M.ListAliasesSync(ListAliasesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAliasesAsync(ListAliasesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPolicy asynchronously, invoking a callback when done
-- @param GetPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetPolicyAsync(GetPolicyRequest, cb)
	assert(GetPolicyRequest, "You must provide a GetPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetPolicy",
	}
	for header,value in pairs(GetPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/policy", GetPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPolicyRequest
-- @return response
-- @return error_message
function M.GetPolicySync(GetPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPolicyAsync(GetPolicyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call Invoke asynchronously, invoking a callback when done
-- @param InvocationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.InvokeAsync(InvocationRequest, cb)
	assert(InvocationRequest, "You must provide a InvocationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".Invoke",
	}
	for header,value in pairs(InvocationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/invocations", InvocationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call Invoke synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InvocationRequest
-- @return response
-- @return error_message
function M.InvokeSync(InvocationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InvokeAsync(InvocationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PublishVersion asynchronously, invoking a callback when done
-- @param PublishVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PublishVersionAsync(PublishVersionRequest, cb)
	assert(PublishVersionRequest, "You must provide a PublishVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PublishVersion",
	}
	for header,value in pairs(PublishVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/versions", PublishVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PublishVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PublishVersionRequest
-- @return response
-- @return error_message
function M.PublishVersionSync(PublishVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PublishVersionAsync(PublishVersionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFunction asynchronously, invoking a callback when done
-- @param GetFunctionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetFunctionAsync(GetFunctionRequest, cb)
	assert(GetFunctionRequest, "You must provide a GetFunctionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetFunction",
	}
	for header,value in pairs(GetFunctionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}", GetFunctionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFunction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFunctionRequest
-- @return response
-- @return error_message
function M.GetFunctionSync(GetFunctionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFunctionAsync(GetFunctionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAlias asynchronously, invoking a callback when done
-- @param DeleteAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAliasAsync(DeleteAliasRequest, cb)
	assert(DeleteAliasRequest, "You must provide a DeleteAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteAlias",
	}
	for header,value in pairs(DeleteAliasRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/aliases/{Name}", DeleteAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAliasRequest
-- @return response
-- @return error_message
function M.DeleteAliasSync(DeleteAliasRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAliasAsync(DeleteAliasRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddPermission asynchronously, invoking a callback when done
-- @param AddPermissionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddPermissionAsync(AddPermissionRequest, cb)
	assert(AddPermissionRequest, "You must provide a AddPermissionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddPermission",
	}
	for header,value in pairs(AddPermissionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/policy", AddPermissionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddPermission synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddPermissionRequest
-- @return response
-- @return error_message
function M.AddPermissionSync(AddPermissionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddPermissionAsync(AddPermissionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListVersionsByFunction asynchronously, invoking a callback when done
-- @param ListVersionsByFunctionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListVersionsByFunctionAsync(ListVersionsByFunctionRequest, cb)
	assert(ListVersionsByFunctionRequest, "You must provide a ListVersionsByFunctionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListVersionsByFunction",
	}
	for header,value in pairs(ListVersionsByFunctionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/versions", ListVersionsByFunctionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListVersionsByFunction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListVersionsByFunctionRequest
-- @return response
-- @return error_message
function M.ListVersionsByFunctionSync(ListVersionsByFunctionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListVersionsByFunctionAsync(ListVersionsByFunctionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemovePermission asynchronously, invoking a callback when done
-- @param RemovePermissionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemovePermissionAsync(RemovePermissionRequest, cb)
	assert(RemovePermissionRequest, "You must provide a RemovePermissionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemovePermission",
	}
	for header,value in pairs(RemovePermissionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/policy/{StatementId}", RemovePermissionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemovePermission synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemovePermissionRequest
-- @return response
-- @return error_message
function M.RemovePermissionSync(RemovePermissionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemovePermissionAsync(RemovePermissionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAlias asynchronously, invoking a callback when done
-- @param CreateAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAliasAsync(CreateAliasRequest, cb)
	assert(CreateAliasRequest, "You must provide a CreateAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateAlias",
	}
	for header,value in pairs(CreateAliasRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/aliases", CreateAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAliasRequest
-- @return response
-- @return error_message
function M.CreateAliasSync(CreateAliasRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAliasAsync(CreateAliasRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTags asynchronously, invoking a callback when done
-- @param ListTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsAsync(ListTagsRequest, cb)
	assert(ListTagsRequest, "You must provide a ListTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTags",
	}
	for header,value in pairs(ListTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2017-03-31/tags/{ARN}", ListTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsRequest
-- @return response
-- @return error_message
function M.ListTagsSync(ListTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsAsync(ListTagsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call TagResource asynchronously, invoking a callback when done
-- @param TagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TagResourceAsync(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".TagResource",
	}
	for header,value in pairs(TagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2017-03-31/tags/{ARN}", TagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagResourceRequest
-- @return response
-- @return error_message
function M.TagResourceSync(TagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagResourceAsync(TagResourceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEventSourceMapping asynchronously, invoking a callback when done
-- @param DeleteEventSourceMappingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteEventSourceMappingAsync(DeleteEventSourceMappingRequest, cb)
	assert(DeleteEventSourceMappingRequest, "You must provide a DeleteEventSourceMappingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteEventSourceMapping",
	}
	for header,value in pairs(DeleteEventSourceMappingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/event-source-mappings/{UUID}", DeleteEventSourceMappingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteEventSourceMapping synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEventSourceMappingRequest
-- @return response
-- @return error_message
function M.DeleteEventSourceMappingSync(DeleteEventSourceMappingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEventSourceMappingAsync(DeleteEventSourceMappingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFunctionConfiguration asynchronously, invoking a callback when done
-- @param UpdateFunctionConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateFunctionConfigurationAsync(UpdateFunctionConfigurationRequest, cb)
	assert(UpdateFunctionConfigurationRequest, "You must provide a UpdateFunctionConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateFunctionConfiguration",
	}
	for header,value in pairs(UpdateFunctionConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/configuration", UpdateFunctionConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateFunctionConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFunctionConfigurationRequest
-- @return response
-- @return error_message
function M.UpdateFunctionConfigurationSync(UpdateFunctionConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFunctionConfigurationAsync(UpdateFunctionConfigurationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetEventSourceMapping asynchronously, invoking a callback when done
-- @param GetEventSourceMappingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetEventSourceMappingAsync(GetEventSourceMappingRequest, cb)
	assert(GetEventSourceMappingRequest, "You must provide a GetEventSourceMappingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetEventSourceMapping",
	}
	for header,value in pairs(GetEventSourceMappingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/event-source-mappings/{UUID}", GetEventSourceMappingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetEventSourceMapping synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetEventSourceMappingRequest
-- @return response
-- @return error_message
function M.GetEventSourceMappingSync(GetEventSourceMappingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetEventSourceMappingAsync(GetEventSourceMappingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagResource asynchronously, invoking a callback when done
-- @param UntagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UntagResourceAsync(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UntagResource",
	}
	for header,value in pairs(UntagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2017-03-31/tags/{ARN}", UntagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagResourceRequest
-- @return response
-- @return error_message
function M.UntagResourceSync(UntagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagResourceAsync(UntagResourceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAlias asynchronously, invoking a callback when done
-- @param GetAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAliasAsync(GetAliasRequest, cb)
	assert(GetAliasRequest, "You must provide a GetAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAlias",
	}
	for header,value in pairs(GetAliasRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/aliases/{Name}", GetAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAliasRequest
-- @return response
-- @return error_message
function M.GetAliasSync(GetAliasRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAliasAsync(GetAliasRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAccountSettings asynchronously, invoking a callback when done
-- @param GetAccountSettingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAccountSettingsAsync(GetAccountSettingsRequest, cb)
	assert(GetAccountSettingsRequest, "You must provide a GetAccountSettingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAccountSettings",
	}
	for header,value in pairs(GetAccountSettingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2016-08-19/account-settings/", GetAccountSettingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAccountSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAccountSettingsRequest
-- @return response
-- @return error_message
function M.GetAccountSettingsSync(GetAccountSettingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAccountSettingsAsync(GetAccountSettingsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateFunction asynchronously, invoking a callback when done
-- @param CreateFunctionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateFunctionAsync(CreateFunctionRequest, cb)
	assert(CreateFunctionRequest, "You must provide a CreateFunctionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateFunction",
	}
	for header,value in pairs(CreateFunctionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions", CreateFunctionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateFunction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateFunctionRequest
-- @return response
-- @return error_message
function M.CreateFunctionSync(CreateFunctionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateFunctionAsync(CreateFunctionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFunctionCode asynchronously, invoking a callback when done
-- @param UpdateFunctionCodeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateFunctionCodeAsync(UpdateFunctionCodeRequest, cb)
	assert(UpdateFunctionCodeRequest, "You must provide a UpdateFunctionCodeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateFunctionCode",
	}
	for header,value in pairs(UpdateFunctionCodeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/code", UpdateFunctionCodeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateFunctionCode synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFunctionCodeRequest
-- @return response
-- @return error_message
function M.UpdateFunctionCodeSync(UpdateFunctionCodeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFunctionCodeAsync(UpdateFunctionCodeRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
