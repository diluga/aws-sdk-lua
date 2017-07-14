--- GENERATED CODE - DO NOT MODIFY
-- AWS Support (support-2013-04-15)

local M = {}

M.metadata = {
	api_version = "2013-04-15",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "support",
	service_abbreviation = "",
	service_full_name = "AWS Support",
	signature_version = "v4",
	target_prefix = "AWSSupport_20130415",
	timestamp_format = "",
	global_endpoint = "",
	uid = "support-2013-04-15",
}

local CaseCreationLimitExceeded_keys = { "message" = true, nil }

function M.AssertCaseCreationLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaseCreationLimitExceeded to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(CaseCreationLimitExceeded_keys[k], "CaseCreationLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaseCreationLimitExceeded
-- <p>The case creation limit for the account has been exceeded.</p>
-- @param message [ErrorMessage] <p>An error message that indicates that you have exceeded the number of cases you can have open.</p>
function M.CaseCreationLimitExceeded(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CaseCreationLimitExceeded")
	local t = { 
		["message"] = message,
	}
	M.AssertCaseCreationLimitExceeded(t)
	return t
end

local Service_keys = { "code" = true, "name" = true, "categories" = true, nil }

function M.AssertService(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Service to be of type 'table'")
	if struct["code"] then M.AssertServiceCode(struct["code"]) end
	if struct["name"] then M.AssertServiceName(struct["name"]) end
	if struct["categories"] then M.AssertCategoryList(struct["categories"]) end
	for k,_ in pairs(struct) do
		assert(Service_keys[k], "Service contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Service
-- <p>Information about an AWS service returned by the <a>DescribeServices</a> operation. </p>
-- @param code [ServiceCode] <p>The code for an AWS service returned by the <a>DescribeServices</a> response. The <code>name</code> element contains the corresponding friendly name.</p>
-- @param name [ServiceName] <p>The friendly name for an AWS service. The <code>code</code> element contains the corresponding code.</p>
-- @param categories [CategoryList] <p>A list of categories that describe the type of support issue a case describes. Categories consist of a category name and a category code. Category names and codes are passed to AWS Support when you call <a>CreateCase</a>.</p>
function M.Service(code, name, categories, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Service")
	local t = { 
		["code"] = code,
		["name"] = name,
		["categories"] = categories,
	}
	M.AssertService(t)
	return t
end

local RecentCaseCommunications_keys = { "communications" = true, "nextToken" = true, nil }

function M.AssertRecentCaseCommunications(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecentCaseCommunications to be of type 'table'")
	if struct["communications"] then M.AssertCommunicationList(struct["communications"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(RecentCaseCommunications_keys[k], "RecentCaseCommunications contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecentCaseCommunications
-- <p>The five most recent communications associated with the case.</p>
-- @param communications [CommunicationList] <p>The five most recent communications associated with the case.</p>
-- @param nextToken [NextToken] <p>A resumption point for pagination.</p>
function M.RecentCaseCommunications(communications, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecentCaseCommunications")
	local t = { 
		["communications"] = communications,
		["nextToken"] = nextToken,
	}
	M.AssertRecentCaseCommunications(t)
	return t
end

local DescribeAttachmentRequest_keys = { "attachmentId" = true, nil }

function M.AssertDescribeAttachmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAttachmentRequest to be of type 'table'")
	assert(struct["attachmentId"], "Expected key attachmentId to exist in table")
	if struct["attachmentId"] then M.AssertAttachmentId(struct["attachmentId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAttachmentRequest_keys[k], "DescribeAttachmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAttachmentRequest
--  
-- @param attachmentId [AttachmentId] <p>The ID of the attachment to return. Attachment IDs are returned by the <a>DescribeCommunications</a> operation.</p>
-- Required parameter: attachmentId
function M.DescribeAttachmentRequest(attachmentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAttachmentRequest")
	local t = { 
		["attachmentId"] = attachmentId,
	}
	M.AssertDescribeAttachmentRequest(t)
	return t
end

local TrustedAdvisorCheckDescription_keys = { "category" = true, "description" = true, "metadata" = true, "id" = true, "name" = true, nil }

function M.AssertTrustedAdvisorCheckDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedAdvisorCheckDescription to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["description"], "Expected key description to exist in table")
	assert(struct["category"], "Expected key category to exist in table")
	assert(struct["metadata"], "Expected key metadata to exist in table")
	if struct["category"] then M.AssertString(struct["category"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	if struct["metadata"] then M.AssertStringList(struct["metadata"]) end
	if struct["id"] then M.AssertString(struct["id"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(TrustedAdvisorCheckDescription_keys[k], "TrustedAdvisorCheckDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedAdvisorCheckDescription
-- <p>The description and metadata for a Trusted Advisor check.</p>
-- @param category [String] <p>The category of the Trusted Advisor check.</p>
-- @param description [String] <p>The description of the Trusted Advisor check, which includes the alert criteria and recommended actions (contains HTML markup).</p>
-- @param metadata [StringList] <p>The column headings for the data returned by the Trusted Advisor check. The order of the headings corresponds to the order of the data in the <b>Metadata</b> element of the <a>TrustedAdvisorResourceDetail</a> for the check. <b>Metadata</b> contains all the data that is shown in the Excel download, even in those cases where the UI shows just summary data. </p>
-- @param id [String] <p>The unique identifier for the Trusted Advisor check.</p>
-- @param name [String] <p>The display name for the Trusted Advisor check.</p>
-- Required parameter: id
-- Required parameter: name
-- Required parameter: description
-- Required parameter: category
-- Required parameter: metadata
function M.TrustedAdvisorCheckDescription(category, description, metadata, id, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedAdvisorCheckDescription")
	local t = { 
		["category"] = category,
		["description"] = description,
		["metadata"] = metadata,
		["id"] = id,
		["name"] = name,
	}
	M.AssertTrustedAdvisorCheckDescription(t)
	return t
end

local AttachmentSetIdNotFound_keys = { "message" = true, nil }

function M.AssertAttachmentSetIdNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachmentSetIdNotFound to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(AttachmentSetIdNotFound_keys[k], "AttachmentSetIdNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachmentSetIdNotFound
-- <p>An attachment set with the specified ID could not be found.</p>
-- @param message [ErrorMessage] <p>An attachment set with the specified ID could not be found.</p>
function M.AttachmentSetIdNotFound(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachmentSetIdNotFound")
	local t = { 
		["message"] = message,
	}
	M.AssertAttachmentSetIdNotFound(t)
	return t
end

local InternalServerError_keys = { "message" = true, nil }

function M.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InternalServerError_keys[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- <p>An internal server error occurred.</p>
-- @param message [ErrorMessage] <p>An internal server error occurred.</p>
function M.InternalServerError(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerError")
	local t = { 
		["message"] = message,
	}
	M.AssertInternalServerError(t)
	return t
end

local DescribeAttachmentResponse_keys = { "attachment" = true, nil }

function M.AssertDescribeAttachmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAttachmentResponse to be of type 'table'")
	if struct["attachment"] then M.AssertAttachment(struct["attachment"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAttachmentResponse_keys[k], "DescribeAttachmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAttachmentResponse
-- <p>The content and file name of the attachment returned by the <a>DescribeAttachment</a> operation.</p>
-- @param attachment [Attachment] <p>The attachment content and file name.</p>
function M.DescribeAttachmentResponse(attachment, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAttachmentResponse")
	local t = { 
		["attachment"] = attachment,
	}
	M.AssertDescribeAttachmentResponse(t)
	return t
end

local TrustedAdvisorCheckRefreshStatus_keys = { "checkId" = true, "status" = true, "millisUntilNextRefreshable" = true, nil }

function M.AssertTrustedAdvisorCheckRefreshStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedAdvisorCheckRefreshStatus to be of type 'table'")
	assert(struct["checkId"], "Expected key checkId to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["millisUntilNextRefreshable"], "Expected key millisUntilNextRefreshable to exist in table")
	if struct["checkId"] then M.AssertString(struct["checkId"]) end
	if struct["status"] then M.AssertString(struct["status"]) end
	if struct["millisUntilNextRefreshable"] then M.AssertLong(struct["millisUntilNextRefreshable"]) end
	for k,_ in pairs(struct) do
		assert(TrustedAdvisorCheckRefreshStatus_keys[k], "TrustedAdvisorCheckRefreshStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedAdvisorCheckRefreshStatus
-- <p>The refresh status of a Trusted Advisor check.</p>
-- @param checkId [String] <p>The unique identifier for the Trusted Advisor check.</p>
-- @param status [String] <p>The status of the Trusted Advisor check for which a refresh has been requested: "none", "enqueued", "processing", "success", or "abandoned".</p>
-- @param millisUntilNextRefreshable [Long] <p>The amount of time, in milliseconds, until the Trusted Advisor check is eligible for refresh.</p>
-- Required parameter: checkId
-- Required parameter: status
-- Required parameter: millisUntilNextRefreshable
function M.TrustedAdvisorCheckRefreshStatus(checkId, status, millisUntilNextRefreshable, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedAdvisorCheckRefreshStatus")
	local t = { 
		["checkId"] = checkId,
		["status"] = status,
		["millisUntilNextRefreshable"] = millisUntilNextRefreshable,
	}
	M.AssertTrustedAdvisorCheckRefreshStatus(t)
	return t
end

local RefreshTrustedAdvisorCheckRequest_keys = { "checkId" = true, nil }

function M.AssertRefreshTrustedAdvisorCheckRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RefreshTrustedAdvisorCheckRequest to be of type 'table'")
	assert(struct["checkId"], "Expected key checkId to exist in table")
	if struct["checkId"] then M.AssertString(struct["checkId"]) end
	for k,_ in pairs(struct) do
		assert(RefreshTrustedAdvisorCheckRequest_keys[k], "RefreshTrustedAdvisorCheckRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RefreshTrustedAdvisorCheckRequest
-- <p/>
-- @param checkId [String] <p>The unique identifier for the Trusted Advisor check to refresh. <b>Note:</b> Specifying the check ID of a check that is automatically refreshed causes an <code>InvalidParameterValue</code> error.</p>
-- Required parameter: checkId
function M.RefreshTrustedAdvisorCheckRequest(checkId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RefreshTrustedAdvisorCheckRequest")
	local t = { 
		["checkId"] = checkId,
	}
	M.AssertRefreshTrustedAdvisorCheckRequest(t)
	return t
end

local AttachmentIdNotFound_keys = { "message" = true, nil }

function M.AssertAttachmentIdNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachmentIdNotFound to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(AttachmentIdNotFound_keys[k], "AttachmentIdNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachmentIdNotFound
-- <p>An attachment with the specified ID could not be found.</p>
-- @param message [ErrorMessage] <p>An attachment with the specified ID could not be found.</p>
function M.AttachmentIdNotFound(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachmentIdNotFound")
	local t = { 
		["message"] = message,
	}
	M.AssertAttachmentIdNotFound(t)
	return t
end

local CaseIdNotFound_keys = { "message" = true, nil }

function M.AssertCaseIdNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaseIdNotFound to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(CaseIdNotFound_keys[k], "CaseIdNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaseIdNotFound
-- <p>The requested <code>caseId</code> could not be located.</p>
-- @param message [ErrorMessage] <p>The requested <code>CaseId</code> could not be located.</p>
function M.CaseIdNotFound(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CaseIdNotFound")
	local t = { 
		["message"] = message,
	}
	M.AssertCaseIdNotFound(t)
	return t
end

local CreateCaseRequest_keys = { "language" = true, "ccEmailAddresses" = true, "communicationBody" = true, "attachmentSetId" = true, "severityCode" = true, "categoryCode" = true, "serviceCode" = true, "issueType" = true, "subject" = true, nil }

function M.AssertCreateCaseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCaseRequest to be of type 'table'")
	assert(struct["subject"], "Expected key subject to exist in table")
	assert(struct["communicationBody"], "Expected key communicationBody to exist in table")
	if struct["language"] then M.AssertLanguage(struct["language"]) end
	if struct["ccEmailAddresses"] then M.AssertCcEmailAddressList(struct["ccEmailAddresses"]) end
	if struct["communicationBody"] then M.AssertCommunicationBody(struct["communicationBody"]) end
	if struct["attachmentSetId"] then M.AssertAttachmentSetId(struct["attachmentSetId"]) end
	if struct["severityCode"] then M.AssertSeverityCode(struct["severityCode"]) end
	if struct["categoryCode"] then M.AssertCategoryCode(struct["categoryCode"]) end
	if struct["serviceCode"] then M.AssertServiceCode(struct["serviceCode"]) end
	if struct["issueType"] then M.AssertIssueType(struct["issueType"]) end
	if struct["subject"] then M.AssertSubject(struct["subject"]) end
	for k,_ in pairs(struct) do
		assert(CreateCaseRequest_keys[k], "CreateCaseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCaseRequest
-- <p/>
-- @param language [Language] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
-- @param ccEmailAddresses [CcEmailAddressList] <p>A list of email addresses that AWS Support copies on case correspondence.</p>
-- @param communicationBody [CommunicationBody] <p>The communication body text when you create an AWS Support case by calling <a>CreateCase</a>.</p>
-- @param attachmentSetId [AttachmentSetId] <p>The ID of a set of one or more attachments for the case. Create the set by using <a>AddAttachmentsToSet</a>.</p>
-- @param severityCode [SeverityCode] <p>The code for the severity level returned by the call to <a>DescribeSeverityLevels</a>.</p> <note> <p>The availability of severity levels depends on each customer's support subscription. In other words, your subscription may not necessarily require the urgent level of response time.</p> </note>
-- @param categoryCode [CategoryCode] <p>The category of problem for the AWS Support case.</p>
-- @param serviceCode [ServiceCode] <p>The code for the AWS service returned by the call to <a>DescribeServices</a>.</p>
-- @param issueType [IssueType] <p>The type of issue for the case. You can specify either "customer-service" or "technical." If you do not indicate a value, the default is "technical."</p>
-- @param subject [Subject] <p>The title of the AWS Support case.</p>
-- Required parameter: subject
-- Required parameter: communicationBody
function M.CreateCaseRequest(language, ccEmailAddresses, communicationBody, attachmentSetId, severityCode, categoryCode, serviceCode, issueType, subject, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCaseRequest")
	local t = { 
		["language"] = language,
		["ccEmailAddresses"] = ccEmailAddresses,
		["communicationBody"] = communicationBody,
		["attachmentSetId"] = attachmentSetId,
		["severityCode"] = severityCode,
		["categoryCode"] = categoryCode,
		["serviceCode"] = serviceCode,
		["issueType"] = issueType,
		["subject"] = subject,
	}
	M.AssertCreateCaseRequest(t)
	return t
end

local DescribeTrustedAdvisorCheckRefreshStatusesResponse_keys = { "statuses" = true, nil }

function M.AssertDescribeTrustedAdvisorCheckRefreshStatusesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustedAdvisorCheckRefreshStatusesResponse to be of type 'table'")
	assert(struct["statuses"], "Expected key statuses to exist in table")
	if struct["statuses"] then M.AssertTrustedAdvisorCheckRefreshStatusList(struct["statuses"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTrustedAdvisorCheckRefreshStatusesResponse_keys[k], "DescribeTrustedAdvisorCheckRefreshStatusesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustedAdvisorCheckRefreshStatusesResponse
-- <p>The statuses of the Trusted Advisor checks returned by the <a>DescribeTrustedAdvisorCheckRefreshStatuses</a> operation.</p>
-- @param statuses [TrustedAdvisorCheckRefreshStatusList] <p>The refresh status of the specified Trusted Advisor checks.</p>
-- Required parameter: statuses
function M.DescribeTrustedAdvisorCheckRefreshStatusesResponse(statuses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustedAdvisorCheckRefreshStatusesResponse")
	local t = { 
		["statuses"] = statuses,
	}
	M.AssertDescribeTrustedAdvisorCheckRefreshStatusesResponse(t)
	return t
end

local TrustedAdvisorResourceDetail_keys = { "status" = true, "resourceId" = true, "region" = true, "isSuppressed" = true, "metadata" = true, nil }

function M.AssertTrustedAdvisorResourceDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedAdvisorResourceDetail to be of type 'table'")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["metadata"], "Expected key metadata to exist in table")
	if struct["status"] then M.AssertString(struct["status"]) end
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["region"] then M.AssertString(struct["region"]) end
	if struct["isSuppressed"] then M.AssertBoolean(struct["isSuppressed"]) end
	if struct["metadata"] then M.AssertStringList(struct["metadata"]) end
	for k,_ in pairs(struct) do
		assert(TrustedAdvisorResourceDetail_keys[k], "TrustedAdvisorResourceDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedAdvisorResourceDetail
-- <p>Contains information about a resource identified by a Trusted Advisor check.</p>
-- @param status [String] <p>The status code for the resource identified in the Trusted Advisor check.</p>
-- @param resourceId [String] <p>The unique identifier for the identified resource.</p>
-- @param region [String] <p>The AWS region in which the identified resource is located.</p>
-- @param isSuppressed [Boolean] <p>Specifies whether the AWS resource was ignored by Trusted Advisor because it was marked as suppressed by the user.</p>
-- @param metadata [StringList] <p>Additional information about the identified resource. The exact metadata and its order can be obtained by inspecting the <a>TrustedAdvisorCheckDescription</a> object returned by the call to <a>DescribeTrustedAdvisorChecks</a>. <b>Metadata</b> contains all the data that is shown in the Excel download, even in those cases where the UI shows just summary data. </p>
-- Required parameter: status
-- Required parameter: resourceId
-- Required parameter: metadata
function M.TrustedAdvisorResourceDetail(status, resourceId, region, isSuppressed, metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedAdvisorResourceDetail")
	local t = { 
		["status"] = status,
		["resourceId"] = resourceId,
		["region"] = region,
		["isSuppressed"] = isSuppressed,
		["metadata"] = metadata,
	}
	M.AssertTrustedAdvisorResourceDetail(t)
	return t
end

local TrustedAdvisorCheckResult_keys = { "checkId" = true, "status" = true, "flaggedResources" = true, "timestamp" = true, "resourcesSummary" = true, "categorySpecificSummary" = true, nil }

function M.AssertTrustedAdvisorCheckResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedAdvisorCheckResult to be of type 'table'")
	assert(struct["checkId"], "Expected key checkId to exist in table")
	assert(struct["timestamp"], "Expected key timestamp to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["resourcesSummary"], "Expected key resourcesSummary to exist in table")
	assert(struct["categorySpecificSummary"], "Expected key categorySpecificSummary to exist in table")
	assert(struct["flaggedResources"], "Expected key flaggedResources to exist in table")
	if struct["checkId"] then M.AssertString(struct["checkId"]) end
	if struct["status"] then M.AssertString(struct["status"]) end
	if struct["flaggedResources"] then M.AssertTrustedAdvisorResourceDetailList(struct["flaggedResources"]) end
	if struct["timestamp"] then M.AssertString(struct["timestamp"]) end
	if struct["resourcesSummary"] then M.AssertTrustedAdvisorResourcesSummary(struct["resourcesSummary"]) end
	if struct["categorySpecificSummary"] then M.AssertTrustedAdvisorCategorySpecificSummary(struct["categorySpecificSummary"]) end
	for k,_ in pairs(struct) do
		assert(TrustedAdvisorCheckResult_keys[k], "TrustedAdvisorCheckResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedAdvisorCheckResult
-- <p>The results of a Trusted Advisor check returned by <a>DescribeTrustedAdvisorCheckResult</a>.</p>
-- @param checkId [String] <p>The unique identifier for the Trusted Advisor check.</p>
-- @param status [String] <p>The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".</p>
-- @param flaggedResources [TrustedAdvisorResourceDetailList] <p>The details about each resource listed in the check result.</p>
-- @param timestamp [String] <p>The time of the last refresh of the check.</p>
-- @param resourcesSummary [TrustedAdvisorResourcesSummary] <p>The results of a Trusted Advisor check returned by <a>DescribeTrustedAdvisorCheckResult</a>.</p>
-- @param categorySpecificSummary [TrustedAdvisorCategorySpecificSummary] <p>Summary information that relates to the category of the check. Cost Optimizing is the only category that is currently supported.</p>
-- Required parameter: checkId
-- Required parameter: timestamp
-- Required parameter: status
-- Required parameter: resourcesSummary
-- Required parameter: categorySpecificSummary
-- Required parameter: flaggedResources
function M.TrustedAdvisorCheckResult(checkId, status, flaggedResources, timestamp, resourcesSummary, categorySpecificSummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedAdvisorCheckResult")
	local t = { 
		["checkId"] = checkId,
		["status"] = status,
		["flaggedResources"] = flaggedResources,
		["timestamp"] = timestamp,
		["resourcesSummary"] = resourcesSummary,
		["categorySpecificSummary"] = categorySpecificSummary,
	}
	M.AssertTrustedAdvisorCheckResult(t)
	return t
end

local DescribeTrustedAdvisorChecksRequest_keys = { "language" = true, nil }

function M.AssertDescribeTrustedAdvisorChecksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustedAdvisorChecksRequest to be of type 'table'")
	assert(struct["language"], "Expected key language to exist in table")
	if struct["language"] then M.AssertString(struct["language"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTrustedAdvisorChecksRequest_keys[k], "DescribeTrustedAdvisorChecksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustedAdvisorChecksRequest
-- <p/>
-- @param language [String] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
-- Required parameter: language
function M.DescribeTrustedAdvisorChecksRequest(language, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustedAdvisorChecksRequest")
	local t = { 
		["language"] = language,
	}
	M.AssertDescribeTrustedAdvisorChecksRequest(t)
	return t
end

local DescribeTrustedAdvisorCheckResultRequest_keys = { "checkId" = true, "language" = true, nil }

function M.AssertDescribeTrustedAdvisorCheckResultRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustedAdvisorCheckResultRequest to be of type 'table'")
	assert(struct["checkId"], "Expected key checkId to exist in table")
	if struct["checkId"] then M.AssertString(struct["checkId"]) end
	if struct["language"] then M.AssertString(struct["language"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTrustedAdvisorCheckResultRequest_keys[k], "DescribeTrustedAdvisorCheckResultRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustedAdvisorCheckResultRequest
-- <p/>
-- @param checkId [String] <p>The unique identifier for the Trusted Advisor check.</p>
-- @param language [String] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
-- Required parameter: checkId
function M.DescribeTrustedAdvisorCheckResultRequest(checkId, language, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustedAdvisorCheckResultRequest")
	local t = { 
		["checkId"] = checkId,
		["language"] = language,
	}
	M.AssertDescribeTrustedAdvisorCheckResultRequest(t)
	return t
end

local CreateCaseResponse_keys = { "caseId" = true, nil }

function M.AssertCreateCaseResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCaseResponse to be of type 'table'")
	if struct["caseId"] then M.AssertCaseId(struct["caseId"]) end
	for k,_ in pairs(struct) do
		assert(CreateCaseResponse_keys[k], "CreateCaseResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCaseResponse
-- <p>The AWS Support case ID returned by a successful completion of the <a>CreateCase</a> operation. </p>
-- @param caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
function M.CreateCaseResponse(caseId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCaseResponse")
	local t = { 
		["caseId"] = caseId,
	}
	M.AssertCreateCaseResponse(t)
	return t
end

local DescribeServicesRequest_keys = { "serviceCodeList" = true, "language" = true, nil }

function M.AssertDescribeServicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServicesRequest to be of type 'table'")
	if struct["serviceCodeList"] then M.AssertServiceCodeList(struct["serviceCodeList"]) end
	if struct["language"] then M.AssertLanguage(struct["language"]) end
	for k,_ in pairs(struct) do
		assert(DescribeServicesRequest_keys[k], "DescribeServicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServicesRequest
-- <p/>
-- @param serviceCodeList [ServiceCodeList] <p>A JSON-formatted list of service codes available for AWS services.</p>
-- @param language [Language] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
function M.DescribeServicesRequest(serviceCodeList, language, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServicesRequest")
	local t = { 
		["serviceCodeList"] = serviceCodeList,
		["language"] = language,
	}
	M.AssertDescribeServicesRequest(t)
	return t
end

local RefreshTrustedAdvisorCheckResponse_keys = { "status" = true, nil }

function M.AssertRefreshTrustedAdvisorCheckResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RefreshTrustedAdvisorCheckResponse to be of type 'table'")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["status"] then M.AssertTrustedAdvisorCheckRefreshStatus(struct["status"]) end
	for k,_ in pairs(struct) do
		assert(RefreshTrustedAdvisorCheckResponse_keys[k], "RefreshTrustedAdvisorCheckResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RefreshTrustedAdvisorCheckResponse
-- <p>The current refresh status of a Trusted Advisor check.</p>
-- @param status [TrustedAdvisorCheckRefreshStatus] <p>The current refresh status for a check, including the amount of time until the check is eligible for refresh.</p>
-- Required parameter: status
function M.RefreshTrustedAdvisorCheckResponse(status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RefreshTrustedAdvisorCheckResponse")
	local t = { 
		["status"] = status,
	}
	M.AssertRefreshTrustedAdvisorCheckResponse(t)
	return t
end

local DescribeCommunicationsResponse_keys = { "communications" = true, "nextToken" = true, nil }

function M.AssertDescribeCommunicationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCommunicationsResponse to be of type 'table'")
	if struct["communications"] then M.AssertCommunicationList(struct["communications"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCommunicationsResponse_keys[k], "DescribeCommunicationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCommunicationsResponse
-- <p>The communications returned by the <a>DescribeCommunications</a> operation.</p>
-- @param communications [CommunicationList] <p>The communications for the case.</p>
-- @param nextToken [NextToken] <p>A resumption point for pagination.</p>
function M.DescribeCommunicationsResponse(communications, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCommunicationsResponse")
	local t = { 
		["communications"] = communications,
		["nextToken"] = nextToken,
	}
	M.AssertDescribeCommunicationsResponse(t)
	return t
end

local Communication_keys = { "body" = true, "attachmentSet" = true, "caseId" = true, "timeCreated" = true, "submittedBy" = true, nil }

function M.AssertCommunication(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Communication to be of type 'table'")
	if struct["body"] then M.AssertCommunicationBody(struct["body"]) end
	if struct["attachmentSet"] then M.AssertAttachmentSet(struct["attachmentSet"]) end
	if struct["caseId"] then M.AssertCaseId(struct["caseId"]) end
	if struct["timeCreated"] then M.AssertTimeCreated(struct["timeCreated"]) end
	if struct["submittedBy"] then M.AssertSubmittedBy(struct["submittedBy"]) end
	for k,_ in pairs(struct) do
		assert(Communication_keys[k], "Communication contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Communication
-- <p>A communication associated with an AWS Support case. The communication consists of the case ID, the message body, attachment information, the account email address, and the date and time of the communication.</p>
-- @param body [CommunicationBody] <p>The text of the communication between the customer and AWS Support.</p>
-- @param attachmentSet [AttachmentSet] <p>Information about the attachments to the case communication.</p>
-- @param caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
-- @param timeCreated [TimeCreated] <p>The time the communication was created.</p>
-- @param submittedBy [SubmittedBy] <p>The email address of the account that submitted the AWS Support case.</p>
function M.Communication(body, attachmentSet, caseId, timeCreated, submittedBy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Communication")
	local t = { 
		["body"] = body,
		["attachmentSet"] = attachmentSet,
		["caseId"] = caseId,
		["timeCreated"] = timeCreated,
		["submittedBy"] = submittedBy,
	}
	M.AssertCommunication(t)
	return t
end

local AttachmentSetExpired_keys = { "message" = true, nil }

function M.AssertAttachmentSetExpired(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachmentSetExpired to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(AttachmentSetExpired_keys[k], "AttachmentSetExpired contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachmentSetExpired
-- <p>The expiration time of the attachment set has passed. The set expires 1 hour after it is created.</p>
-- @param message [ErrorMessage] <p>The expiration time of the attachment set has passed. The set expires 1 hour after it is created.</p>
function M.AttachmentSetExpired(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachmentSetExpired")
	local t = { 
		["message"] = message,
	}
	M.AssertAttachmentSetExpired(t)
	return t
end

local AttachmentSetSizeLimitExceeded_keys = { "message" = true, nil }

function M.AssertAttachmentSetSizeLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachmentSetSizeLimitExceeded to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(AttachmentSetSizeLimitExceeded_keys[k], "AttachmentSetSizeLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachmentSetSizeLimitExceeded
-- <p>A limit for the size of an attachment set has been exceeded. The limits are 3 attachments and 5 MB per attachment.</p>
-- @param message [ErrorMessage] <p>A limit for the size of an attachment set has been exceeded. The limits are 3 attachments and 5 MB per attachment.</p>
function M.AttachmentSetSizeLimitExceeded(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachmentSetSizeLimitExceeded")
	local t = { 
		["message"] = message,
	}
	M.AssertAttachmentSetSizeLimitExceeded(t)
	return t
end

local TrustedAdvisorCheckSummary_keys = { "checkId" = true, "status" = true, "timestamp" = true, "resourcesSummary" = true, "hasFlaggedResources" = true, "categorySpecificSummary" = true, nil }

function M.AssertTrustedAdvisorCheckSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedAdvisorCheckSummary to be of type 'table'")
	assert(struct["checkId"], "Expected key checkId to exist in table")
	assert(struct["timestamp"], "Expected key timestamp to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["resourcesSummary"], "Expected key resourcesSummary to exist in table")
	assert(struct["categorySpecificSummary"], "Expected key categorySpecificSummary to exist in table")
	if struct["checkId"] then M.AssertString(struct["checkId"]) end
	if struct["status"] then M.AssertString(struct["status"]) end
	if struct["timestamp"] then M.AssertString(struct["timestamp"]) end
	if struct["resourcesSummary"] then M.AssertTrustedAdvisorResourcesSummary(struct["resourcesSummary"]) end
	if struct["hasFlaggedResources"] then M.AssertBoolean(struct["hasFlaggedResources"]) end
	if struct["categorySpecificSummary"] then M.AssertTrustedAdvisorCategorySpecificSummary(struct["categorySpecificSummary"]) end
	for k,_ in pairs(struct) do
		assert(TrustedAdvisorCheckSummary_keys[k], "TrustedAdvisorCheckSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedAdvisorCheckSummary
-- <p>A summary of a Trusted Advisor check result, including the alert status, last refresh, and number of resources examined.</p>
-- @param checkId [String] <p>The unique identifier for the Trusted Advisor check.</p>
-- @param status [String] <p>The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".</p>
-- @param timestamp [String] <p>The time of the last refresh of the check.</p>
-- @param resourcesSummary [TrustedAdvisorResourcesSummary] <p>A summary of a Trusted Advisor check result, including the alert status, last refresh, and number of resources examined.</p>
-- @param hasFlaggedResources [Boolean] <p>Specifies whether the Trusted Advisor check has flagged resources.</p>
-- @param categorySpecificSummary [TrustedAdvisorCategorySpecificSummary] <p>Summary information that relates to the category of the check. Cost Optimizing is the only category that is currently supported.</p>
-- Required parameter: checkId
-- Required parameter: timestamp
-- Required parameter: status
-- Required parameter: resourcesSummary
-- Required parameter: categorySpecificSummary
function M.TrustedAdvisorCheckSummary(checkId, status, timestamp, resourcesSummary, hasFlaggedResources, categorySpecificSummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedAdvisorCheckSummary")
	local t = { 
		["checkId"] = checkId,
		["status"] = status,
		["timestamp"] = timestamp,
		["resourcesSummary"] = resourcesSummary,
		["hasFlaggedResources"] = hasFlaggedResources,
		["categorySpecificSummary"] = categorySpecificSummary,
	}
	M.AssertTrustedAdvisorCheckSummary(t)
	return t
end

local AddCommunicationToCaseResponse_keys = { "result" = true, nil }

function M.AssertAddCommunicationToCaseResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddCommunicationToCaseResponse to be of type 'table'")
	if struct["result"] then M.AssertResult(struct["result"]) end
	for k,_ in pairs(struct) do
		assert(AddCommunicationToCaseResponse_keys[k], "AddCommunicationToCaseResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddCommunicationToCaseResponse
-- <p>The result of the <a>AddCommunicationToCase</a> operation.</p>
-- @param result [Result] <p>True if <a>AddCommunicationToCase</a> succeeds. Otherwise, returns an error.</p>
function M.AddCommunicationToCaseResponse(result, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddCommunicationToCaseResponse")
	local t = { 
		["result"] = result,
	}
	M.AssertAddCommunicationToCaseResponse(t)
	return t
end

local Category_keys = { "code" = true, "name" = true, nil }

function M.AssertCategory(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Category to be of type 'table'")
	if struct["code"] then M.AssertCategoryCode(struct["code"]) end
	if struct["name"] then M.AssertCategoryName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(Category_keys[k], "Category contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Category
-- <p>A JSON-formatted name/value pair that represents the category name and category code of the problem, selected from the <a>DescribeServices</a> response for each AWS service.</p>
-- @param code [CategoryCode] <p>The category code for the support case.</p>
-- @param name [CategoryName] <p>The category name for the support case.</p>
function M.Category(code, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Category")
	local t = { 
		["code"] = code,
		["name"] = name,
	}
	M.AssertCategory(t)
	return t
end

local ResolveCaseResponse_keys = { "finalCaseStatus" = true, "initialCaseStatus" = true, nil }

function M.AssertResolveCaseResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResolveCaseResponse to be of type 'table'")
	if struct["finalCaseStatus"] then M.AssertCaseStatus(struct["finalCaseStatus"]) end
	if struct["initialCaseStatus"] then M.AssertCaseStatus(struct["initialCaseStatus"]) end
	for k,_ in pairs(struct) do
		assert(ResolveCaseResponse_keys[k], "ResolveCaseResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResolveCaseResponse
-- <p>The status of the case returned by the <a>ResolveCase</a> operation.</p>
-- @param finalCaseStatus [CaseStatus] <p>The status of the case after the <a>ResolveCase</a> request was processed.</p>
-- @param initialCaseStatus [CaseStatus] <p>The status of the case when the <a>ResolveCase</a> request was sent.</p>
function M.ResolveCaseResponse(finalCaseStatus, initialCaseStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResolveCaseResponse")
	local t = { 
		["finalCaseStatus"] = finalCaseStatus,
		["initialCaseStatus"] = initialCaseStatus,
	}
	M.AssertResolveCaseResponse(t)
	return t
end

local DescribeTrustedAdvisorCheckResultResponse_keys = { "result" = true, nil }

function M.AssertDescribeTrustedAdvisorCheckResultResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustedAdvisorCheckResultResponse to be of type 'table'")
	if struct["result"] then M.AssertTrustedAdvisorCheckResult(struct["result"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTrustedAdvisorCheckResultResponse_keys[k], "DescribeTrustedAdvisorCheckResultResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustedAdvisorCheckResultResponse
-- <p>The result of the Trusted Advisor check returned by the <a>DescribeTrustedAdvisorCheckResult</a> operation.</p>
-- @param result [TrustedAdvisorCheckResult] <p>The detailed results of the Trusted Advisor check.</p>
function M.DescribeTrustedAdvisorCheckResultResponse(result, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustedAdvisorCheckResultResponse")
	local t = { 
		["result"] = result,
	}
	M.AssertDescribeTrustedAdvisorCheckResultResponse(t)
	return t
end

local DescribeCasesRequest_keys = { "includeCommunications" = true, "language" = true, "includeResolvedCases" = true, "maxResults" = true, "afterTime" = true, "caseIdList" = true, "displayId" = true, "nextToken" = true, "beforeTime" = true, nil }

function M.AssertDescribeCasesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCasesRequest to be of type 'table'")
	if struct["includeCommunications"] then M.AssertIncludeCommunications(struct["includeCommunications"]) end
	if struct["language"] then M.AssertLanguage(struct["language"]) end
	if struct["includeResolvedCases"] then M.AssertIncludeResolvedCases(struct["includeResolvedCases"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	if struct["afterTime"] then M.AssertAfterTime(struct["afterTime"]) end
	if struct["caseIdList"] then M.AssertCaseIdList(struct["caseIdList"]) end
	if struct["displayId"] then M.AssertDisplayId(struct["displayId"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["beforeTime"] then M.AssertBeforeTime(struct["beforeTime"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCasesRequest_keys[k], "DescribeCasesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCasesRequest
-- <p/>
-- @param includeCommunications [IncludeCommunications] <p>Specifies whether communications should be included in the <a>DescribeCases</a> results. The default is <i>true</i>.</p>
-- @param language [Language] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
-- @param includeResolvedCases [IncludeResolvedCases] <p>Specifies whether resolved support cases should be included in the <a>DescribeCases</a> results. The default is <i>false</i>.</p>
-- @param maxResults [MaxResults] <p>The maximum number of results to return before paginating.</p>
-- @param afterTime [AfterTime] <p>The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.</p>
-- @param caseIdList [CaseIdList] <p>A list of ID numbers of the support cases you want returned. The maximum number of cases is 100.</p>
-- @param displayId [DisplayId] <p>The ID displayed for a case in the AWS Support Center user interface.</p>
-- @param nextToken [NextToken] <p>A resumption point for pagination.</p>
-- @param beforeTime [BeforeTime] <p>The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.</p>
function M.DescribeCasesRequest(includeCommunications, language, includeResolvedCases, maxResults, afterTime, caseIdList, displayId, nextToken, beforeTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCasesRequest")
	local t = { 
		["includeCommunications"] = includeCommunications,
		["language"] = language,
		["includeResolvedCases"] = includeResolvedCases,
		["maxResults"] = maxResults,
		["afterTime"] = afterTime,
		["caseIdList"] = caseIdList,
		["displayId"] = displayId,
		["nextToken"] = nextToken,
		["beforeTime"] = beforeTime,
	}
	M.AssertDescribeCasesRequest(t)
	return t
end

local DescribeTrustedAdvisorChecksResponse_keys = { "checks" = true, nil }

function M.AssertDescribeTrustedAdvisorChecksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustedAdvisorChecksResponse to be of type 'table'")
	assert(struct["checks"], "Expected key checks to exist in table")
	if struct["checks"] then M.AssertTrustedAdvisorCheckList(struct["checks"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTrustedAdvisorChecksResponse_keys[k], "DescribeTrustedAdvisorChecksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustedAdvisorChecksResponse
-- <p>Information about the Trusted Advisor checks returned by the <a>DescribeTrustedAdvisorChecks</a> operation.</p>
-- @param checks [TrustedAdvisorCheckList] <p>Information about all available Trusted Advisor checks.</p>
-- Required parameter: checks
function M.DescribeTrustedAdvisorChecksResponse(checks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustedAdvisorChecksResponse")
	local t = { 
		["checks"] = checks,
	}
	M.AssertDescribeTrustedAdvisorChecksResponse(t)
	return t
end

local Attachment_keys = { "data" = true, "fileName" = true, nil }

function M.AssertAttachment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Attachment to be of type 'table'")
	if struct["data"] then M.AssertData(struct["data"]) end
	if struct["fileName"] then M.AssertFileName(struct["fileName"]) end
	for k,_ in pairs(struct) do
		assert(Attachment_keys[k], "Attachment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Attachment
-- <p>An attachment to a case communication. The attachment consists of the file name and the content of the file.</p>
-- @param data [Data] <p>The content of the attachment file.</p>
-- @param fileName [FileName] <p>The name of the attachment file.</p>
function M.Attachment(data, fileName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Attachment")
	local t = { 
		["data"] = data,
		["fileName"] = fileName,
	}
	M.AssertAttachment(t)
	return t
end

local DescribeTrustedAdvisorCheckRefreshStatusesRequest_keys = { "checkIds" = true, nil }

function M.AssertDescribeTrustedAdvisorCheckRefreshStatusesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustedAdvisorCheckRefreshStatusesRequest to be of type 'table'")
	assert(struct["checkIds"], "Expected key checkIds to exist in table")
	if struct["checkIds"] then M.AssertStringList(struct["checkIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTrustedAdvisorCheckRefreshStatusesRequest_keys[k], "DescribeTrustedAdvisorCheckRefreshStatusesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustedAdvisorCheckRefreshStatusesRequest
-- <p/>
-- @param checkIds [StringList] <p>The IDs of the Trusted Advisor checks to get the status of. <b>Note:</b> Specifying the check ID of a check that is automatically refreshed causes an <code>InvalidParameterValue</code> error.</p>
-- Required parameter: checkIds
function M.DescribeTrustedAdvisorCheckRefreshStatusesRequest(checkIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustedAdvisorCheckRefreshStatusesRequest")
	local t = { 
		["checkIds"] = checkIds,
	}
	M.AssertDescribeTrustedAdvisorCheckRefreshStatusesRequest(t)
	return t
end

local DescribeCommunicationsRequest_keys = { "afterTime" = true, "nextToken" = true, "beforeTime" = true, "caseId" = true, "maxResults" = true, nil }

function M.AssertDescribeCommunicationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCommunicationsRequest to be of type 'table'")
	assert(struct["caseId"], "Expected key caseId to exist in table")
	if struct["afterTime"] then M.AssertAfterTime(struct["afterTime"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["beforeTime"] then M.AssertBeforeTime(struct["beforeTime"]) end
	if struct["caseId"] then M.AssertCaseId(struct["caseId"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCommunicationsRequest_keys[k], "DescribeCommunicationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCommunicationsRequest
-- <p/>
-- @param afterTime [AfterTime] <p>The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.</p>
-- @param nextToken [NextToken] <p>A resumption point for pagination.</p>
-- @param beforeTime [BeforeTime] <p>The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.</p>
-- @param caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
-- @param maxResults [MaxResults] <p>The maximum number of results to return before paginating.</p>
-- Required parameter: caseId
function M.DescribeCommunicationsRequest(afterTime, nextToken, beforeTime, caseId, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCommunicationsRequest")
	local t = { 
		["afterTime"] = afterTime,
		["nextToken"] = nextToken,
		["beforeTime"] = beforeTime,
		["caseId"] = caseId,
		["maxResults"] = maxResults,
	}
	M.AssertDescribeCommunicationsRequest(t)
	return t
end

local AddCommunicationToCaseRequest_keys = { "communicationBody" = true, "caseId" = true, "ccEmailAddresses" = true, "attachmentSetId" = true, nil }

function M.AssertAddCommunicationToCaseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddCommunicationToCaseRequest to be of type 'table'")
	assert(struct["communicationBody"], "Expected key communicationBody to exist in table")
	if struct["communicationBody"] then M.AssertCommunicationBody(struct["communicationBody"]) end
	if struct["caseId"] then M.AssertCaseId(struct["caseId"]) end
	if struct["ccEmailAddresses"] then M.AssertCcEmailAddressList(struct["ccEmailAddresses"]) end
	if struct["attachmentSetId"] then M.AssertAttachmentSetId(struct["attachmentSetId"]) end
	for k,_ in pairs(struct) do
		assert(AddCommunicationToCaseRequest_keys[k], "AddCommunicationToCaseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddCommunicationToCaseRequest
-- <p>To be written.</p>
-- @param communicationBody [CommunicationBody] <p>The body of an email communication to add to the support case.</p>
-- @param caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
-- @param ccEmailAddresses [CcEmailAddressList] <p>The email addresses in the CC line of an email to be added to the support case.</p>
-- @param attachmentSetId [AttachmentSetId] <p>The ID of a set of one or more attachments for the communication to add to the case. Create the set by calling <a>AddAttachmentsToSet</a> </p>
-- Required parameter: communicationBody
function M.AddCommunicationToCaseRequest(communicationBody, caseId, ccEmailAddresses, attachmentSetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddCommunicationToCaseRequest")
	local t = { 
		["communicationBody"] = communicationBody,
		["caseId"] = caseId,
		["ccEmailAddresses"] = ccEmailAddresses,
		["attachmentSetId"] = attachmentSetId,
	}
	M.AssertAddCommunicationToCaseRequest(t)
	return t
end

local AddAttachmentsToSetResponse_keys = { "expiryTime" = true, "attachmentSetId" = true, nil }

function M.AssertAddAttachmentsToSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddAttachmentsToSetResponse to be of type 'table'")
	if struct["expiryTime"] then M.AssertExpiryTime(struct["expiryTime"]) end
	if struct["attachmentSetId"] then M.AssertAttachmentSetId(struct["attachmentSetId"]) end
	for k,_ in pairs(struct) do
		assert(AddAttachmentsToSetResponse_keys[k], "AddAttachmentsToSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddAttachmentsToSetResponse
-- <p>The ID and expiry time of the attachment set returned by the <a>AddAttachmentsToSet</a> operation.</p>
-- @param expiryTime [ExpiryTime] <p>The time and date when the attachment set expires.</p>
-- @param attachmentSetId [AttachmentSetId] <p>The ID of the attachment set. If an <code>attachmentSetId</code> was not specified, a new attachment set is created, and the ID of the set is returned in the response. If an <code>attachmentSetId</code> was specified, the attachments are added to the specified set, if it exists.</p>
function M.AddAttachmentsToSetResponse(expiryTime, attachmentSetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddAttachmentsToSetResponse")
	local t = { 
		["expiryTime"] = expiryTime,
		["attachmentSetId"] = attachmentSetId,
	}
	M.AssertAddAttachmentsToSetResponse(t)
	return t
end

local TrustedAdvisorResourcesSummary_keys = { "resourcesFlagged" = true, "resourcesProcessed" = true, "resourcesSuppressed" = true, "resourcesIgnored" = true, nil }

function M.AssertTrustedAdvisorResourcesSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedAdvisorResourcesSummary to be of type 'table'")
	assert(struct["resourcesProcessed"], "Expected key resourcesProcessed to exist in table")
	assert(struct["resourcesFlagged"], "Expected key resourcesFlagged to exist in table")
	assert(struct["resourcesIgnored"], "Expected key resourcesIgnored to exist in table")
	assert(struct["resourcesSuppressed"], "Expected key resourcesSuppressed to exist in table")
	if struct["resourcesFlagged"] then M.AssertLong(struct["resourcesFlagged"]) end
	if struct["resourcesProcessed"] then M.AssertLong(struct["resourcesProcessed"]) end
	if struct["resourcesSuppressed"] then M.AssertLong(struct["resourcesSuppressed"]) end
	if struct["resourcesIgnored"] then M.AssertLong(struct["resourcesIgnored"]) end
	for k,_ in pairs(struct) do
		assert(TrustedAdvisorResourcesSummary_keys[k], "TrustedAdvisorResourcesSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedAdvisorResourcesSummary
-- <p>Details about AWS resources that were analyzed in a call to Trusted Advisor <a>DescribeTrustedAdvisorCheckSummaries</a>. </p>
-- @param resourcesFlagged [Long] <p>The number of AWS resources that were flagged (listed) by the Trusted Advisor check.</p>
-- @param resourcesProcessed [Long] <p>The number of AWS resources that were analyzed by the Trusted Advisor check.</p>
-- @param resourcesSuppressed [Long] <p>The number of AWS resources ignored by Trusted Advisor because they were marked as suppressed by the user.</p>
-- @param resourcesIgnored [Long] <p>The number of AWS resources ignored by Trusted Advisor because information was unavailable.</p>
-- Required parameter: resourcesProcessed
-- Required parameter: resourcesFlagged
-- Required parameter: resourcesIgnored
-- Required parameter: resourcesSuppressed
function M.TrustedAdvisorResourcesSummary(resourcesFlagged, resourcesProcessed, resourcesSuppressed, resourcesIgnored, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedAdvisorResourcesSummary")
	local t = { 
		["resourcesFlagged"] = resourcesFlagged,
		["resourcesProcessed"] = resourcesProcessed,
		["resourcesSuppressed"] = resourcesSuppressed,
		["resourcesIgnored"] = resourcesIgnored,
	}
	M.AssertTrustedAdvisorResourcesSummary(t)
	return t
end

local ResolveCaseRequest_keys = { "caseId" = true, nil }

function M.AssertResolveCaseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResolveCaseRequest to be of type 'table'")
	if struct["caseId"] then M.AssertCaseId(struct["caseId"]) end
	for k,_ in pairs(struct) do
		assert(ResolveCaseRequest_keys[k], "ResolveCaseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResolveCaseRequest
-- <p/>
-- @param caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
function M.ResolveCaseRequest(caseId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResolveCaseRequest")
	local t = { 
		["caseId"] = caseId,
	}
	M.AssertResolveCaseRequest(t)
	return t
end

local TrustedAdvisorCostOptimizingSummary_keys = { "estimatedMonthlySavings" = true, "estimatedPercentMonthlySavings" = true, nil }

function M.AssertTrustedAdvisorCostOptimizingSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedAdvisorCostOptimizingSummary to be of type 'table'")
	assert(struct["estimatedMonthlySavings"], "Expected key estimatedMonthlySavings to exist in table")
	assert(struct["estimatedPercentMonthlySavings"], "Expected key estimatedPercentMonthlySavings to exist in table")
	if struct["estimatedMonthlySavings"] then M.AssertDouble(struct["estimatedMonthlySavings"]) end
	if struct["estimatedPercentMonthlySavings"] then M.AssertDouble(struct["estimatedPercentMonthlySavings"]) end
	for k,_ in pairs(struct) do
		assert(TrustedAdvisorCostOptimizingSummary_keys[k], "TrustedAdvisorCostOptimizingSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedAdvisorCostOptimizingSummary
-- <p>The estimated cost savings that might be realized if the recommended actions are taken.</p>
-- @param estimatedMonthlySavings [Double] <p>The estimated monthly savings that might be realized if the recommended actions are taken.</p>
-- @param estimatedPercentMonthlySavings [Double] <p>The estimated percentage of savings that might be realized if the recommended actions are taken.</p>
-- Required parameter: estimatedMonthlySavings
-- Required parameter: estimatedPercentMonthlySavings
function M.TrustedAdvisorCostOptimizingSummary(estimatedMonthlySavings, estimatedPercentMonthlySavings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedAdvisorCostOptimizingSummary")
	local t = { 
		["estimatedMonthlySavings"] = estimatedMonthlySavings,
		["estimatedPercentMonthlySavings"] = estimatedPercentMonthlySavings,
	}
	M.AssertTrustedAdvisorCostOptimizingSummary(t)
	return t
end

local DescribeSeverityLevelsResponse_keys = { "severityLevels" = true, nil }

function M.AssertDescribeSeverityLevelsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSeverityLevelsResponse to be of type 'table'")
	if struct["severityLevels"] then M.AssertSeverityLevelsList(struct["severityLevels"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSeverityLevelsResponse_keys[k], "DescribeSeverityLevelsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSeverityLevelsResponse
-- <p>The list of severity levels returned by the <a>DescribeSeverityLevels</a> operation.</p>
-- @param severityLevels [SeverityLevelsList] <p>The available severity levels for the support case. Available severity levels are defined by your service level agreement with AWS.</p>
function M.DescribeSeverityLevelsResponse(severityLevels, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSeverityLevelsResponse")
	local t = { 
		["severityLevels"] = severityLevels,
	}
	M.AssertDescribeSeverityLevelsResponse(t)
	return t
end

local DescribeSeverityLevelsRequest_keys = { "language" = true, nil }

function M.AssertDescribeSeverityLevelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSeverityLevelsRequest to be of type 'table'")
	if struct["language"] then M.AssertLanguage(struct["language"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSeverityLevelsRequest_keys[k], "DescribeSeverityLevelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSeverityLevelsRequest
-- <p/>
-- @param language [Language] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
function M.DescribeSeverityLevelsRequest(language, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSeverityLevelsRequest")
	local t = { 
		["language"] = language,
	}
	M.AssertDescribeSeverityLevelsRequest(t)
	return t
end

local TrustedAdvisorCategorySpecificSummary_keys = { "costOptimizing" = true, nil }

function M.AssertTrustedAdvisorCategorySpecificSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedAdvisorCategorySpecificSummary to be of type 'table'")
	if struct["costOptimizing"] then M.AssertTrustedAdvisorCostOptimizingSummary(struct["costOptimizing"]) end
	for k,_ in pairs(struct) do
		assert(TrustedAdvisorCategorySpecificSummary_keys[k], "TrustedAdvisorCategorySpecificSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedAdvisorCategorySpecificSummary
-- <p>The container for summary information that relates to the category of the Trusted Advisor check.</p>
-- @param costOptimizing [TrustedAdvisorCostOptimizingSummary] <p>The summary information about cost savings for a Trusted Advisor check that is in the Cost Optimizing category.</p>
function M.TrustedAdvisorCategorySpecificSummary(costOptimizing, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedAdvisorCategorySpecificSummary")
	local t = { 
		["costOptimizing"] = costOptimizing,
	}
	M.AssertTrustedAdvisorCategorySpecificSummary(t)
	return t
end

local AddAttachmentsToSetRequest_keys = { "attachmentSetId" = true, "attachments" = true, nil }

function M.AssertAddAttachmentsToSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddAttachmentsToSetRequest to be of type 'table'")
	assert(struct["attachments"], "Expected key attachments to exist in table")
	if struct["attachmentSetId"] then M.AssertAttachmentSetId(struct["attachmentSetId"]) end
	if struct["attachments"] then M.AssertAttachments(struct["attachments"]) end
	for k,_ in pairs(struct) do
		assert(AddAttachmentsToSetRequest_keys[k], "AddAttachmentsToSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddAttachmentsToSetRequest
-- <p/>
-- @param attachmentSetId [AttachmentSetId] <p>The ID of the attachment set. If an <code>attachmentSetId</code> is not specified, a new attachment set is created, and the ID of the set is returned in the response. If an <code>attachmentSetId</code> is specified, the attachments are added to the specified set, if it exists.</p>
-- @param attachments [Attachments] <p>One or more attachments to add to the set. The limit is 3 attachments per set, and the size limit is 5 MB per attachment.</p>
-- Required parameter: attachments
function M.AddAttachmentsToSetRequest(attachmentSetId, attachments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddAttachmentsToSetRequest")
	local t = { 
		["attachmentSetId"] = attachmentSetId,
		["attachments"] = attachments,
	}
	M.AssertAddAttachmentsToSetRequest(t)
	return t
end

local DescribeAttachmentLimitExceeded_keys = { "message" = true, nil }

function M.AssertDescribeAttachmentLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAttachmentLimitExceeded to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAttachmentLimitExceeded_keys[k], "DescribeAttachmentLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAttachmentLimitExceeded
-- <p>The limit for the number of <a>DescribeAttachment</a> requests in a short period of time has been exceeded.</p>
-- @param message [ErrorMessage] <p>The limit for the number of <a>DescribeAttachment</a> requests in a short period of time has been exceeded.</p>
function M.DescribeAttachmentLimitExceeded(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAttachmentLimitExceeded")
	local t = { 
		["message"] = message,
	}
	M.AssertDescribeAttachmentLimitExceeded(t)
	return t
end

local AttachmentDetails_keys = { "attachmentId" = true, "fileName" = true, nil }

function M.AssertAttachmentDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachmentDetails to be of type 'table'")
	if struct["attachmentId"] then M.AssertAttachmentId(struct["attachmentId"]) end
	if struct["fileName"] then M.AssertFileName(struct["fileName"]) end
	for k,_ in pairs(struct) do
		assert(AttachmentDetails_keys[k], "AttachmentDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachmentDetails
-- <p>The file name and ID of an attachment to a case communication. You can use the ID to retrieve the attachment with the <a>DescribeAttachment</a> operation.</p>
-- @param attachmentId [AttachmentId] <p>The ID of the attachment.</p>
-- @param fileName [FileName] <p>The file name of the attachment.</p>
function M.AttachmentDetails(attachmentId, fileName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachmentDetails")
	local t = { 
		["attachmentId"] = attachmentId,
		["fileName"] = fileName,
	}
	M.AssertAttachmentDetails(t)
	return t
end

local DescribeServicesResponse_keys = { "services" = true, nil }

function M.AssertDescribeServicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServicesResponse to be of type 'table'")
	if struct["services"] then M.AssertServiceList(struct["services"]) end
	for k,_ in pairs(struct) do
		assert(DescribeServicesResponse_keys[k], "DescribeServicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServicesResponse
-- <p>The list of AWS services returned by the <a>DescribeServices</a> operation.</p>
-- @param services [ServiceList] <p>A JSON-formatted list of AWS services.</p>
function M.DescribeServicesResponse(services, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServicesResponse")
	local t = { 
		["services"] = services,
	}
	M.AssertDescribeServicesResponse(t)
	return t
end

local DescribeTrustedAdvisorCheckSummariesResponse_keys = { "summaries" = true, nil }

function M.AssertDescribeTrustedAdvisorCheckSummariesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustedAdvisorCheckSummariesResponse to be of type 'table'")
	assert(struct["summaries"], "Expected key summaries to exist in table")
	if struct["summaries"] then M.AssertTrustedAdvisorCheckSummaryList(struct["summaries"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTrustedAdvisorCheckSummariesResponse_keys[k], "DescribeTrustedAdvisorCheckSummariesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustedAdvisorCheckSummariesResponse
-- <p>The summaries of the Trusted Advisor checks returned by the <a>DescribeTrustedAdvisorCheckSummaries</a> operation.</p>
-- @param summaries [TrustedAdvisorCheckSummaryList] <p>The summary information for the requested Trusted Advisor checks.</p>
-- Required parameter: summaries
function M.DescribeTrustedAdvisorCheckSummariesResponse(summaries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustedAdvisorCheckSummariesResponse")
	local t = { 
		["summaries"] = summaries,
	}
	M.AssertDescribeTrustedAdvisorCheckSummariesResponse(t)
	return t
end

local SeverityLevel_keys = { "code" = true, "name" = true, nil }

function M.AssertSeverityLevel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SeverityLevel to be of type 'table'")
	if struct["code"] then M.AssertSeverityLevelCode(struct["code"]) end
	if struct["name"] then M.AssertSeverityLevelName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(SeverityLevel_keys[k], "SeverityLevel contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SeverityLevel
-- <p>A code and name pair that represent a severity level that can be applied to a support case.</p>
-- @param code [SeverityLevelCode] <p>One of four values: "low," "medium," "high," and "urgent". These values correspond to response times returned to the caller in <code>severityLevel.name</code>. </p>
-- @param name [SeverityLevelName] <p>The name of the severity level that corresponds to the severity level code.</p>
function M.SeverityLevel(code, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SeverityLevel")
	local t = { 
		["code"] = code,
		["name"] = name,
	}
	M.AssertSeverityLevel(t)
	return t
end

local AttachmentLimitExceeded_keys = { "message" = true, nil }

function M.AssertAttachmentLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachmentLimitExceeded to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(AttachmentLimitExceeded_keys[k], "AttachmentLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachmentLimitExceeded
-- <p>The limit for the number of attachment sets created in a short period of time has been exceeded.</p>
-- @param message [ErrorMessage] <p>The limit for the number of attachment sets created in a short period of time has been exceeded.</p>
function M.AttachmentLimitExceeded(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachmentLimitExceeded")
	local t = { 
		["message"] = message,
	}
	M.AssertAttachmentLimitExceeded(t)
	return t
end

local CaseDetails_keys = { "status" = true, "recentCommunications" = true, "ccEmailAddresses" = true, "timeCreated" = true, "caseId" = true, "severityCode" = true, "language" = true, "categoryCode" = true, "serviceCode" = true, "submittedBy" = true, "displayId" = true, "subject" = true, nil }

function M.AssertCaseDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaseDetails to be of type 'table'")
	if struct["status"] then M.AssertStatus(struct["status"]) end
	if struct["recentCommunications"] then M.AssertRecentCaseCommunications(struct["recentCommunications"]) end
	if struct["ccEmailAddresses"] then M.AssertCcEmailAddressList(struct["ccEmailAddresses"]) end
	if struct["timeCreated"] then M.AssertTimeCreated(struct["timeCreated"]) end
	if struct["caseId"] then M.AssertCaseId(struct["caseId"]) end
	if struct["severityCode"] then M.AssertSeverityCode(struct["severityCode"]) end
	if struct["language"] then M.AssertLanguage(struct["language"]) end
	if struct["categoryCode"] then M.AssertCategoryCode(struct["categoryCode"]) end
	if struct["serviceCode"] then M.AssertServiceCode(struct["serviceCode"]) end
	if struct["submittedBy"] then M.AssertSubmittedBy(struct["submittedBy"]) end
	if struct["displayId"] then M.AssertDisplayId(struct["displayId"]) end
	if struct["subject"] then M.AssertSubject(struct["subject"]) end
	for k,_ in pairs(struct) do
		assert(CaseDetails_keys[k], "CaseDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaseDetails
-- <p>A JSON-formatted object that contains the metadata for a support case. It is contained the response from a <a>DescribeCases</a> request. <b>CaseDetails</b> contains the following fields:</p> <ul> <li> <p> <b>caseId.</b> The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>.</p> </li> <li> <p> <b>categoryCode.</b> The category of problem for the AWS Support case. Corresponds to the CategoryCode values returned by a call to <a>DescribeServices</a>.</p> </li> <li> <p> <b>displayId.</b> The identifier for the case on pages in the AWS Support Center.</p> </li> <li> <p> <b>language.</b> The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p> </li> <li> <p> <b>recentCommunications.</b> One or more <a>Communication</a> objects. Fields of these objects are <code>attachments</code>, <code>body</code>, <code>caseId</code>, <code>submittedBy</code>, and <code>timeCreated</code>.</p> </li> <li> <p> <b>nextToken.</b> A resumption point for pagination.</p> </li> <li> <p> <b>serviceCode.</b> The identifier for the AWS service that corresponds to the service code defined in the call to <a>DescribeServices</a>.</p> </li> <li> <p> <b>severityCode. </b>The severity code assigned to the case. Contains one of the values returned by the call to <a>DescribeSeverityLevels</a>.</p> </li> <li> <p> <b>status.</b> The status of the case in the AWS Support Center.</p> </li> <li> <p> <b>subject.</b> The subject line of the case.</p> </li> <li> <p> <b>submittedBy.</b> The email address of the account that submitted the case.</p> </li> <li> <p> <b>timeCreated.</b> The time the case was created, in ISO-8601 format.</p> </li> </ul>
-- @param status [Status] <p>The status of the case.</p>
-- @param recentCommunications [RecentCaseCommunications] <p>The five most recent communications between you and AWS Support Center, including the IDs of any attachments to the communications. Also includes a <code>nextToken</code> that you can use to retrieve earlier communications.</p>
-- @param ccEmailAddresses [CcEmailAddressList] <p>The email addresses that receive copies of communication about the case.</p>
-- @param timeCreated [TimeCreated] <p>The time that the case was case created in the AWS Support Center.</p>
-- @param caseId [CaseId] <p>The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i> </p>
-- @param severityCode [SeverityCode] <p>The code for the severity level returned by the call to <a>DescribeSeverityLevels</a>.</p>
-- @param language [Language] <p>The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p>
-- @param categoryCode [CategoryCode] <p>The category of problem for the AWS Support case.</p>
-- @param serviceCode [ServiceCode] <p>The code for the AWS service returned by the call to <a>DescribeServices</a>.</p>
-- @param submittedBy [SubmittedBy] <p>The email address of the account that submitted the case.</p>
-- @param displayId [DisplayId] <p>The ID displayed for the case in the AWS Support Center. This is a numeric string.</p>
-- @param subject [Subject] <p>The subject line for the case in the AWS Support Center.</p>
function M.CaseDetails(status, recentCommunications, ccEmailAddresses, timeCreated, caseId, severityCode, language, categoryCode, serviceCode, submittedBy, displayId, subject, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CaseDetails")
	local t = { 
		["status"] = status,
		["recentCommunications"] = recentCommunications,
		["ccEmailAddresses"] = ccEmailAddresses,
		["timeCreated"] = timeCreated,
		["caseId"] = caseId,
		["severityCode"] = severityCode,
		["language"] = language,
		["categoryCode"] = categoryCode,
		["serviceCode"] = serviceCode,
		["submittedBy"] = submittedBy,
		["displayId"] = displayId,
		["subject"] = subject,
	}
	M.AssertCaseDetails(t)
	return t
end

local DescribeCasesResponse_keys = { "cases" = true, "nextToken" = true, nil }

function M.AssertDescribeCasesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCasesResponse to be of type 'table'")
	if struct["cases"] then M.AssertCaseList(struct["cases"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCasesResponse_keys[k], "DescribeCasesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCasesResponse
-- <p>Returns an array of <a>CaseDetails</a> objects and a <code>nextToken</code> that defines a point for pagination in the result set.</p>
-- @param cases [CaseList] <p>The details for the cases that match the request.</p>
-- @param nextToken [NextToken] <p>A resumption point for pagination.</p>
function M.DescribeCasesResponse(cases, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCasesResponse")
	local t = { 
		["cases"] = cases,
		["nextToken"] = nextToken,
	}
	M.AssertDescribeCasesResponse(t)
	return t
end

local DescribeTrustedAdvisorCheckSummariesRequest_keys = { "checkIds" = true, nil }

function M.AssertDescribeTrustedAdvisorCheckSummariesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrustedAdvisorCheckSummariesRequest to be of type 'table'")
	assert(struct["checkIds"], "Expected key checkIds to exist in table")
	if struct["checkIds"] then M.AssertStringList(struct["checkIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTrustedAdvisorCheckSummariesRequest_keys[k], "DescribeTrustedAdvisorCheckSummariesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrustedAdvisorCheckSummariesRequest
-- <p/>
-- @param checkIds [StringList] <p>The IDs of the Trusted Advisor checks.</p>
-- Required parameter: checkIds
function M.DescribeTrustedAdvisorCheckSummariesRequest(checkIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrustedAdvisorCheckSummariesRequest")
	local t = { 
		["checkIds"] = checkIds,
	}
	M.AssertDescribeTrustedAdvisorCheckSummariesRequest(t)
	return t
end

function M.AssertServiceCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceCode to be of type 'string'")
end

--  
function M.ServiceCode(str)
	M.AssertServiceCode(str)
	return str
end

function M.AssertBeforeTime(str)
	assert(str)
	assert(type(str) == "string", "Expected BeforeTime to be of type 'string'")
end

--  
function M.BeforeTime(str)
	M.AssertBeforeTime(str)
	return str
end

function M.AssertCaseStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CaseStatus to be of type 'string'")
end

--  
function M.CaseStatus(str)
	M.AssertCaseStatus(str)
	return str
end

function M.AssertAfterTime(str)
	assert(str)
	assert(type(str) == "string", "Expected AfterTime to be of type 'string'")
end

--  
function M.AfterTime(str)
	M.AssertAfterTime(str)
	return str
end

function M.AssertCcEmailAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected CcEmailAddress to be of type 'string'")
end

--  
function M.CcEmailAddress(str)
	M.AssertCcEmailAddress(str)
	return str
end

function M.AssertFileName(str)
	assert(str)
	assert(type(str) == "string", "Expected FileName to be of type 'string'")
end

--  
function M.FileName(str)
	M.AssertFileName(str)
	return str
end

function M.AssertSubject(str)
	assert(str)
	assert(type(str) == "string", "Expected Subject to be of type 'string'")
end

--  
function M.Subject(str)
	M.AssertSubject(str)
	return str
end

function M.AssertSeverityLevelCode(str)
	assert(str)
	assert(type(str) == "string", "Expected SeverityLevelCode to be of type 'string'")
end

--  
function M.SeverityLevelCode(str)
	M.AssertSeverityLevelCode(str)
	return str
end

function M.AssertAttachmentId(str)
	assert(str)
	assert(type(str) == "string", "Expected AttachmentId to be of type 'string'")
end

--  
function M.AttachmentId(str)
	M.AssertAttachmentId(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.AssertServiceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceName to be of type 'string'")
end

--  
function M.ServiceName(str)
	M.AssertServiceName(str)
	return str
end

function M.AssertTimeCreated(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeCreated to be of type 'string'")
end

--  
function M.TimeCreated(str)
	M.AssertTimeCreated(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertSeverityLevelName(str)
	assert(str)
	assert(type(str) == "string", "Expected SeverityLevelName to be of type 'string'")
end

--  
function M.SeverityLevelName(str)
	M.AssertSeverityLevelName(str)
	return str
end

function M.AssertAttachmentSetId(str)
	assert(str)
	assert(type(str) == "string", "Expected AttachmentSetId to be of type 'string'")
end

--  
function M.AttachmentSetId(str)
	M.AssertAttachmentSetId(str)
	return str
end

function M.AssertStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected Status to be of type 'string'")
end

--  
function M.Status(str)
	M.AssertStatus(str)
	return str
end

function M.AssertCaseId(str)
	assert(str)
	assert(type(str) == "string", "Expected CaseId to be of type 'string'")
end

--  
function M.CaseId(str)
	M.AssertCaseId(str)
	return str
end

function M.AssertSeverityCode(str)
	assert(str)
	assert(type(str) == "string", "Expected SeverityCode to be of type 'string'")
end

--  
function M.SeverityCode(str)
	M.AssertSeverityCode(str)
	return str
end

function M.AssertSubmittedBy(str)
	assert(str)
	assert(type(str) == "string", "Expected SubmittedBy to be of type 'string'")
end

--  
function M.SubmittedBy(str)
	M.AssertSubmittedBy(str)
	return str
end

function M.AssertLanguage(str)
	assert(str)
	assert(type(str) == "string", "Expected Language to be of type 'string'")
end

--  
function M.Language(str)
	M.AssertLanguage(str)
	return str
end

function M.AssertCommunicationBody(str)
	assert(str)
	assert(type(str) == "string", "Expected CommunicationBody to be of type 'string'")
	assert(#str <= 8000, "Expected string to be max 8000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CommunicationBody(str)
	M.AssertCommunicationBody(str)
	return str
end

function M.AssertCategoryName(str)
	assert(str)
	assert(type(str) == "string", "Expected CategoryName to be of type 'string'")
end

--  
function M.CategoryName(str)
	M.AssertCategoryName(str)
	return str
end

function M.AssertCategoryCode(str)
	assert(str)
	assert(type(str) == "string", "Expected CategoryCode to be of type 'string'")
end

--  
function M.CategoryCode(str)
	M.AssertCategoryCode(str)
	return str
end

function M.AssertDisplayId(str)
	assert(str)
	assert(type(str) == "string", "Expected DisplayId to be of type 'string'")
end

--  
function M.DisplayId(str)
	M.AssertDisplayId(str)
	return str
end

function M.AssertIssueType(str)
	assert(str)
	assert(type(str) == "string", "Expected IssueType to be of type 'string'")
end

--  
function M.IssueType(str)
	M.AssertIssueType(str)
	return str
end

function M.AssertExpiryTime(str)
	assert(str)
	assert(type(str) == "string", "Expected ExpiryTime to be of type 'string'")
end

--  
function M.ExpiryTime(str)
	M.AssertExpiryTime(str)
	return str
end

function M.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	M.AssertDouble(double)
	return double
end

function M.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	M.AssertLong(long)
	return long
end

function M.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 10, "Expected integer to be min 10")
end

function M.MaxResults(integer)
	M.AssertMaxResults(integer)
	return integer
end

function M.AssertIncludeCommunications(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IncludeCommunications to be of type 'boolean'")
end

function M.IncludeCommunications(boolean)
	M.AssertIncludeCommunications(boolean)
	return boolean
end

function M.AssertResult(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Result to be of type 'boolean'")
end

function M.Result(boolean)
	M.AssertResult(boolean)
	return boolean
end

function M.AssertIncludeResolvedCases(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IncludeResolvedCases to be of type 'boolean'")
end

function M.IncludeResolvedCases(boolean)
	M.AssertIncludeResolvedCases(boolean)
	return boolean
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertData(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Data to be of type 'string'")
end

function M.Data(blob)
	M.AssertData(blob)
	return blob
end

function M.AssertCaseList(list)
	assert(list)
	assert(type(list) == "table", "Expected CaseList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCaseDetails(v)
	end
end

--  
-- List of CaseDetails objects
function M.CaseList(list)
	M.AssertCaseList(list)
	return list
end

function M.AssertAttachments(list)
	assert(list)
	assert(type(list) == "table", "Expected Attachments to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttachment(v)
	end
end

--  
-- List of Attachment objects
function M.Attachments(list)
	M.AssertAttachments(list)
	return list
end

function M.AssertServiceCodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceCodeList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		M.AssertServiceCode(v)
	end
end

--  
-- List of ServiceCode objects
function M.ServiceCodeList(list)
	M.AssertServiceCodeList(list)
	return list
end

function M.AssertCaseIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected CaseIdList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		M.AssertCaseId(v)
	end
end

--  
-- List of CaseId objects
function M.CaseIdList(list)
	M.AssertCaseIdList(list)
	return list
end

function M.AssertTrustedAdvisorCheckRefreshStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected TrustedAdvisorCheckRefreshStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTrustedAdvisorCheckRefreshStatus(v)
	end
end

--  
-- List of TrustedAdvisorCheckRefreshStatus objects
function M.TrustedAdvisorCheckRefreshStatusList(list)
	M.AssertTrustedAdvisorCheckRefreshStatusList(list)
	return list
end

function M.AssertCategoryList(list)
	assert(list)
	assert(type(list) == "table", "Expected CategoryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCategory(v)
	end
end

--  
-- List of Category objects
function M.CategoryList(list)
	M.AssertCategoryList(list)
	return list
end

function M.AssertCcEmailAddressList(list)
	assert(list)
	assert(type(list) == "table", "Expected CcEmailAddressList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertCcEmailAddress(v)
	end
end

--  
-- List of CcEmailAddress objects
function M.CcEmailAddressList(list)
	M.AssertCcEmailAddressList(list)
	return list
end

function M.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	M.AssertStringList(list)
	return list
end

function M.AssertAttachmentSet(list)
	assert(list)
	assert(type(list) == "table", "Expected AttachmentSet to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttachmentDetails(v)
	end
end

--  
-- List of AttachmentDetails objects
function M.AttachmentSet(list)
	M.AssertAttachmentSet(list)
	return list
end

function M.AssertTrustedAdvisorCheckList(list)
	assert(list)
	assert(type(list) == "table", "Expected TrustedAdvisorCheckList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTrustedAdvisorCheckDescription(v)
	end
end

--  
-- List of TrustedAdvisorCheckDescription objects
function M.TrustedAdvisorCheckList(list)
	M.AssertTrustedAdvisorCheckList(list)
	return list
end

function M.AssertSeverityLevelsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SeverityLevelsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSeverityLevel(v)
	end
end

--  
-- List of SeverityLevel objects
function M.SeverityLevelsList(list)
	M.AssertSeverityLevelsList(list)
	return list
end

function M.AssertTrustedAdvisorResourceDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected TrustedAdvisorResourceDetailList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTrustedAdvisorResourceDetail(v)
	end
end

--  
-- List of TrustedAdvisorResourceDetail objects
function M.TrustedAdvisorResourceDetailList(list)
	M.AssertTrustedAdvisorResourceDetailList(list)
	return list
end

function M.AssertTrustedAdvisorCheckSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected TrustedAdvisorCheckSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTrustedAdvisorCheckSummary(v)
	end
end

--  
-- List of TrustedAdvisorCheckSummary objects
function M.TrustedAdvisorCheckSummaryList(list)
	M.AssertTrustedAdvisorCheckSummaryList(list)
	return list
end

function M.AssertServiceList(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertService(v)
	end
end

--  
-- List of Service objects
function M.ServiceList(list)
	M.AssertServiceList(list)
	return list
end

function M.AssertCommunicationList(list)
	assert(list)
	assert(type(list) == "table", "Expected CommunicationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCommunication(v)
	end
end

--  
-- List of Communication objects
function M.CommunicationList(list)
	M.AssertCommunicationList(list)
	return list
end


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "support.amazonaws.com"
		end
	end
	local ss = { "support" }
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- CreateCase
-- @param CreateCaseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCaseAsync(CreateCaseRequest, cb)
	assert(CreateCaseRequest, "You must provide a CreateCaseRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.CreateCase",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateCaseRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddAttachmentsToSet
-- @param AddAttachmentsToSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddAttachmentsToSetAsync(AddAttachmentsToSetRequest, cb)
	assert(AddAttachmentsToSetRequest, "You must provide a AddAttachmentsToSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.AddAttachmentsToSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddAttachmentsToSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddCommunicationToCase
-- @param AddCommunicationToCaseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddCommunicationToCaseAsync(AddCommunicationToCaseRequest, cb)
	assert(AddCommunicationToCaseRequest, "You must provide a AddCommunicationToCaseRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.AddCommunicationToCase",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddCommunicationToCaseRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTrustedAdvisorCheckRefreshStatuses
-- @param DescribeTrustedAdvisorCheckRefreshStatusesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTrustedAdvisorCheckRefreshStatusesAsync(DescribeTrustedAdvisorCheckRefreshStatusesRequest, cb)
	assert(DescribeTrustedAdvisorCheckRefreshStatusesRequest, "You must provide a DescribeTrustedAdvisorCheckRefreshStatusesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeTrustedAdvisorCheckRefreshStatuses",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTrustedAdvisorCheckRefreshStatusesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTrustedAdvisorCheckResult
-- @param DescribeTrustedAdvisorCheckResultRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTrustedAdvisorCheckResultAsync(DescribeTrustedAdvisorCheckResultRequest, cb)
	assert(DescribeTrustedAdvisorCheckResultRequest, "You must provide a DescribeTrustedAdvisorCheckResultRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeTrustedAdvisorCheckResult",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTrustedAdvisorCheckResultRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ResolveCase
-- @param ResolveCaseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ResolveCaseAsync(ResolveCaseRequest, cb)
	assert(ResolveCaseRequest, "You must provide a ResolveCaseRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.ResolveCase",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ResolveCaseRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeSeverityLevels
-- @param DescribeSeverityLevelsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSeverityLevelsAsync(DescribeSeverityLevelsRequest, cb)
	assert(DescribeSeverityLevelsRequest, "You must provide a DescribeSeverityLevelsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeSeverityLevels",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeSeverityLevelsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCases
-- @param DescribeCasesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCasesAsync(DescribeCasesRequest, cb)
	assert(DescribeCasesRequest, "You must provide a DescribeCasesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeCases",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCasesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RefreshTrustedAdvisorCheck
-- @param RefreshTrustedAdvisorCheckRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RefreshTrustedAdvisorCheckAsync(RefreshTrustedAdvisorCheckRequest, cb)
	assert(RefreshTrustedAdvisorCheckRequest, "You must provide a RefreshTrustedAdvisorCheckRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.RefreshTrustedAdvisorCheck",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RefreshTrustedAdvisorCheckRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAttachment
-- @param DescribeAttachmentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAttachmentAsync(DescribeAttachmentRequest, cb)
	assert(DescribeAttachmentRequest, "You must provide a DescribeAttachmentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeAttachment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAttachmentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTrustedAdvisorChecks
-- @param DescribeTrustedAdvisorChecksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTrustedAdvisorChecksAsync(DescribeTrustedAdvisorChecksRequest, cb)
	assert(DescribeTrustedAdvisorChecksRequest, "You must provide a DescribeTrustedAdvisorChecksRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeTrustedAdvisorChecks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTrustedAdvisorChecksRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTrustedAdvisorCheckSummaries
-- @param DescribeTrustedAdvisorCheckSummariesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTrustedAdvisorCheckSummariesAsync(DescribeTrustedAdvisorCheckSummariesRequest, cb)
	assert(DescribeTrustedAdvisorCheckSummariesRequest, "You must provide a DescribeTrustedAdvisorCheckSummariesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeTrustedAdvisorCheckSummaries",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTrustedAdvisorCheckSummariesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCommunications
-- @param DescribeCommunicationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCommunicationsAsync(DescribeCommunicationsRequest, cb)
	assert(DescribeCommunicationsRequest, "You must provide a DescribeCommunicationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeCommunications",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCommunicationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeServices
-- @param DescribeServicesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeServicesAsync(DescribeServicesRequest, cb)
	assert(DescribeServicesRequest, "You must provide a DescribeServicesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSSupport_20130415.DescribeServices",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeServicesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M