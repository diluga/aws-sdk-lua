--- GENERATED CODE - DO NOT MODIFY
-- AWS Organizations (organizations-2016-11-28)

local M = {}

M.metadata = {
	api_version = "2016-11-28",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "organizations",
	service_abbreviation = "Organizations",
	service_full_name = "AWS Organizations",
	signature_version = "v4",
	target_prefix = "AWSOrganizationsV20161128",
	timestamp_format = "unixTimestamp",
	global_endpoint = "",
	uid = "organizations-2016-11-28",
}

local DuplicateOrganizationalUnitException_keys = { "Message" = true, nil }

function M.AssertDuplicateOrganizationalUnitException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateOrganizationalUnitException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DuplicateOrganizationalUnitException_keys[k], "DuplicateOrganizationalUnitException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateOrganizationalUnitException
-- <p>An organizational unit (OU) with the same name already exists.</p>
-- @param Message [ExceptionMessage] <p>An organizational unit (OU) with the same name already exists.</p>
function M.DuplicateOrganizationalUnitException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateOrganizationalUnitException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDuplicateOrganizationalUnitException(t)
	return t
end

local DeleteOrganizationalUnitRequest_keys = { "OrganizationalUnitId" = true, nil }

function M.AssertDeleteOrganizationalUnitRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteOrganizationalUnitRequest to be of type 'table'")
	assert(struct["OrganizationalUnitId"], "Expected key OrganizationalUnitId to exist in table")
	if struct["OrganizationalUnitId"] then M.AssertOrganizationalUnitId(struct["OrganizationalUnitId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteOrganizationalUnitRequest_keys[k], "DeleteOrganizationalUnitRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteOrganizationalUnitRequest
--  
-- @param OrganizationalUnitId [OrganizationalUnitId] <p>The unique identifier (ID) of the organizational unit that you want to delete. You can get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p>
-- Required parameter: OrganizationalUnitId
function M.DeleteOrganizationalUnitRequest(OrganizationalUnitId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteOrganizationalUnitRequest")
	local t = { 
		["OrganizationalUnitId"] = OrganizationalUnitId,
	}
	M.AssertDeleteOrganizationalUnitRequest(t)
	return t
end

local ListCreateAccountStatusResponse_keys = { "NextToken" = true, "CreateAccountStatuses" = true, nil }

function M.AssertListCreateAccountStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCreateAccountStatusResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["CreateAccountStatuses"] then M.AssertCreateAccountStatuses(struct["CreateAccountStatuses"]) end
	for k,_ in pairs(struct) do
		assert(ListCreateAccountStatusResponse_keys[k], "ListCreateAccountStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCreateAccountStatusResponse
--  
-- @param NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param CreateAccountStatuses [CreateAccountStatuses] <p>A list of objects with details about the requests. Certain elements, such as the accountId number, are present in the output only after the account has been successfully created.</p>
function M.ListCreateAccountStatusResponse(NextToken, CreateAccountStatuses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCreateAccountStatusResponse")
	local t = { 
		["NextToken"] = NextToken,
		["CreateAccountStatuses"] = CreateAccountStatuses,
	}
	M.AssertListCreateAccountStatusResponse(t)
	return t
end

local Handshake_keys = { "Id" = true, "State" = true, "Resources" = true, "Parties" = true, "Action" = true, "RequestedTimestamp" = true, "ExpirationTimestamp" = true, "Arn" = true, nil }

function M.AssertHandshake(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Handshake to be of type 'table'")
	if struct["Id"] then M.AssertHandshakeId(struct["Id"]) end
	if struct["State"] then M.AssertHandshakeState(struct["State"]) end
	if struct["Resources"] then M.AssertHandshakeResources(struct["Resources"]) end
	if struct["Parties"] then M.AssertHandshakeParties(struct["Parties"]) end
	if struct["Action"] then M.AssertActionType(struct["Action"]) end
	if struct["RequestedTimestamp"] then M.AssertTimestamp(struct["RequestedTimestamp"]) end
	if struct["ExpirationTimestamp"] then M.AssertTimestamp(struct["ExpirationTimestamp"]) end
	if struct["Arn"] then M.AssertHandshakeArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(Handshake_keys[k], "Handshake contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Handshake
-- <p>Contains information that must be exchanged to securely establish a relationship between two accounts (an <i>originator</i> and a <i>recipient</i>). For example, when a master account (the originator) invites another account (the recipient) to join its organization, the two accounts exchange information as a series of handshake requests and responses.</p> <p> <b>Note:</b> Handshakes that are CANCELED, ACCEPTED, or DECLINED show up in lists for only 30 days after entering that state After that they are deleted.</p>
-- @param Id [HandshakeId] <p>The unique identifier (ID) of a handshake. The originating account creates the ID when it initiates the handshake.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
-- @param State [HandshakeState] <p>The current state of the handshake. Use the state to trace the flow of the handshake through the process from its creation to its acceptance. The meaning of each of the valid values is as follows:</p> <ul> <li> <p> <b>REQUESTED</b>: This handshake was sent to multiple recipients (applicable to only some handshake types) and not all recipients have responded yet. The request stays in this state until all recipients respond.</p> </li> <li> <p> <b>OPEN</b>: This handshake was sent to multiple recipients (applicable to only some policy types) and all recipients have responded, allowing the originator to complete the handshake action.</p> </li> <li> <p> <b>CANCELED</b>: This handshake is no longer active because it was canceled by the originating account.</p> </li> <li> <p> <b>ACCEPTED</b>: This handshake is complete because it has been accepted by the recipient.</p> </li> <li> <p> <b>DECLINED</b>: This handshake is no longer active because it was declined by the recipient account.</p> </li> <li> <p> <b>EXPIRED</b>: This handshake is no longer active because the originator did not receive a response of any kind from the recipient before the expiration time (15 days).</p> </li> </ul>
-- @param Resources [HandshakeResources] <p>Additional information that is needed to process the handshake.</p>
-- @param Parties [HandshakeParties] <p>Information about the two accounts that are participating in the handshake.</p>
-- @param Action [ActionType] <p>The type of handshake, indicating what action occurs when the recipient accepts the handshake.</p>
-- @param RequestedTimestamp [Timestamp] <p>The date and time that the handshake request was made.</p>
-- @param ExpirationTimestamp [Timestamp] <p>The date and time that the handshake expires. If the recipient of the handshake request fails to respond before the specified date and time, the handshake becomes inactive and is no longer valid.</p>
-- @param Arn [HandshakeArn] <p>The Amazon Resource Name (ARN) of a handshake.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
function M.Handshake(Id, State, Resources, Parties, Action, RequestedTimestamp, ExpirationTimestamp, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Handshake")
	local t = { 
		["Id"] = Id,
		["State"] = State,
		["Resources"] = Resources,
		["Parties"] = Parties,
		["Action"] = Action,
		["RequestedTimestamp"] = RequestedTimestamp,
		["ExpirationTimestamp"] = ExpirationTimestamp,
		["Arn"] = Arn,
	}
	M.AssertHandshake(t)
	return t
end

local EnablePolicyTypeResponse_keys = { "Root" = true, nil }

function M.AssertEnablePolicyTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnablePolicyTypeResponse to be of type 'table'")
	if struct["Root"] then M.AssertRoot(struct["Root"]) end
	for k,_ in pairs(struct) do
		assert(EnablePolicyTypeResponse_keys[k], "EnablePolicyTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnablePolicyTypeResponse
--  
-- @param Root [Root] <p>A structure that shows the root with the updated list of enabled policy types.</p>
function M.EnablePolicyTypeResponse(Root, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnablePolicyTypeResponse")
	local t = { 
		["Root"] = Root,
	}
	M.AssertEnablePolicyTypeResponse(t)
	return t
end

local ListTargetsForPolicyResponse_keys = { "NextToken" = true, "Targets" = true, nil }

function M.AssertListTargetsForPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTargetsForPolicyResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Targets"] then M.AssertPolicyTargets(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(ListTargetsForPolicyResponse_keys[k], "ListTargetsForPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTargetsForPolicyResponse
--  
-- @param NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param Targets [PolicyTargets] <p>A list of structures, each of which contains details about one of the entities to which the specified policy is attached.</p>
function M.ListTargetsForPolicyResponse(NextToken, Targets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTargetsForPolicyResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Targets"] = Targets,
	}
	M.AssertListTargetsForPolicyResponse(t)
	return t
end

local PolicyTypeSummary_keys = { "Status" = true, "Type" = true, nil }

function M.AssertPolicyTypeSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyTypeSummary to be of type 'table'")
	if struct["Status"] then M.AssertPolicyTypeStatus(struct["Status"]) end
	if struct["Type"] then M.AssertPolicyType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(PolicyTypeSummary_keys[k], "PolicyTypeSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyTypeSummary
-- <p>Contains information about a policy type and its status in the associated root.</p>
-- @param Status [PolicyTypeStatus] <p>The status of the policy type as it relates to the associated root. To attach a policy of the specified type to a root or to an OU or account in that root, it must be available in the organization and enabled for that root.</p>
-- @param Type [PolicyType] <p>The name of the policy type.</p>
function M.PolicyTypeSummary(Status, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyTypeSummary")
	local t = { 
		["Status"] = Status,
		["Type"] = Type,
	}
	M.AssertPolicyTypeSummary(t)
	return t
end

local ParentNotFoundException_keys = { "Message" = true, nil }

function M.AssertParentNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParentNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ParentNotFoundException_keys[k], "ParentNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParentNotFoundException
-- <p>We can't find a root or organizational unit (OU) with the ParentId that you specified.</p>
-- @param Message [ExceptionMessage] <p>We can't find a root or organizational unit (OU) with the ParentId that you specified.</p>
function M.ParentNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParentNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertParentNotFoundException(t)
	return t
end

local AccountNotFoundException_keys = { "Message" = true, nil }

function M.AssertAccountNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(AccountNotFoundException_keys[k], "AccountNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountNotFoundException
-- <p> We can't find an AWS account with the AccountId that you specified, or the account whose credentials you used to make this request is not a member of an organization.</p>
-- @param Message [ExceptionMessage] <p> We can't find an AWS account with the AccountId that you specified, or the account whose credentials you used to make this request is not a member of an organization.</p>
function M.AccountNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertAccountNotFoundException(t)
	return t
end

local Parent_keys = { "Type" = true, "Id" = true, nil }

function M.AssertParent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Parent to be of type 'table'")
	if struct["Type"] then M.AssertParentType(struct["Type"]) end
	if struct["Id"] then M.AssertParentId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(Parent_keys[k], "Parent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Parent
-- <p>Contains information about either a root or an organizational unit (OU) that can contain OUs or accounts in an organization.</p>
-- @param Type [ParentType] <p>The type of the parent entity.</p>
-- @param Id [ParentId] <p>The unique identifier (ID) of the parent entity.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
function M.Parent(Type, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Parent")
	local t = { 
		["Type"] = Type,
		["Id"] = Id,
	}
	M.AssertParent(t)
	return t
end

local PolicyNotFoundException_keys = { "Message" = true, nil }

function M.AssertPolicyNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(PolicyNotFoundException_keys[k], "PolicyNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyNotFoundException
-- <p>We can't find a policy with the PolicyId that you specified.</p>
-- @param Message [ExceptionMessage] <p>We can't find a policy with the PolicyId that you specified.</p>
function M.PolicyNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertPolicyNotFoundException(t)
	return t
end

local CreateOrganizationResponse_keys = { "Organization" = true, nil }

function M.AssertCreateOrganizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOrganizationResponse to be of type 'table'")
	if struct["Organization"] then M.AssertOrganization(struct["Organization"]) end
	for k,_ in pairs(struct) do
		assert(CreateOrganizationResponse_keys[k], "CreateOrganizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOrganizationResponse
--  
-- @param Organization [Organization] <p>A structure that contains details about the newly created organization.</p>
function M.CreateOrganizationResponse(Organization, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateOrganizationResponse")
	local t = { 
		["Organization"] = Organization,
	}
	M.AssertCreateOrganizationResponse(t)
	return t
end

local DestinationParentNotFoundException_keys = { "Message" = true, nil }

function M.AssertDestinationParentNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DestinationParentNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DestinationParentNotFoundException_keys[k], "DestinationParentNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DestinationParentNotFoundException
-- <p>We can't find the destination container (a root or OU) with the ParentId that you specified.</p>
-- @param Message [ExceptionMessage] <p>We can't find the destination container (a root or OU) with the ParentId that you specified.</p>
function M.DestinationParentNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DestinationParentNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDestinationParentNotFoundException(t)
	return t
end

local SourceParentNotFoundException_keys = { "Message" = true, nil }

function M.AssertSourceParentNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceParentNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(SourceParentNotFoundException_keys[k], "SourceParentNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceParentNotFoundException
-- <p>We can't find a source root or OU with the ParentId that you specified.</p>
-- @param Message [ExceptionMessage] <p>We can't find a source root or OU with the ParentId that you specified.</p>
function M.SourceParentNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SourceParentNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertSourceParentNotFoundException(t)
	return t
end

local AttachPolicyRequest_keys = { "TargetId" = true, "PolicyId" = true, nil }

function M.AssertAttachPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachPolicyRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	assert(struct["TargetId"], "Expected key TargetId to exist in table")
	if struct["TargetId"] then M.AssertPolicyTargetId(struct["TargetId"]) end
	if struct["PolicyId"] then M.AssertPolicyId(struct["PolicyId"]) end
	for k,_ in pairs(struct) do
		assert(AttachPolicyRequest_keys[k], "AttachPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachPolicyRequest
--  
-- @param TargetId [PolicyTargetId] <p>The unique identifier (ID) of the root, OU, or account that you want to attach the policy to. You can get the ID by calling the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- @param PolicyId [PolicyId] <p>The unique identifier (ID) of the policy that you want to attach to the target. You can get the ID for the policy by calling the <a>ListPolicies</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- Required parameter: PolicyId
-- Required parameter: TargetId
function M.AttachPolicyRequest(TargetId, PolicyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachPolicyRequest")
	local t = { 
		["TargetId"] = TargetId,
		["PolicyId"] = PolicyId,
	}
	M.AssertAttachPolicyRequest(t)
	return t
end

local ListAccountsForParentResponse_keys = { "NextToken" = true, "Accounts" = true, nil }

function M.AssertListAccountsForParentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccountsForParentResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Accounts"] then M.AssertAccounts(struct["Accounts"]) end
	for k,_ in pairs(struct) do
		assert(ListAccountsForParentResponse_keys[k], "ListAccountsForParentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccountsForParentResponse
--  
-- @param NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param Accounts [Accounts] <p>A list of the accounts in the specified root or OU.</p>
function M.ListAccountsForParentResponse(NextToken, Accounts, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAccountsForParentResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Accounts"] = Accounts,
	}
	M.AssertListAccountsForParentResponse(t)
	return t
end

local ListChildrenResponse_keys = { "NextToken" = true, "Children" = true, nil }

function M.AssertListChildrenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListChildrenResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Children"] then M.AssertChildren(struct["Children"]) end
	for k,_ in pairs(struct) do
		assert(ListChildrenResponse_keys[k], "ListChildrenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListChildrenResponse
--  
-- @param NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param Children [Children] <p>The list of children of the specified parent container.</p>
function M.ListChildrenResponse(NextToken, Children, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListChildrenResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Children"] = Children,
	}
	M.AssertListChildrenResponse(t)
	return t
end

local UpdateOrganizationalUnitResponse_keys = { "OrganizationalUnit" = true, nil }

function M.AssertUpdateOrganizationalUnitResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateOrganizationalUnitResponse to be of type 'table'")
	if struct["OrganizationalUnit"] then M.AssertOrganizationalUnit(struct["OrganizationalUnit"]) end
	for k,_ in pairs(struct) do
		assert(UpdateOrganizationalUnitResponse_keys[k], "UpdateOrganizationalUnitResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateOrganizationalUnitResponse
--  
-- @param OrganizationalUnit [OrganizationalUnit] <p>A structure that contains the details about the specified OU, including its new name.</p>
function M.UpdateOrganizationalUnitResponse(OrganizationalUnit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateOrganizationalUnitResponse")
	local t = { 
		["OrganizationalUnit"] = OrganizationalUnit,
	}
	M.AssertUpdateOrganizationalUnitResponse(t)
	return t
end

local CancelHandshakeResponse_keys = { "Handshake" = true, nil }

function M.AssertCancelHandshakeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelHandshakeResponse to be of type 'table'")
	if struct["Handshake"] then M.AssertHandshake(struct["Handshake"]) end
	for k,_ in pairs(struct) do
		assert(CancelHandshakeResponse_keys[k], "CancelHandshakeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelHandshakeResponse
--  
-- @param Handshake [Handshake] <p>A structure that contains details about the handshake that you canceled.</p>
function M.CancelHandshakeResponse(Handshake, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelHandshakeResponse")
	local t = { 
		["Handshake"] = Handshake,
	}
	M.AssertCancelHandshakeResponse(t)
	return t
end

local Account_keys = { "Status" = true, "Name" = true, "Email" = true, "JoinedMethod" = true, "JoinedTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertAccount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Account to be of type 'table'")
	if struct["Status"] then M.AssertAccountStatus(struct["Status"]) end
	if struct["Name"] then M.AssertAccountName(struct["Name"]) end
	if struct["Email"] then M.AssertEmail(struct["Email"]) end
	if struct["JoinedMethod"] then M.AssertAccountJoinedMethod(struct["JoinedMethod"]) end
	if struct["JoinedTimestamp"] then M.AssertTimestamp(struct["JoinedTimestamp"]) end
	if struct["Id"] then M.AssertAccountId(struct["Id"]) end
	if struct["Arn"] then M.AssertAccountArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(Account_keys[k], "Account contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Account
-- <p>Contains information about an AWS account that is a member of an organization.</p>
-- @param Status [AccountStatus] <p>The status of the account in the organization.</p>
-- @param Name [AccountName] <p>The friendly name of the account.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- @param Email [Email] <p>The email address associated with the AWS account.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for this parameter is a string of characters that represents a standard Internet email address.</p>
-- @param JoinedMethod [AccountJoinedMethod] <p>The method by which the account joined the organization.</p>
-- @param JoinedTimestamp [Timestamp] <p>The date the account became a part of the organization.</p>
-- @param Id [AccountId] <p>The unique identifier (ID) of the account.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
-- @param Arn [AccountArn] <p>The Amazon Resource Name (ARN) of the account.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
function M.Account(Status, Name, Email, JoinedMethod, JoinedTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Account")
	local t = { 
		["Status"] = Status,
		["Name"] = Name,
		["Email"] = Email,
		["JoinedMethod"] = JoinedMethod,
		["JoinedTimestamp"] = JoinedTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertAccount(t)
	return t
end

local DescribeOrganizationResponse_keys = { "Organization" = true, nil }

function M.AssertDescribeOrganizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOrganizationResponse to be of type 'table'")
	if struct["Organization"] then M.AssertOrganization(struct["Organization"]) end
	for k,_ in pairs(struct) do
		assert(DescribeOrganizationResponse_keys[k], "DescribeOrganizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOrganizationResponse
--  
-- @param Organization [Organization] <p>A structure that contains information about the organization.</p>
function M.DescribeOrganizationResponse(Organization, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOrganizationResponse")
	local t = { 
		["Organization"] = Organization,
	}
	M.AssertDescribeOrganizationResponse(t)
	return t
end

local CreateAccountRequest_keys = { "RoleName" = true, "Email" = true, "IamUserAccessToBilling" = true, "AccountName" = true, nil }

function M.AssertCreateAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccountRequest to be of type 'table'")
	assert(struct["Email"], "Expected key Email to exist in table")
	assert(struct["AccountName"], "Expected key AccountName to exist in table")
	if struct["RoleName"] then M.AssertRoleName(struct["RoleName"]) end
	if struct["Email"] then M.AssertEmail(struct["Email"]) end
	if struct["IamUserAccessToBilling"] then M.AssertIAMUserAccessToBilling(struct["IamUserAccessToBilling"]) end
	if struct["AccountName"] then M.AssertAccountName(struct["AccountName"]) end
	for k,_ in pairs(struct) do
		assert(CreateAccountRequest_keys[k], "CreateAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccountRequest
--  
-- @param RoleName [RoleName] <p>(Optional)</p> <p>The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the master account, allowing users in the master account to assume the role, as permitted by the master account administrator. The role has administrator permissions in the new member account.</p> <p>If you do not specify this parameter, the role name defaults to <code>OrganizationAccountAccessRole</code>.</p> <p>For more information about how to use this role to access the member account, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role">Accessing and Administering the Member Accounts in Your Organization</a> in the <i>AWS Organizations User Guide</i>, and steps 2 and 3 in <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html">Tutorial: Delegate Access Across AWS Accounts Using IAM Roles</a> in the <i>IAM User Guide</i>.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of characters that can consist of uppercase letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-</p>
-- @param Email [Email] <p>The email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account.</p>
-- @param IamUserAccessToBilling [IAMUserAccessToBilling] <p>If set to <code>ALLOW</code>, the new account enables IAM users to access account billing information <i>if</i> they have the required permissions. If set to <code>DENY</code>, then only the root user of the new account can access account billing information. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">Activating Access to the Billing and Cost Management Console</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p> <p>If you do not specify this parameter, the value defaults to ALLOW, and IAM users and roles with the required permissions can access billing information for the new account.</p>
-- @param AccountName [AccountName] <p>The friendly name of the member account.</p>
-- Required parameter: Email
-- Required parameter: AccountName
function M.CreateAccountRequest(RoleName, Email, IamUserAccessToBilling, AccountName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAccountRequest")
	local t = { 
		["RoleName"] = RoleName,
		["Email"] = Email,
		["IamUserAccessToBilling"] = IamUserAccessToBilling,
		["AccountName"] = AccountName,
	}
	M.AssertCreateAccountRequest(t)
	return t
end

local DisablePolicyTypeResponse_keys = { "Root" = true, nil }

function M.AssertDisablePolicyTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisablePolicyTypeResponse to be of type 'table'")
	if struct["Root"] then M.AssertRoot(struct["Root"]) end
	for k,_ in pairs(struct) do
		assert(DisablePolicyTypeResponse_keys[k], "DisablePolicyTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisablePolicyTypeResponse
--  
-- @param Root [Root] <p>A structure that shows the root with the updated list of enabled policy types.</p>
function M.DisablePolicyTypeResponse(Root, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisablePolicyTypeResponse")
	local t = { 
		["Root"] = Root,
	}
	M.AssertDisablePolicyTypeResponse(t)
	return t
end

local PolicyTypeNotEnabledException_keys = { "Message" = true, nil }

function M.AssertPolicyTypeNotEnabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyTypeNotEnabledException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(PolicyTypeNotEnabledException_keys[k], "PolicyTypeNotEnabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyTypeNotEnabledException
-- <p>The specified policy type is not currently enabled in this root. You cannot attach policies of the specified type to entities in a root until you enable that type in the root. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param Message [ExceptionMessage] <p>The specified policy type is not currently enabled in this root. You cannot attach policies of the specified type to entities in a root until you enable that type in the root. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p>
function M.PolicyTypeNotEnabledException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyTypeNotEnabledException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertPolicyTypeNotEnabledException(t)
	return t
end

local DescribeOrganizationalUnitResponse_keys = { "OrganizationalUnit" = true, nil }

function M.AssertDescribeOrganizationalUnitResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOrganizationalUnitResponse to be of type 'table'")
	if struct["OrganizationalUnit"] then M.AssertOrganizationalUnit(struct["OrganizationalUnit"]) end
	for k,_ in pairs(struct) do
		assert(DescribeOrganizationalUnitResponse_keys[k], "DescribeOrganizationalUnitResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOrganizationalUnitResponse
--  
-- @param OrganizationalUnit [OrganizationalUnit] <p>A structure that contains details about the specified OU.</p>
function M.DescribeOrganizationalUnitResponse(OrganizationalUnit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOrganizationalUnitResponse")
	local t = { 
		["OrganizationalUnit"] = OrganizationalUnit,
	}
	M.AssertDescribeOrganizationalUnitResponse(t)
	return t
end

local Organization_keys = { "AvailablePolicyTypes" = true, "MasterAccountId" = true, "MasterAccountArn" = true, "FeatureSet" = true, "MasterAccountEmail" = true, "Id" = true, "Arn" = true, nil }

function M.AssertOrganization(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Organization to be of type 'table'")
	if struct["AvailablePolicyTypes"] then M.AssertPolicyTypes(struct["AvailablePolicyTypes"]) end
	if struct["MasterAccountId"] then M.AssertAccountId(struct["MasterAccountId"]) end
	if struct["MasterAccountArn"] then M.AssertAccountArn(struct["MasterAccountArn"]) end
	if struct["FeatureSet"] then M.AssertOrganizationFeatureSet(struct["FeatureSet"]) end
	if struct["MasterAccountEmail"] then M.AssertEmail(struct["MasterAccountEmail"]) end
	if struct["Id"] then M.AssertOrganizationId(struct["Id"]) end
	if struct["Arn"] then M.AssertOrganizationArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(Organization_keys[k], "Organization contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Organization
-- <p>Contains details about an organization. An organization is a collection of accounts that are centrally managed together using consolidated billing, organized hierarchically with organizational units (OUs), and controlled with policies .</p>
-- @param AvailablePolicyTypes [PolicyTypes] <p>A list of policy types that are enabled for this organization. For example, if your organization has all features enabled, then service control policies (SCPs) are included in the list.</p>
-- @param MasterAccountId [AccountId] <p>The unique identifier (ID) of the master account of an organization.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
-- @param MasterAccountArn [AccountArn] <p>The Amazon Resource Name (ARN) of the account that is designated as the master account for the organization.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param FeatureSet [OrganizationFeatureSet] <p>Specifies the functionality that currently is available to the organization. If set to "ALL", then all features are enabled and policies can be applied to accounts in the organization. If set to "CONSOLIDATED_BILLING", then only consolidated billing functionality is available. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param MasterAccountEmail [Email] <p>The email address that is associated with the AWS account that is designated as the master account for the organization.</p>
-- @param Id [OrganizationId] <p>The unique identifier (ID) of an organization.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organization ID string requires "o-" followed by from 10 to 32 lower-case letters or digits.</p>
-- @param Arn [OrganizationArn] <p>The Amazon Resource Name (ARN) of an organization.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
function M.Organization(AvailablePolicyTypes, MasterAccountId, MasterAccountArn, FeatureSet, MasterAccountEmail, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Organization")
	local t = { 
		["AvailablePolicyTypes"] = AvailablePolicyTypes,
		["MasterAccountId"] = MasterAccountId,
		["MasterAccountArn"] = MasterAccountArn,
		["FeatureSet"] = FeatureSet,
		["MasterAccountEmail"] = MasterAccountEmail,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertOrganization(t)
	return t
end

local CancelHandshakeRequest_keys = { "HandshakeId" = true, nil }

function M.AssertCancelHandshakeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelHandshakeRequest to be of type 'table'")
	assert(struct["HandshakeId"], "Expected key HandshakeId to exist in table")
	if struct["HandshakeId"] then M.AssertHandshakeId(struct["HandshakeId"]) end
	for k,_ in pairs(struct) do
		assert(CancelHandshakeRequest_keys[k], "CancelHandshakeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelHandshakeRequest
--  
-- @param HandshakeId [HandshakeId] <p>The unique identifier (ID) of the handshake that you want to cancel. You can get the ID from the <a>ListHandshakesForOrganization</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
-- Required parameter: HandshakeId
function M.CancelHandshakeRequest(HandshakeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelHandshakeRequest")
	local t = { 
		["HandshakeId"] = HandshakeId,
	}
	M.AssertCancelHandshakeRequest(t)
	return t
end

local MoveAccountRequest_keys = { "DestinationParentId" = true, "SourceParentId" = true, "AccountId" = true, nil }

function M.AssertMoveAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MoveAccountRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["SourceParentId"], "Expected key SourceParentId to exist in table")
	assert(struct["DestinationParentId"], "Expected key DestinationParentId to exist in table")
	if struct["DestinationParentId"] then M.AssertParentId(struct["DestinationParentId"]) end
	if struct["SourceParentId"] then M.AssertParentId(struct["SourceParentId"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(MoveAccountRequest_keys[k], "MoveAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MoveAccountRequest
--  
-- @param DestinationParentId [ParentId] <p>The unique identifier (ID) of the root or organizational unit that you want to move the account to.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- @param SourceParentId [ParentId] <p>The unique identifier (ID) of the root or organizational unit that you want to move the account from.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- @param AccountId [AccountId] <p>The unique identifier (ID) of the account that you want to move.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
-- Required parameter: AccountId
-- Required parameter: SourceParentId
-- Required parameter: DestinationParentId
function M.MoveAccountRequest(DestinationParentId, SourceParentId, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MoveAccountRequest")
	local t = { 
		["DestinationParentId"] = DestinationParentId,
		["SourceParentId"] = SourceParentId,
		["AccountId"] = AccountId,
	}
	M.AssertMoveAccountRequest(t)
	return t
end

local ListPoliciesRequest_keys = { "Filter" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesRequest to be of type 'table'")
	assert(struct["Filter"], "Expected key Filter to exist in table")
	if struct["Filter"] then M.AssertPolicyType(struct["Filter"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListPoliciesRequest_keys[k], "ListPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesRequest
--  
-- @param Filter [PolicyType] <p>Specifies the type of policy that you want to include in the response.</p>
-- @param NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- Required parameter: Filter
function M.ListPoliciesRequest(Filter, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPoliciesRequest")
	local t = { 
		["Filter"] = Filter,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListPoliciesRequest(t)
	return t
end

local HandshakeResource_keys = { "Type" = true, "Resources" = true, "Value" = true, nil }

function M.AssertHandshakeResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HandshakeResource to be of type 'table'")
	if struct["Type"] then M.AssertHandshakeResourceType(struct["Type"]) end
	if struct["Resources"] then M.AssertHandshakeResources(struct["Resources"]) end
	if struct["Value"] then M.AssertHandshakeResourceValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(HandshakeResource_keys[k], "HandshakeResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HandshakeResource
-- <p>Contains additional data that is needed to process a handshake.</p>
-- @param Type [HandshakeResourceType] <p>The type of information being passed, specifying how the value is to be interpreted by the other party:</p> <ul> <li> <p> <code>ACCOUNT</code> - Specifies an AWS account ID number.</p> </li> <li> <p> <code>ORGANIZATION</code> - Specifies an organization ID number.</p> </li> <li> <p> <code>EMAIL</code> - Specifies the email address that is associated with the account that receives the handshake. </p> </li> <li> <p> <code>OWNER_EMAIL</code> - Specifies the email address associated with the master account. Included as information about an organization. </p> </li> <li> <p> <code>OWNER_NAME</code> - Specifies the name associated with the master account. Included as information about an organization. </p> </li> <li> <p> <code>NOTES</code> - Additional text provided by the handshake initiator and intended for the recipient to read.</p> </li> </ul>
-- @param Resources [HandshakeResources] <p>When needed, contains an additional array of <code>HandshakeResource</code> objects.</p>
-- @param Value [HandshakeResourceValue] <p>The information that is passed to the other party in the handshake. The format of the value string must match the requirements of the specified type.</p>
function M.HandshakeResource(Type, Resources, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HandshakeResource")
	local t = { 
		["Type"] = Type,
		["Resources"] = Resources,
		["Value"] = Value,
	}
	M.AssertHandshakeResource(t)
	return t
end

local DescribeHandshakeResponse_keys = { "Handshake" = true, nil }

function M.AssertDescribeHandshakeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHandshakeResponse to be of type 'table'")
	if struct["Handshake"] then M.AssertHandshake(struct["Handshake"]) end
	for k,_ in pairs(struct) do
		assert(DescribeHandshakeResponse_keys[k], "DescribeHandshakeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHandshakeResponse
--  
-- @param Handshake [Handshake] <p>A structure that contains information about the specified handshake.</p>
function M.DescribeHandshakeResponse(Handshake, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHandshakeResponse")
	local t = { 
		["Handshake"] = Handshake,
	}
	M.AssertDescribeHandshakeResponse(t)
	return t
end

local InvalidInputException_keys = { "Message" = true, "Reason" = true, nil }

function M.AssertInvalidInputException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInputException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["Reason"] then M.AssertInvalidInputExceptionReason(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(InvalidInputException_keys[k], "InvalidInputException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInputException
-- <p>The requested operation failed because you provided invalid values for one or more of the request parameters. This exception includes a reason that contains additional information about the violated limit:</p> <ul> <li> <p>INVALID_PARTY_TYPE_TARGET: You specified the wrong type of entity (account, organization, or email) as a party.</p> </li> <li> <p>INVALID_SYNTAX_ORGANIZATION_ARN: You specified an invalid ARN for the organization.</p> </li> <li> <p>INVALID_SYNTAX_POLICY_ID: You specified an invalid policy ID. </p> </li> <li> <p>INVALID_ENUM: You specified a value that is not valid for that parameter.</p> </li> <li> <p>INVALID_FULL_NAME_TARGET: You specified a full name that contains invalid characters.</p> </li> <li> <p>INVALID_LIST_MEMBER: You provided a list to a parameter that contains at least one invalid value.</p> </li> <li> <p>MAX_LENGTH_EXCEEDED: You provided a string parameter that is longer than allowed.</p> </li> <li> <p>MAX_VALUE_EXCEEDED: You provided a numeric parameter that has a larger value than allowed.</p> </li> <li> <p>MIN_LENGTH_EXCEEDED: You provided a string parameter that is shorter than allowed.</p> </li> <li> <p>MIN_VALUE_EXCEEDED: You provided a numeric parameter that has a smaller value than allowed.</p> </li> <li> <p>IMMUTABLE_POLICY: You specified a policy that is managed by AWS and cannot be modified.</p> </li> <li> <p>INVALID_PATTERN: You provided a value that doesn't match the required pattern.</p> </li> <li> <p>INVALID_PATTERN_TARGET_ID: You specified a policy target ID that doesn't match the required pattern.</p> </li> <li> <p>INPUT_REQUIRED: You must include a value for all required parameters.</p> </li> <li> <p>INVALID_PAGINATION_TOKEN: Get the value for the NextToken parameter from the response to a previous call of the operation.</p> </li> <li> <p>MAX_FILTER_LIMIT_EXCEEDED: You can specify only one filter parameter for the operation.</p> </li> <li> <p>MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS: You can move an account only between entities in the same root.</p> </li> </ul>
-- @param Message [ExceptionMessage] <p>The requested operation failed because you provided invalid values for one or more of the request parameters. This exception includes a reason that contains additional information about the violated limit:</p> <ul> <li> <p>INVALID_PARTY_TYPE_TARGET: You specified the wrong type of entity (account, organization, or email) as a party.</p> </li> <li> <p>INVALID_SYNTAX_ORGANIZATION_ARN: You specified an invalid ARN for the organization.</p> </li> <li> <p>INVALID_SYNTAX_POLICY_ID: You specified an invalid policy ID. </p> </li> <li> <p>INVALID_ENUM: You specified a value that is not valid for that parameter.</p> </li> <li> <p>INVALID_FULL_NAME_TARGET: You specified a full name that contains invalid characters.</p> </li> <li> <p>INVALID_LIST_MEMBER: You provided a list to a parameter that contains at least one invalid value.</p> </li> <li> <p>MAX_LENGTH_EXCEEDED: You provided a string parameter that is longer than allowed.</p> </li> <li> <p>MAX_VALUE_EXCEEDED: You provided a numeric parameter that has a larger value than allowed.</p> </li> <li> <p>MIN_LENGTH_EXCEEDED: You provided a string parameter that is shorter than allowed.</p> </li> <li> <p>MIN_VALUE_EXCEEDED: You provided a numeric parameter that has a smaller value than allowed.</p> </li> <li> <p>IMMUTABLE_POLICY: You specified a policy that is managed by AWS and cannot be modified.</p> </li> <li> <p>INVALID_PATTERN: You provided a value that doesn't match the required pattern.</p> </li> <li> <p>INVALID_PATTERN_TARGET_ID: You specified a policy target ID that doesn't match the required pattern.</p> </li> <li> <p>INPUT_REQUIRED: You must include a value for all required parameters.</p> </li> <li> <p>INVALID_PAGINATION_TOKEN: Get the value for the NextToken parameter from the response to a previous call of the operation.</p> </li> <li> <p>MAX_FILTER_LIMIT_EXCEEDED: You can specify only one filter parameter for the operation.</p> </li> <li> <p>MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS: You can move an account only between entities in the same root.</p> </li> </ul>
-- @param Reason [InvalidInputExceptionReason] <p>The requested operation failed because you provided invalid values for one or more of the request parameters. This exception includes a reason that contains additional information about the violated limit:</p> <ul> <li> <p>INVALID_PARTY_TYPE_TARGET: You specified the wrong type of entity (account, organization, or email) as a party.</p> </li> <li> <p>INVALID_SYNTAX_ORGANIZATION_ARN: You specified an invalid ARN for the organization.</p> </li> <li> <p>INVALID_SYNTAX_POLICY_ID: You specified an invalid policy ID. </p> </li> <li> <p>INVALID_ENUM: You specified a value that is not valid for that parameter.</p> </li> <li> <p>INVALID_FULL_NAME_TARGET: You specified a full name that contains invalid characters.</p> </li> <li> <p>INVALID_LIST_MEMBER: You provided a list to a parameter that contains at least one invalid value.</p> </li> <li> <p>MAX_LENGTH_EXCEEDED: You provided a string parameter that is longer than allowed.</p> </li> <li> <p>MAX_VALUE_EXCEEDED: You provided a numeric parameter that has a larger value than allowed.</p> </li> <li> <p>MIN_LENGTH_EXCEEDED: You provided a string parameter that is shorter than allowed.</p> </li> <li> <p>MIN_VALUE_EXCEEDED: You provided a numeric parameter that has a smaller value than allowed.</p> </li> <li> <p>IMMUTABLE_POLICY: You specified a policy that is managed by AWS and cannot be modified.</p> </li> <li> <p>INVALID_PATTERN: You provided a value that doesn't match the required pattern.</p> </li> <li> <p>INVALID_PATTERN_TARGET_ID: You specified a policy target ID that doesn't match the required pattern.</p> </li> <li> <p>INPUT_REQUIRED: You must include a value for all required parameters.</p> </li> <li> <p>INVALID_PAGINATION_TOKEN: Get the value for the NextToken parameter from the response to a previous call of the operation.</p> </li> <li> <p>MAX_FILTER_LIMIT_EXCEEDED: You can specify only one filter parameter for the operation.</p> </li> <li> <p>MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS: You can move an account only between entities in the same root.</p> </li> </ul>
function M.InvalidInputException(Message, Reason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInputException")
	local t = { 
		["Message"] = Message,
		["Reason"] = Reason,
	}
	M.AssertInvalidInputException(t)
	return t
end

local HandshakeParty_keys = { "Type" = true, "Id" = true, nil }

function M.AssertHandshakeParty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HandshakeParty to be of type 'table'")
	if struct["Type"] then M.AssertHandshakePartyType(struct["Type"]) end
	if struct["Id"] then M.AssertHandshakePartyId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(HandshakeParty_keys[k], "HandshakeParty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HandshakeParty
-- <p>Identifies a participant in a handshake.</p>
-- @param Type [HandshakePartyType] <p>The type of party.</p>
-- @param Id [HandshakePartyId] <p>The unique identifier (ID) for the party.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
function M.HandshakeParty(Type, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HandshakeParty")
	local t = { 
		["Type"] = Type,
		["Id"] = Id,
	}
	M.AssertHandshakeParty(t)
	return t
end

local ListPoliciesResponse_keys = { "NextToken" = true, "Policies" = true, nil }

function M.AssertListPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Policies"] then M.AssertPolicies(struct["Policies"]) end
	for k,_ in pairs(struct) do
		assert(ListPoliciesResponse_keys[k], "ListPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesResponse
--  
-- @param NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param Policies [Policies] <p>A list of policies that match the filter criteria in the request. The output list does not include the policy contents. To see the content for a policy, see <a>DescribePolicy</a>.</p>
function M.ListPoliciesResponse(NextToken, Policies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPoliciesResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Policies"] = Policies,
	}
	M.AssertListPoliciesResponse(t)
	return t
end

local ListRootsResponse_keys = { "NextToken" = true, "Roots" = true, nil }

function M.AssertListRootsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRootsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Roots"] then M.AssertRoots(struct["Roots"]) end
	for k,_ in pairs(struct) do
		assert(ListRootsResponse_keys[k], "ListRootsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRootsResponse
--  
-- @param NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param Roots [Roots] <p>A list of roots that are defined in an organization.</p>
function M.ListRootsResponse(NextToken, Roots, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRootsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Roots"] = Roots,
	}
	M.AssertListRootsResponse(t)
	return t
end

local ConcurrentModificationException_keys = { "Message" = true, nil }

function M.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ConcurrentModificationException_keys[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- <p>The target of the operation is currently being modified by a different request. Try again later.</p>
-- @param Message [ExceptionMessage] <p>The target of the operation is currently being modified by a different request. Try again later.</p>
function M.ConcurrentModificationException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModificationException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertConcurrentModificationException(t)
	return t
end

local DescribePolicyResponse_keys = { "Policy" = true, nil }

function M.AssertDescribePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePolicyResponse to be of type 'table'")
	if struct["Policy"] then M.AssertPolicy(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(DescribePolicyResponse_keys[k], "DescribePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePolicyResponse
--  
-- @param Policy [Policy] <p>A structure that contains details about the specified policy.</p>
function M.DescribePolicyResponse(Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePolicyResponse")
	local t = { 
		["Policy"] = Policy,
	}
	M.AssertDescribePolicyResponse(t)
	return t
end

local DeclineHandshakeResponse_keys = { "Handshake" = true, nil }

function M.AssertDeclineHandshakeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeclineHandshakeResponse to be of type 'table'")
	if struct["Handshake"] then M.AssertHandshake(struct["Handshake"]) end
	for k,_ in pairs(struct) do
		assert(DeclineHandshakeResponse_keys[k], "DeclineHandshakeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeclineHandshakeResponse
--  
-- @param Handshake [Handshake] <p>A structure that contains details about the declined handshake. The state is updated to show the value <code>DECLINED</code>.</p>
function M.DeclineHandshakeResponse(Handshake, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeclineHandshakeResponse")
	local t = { 
		["Handshake"] = Handshake,
	}
	M.AssertDeclineHandshakeResponse(t)
	return t
end

local MalformedPolicyDocumentException_keys = { "Message" = true, nil }

function M.AssertMalformedPolicyDocumentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MalformedPolicyDocumentException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(MalformedPolicyDocumentException_keys[k], "MalformedPolicyDocumentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MalformedPolicyDocumentException
-- <p>The provided policy document does not meet the requirements of the specified policy type. For example, the syntax might be incorrect. For details about service control policy syntax, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html">Service Control Policy Syntax</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param Message [ExceptionMessage] <p>The provided policy document does not meet the requirements of the specified policy type. For example, the syntax might be incorrect. For details about service control policy syntax, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html">Service Control Policy Syntax</a> in the <i>AWS Organizations User Guide</i>.</p>
function M.MalformedPolicyDocumentException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MalformedPolicyDocumentException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertMalformedPolicyDocumentException(t)
	return t
end

local EnableAllFeaturesResponse_keys = { "Handshake" = true, nil }

function M.AssertEnableAllFeaturesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableAllFeaturesResponse to be of type 'table'")
	if struct["Handshake"] then M.AssertHandshake(struct["Handshake"]) end
	for k,_ in pairs(struct) do
		assert(EnableAllFeaturesResponse_keys[k], "EnableAllFeaturesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableAllFeaturesResponse
--  
-- @param Handshake [Handshake] <p>A structure that contains details about the handshake created to support this request to enable all features in the organization.</p>
function M.EnableAllFeaturesResponse(Handshake, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableAllFeaturesResponse")
	local t = { 
		["Handshake"] = Handshake,
	}
	M.AssertEnableAllFeaturesResponse(t)
	return t
end

local EnablePolicyTypeRequest_keys = { "RootId" = true, "PolicyType" = true, nil }

function M.AssertEnablePolicyTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnablePolicyTypeRequest to be of type 'table'")
	assert(struct["RootId"], "Expected key RootId to exist in table")
	assert(struct["PolicyType"], "Expected key PolicyType to exist in table")
	if struct["RootId"] then M.AssertRootId(struct["RootId"]) end
	if struct["PolicyType"] then M.AssertPolicyType(struct["PolicyType"]) end
	for k,_ in pairs(struct) do
		assert(EnablePolicyTypeRequest_keys[k], "EnablePolicyTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnablePolicyTypeRequest
--  
-- @param RootId [RootId] <p>The unique identifier (ID) of the root in which you want to enable a policy type. You can get the ID from the <a>ListRoots</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by from 4 to 32 lower-case letters or digits.</p>
-- @param PolicyType [PolicyType] <p>The policy type that you want to enable.</p>
-- Required parameter: RootId
-- Required parameter: PolicyType
function M.EnablePolicyTypeRequest(RootId, PolicyType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnablePolicyTypeRequest")
	local t = { 
		["RootId"] = RootId,
		["PolicyType"] = PolicyType,
	}
	M.AssertEnablePolicyTypeRequest(t)
	return t
end

local CreatePolicyResponse_keys = { "Policy" = true, nil }

function M.AssertCreatePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyResponse to be of type 'table'")
	if struct["Policy"] then M.AssertPolicy(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(CreatePolicyResponse_keys[k], "CreatePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyResponse
--  
-- @param Policy [Policy] <p>A structure that contains details about the newly created policy.</p>
function M.CreatePolicyResponse(Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyResponse")
	local t = { 
		["Policy"] = Policy,
	}
	M.AssertCreatePolicyResponse(t)
	return t
end

local TargetNotFoundException_keys = { "Message" = true, nil }

function M.AssertTargetNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TargetNotFoundException_keys[k], "TargetNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetNotFoundException
-- <p>We can't find a root, OU, or account with the TargetId that you specified.</p>
-- @param Message [ExceptionMessage] <p>We can't find a root, OU, or account with the TargetId that you specified.</p>
function M.TargetNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TargetNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTargetNotFoundException(t)
	return t
end

local HandshakeConstraintViolationException_keys = { "Message" = true, "Reason" = true, nil }

function M.AssertHandshakeConstraintViolationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HandshakeConstraintViolationException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["Reason"] then M.AssertHandshakeConstraintViolationExceptionReason(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(HandshakeConstraintViolationException_keys[k], "HandshakeConstraintViolationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HandshakeConstraintViolationException
-- <p>The requested operation would violate the constraint identified in the reason code.</p> <ul> <li> <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number of accounts in an organization. <b>Note</b>: deleted and closed accounts still count toward your limit.</p> </li> <li> <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of handshakes you can send in one day.</p> </li> <li> <p>ALREADY_IN_AN_ORGANIZATION: The handshake request is invalid because the invited account is already a member of an organization.</p> </li> <li> <p>ORGANIZATION_ALREADY_HAS_ALL_FEATURES: The handshake request is invalid because the organization has already enabled all features.</p> </li> <li> <p>INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES: You cannot issue new invitations to join an organization while it is in the process of enabling all features. You can resume inviting accounts after you finalize the process when all accounts have agreed to the change.</p> </li> <li> <p>PAYMENT_INSTRUMENT_REQUIRED: You cannot complete the operation with an account that does not have a payment instrument, such as a credit card, associated with it.</p> </li> <li> <p>ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD: The request failed because the account is from a different marketplace than the accounts in the organization. For example, accounts with India addresses must be associated with the AISPL marketplace. All accounts in an organization must be from the same marketplace.</p> </li> <li> <p>ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED: You attempted to change the membership of an account too quickly after its previous change.</p> </li> </ul>
-- @param Message [ExceptionMessage] <p>The requested operation would violate the constraint identified in the reason code.</p> <ul> <li> <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number of accounts in an organization. <b>Note</b>: deleted and closed accounts still count toward your limit.</p> </li> <li> <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of handshakes you can send in one day.</p> </li> <li> <p>ALREADY_IN_AN_ORGANIZATION: The handshake request is invalid because the invited account is already a member of an organization.</p> </li> <li> <p>ORGANIZATION_ALREADY_HAS_ALL_FEATURES: The handshake request is invalid because the organization has already enabled all features.</p> </li> <li> <p>INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES: You cannot issue new invitations to join an organization while it is in the process of enabling all features. You can resume inviting accounts after you finalize the process when all accounts have agreed to the change.</p> </li> <li> <p>PAYMENT_INSTRUMENT_REQUIRED: You cannot complete the operation with an account that does not have a payment instrument, such as a credit card, associated with it.</p> </li> <li> <p>ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD: The request failed because the account is from a different marketplace than the accounts in the organization. For example, accounts with India addresses must be associated with the AISPL marketplace. All accounts in an organization must be from the same marketplace.</p> </li> <li> <p>ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED: You attempted to change the membership of an account too quickly after its previous change.</p> </li> </ul>
-- @param Reason [HandshakeConstraintViolationExceptionReason] <p>The requested operation would violate the constraint identified in the reason code.</p> <ul> <li> <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number of accounts in an organization. <b>Note</b>: deleted and closed accounts still count toward your limit.</p> </li> <li> <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of handshakes you can send in one day.</p> </li> <li> <p>ALREADY_IN_AN_ORGANIZATION: The handshake request is invalid because the invited account is already a member of an organization.</p> </li> <li> <p>ORGANIZATION_ALREADY_HAS_ALL_FEATURES: The handshake request is invalid because the organization has already enabled all features.</p> </li> <li> <p>INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES: You cannot issue new invitations to join an organization while it is in the process of enabling all features. You can resume inviting accounts after you finalize the process when all accounts have agreed to the change.</p> </li> <li> <p>PAYMENT_INSTRUMENT_REQUIRED: You cannot complete the operation with an account that does not have a payment instrument, such as a credit card, associated with it.</p> </li> <li> <p>ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD: The request failed because the account is from a different marketplace than the accounts in the organization. For example, accounts with India addresses must be associated with the AISPL marketplace. All accounts in an organization must be from the same marketplace.</p> </li> <li> <p>ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED: You attempted to change the membership of an account too quickly after its previous change.</p> </li> </ul>
function M.HandshakeConstraintViolationException(Message, Reason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HandshakeConstraintViolationException")
	local t = { 
		["Message"] = Message,
		["Reason"] = Reason,
	}
	M.AssertHandshakeConstraintViolationException(t)
	return t
end

local DescribeCreateAccountStatusRequest_keys = { "CreateAccountRequestId" = true, nil }

function M.AssertDescribeCreateAccountStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCreateAccountStatusRequest to be of type 'table'")
	assert(struct["CreateAccountRequestId"], "Expected key CreateAccountRequestId to exist in table")
	if struct["CreateAccountRequestId"] then M.AssertCreateAccountRequestId(struct["CreateAccountRequestId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCreateAccountStatusRequest_keys[k], "DescribeCreateAccountStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCreateAccountStatusRequest
--  
-- @param CreateAccountRequestId [CreateAccountRequestId] <p>Specifies the <code>operationId</code> that uniquely identifies the request. You can get the ID from the response to an earlier <a>CreateAccount</a> request, or from the <a>ListCreateAccountStatus</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an create account request ID string requires "car-" followed by from 8 to 32 lower-case letters or digits.</p>
-- Required parameter: CreateAccountRequestId
function M.DescribeCreateAccountStatusRequest(CreateAccountRequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCreateAccountStatusRequest")
	local t = { 
		["CreateAccountRequestId"] = CreateAccountRequestId,
	}
	M.AssertDescribeCreateAccountStatusRequest(t)
	return t
end

local DeletePolicyRequest_keys = { "PolicyId" = true, nil }

function M.AssertDeletePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePolicyRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	if struct["PolicyId"] then M.AssertPolicyId(struct["PolicyId"]) end
	for k,_ in pairs(struct) do
		assert(DeletePolicyRequest_keys[k], "DeletePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePolicyRequest
--  
-- @param PolicyId [PolicyId] <p>The unique identifier (ID) of the policy that you want to delete. You can get the ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- Required parameter: PolicyId
function M.DeletePolicyRequest(PolicyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePolicyRequest")
	local t = { 
		["PolicyId"] = PolicyId,
	}
	M.AssertDeletePolicyRequest(t)
	return t
end

local ListHandshakesForAccountResponse_keys = { "Handshakes" = true, "NextToken" = true, nil }

function M.AssertListHandshakesForAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHandshakesForAccountResponse to be of type 'table'")
	if struct["Handshakes"] then M.AssertHandshakes(struct["Handshakes"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListHandshakesForAccountResponse_keys[k], "ListHandshakesForAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHandshakesForAccountResponse
--  
-- @param Handshakes [Handshakes] <p>A list of <a>Handshake</a> objects with details about each of the handshakes that is associated with the specified account.</p>
-- @param NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
function M.ListHandshakesForAccountResponse(Handshakes, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHandshakesForAccountResponse")
	local t = { 
		["Handshakes"] = Handshakes,
		["NextToken"] = NextToken,
	}
	M.AssertListHandshakesForAccountResponse(t)
	return t
end

local TooManyRequestsException_keys = { "Message" = true, "Type" = true, nil }

function M.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["Type"] then M.AssertExceptionType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(TooManyRequestsException_keys[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- <p>You've sent too many requests in too short a period of time. The limit helps protect against denial-of-service attacks. Try again later.</p>
-- @param Message [ExceptionMessage] <p>You've sent too many requests in too short a period of time. The limit helps protect against denial-of-service attacks. Try again later.</p>
-- @param Type [ExceptionType] <p>You've sent too many requests in too short a period of time. The limit helps protect against denial-of-service attacks. Try again later.</p>
function M.TooManyRequestsException(Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyRequestsException")
	local t = { 
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertTooManyRequestsException(t)
	return t
end

local ListAccountsResponse_keys = { "NextToken" = true, "Accounts" = true, nil }

function M.AssertListAccountsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccountsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Accounts"] then M.AssertAccounts(struct["Accounts"]) end
	for k,_ in pairs(struct) do
		assert(ListAccountsResponse_keys[k], "ListAccountsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccountsResponse
--  
-- @param NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param Accounts [Accounts] <p>A list of objects in the organization.</p>
function M.ListAccountsResponse(NextToken, Accounts, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAccountsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Accounts"] = Accounts,
	}
	M.AssertListAccountsResponse(t)
	return t
end

local InviteAccountToOrganizationResponse_keys = { "Handshake" = true, nil }

function M.AssertInviteAccountToOrganizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InviteAccountToOrganizationResponse to be of type 'table'")
	if struct["Handshake"] then M.AssertHandshake(struct["Handshake"]) end
	for k,_ in pairs(struct) do
		assert(InviteAccountToOrganizationResponse_keys[k], "InviteAccountToOrganizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InviteAccountToOrganizationResponse
--  
-- @param Handshake [Handshake] <p>A structure that contains details about the handshake that is created to support this invitation request.</p>
function M.InviteAccountToOrganizationResponse(Handshake, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InviteAccountToOrganizationResponse")
	local t = { 
		["Handshake"] = Handshake,
	}
	M.AssertInviteAccountToOrganizationResponse(t)
	return t
end

local ServiceException_keys = { "Message" = true, nil }

function M.AssertServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ServiceException_keys[k], "ServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceException
-- <p>AWS Organizations can't complete your request because of an internal service error. Try again later.</p>
-- @param Message [ExceptionMessage] <p>AWS Organizations can't complete your request because of an internal service error. Try again later.</p>
function M.ServiceException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertServiceException(t)
	return t
end

local PolicySummary_keys = { "AwsManaged" = true, "Description" = true, "Type" = true, "Id" = true, "Arn" = true, "Name" = true, nil }

function M.AssertPolicySummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicySummary to be of type 'table'")
	if struct["AwsManaged"] then M.AssertAwsManagedPolicy(struct["AwsManaged"]) end
	if struct["Description"] then M.AssertPolicyDescription(struct["Description"]) end
	if struct["Type"] then M.AssertPolicyType(struct["Type"]) end
	if struct["Id"] then M.AssertPolicyId(struct["Id"]) end
	if struct["Arn"] then M.AssertPolicyArn(struct["Arn"]) end
	if struct["Name"] then M.AssertPolicyName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(PolicySummary_keys[k], "PolicySummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicySummary
-- <p>Contains information about a policy, but does not include the content. To see the content of a policy, see <a>DescribePolicy</a>.</p>
-- @param AwsManaged [AwsManagedPolicy] <p>A boolean value that indicates whether the specified policy is an AWS managed policy. If true, then you can attach the policy to roots, OUs, or accounts, but you cannot edit it.</p>
-- @param Description [PolicyDescription] <p>The description of the policy.</p>
-- @param Type [PolicyType] <p>The type of policy.</p>
-- @param Id [PolicyId] <p>The unique identifier (ID) of the policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- @param Arn [PolicyArn] <p>The Amazon Resource Name (ARN) of the policy.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param Name [PolicyName] <p>The friendly name of the policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
function M.PolicySummary(AwsManaged, Description, Type, Id, Arn, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicySummary")
	local t = { 
		["AwsManaged"] = AwsManaged,
		["Description"] = Description,
		["Type"] = Type,
		["Id"] = Id,
		["Arn"] = Arn,
		["Name"] = Name,
	}
	M.AssertPolicySummary(t)
	return t
end

local AcceptHandshakeRequest_keys = { "HandshakeId" = true, nil }

function M.AssertAcceptHandshakeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptHandshakeRequest to be of type 'table'")
	assert(struct["HandshakeId"], "Expected key HandshakeId to exist in table")
	if struct["HandshakeId"] then M.AssertHandshakeId(struct["HandshakeId"]) end
	for k,_ in pairs(struct) do
		assert(AcceptHandshakeRequest_keys[k], "AcceptHandshakeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptHandshakeRequest
--  
-- @param HandshakeId [HandshakeId] <p>The unique identifier (ID) of the handshake that you want to accept.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
-- Required parameter: HandshakeId
function M.AcceptHandshakeRequest(HandshakeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcceptHandshakeRequest")
	local t = { 
		["HandshakeId"] = HandshakeId,
	}
	M.AssertAcceptHandshakeRequest(t)
	return t
end

local RootNotFoundException_keys = { "Message" = true, nil }

function M.AssertRootNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RootNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(RootNotFoundException_keys[k], "RootNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RootNotFoundException
-- <p>We can't find a root with the RootId that you specified.</p>
-- @param Message [ExceptionMessage] <p>We can't find a root with the RootId that you specified.</p>
function M.RootNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RootNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertRootNotFoundException(t)
	return t
end

local DuplicateAccountException_keys = { "Message" = true, nil }

function M.AssertDuplicateAccountException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateAccountException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DuplicateAccountException_keys[k], "DuplicateAccountException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateAccountException
-- <p>That account is already present in the specified destination.</p>
-- @param Message [ExceptionMessage] <p>That account is already present in the specified destination.</p>
function M.DuplicateAccountException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateAccountException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDuplicateAccountException(t)
	return t
end

local ListChildrenRequest_keys = { "ChildType" = true, "NextToken" = true, "MaxResults" = true, "ParentId" = true, nil }

function M.AssertListChildrenRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListChildrenRequest to be of type 'table'")
	assert(struct["ParentId"], "Expected key ParentId to exist in table")
	assert(struct["ChildType"], "Expected key ChildType to exist in table")
	if struct["ChildType"] then M.AssertChildType(struct["ChildType"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	if struct["ParentId"] then M.AssertParentId(struct["ParentId"]) end
	for k,_ in pairs(struct) do
		assert(ListChildrenRequest_keys[k], "ListChildrenRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListChildrenRequest
--  
-- @param ChildType [ChildType] <p>Filters the output to include only the specified child type.</p>
-- @param NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- @param ParentId [ParentId] <p>The unique identifier (ID) for the parent root or OU whose children you want to list.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- Required parameter: ParentId
-- Required parameter: ChildType
function M.ListChildrenRequest(ChildType, NextToken, MaxResults, ParentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListChildrenRequest")
	local t = { 
		["ChildType"] = ChildType,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["ParentId"] = ParentId,
	}
	M.AssertListChildrenRequest(t)
	return t
end

local PolicyTypeNotAvailableForOrganizationException_keys = { "Message" = true, nil }

function M.AssertPolicyTypeNotAvailableForOrganizationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyTypeNotAvailableForOrganizationException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(PolicyTypeNotAvailableForOrganizationException_keys[k], "PolicyTypeNotAvailableForOrganizationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyTypeNotAvailableForOrganizationException
-- <p>You can't use the specified policy type with the feature set currently enabled for this organization. For example, you can enable service control policies (SCPs) only after you enable all features in the organization. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html#enable_policies_on_root">Enabling and Disabling a Policy Type on a Root</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param Message [ExceptionMessage] <p>You can't use the specified policy type with the feature set currently enabled for this organization. For example, you can enable service control policies (SCPs) only after you enable all features in the organization. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html#enable_policies_on_root">Enabling and Disabling a Policy Type on a Root</a> in the <i>AWS Organizations User Guide</i>.</p>
function M.PolicyTypeNotAvailableForOrganizationException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyTypeNotAvailableForOrganizationException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertPolicyTypeNotAvailableForOrganizationException(t)
	return t
end

local ListHandshakesForAccountRequest_keys = { "Filter" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListHandshakesForAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHandshakesForAccountRequest to be of type 'table'")
	if struct["Filter"] then M.AssertHandshakeFilter(struct["Filter"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListHandshakesForAccountRequest_keys[k], "ListHandshakesForAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHandshakesForAccountRequest
--  
-- @param Filter [HandshakeFilter] <p>Filters the handshakes that you want included in the response. The default is all types. Use the <code>ActionType</code> element to limit the output to only a specified type, such as <code>INVITE</code>, <code>ENABLE-FULL-CONTROL</code>, or <code>APPROVE-FULL-CONTROL</code>. Alternatively, for the <code>ENABLE-FULL-CONTROL</code> handshake that generates a separate child handshake for each member account, you can specify <code>ParentHandshakeId</code> to see only the handshakes that were generated by that parent request.</p>
-- @param NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
function M.ListHandshakesForAccountRequest(Filter, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHandshakesForAccountRequest")
	local t = { 
		["Filter"] = Filter,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListHandshakesForAccountRequest(t)
	return t
end

local ListPoliciesForTargetRequest_keys = { "Filter" = true, "NextToken" = true, "TargetId" = true, "MaxResults" = true, nil }

function M.AssertListPoliciesForTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesForTargetRequest to be of type 'table'")
	assert(struct["TargetId"], "Expected key TargetId to exist in table")
	assert(struct["Filter"], "Expected key Filter to exist in table")
	if struct["Filter"] then M.AssertPolicyType(struct["Filter"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["TargetId"] then M.AssertPolicyTargetId(struct["TargetId"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListPoliciesForTargetRequest_keys[k], "ListPoliciesForTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesForTargetRequest
--  
-- @param Filter [PolicyType] <p>The type of policy that you want to include in the returned list.</p>
-- @param NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param TargetId [PolicyTargetId] <p>The unique identifier (ID) of the root, organizational unit, or account whose policies you want to list.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- @param MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- Required parameter: TargetId
-- Required parameter: Filter
function M.ListPoliciesForTargetRequest(Filter, NextToken, TargetId, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPoliciesForTargetRequest")
	local t = { 
		["Filter"] = Filter,
		["NextToken"] = NextToken,
		["TargetId"] = TargetId,
		["MaxResults"] = MaxResults,
	}
	M.AssertListPoliciesForTargetRequest(t)
	return t
end

local MasterCannotLeaveOrganizationException_keys = { "Message" = true, nil }

function M.AssertMasterCannotLeaveOrganizationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MasterCannotLeaveOrganizationException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(MasterCannotLeaveOrganizationException_keys[k], "MasterCannotLeaveOrganizationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MasterCannotLeaveOrganizationException
-- <p>You can't remove a master account from an organization. If you want the master account to become a member account in another organization, you must first delete the current organization of the master account.</p>
-- @param Message [ExceptionMessage] <p>You can't remove a master account from an organization. If you want the master account to become a member account in another organization, you must first delete the current organization of the master account.</p>
function M.MasterCannotLeaveOrganizationException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MasterCannotLeaveOrganizationException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertMasterCannotLeaveOrganizationException(t)
	return t
end

local ListRootsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListRootsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRootsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListRootsRequest_keys[k], "ListRootsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRootsRequest
--  
-- @param NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
function M.ListRootsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRootsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListRootsRequest(t)
	return t
end

local OrganizationalUnitNotEmptyException_keys = { "Message" = true, nil }

function M.AssertOrganizationalUnitNotEmptyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrganizationalUnitNotEmptyException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(OrganizationalUnitNotEmptyException_keys[k], "OrganizationalUnitNotEmptyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrganizationalUnitNotEmptyException
-- <p>The specified organizational unit (OU) is not empty. Move all accounts to another root or to other OUs, remove all child OUs, and then try the operation again.</p>
-- @param Message [ExceptionMessage] <p>The specified organizational unit (OU) is not empty. Move all accounts to another root or to other OUs, remove all child OUs, and then try the operation again.</p>
function M.OrganizationalUnitNotEmptyException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrganizationalUnitNotEmptyException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertOrganizationalUnitNotEmptyException(t)
	return t
end

local AWSOrganizationsNotInUseException_keys = { "Message" = true, nil }

function M.AssertAWSOrganizationsNotInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AWSOrganizationsNotInUseException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(AWSOrganizationsNotInUseException_keys[k], "AWSOrganizationsNotInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AWSOrganizationsNotInUseException
-- <p>Your account is not a member of an organization. To make this request, you must use the credentials of an account that belongs to an organization.</p>
-- @param Message [ExceptionMessage] <p>Your account is not a member of an organization. To make this request, you must use the credentials of an account that belongs to an organization.</p>
function M.AWSOrganizationsNotInUseException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AWSOrganizationsNotInUseException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertAWSOrganizationsNotInUseException(t)
	return t
end

local DetachPolicyRequest_keys = { "TargetId" = true, "PolicyId" = true, nil }

function M.AssertDetachPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachPolicyRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	assert(struct["TargetId"], "Expected key TargetId to exist in table")
	if struct["TargetId"] then M.AssertPolicyTargetId(struct["TargetId"]) end
	if struct["PolicyId"] then M.AssertPolicyId(struct["PolicyId"]) end
	for k,_ in pairs(struct) do
		assert(DetachPolicyRequest_keys[k], "DetachPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachPolicyRequest
--  
-- @param TargetId [PolicyTargetId] <p>The unique identifier (ID) of the root, OU, or account from which you want to detach the policy. You can get the ID from the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- @param PolicyId [PolicyId] <p>The unique identifier (ID) of the policy you want to detach. You can get the ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- Required parameter: PolicyId
-- Required parameter: TargetId
function M.DetachPolicyRequest(TargetId, PolicyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachPolicyRequest")
	local t = { 
		["TargetId"] = TargetId,
		["PolicyId"] = PolicyId,
	}
	M.AssertDetachPolicyRequest(t)
	return t
end

local InviteAccountToOrganizationRequest_keys = { "Notes" = true, "Target" = true, nil }

function M.AssertInviteAccountToOrganizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InviteAccountToOrganizationRequest to be of type 'table'")
	assert(struct["Target"], "Expected key Target to exist in table")
	if struct["Notes"] then M.AssertHandshakeNotes(struct["Notes"]) end
	if struct["Target"] then M.AssertHandshakeParty(struct["Target"]) end
	for k,_ in pairs(struct) do
		assert(InviteAccountToOrganizationRequest_keys[k], "InviteAccountToOrganizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InviteAccountToOrganizationRequest
--  
-- @param Notes [HandshakeNotes] <p>Additional information that you want to include in the generated email to the recipient account owner.</p>
-- @param Target [HandshakeParty] <p>The identifier (ID) of the AWS account that you want to invite to join your organization. This is a JSON object that contains the following elements: </p> <p> <code>{ "Type": "ACCOUNT", "Id": "&lt;<i> <b>account id number</b> </i>&gt;" }</code> </p> <p>If you use the AWS CLI, you can submit this as a single string, similar to the following example:</p> <p> <code>--target id=123456789012,type=ACCOUNT</code> </p> <p>If you specify <code>"Type": "ACCOUNT"</code>, then you must provide the AWS account ID number as the <code>Id</code>. If you specify <code>"Type": "EMAIL"</code>, then you must specify the email address that is associated with the account.</p> <p> <code>--target id=bill@example.com,type=EMAIL</code> </p>
-- Required parameter: Target
function M.InviteAccountToOrganizationRequest(Notes, Target, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InviteAccountToOrganizationRequest")
	local t = { 
		["Notes"] = Notes,
		["Target"] = Target,
	}
	M.AssertInviteAccountToOrganizationRequest(t)
	return t
end

local ListParentsResponse_keys = { "NextToken" = true, "Parents" = true, nil }

function M.AssertListParentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListParentsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Parents"] then M.AssertParents(struct["Parents"]) end
	for k,_ in pairs(struct) do
		assert(ListParentsResponse_keys[k], "ListParentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListParentsResponse
--  
-- @param NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param Parents [Parents] <p>A list of parents for the specified child account or OU.</p>
function M.ListParentsResponse(NextToken, Parents, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListParentsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Parents"] = Parents,
	}
	M.AssertListParentsResponse(t)
	return t
end

local DisablePolicyTypeRequest_keys = { "RootId" = true, "PolicyType" = true, nil }

function M.AssertDisablePolicyTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisablePolicyTypeRequest to be of type 'table'")
	assert(struct["RootId"], "Expected key RootId to exist in table")
	assert(struct["PolicyType"], "Expected key PolicyType to exist in table")
	if struct["RootId"] then M.AssertRootId(struct["RootId"]) end
	if struct["PolicyType"] then M.AssertPolicyType(struct["PolicyType"]) end
	for k,_ in pairs(struct) do
		assert(DisablePolicyTypeRequest_keys[k], "DisablePolicyTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisablePolicyTypeRequest
--  
-- @param RootId [RootId] <p>The unique identifier (ID) of the root in which you want to disable a policy type. You can get the ID from the <a>ListPolicies</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by from 4 to 32 lower-case letters or digits.</p>
-- @param PolicyType [PolicyType] <p>The policy type that you want to disable in this root.</p>
-- Required parameter: RootId
-- Required parameter: PolicyType
function M.DisablePolicyTypeRequest(RootId, PolicyType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisablePolicyTypeRequest")
	local t = { 
		["RootId"] = RootId,
		["PolicyType"] = PolicyType,
	}
	M.AssertDisablePolicyTypeRequest(t)
	return t
end

local DescribeAccountRequest_keys = { "AccountId" = true, nil }

function M.AssertDescribeAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAccountRequest_keys[k], "DescribeAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountRequest
--  
-- @param AccountId [AccountId] <p>The unique identifier (ID) of the AWS account that you want information about. You can get the ID from the <a>ListAccounts</a> or <a>ListAccountsForParent</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
-- Required parameter: AccountId
function M.DescribeAccountRequest(AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountRequest")
	local t = { 
		["AccountId"] = AccountId,
	}
	M.AssertDescribeAccountRequest(t)
	return t
end

local CreateOrganizationRequest_keys = { "FeatureSet" = true, nil }

function M.AssertCreateOrganizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOrganizationRequest to be of type 'table'")
	if struct["FeatureSet"] then M.AssertOrganizationFeatureSet(struct["FeatureSet"]) end
	for k,_ in pairs(struct) do
		assert(CreateOrganizationRequest_keys[k], "CreateOrganizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOrganizationRequest
--  
-- @param FeatureSet [OrganizationFeatureSet] <p>Specifies the feature set supported by the new organization. Each feature set supports different levels of functionality.</p> <ul> <li> <p> <i>CONSOLIDATED_BILLING</i>: All member accounts have their bills consolidated to and paid by the master account. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-cb-only">Consolidated Billing</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p> <i>ALL</i>: In addition to all the features supported by the consolidated billing feature set, the master account can also apply any type of policy to any member account in the organization. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-all">All features</a> in the <i>AWS Organizations User Guide</i>.</p> </li> </ul>
function M.CreateOrganizationRequest(FeatureSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateOrganizationRequest")
	local t = { 
		["FeatureSet"] = FeatureSet,
	}
	M.AssertCreateOrganizationRequest(t)
	return t
end

local PolicyTypeAlreadyEnabledException_keys = { "Message" = true, nil }

function M.AssertPolicyTypeAlreadyEnabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyTypeAlreadyEnabledException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(PolicyTypeAlreadyEnabledException_keys[k], "PolicyTypeAlreadyEnabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyTypeAlreadyEnabledException
-- <p>The specified policy type is already enabled in the specified root.</p>
-- @param Message [ExceptionMessage] <p>The specified policy type is already enabled in the specified root.</p>
function M.PolicyTypeAlreadyEnabledException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyTypeAlreadyEnabledException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertPolicyTypeAlreadyEnabledException(t)
	return t
end

local ListCreateAccountStatusRequest_keys = { "States" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListCreateAccountStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCreateAccountStatusRequest to be of type 'table'")
	if struct["States"] then M.AssertCreateAccountStates(struct["States"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListCreateAccountStatusRequest_keys[k], "ListCreateAccountStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCreateAccountStatusRequest
--  
-- @param States [CreateAccountStates] <p>A list of one or more states that you want included in the response. If this parameter is not present, then all requests are included in the response.</p>
-- @param NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
function M.ListCreateAccountStatusRequest(States, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCreateAccountStatusRequest")
	local t = { 
		["States"] = States,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListCreateAccountStatusRequest(t)
	return t
end

local ConstraintViolationException_keys = { "Message" = true, "Reason" = true, nil }

function M.AssertConstraintViolationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConstraintViolationException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["Reason"] then M.AssertConstraintViolationExceptionReason(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(ConstraintViolationException_keys[k], "ConstraintViolationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConstraintViolationException
-- <p>Performing this operation violates a minimum or maximum value limit. For example, attempting to removing the last SCP from an OU or root, inviting or creating too many accounts to the organization, or attaching too many policies to an account, OU, or root. This exception includes a reason that contains additional information about the violated limit:</p> <p/> <ul> <li> <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number of accounts in an organization. If you need more accounts, contact AWS Support to request an increase in your limit. </p> <p>Or, The number of invitations that you tried to send would cause you to exceed the limit of accounts in your organization. Send fewer invitations, or contact AWS Support to request an increase in the number of accounts.</p> <p> <b>Note</b>: deleted and closed accounts still count toward your limit.</p> </li> <li> <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of handshakes you can send in one day.</p> </li> <li> <p>OU_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the number of organizational units you can have in an organization.</p> </li> <li> <p>OU_DEPTH_LIMIT_EXCEEDED: You attempted to create an organizational unit tree that is too many levels deep.</p> </li> <li> <p>POLICY_NUMBER_LIMIT_EXCEEDED. You attempted to exceed the number of policies that you can have in an organization.</p> </li> <li> <p>MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to exceed the number of policies of a certain type that can be attached to an entity at one time.</p> </li> <li> <p>MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to detach a policy from an entity that would cause the entity to have fewer than the minimum number of policies of a certain type required.</p> </li> <li> <p>ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA: You attempted to remove an account from the organization that does not yet have enough information to exist as a stand-alone account. This account requires you to first agree to the End-User License Agreement (EULA).</p> </li> <li> <p>ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION: You attempted to remove an account from the organization that does not yet have enough information to exist as a stand-alone account. This account requires you to first complete phone verification.</p> </li> <li> <p>MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To create an organization with this account, you first must associate a payment instrument, such as a credit card, with the account.</p> </li> <li> <p>MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To complete this operation with this member account, you first must associate a payment instrument, such as a credit card, with the account.</p> </li> <li> <p>ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of accounts that you can create in one day.</p> </li> <li> <p>MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE: To create an account in this organization, you first must migrate the organization's master account to the marketplace that corresponds to the master account's address. For example, accounts with India addresses must be associated with the AISPL marketplace. All accounts in an organization must be associated with the same marketplace.</p> </li> </ul>
-- @param Message [ExceptionMessage] <p>Performing this operation violates a minimum or maximum value limit. For example, attempting to removing the last SCP from an OU or root, inviting or creating too many accounts to the organization, or attaching too many policies to an account, OU, or root. This exception includes a reason that contains additional information about the violated limit:</p> <p/> <ul> <li> <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number of accounts in an organization. If you need more accounts, contact AWS Support to request an increase in your limit. </p> <p>Or, The number of invitations that you tried to send would cause you to exceed the limit of accounts in your organization. Send fewer invitations, or contact AWS Support to request an increase in the number of accounts.</p> <p> <b>Note</b>: deleted and closed accounts still count toward your limit.</p> </li> <li> <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of handshakes you can send in one day.</p> </li> <li> <p>OU_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the number of organizational units you can have in an organization.</p> </li> <li> <p>OU_DEPTH_LIMIT_EXCEEDED: You attempted to create an organizational unit tree that is too many levels deep.</p> </li> <li> <p>POLICY_NUMBER_LIMIT_EXCEEDED. You attempted to exceed the number of policies that you can have in an organization.</p> </li> <li> <p>MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to exceed the number of policies of a certain type that can be attached to an entity at one time.</p> </li> <li> <p>MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to detach a policy from an entity that would cause the entity to have fewer than the minimum number of policies of a certain type required.</p> </li> <li> <p>ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA: You attempted to remove an account from the organization that does not yet have enough information to exist as a stand-alone account. This account requires you to first agree to the End-User License Agreement (EULA).</p> </li> <li> <p>ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION: You attempted to remove an account from the organization that does not yet have enough information to exist as a stand-alone account. This account requires you to first complete phone verification.</p> </li> <li> <p>MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To create an organization with this account, you first must associate a payment instrument, such as a credit card, with the account.</p> </li> <li> <p>MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To complete this operation with this member account, you first must associate a payment instrument, such as a credit card, with the account.</p> </li> <li> <p>ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of accounts that you can create in one day.</p> </li> <li> <p>MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE: To create an account in this organization, you first must migrate the organization's master account to the marketplace that corresponds to the master account's address. For example, accounts with India addresses must be associated with the AISPL marketplace. All accounts in an organization must be associated with the same marketplace.</p> </li> </ul>
-- @param Reason [ConstraintViolationExceptionReason] <p>Performing this operation violates a minimum or maximum value limit. For example, attempting to removing the last SCP from an OU or root, inviting or creating too many accounts to the organization, or attaching too many policies to an account, OU, or root. This exception includes a reason that contains additional information about the violated limit:</p> <p/> <ul> <li> <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number of accounts in an organization. If you need more accounts, contact AWS Support to request an increase in your limit. </p> <p>Or, The number of invitations that you tried to send would cause you to exceed the limit of accounts in your organization. Send fewer invitations, or contact AWS Support to request an increase in the number of accounts.</p> <p> <b>Note</b>: deleted and closed accounts still count toward your limit.</p> </li> <li> <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of handshakes you can send in one day.</p> </li> <li> <p>OU_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the number of organizational units you can have in an organization.</p> </li> <li> <p>OU_DEPTH_LIMIT_EXCEEDED: You attempted to create an organizational unit tree that is too many levels deep.</p> </li> <li> <p>POLICY_NUMBER_LIMIT_EXCEEDED. You attempted to exceed the number of policies that you can have in an organization.</p> </li> <li> <p>MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to exceed the number of policies of a certain type that can be attached to an entity at one time.</p> </li> <li> <p>MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to detach a policy from an entity that would cause the entity to have fewer than the minimum number of policies of a certain type required.</p> </li> <li> <p>ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA: You attempted to remove an account from the organization that does not yet have enough information to exist as a stand-alone account. This account requires you to first agree to the End-User License Agreement (EULA).</p> </li> <li> <p>ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION: You attempted to remove an account from the organization that does not yet have enough information to exist as a stand-alone account. This account requires you to first complete phone verification.</p> </li> <li> <p>MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To create an organization with this account, you first must associate a payment instrument, such as a credit card, with the account.</p> </li> <li> <p>MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To complete this operation with this member account, you first must associate a payment instrument, such as a credit card, with the account.</p> </li> <li> <p>ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of accounts that you can create in one day.</p> </li> <li> <p>MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE: To create an account in this organization, you first must migrate the organization's master account to the marketplace that corresponds to the master account's address. For example, accounts with India addresses must be associated with the AISPL marketplace. All accounts in an organization must be associated with the same marketplace.</p> </li> </ul>
function M.ConstraintViolationException(Message, Reason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConstraintViolationException")
	local t = { 
		["Message"] = Message,
		["Reason"] = Reason,
	}
	M.AssertConstraintViolationException(t)
	return t
end

local PolicyInUseException_keys = { "Message" = true, nil }

function M.AssertPolicyInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyInUseException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(PolicyInUseException_keys[k], "PolicyInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyInUseException
-- <p>The policy is attached to one or more entities. You must detach it from all roots, organizational units (OUs), and accounts before performing this operation.</p>
-- @param Message [ExceptionMessage] <p>The policy is attached to one or more entities. You must detach it from all roots, organizational units (OUs), and accounts before performing this operation.</p>
function M.PolicyInUseException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyInUseException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertPolicyInUseException(t)
	return t
end

local Child_keys = { "Type" = true, "Id" = true, nil }

function M.AssertChild(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Child to be of type 'table'")
	if struct["Type"] then M.AssertChildType(struct["Type"]) end
	if struct["Id"] then M.AssertChildId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(Child_keys[k], "Child contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Child
-- <p>Contains a list of child entities, either OUs or accounts.</p>
-- @param Type [ChildType] <p>The type of this child entity.</p>
-- @param Id [ChildId] <p>The unique identifier (ID) of this child entity.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a child ID string requires one of the following:</p> <ul> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
function M.Child(Type, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Child")
	local t = { 
		["Type"] = Type,
		["Id"] = Id,
	}
	M.AssertChild(t)
	return t
end

local InvalidHandshakeTransitionException_keys = { "Message" = true, nil }

function M.AssertInvalidHandshakeTransitionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidHandshakeTransitionException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidHandshakeTransitionException_keys[k], "InvalidHandshakeTransitionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidHandshakeTransitionException
-- <p>You can't perform the operation on the handshake in its current state. For example, you can't cancel a handshake that was already accepted, or accept a handshake that was already declined.</p>
-- @param Message [ExceptionMessage] <p>You can't perform the operation on the handshake in its current state. For example, you can't cancel a handshake that was already accepted, or accept a handshake that was already declined.</p>
function M.InvalidHandshakeTransitionException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidHandshakeTransitionException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidHandshakeTransitionException(t)
	return t
end

local PolicyTargetSummary_keys = { "Type" = true, "TargetId" = true, "Name" = true, "Arn" = true, nil }

function M.AssertPolicyTargetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyTargetSummary to be of type 'table'")
	if struct["Type"] then M.AssertTargetType(struct["Type"]) end
	if struct["TargetId"] then M.AssertPolicyTargetId(struct["TargetId"]) end
	if struct["Name"] then M.AssertTargetName(struct["Name"]) end
	if struct["Arn"] then M.AssertGenericArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(PolicyTargetSummary_keys[k], "PolicyTargetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyTargetSummary
-- <p>Contains information about a root, OU, or account that a policy is attached to.</p>
-- @param Type [TargetType] <p>The type of the policy target.</p>
-- @param TargetId [PolicyTargetId] <p>The unique identifier (ID) of the policy target.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- @param Name [TargetName] <p>The friendly name of the policy target.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- @param Arn [GenericArn] <p>The Amazon Resource Name (ARN) of the policy target.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
function M.PolicyTargetSummary(Type, TargetId, Name, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyTargetSummary")
	local t = { 
		["Type"] = Type,
		["TargetId"] = TargetId,
		["Name"] = Name,
		["Arn"] = Arn,
	}
	M.AssertPolicyTargetSummary(t)
	return t
end

local CreateAccountStatusNotFoundException_keys = { "Message" = true, nil }

function M.AssertCreateAccountStatusNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccountStatusNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(CreateAccountStatusNotFoundException_keys[k], "CreateAccountStatusNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccountStatusNotFoundException
-- <p>We can't find an create account request with the CreateAccountRequestId that you specified.</p>
-- @param Message [ExceptionMessage] <p>We can't find an create account request with the CreateAccountRequestId that you specified.</p>
function M.CreateAccountStatusNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAccountStatusNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertCreateAccountStatusNotFoundException(t)
	return t
end

local OrganizationNotEmptyException_keys = { "Message" = true, nil }

function M.AssertOrganizationNotEmptyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrganizationNotEmptyException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(OrganizationNotEmptyException_keys[k], "OrganizationNotEmptyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrganizationNotEmptyException
-- <p>The organization isn't empty. To delete an organization, you must first remove all accounts except the master account, delete all organizational units (OUs), and delete all policies.</p>
-- @param Message [ExceptionMessage] <p>The organization isn't empty. To delete an organization, you must first remove all accounts except the master account, delete all organizational units (OUs), and delete all policies.</p>
function M.OrganizationNotEmptyException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrganizationNotEmptyException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertOrganizationNotEmptyException(t)
	return t
end

local ListPoliciesForTargetResponse_keys = { "NextToken" = true, "Policies" = true, nil }

function M.AssertListPoliciesForTargetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesForTargetResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Policies"] then M.AssertPolicies(struct["Policies"]) end
	for k,_ in pairs(struct) do
		assert(ListPoliciesForTargetResponse_keys[k], "ListPoliciesForTargetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesForTargetResponse
--  
-- @param NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param Policies [Policies] <p>The list of policies that match the criteria in the request.</p>
function M.ListPoliciesForTargetResponse(NextToken, Policies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPoliciesForTargetResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Policies"] = Policies,
	}
	M.AssertListPoliciesForTargetResponse(t)
	return t
end

local UpdateOrganizationalUnitRequest_keys = { "Name" = true, "OrganizationalUnitId" = true, nil }

function M.AssertUpdateOrganizationalUnitRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateOrganizationalUnitRequest to be of type 'table'")
	assert(struct["OrganizationalUnitId"], "Expected key OrganizationalUnitId to exist in table")
	if struct["Name"] then M.AssertOrganizationalUnitName(struct["Name"]) end
	if struct["OrganizationalUnitId"] then M.AssertOrganizationalUnitId(struct["OrganizationalUnitId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateOrganizationalUnitRequest_keys[k], "UpdateOrganizationalUnitRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateOrganizationalUnitRequest
--  
-- @param Name [OrganizationalUnitName] <p>The new name that you want to assign to the OU.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- @param OrganizationalUnitId [OrganizationalUnitId] <p>The unique identifier (ID) of the OU that you want to rename. You can get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p>
-- Required parameter: OrganizationalUnitId
function M.UpdateOrganizationalUnitRequest(Name, OrganizationalUnitId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateOrganizationalUnitRequest")
	local t = { 
		["Name"] = Name,
		["OrganizationalUnitId"] = OrganizationalUnitId,
	}
	M.AssertUpdateOrganizationalUnitRequest(t)
	return t
end

local PolicyNotAttachedException_keys = { "Message" = true, nil }

function M.AssertPolicyNotAttachedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyNotAttachedException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(PolicyNotAttachedException_keys[k], "PolicyNotAttachedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyNotAttachedException
-- <p>The policy isn't attached to the specified target in the specified root.</p>
-- @param Message [ExceptionMessage] <p>The policy isn't attached to the specified target in the specified root.</p>
function M.PolicyNotAttachedException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyNotAttachedException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertPolicyNotAttachedException(t)
	return t
end

local HandshakeAlreadyInStateException_keys = { "Message" = true, nil }

function M.AssertHandshakeAlreadyInStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HandshakeAlreadyInStateException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(HandshakeAlreadyInStateException_keys[k], "HandshakeAlreadyInStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HandshakeAlreadyInStateException
-- <p>The specified handshake is already in the requested state. For example, you can't accept a handshake that was already accepted.</p>
-- @param Message [ExceptionMessage] <p>The specified handshake is already in the requested state. For example, you can't accept a handshake that was already accepted.</p>
function M.HandshakeAlreadyInStateException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HandshakeAlreadyInStateException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertHandshakeAlreadyInStateException(t)
	return t
end

local DuplicatePolicyException_keys = { "Message" = true, nil }

function M.AssertDuplicatePolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicatePolicyException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DuplicatePolicyException_keys[k], "DuplicatePolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicatePolicyException
-- <p>A policy with the same name already exists.</p>
-- @param Message [ExceptionMessage] <p>A policy with the same name already exists.</p>
function M.DuplicatePolicyException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicatePolicyException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDuplicatePolicyException(t)
	return t
end

local ListOrganizationalUnitsForParentResponse_keys = { "NextToken" = true, "OrganizationalUnits" = true, nil }

function M.AssertListOrganizationalUnitsForParentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOrganizationalUnitsForParentResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["OrganizationalUnits"] then M.AssertOrganizationalUnits(struct["OrganizationalUnits"]) end
	for k,_ in pairs(struct) do
		assert(ListOrganizationalUnitsForParentResponse_keys[k], "ListOrganizationalUnitsForParentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOrganizationalUnitsForParentResponse
--  
-- @param NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param OrganizationalUnits [OrganizationalUnits] <p>A list of the OUs in the specified root or parent OU.</p>
function M.ListOrganizationalUnitsForParentResponse(NextToken, OrganizationalUnits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOrganizationalUnitsForParentResponse")
	local t = { 
		["NextToken"] = NextToken,
		["OrganizationalUnits"] = OrganizationalUnits,
	}
	M.AssertListOrganizationalUnitsForParentResponse(t)
	return t
end

local UpdatePolicyResponse_keys = { "Policy" = true, nil }

function M.AssertUpdatePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePolicyResponse to be of type 'table'")
	if struct["Policy"] then M.AssertPolicy(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(UpdatePolicyResponse_keys[k], "UpdatePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePolicyResponse
--  
-- @param Policy [Policy] <p>A structure that contains details about the updated policy, showing the requested changes.</p>
function M.UpdatePolicyResponse(Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePolicyResponse")
	local t = { 
		["Policy"] = Policy,
	}
	M.AssertUpdatePolicyResponse(t)
	return t
end

local DuplicateHandshakeException_keys = { "Message" = true, nil }

function M.AssertDuplicateHandshakeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateHandshakeException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DuplicateHandshakeException_keys[k], "DuplicateHandshakeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateHandshakeException
-- <p>A handshake with the same action and target already exists. For example, if you invited an account to join your organization, the invited account might already have a pending invitation from this organization. If you intend to resend an invitation to an account, ensure that existing handshakes that might be considered duplicates are canceled or declined.</p>
-- @param Message [ExceptionMessage] <p>A handshake with the same action and target already exists. For example, if you invited an account to join your organization, the invited account might already have a pending invitation from this organization. If you intend to resend an invitation to an account, ensure that existing handshakes that might be considered duplicates are canceled or declined.</p>
function M.DuplicateHandshakeException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateHandshakeException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDuplicateHandshakeException(t)
	return t
end

local FinalizingOrganizationException_keys = { "Message" = true, nil }

function M.AssertFinalizingOrganizationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FinalizingOrganizationException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(FinalizingOrganizationException_keys[k], "FinalizingOrganizationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FinalizingOrganizationException
-- <p>AWS Organizations could not finalize the creation of your organization. Try again later. If this persists, contact AWS customer support.</p>
-- @param Message [ExceptionMessage] <p>AWS Organizations could not finalize the creation of your organization. Try again later. If this persists, contact AWS customer support.</p>
function M.FinalizingOrganizationException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FinalizingOrganizationException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertFinalizingOrganizationException(t)
	return t
end

local AlreadyInOrganizationException_keys = { "Message" = true, nil }

function M.AssertAlreadyInOrganizationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlreadyInOrganizationException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(AlreadyInOrganizationException_keys[k], "AlreadyInOrganizationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlreadyInOrganizationException
-- <p>This account is already a member of an organization. An account can belong to only one organization at a time.</p>
-- @param Message [ExceptionMessage] <p>This account is already a member of an organization. An account can belong to only one organization at a time.</p>
function M.AlreadyInOrganizationException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AlreadyInOrganizationException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertAlreadyInOrganizationException(t)
	return t
end

local OrganizationalUnitNotFoundException_keys = { "Message" = true, nil }

function M.AssertOrganizationalUnitNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrganizationalUnitNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(OrganizationalUnitNotFoundException_keys[k], "OrganizationalUnitNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrganizationalUnitNotFoundException
-- <p>We can't find an organizational unit (OU) with the OrganizationalUnitId that you specified.</p>
-- @param Message [ExceptionMessage] <p>We can't find an organizational unit (OU) with the OrganizationalUnitId that you specified.</p>
function M.OrganizationalUnitNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrganizationalUnitNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertOrganizationalUnitNotFoundException(t)
	return t
end

local DescribeCreateAccountStatusResponse_keys = { "CreateAccountStatus" = true, nil }

function M.AssertDescribeCreateAccountStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCreateAccountStatusResponse to be of type 'table'")
	if struct["CreateAccountStatus"] then M.AssertCreateAccountStatus(struct["CreateAccountStatus"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCreateAccountStatusResponse_keys[k], "DescribeCreateAccountStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCreateAccountStatusResponse
--  
-- @param CreateAccountStatus [CreateAccountStatus] <p>A structure that contains the current status of an account creation request.</p>
function M.DescribeCreateAccountStatusResponse(CreateAccountStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCreateAccountStatusResponse")
	local t = { 
		["CreateAccountStatus"] = CreateAccountStatus,
	}
	M.AssertDescribeCreateAccountStatusResponse(t)
	return t
end

local CreateOrganizationalUnitResponse_keys = { "OrganizationalUnit" = true, nil }

function M.AssertCreateOrganizationalUnitResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOrganizationalUnitResponse to be of type 'table'")
	if struct["OrganizationalUnit"] then M.AssertOrganizationalUnit(struct["OrganizationalUnit"]) end
	for k,_ in pairs(struct) do
		assert(CreateOrganizationalUnitResponse_keys[k], "CreateOrganizationalUnitResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOrganizationalUnitResponse
--  
-- @param OrganizationalUnit [OrganizationalUnit] <p>A structure that contains details about the newly created OU.</p>
function M.CreateOrganizationalUnitResponse(OrganizationalUnit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateOrganizationalUnitResponse")
	local t = { 
		["OrganizationalUnit"] = OrganizationalUnit,
	}
	M.AssertCreateOrganizationalUnitResponse(t)
	return t
end

local CreatePolicyRequest_keys = { "Content" = true, "Type" = true, "Description" = true, "Name" = true, nil }

function M.AssertCreatePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyRequest to be of type 'table'")
	assert(struct["Content"], "Expected key Content to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Content"] then M.AssertPolicyContent(struct["Content"]) end
	if struct["Type"] then M.AssertPolicyType(struct["Type"]) end
	if struct["Description"] then M.AssertPolicyDescription(struct["Description"]) end
	if struct["Name"] then M.AssertPolicyName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreatePolicyRequest_keys[k], "CreatePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyRequest
--  
-- @param Content [PolicyContent] <p>The policy content to add to the new policy. For example, if you create a <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">service control policy</a> (SCP), this string must be JSON text that specifies the permissions that admins in attached accounts can delegate to their users, groups, and roles. For more information about the SCP syntax, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html">Service Control Policy Syntax</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param Type [PolicyType] <p>The type of policy to create.</p> <note> <p>In the current release, the only type of policy that you can create is a service control policy (SCP).</p> </note>
-- @param Description [PolicyDescription] <p>An optional description to assign to the policy.</p>
-- @param Name [PolicyName] <p>The friendly name to assign to the policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- Required parameter: Content
-- Required parameter: Description
-- Required parameter: Name
-- Required parameter: Type
function M.CreatePolicyRequest(Content, Type, Description, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyRequest")
	local t = { 
		["Content"] = Content,
		["Type"] = Type,
		["Description"] = Description,
		["Name"] = Name,
	}
	M.AssertCreatePolicyRequest(t)
	return t
end

local ChildNotFoundException_keys = { "Message" = true, nil }

function M.AssertChildNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChildNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ChildNotFoundException_keys[k], "ChildNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChildNotFoundException
-- <p>We can't find an organizational unit (OU) or AWS account with the ChildId that you specified.</p>
-- @param Message [ExceptionMessage] <p>We can't find an organizational unit (OU) or AWS account with the ChildId that you specified.</p>
function M.ChildNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChildNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertChildNotFoundException(t)
	return t
end

local DuplicatePolicyAttachmentException_keys = { "Message" = true, nil }

function M.AssertDuplicatePolicyAttachmentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicatePolicyAttachmentException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DuplicatePolicyAttachmentException_keys[k], "DuplicatePolicyAttachmentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicatePolicyAttachmentException
-- <p>The selected policy is already attached to the specified target.</p>
-- @param Message [ExceptionMessage] <p>The selected policy is already attached to the specified target.</p>
function M.DuplicatePolicyAttachmentException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicatePolicyAttachmentException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDuplicatePolicyAttachmentException(t)
	return t
end

local RemoveAccountFromOrganizationRequest_keys = { "AccountId" = true, nil }

function M.AssertRemoveAccountFromOrganizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveAccountFromOrganizationRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(RemoveAccountFromOrganizationRequest_keys[k], "RemoveAccountFromOrganizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveAccountFromOrganizationRequest
--  
-- @param AccountId [AccountId] <p>The unique identifier (ID) of the member account that you want to remove from the organization.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
-- Required parameter: AccountId
function M.RemoveAccountFromOrganizationRequest(AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveAccountFromOrganizationRequest")
	local t = { 
		["AccountId"] = AccountId,
	}
	M.AssertRemoveAccountFromOrganizationRequest(t)
	return t
end

local CreateOrganizationalUnitRequest_keys = { "Name" = true, "ParentId" = true, nil }

function M.AssertCreateOrganizationalUnitRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOrganizationalUnitRequest to be of type 'table'")
	assert(struct["ParentId"], "Expected key ParentId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertOrganizationalUnitName(struct["Name"]) end
	if struct["ParentId"] then M.AssertParentId(struct["ParentId"]) end
	for k,_ in pairs(struct) do
		assert(CreateOrganizationalUnitRequest_keys[k], "CreateOrganizationalUnitRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOrganizationalUnitRequest
--  
-- @param Name [OrganizationalUnitName] <p>The friendly name to assign to the new OU.</p>
-- @param ParentId [ParentId] <p>The unique identifier (ID) of the parent root or OU in which you want to create the new OU.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- Required parameter: ParentId
-- Required parameter: Name
function M.CreateOrganizationalUnitRequest(Name, ParentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateOrganizationalUnitRequest")
	local t = { 
		["Name"] = Name,
		["ParentId"] = ParentId,
	}
	M.AssertCreateOrganizationalUnitRequest(t)
	return t
end

local EnableAllFeaturesRequest_keys = { nil }

function M.AssertEnableAllFeaturesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableAllFeaturesRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(EnableAllFeaturesRequest_keys[k], "EnableAllFeaturesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableAllFeaturesRequest
--  
function M.EnableAllFeaturesRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableAllFeaturesRequest")
	local t = { 
	}
	M.AssertEnableAllFeaturesRequest(t)
	return t
end

local Policy_keys = { "Content" = true, "PolicySummary" = true, nil }

function M.AssertPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Policy to be of type 'table'")
	if struct["Content"] then M.AssertPolicyContent(struct["Content"]) end
	if struct["PolicySummary"] then M.AssertPolicySummary(struct["PolicySummary"]) end
	for k,_ in pairs(struct) do
		assert(Policy_keys[k], "Policy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Policy
-- <p>Contains rules to be applied to the affected accounts. Policies can be attached directly to accounts, or to roots and OUs to affect all accounts in those hierarchies.</p>
-- @param Content [PolicyContent] <p>The text content of the policy.</p>
-- @param PolicySummary [PolicySummary] <p>A structure that contains additional details about the policy.</p>
function M.Policy(Content, PolicySummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Policy")
	local t = { 
		["Content"] = Content,
		["PolicySummary"] = PolicySummary,
	}
	M.AssertPolicy(t)
	return t
end

local ListHandshakesForOrganizationResponse_keys = { "Handshakes" = true, "NextToken" = true, nil }

function M.AssertListHandshakesForOrganizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHandshakesForOrganizationResponse to be of type 'table'")
	if struct["Handshakes"] then M.AssertHandshakes(struct["Handshakes"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListHandshakesForOrganizationResponse_keys[k], "ListHandshakesForOrganizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHandshakesForOrganizationResponse
--  
-- @param Handshakes [Handshakes] <p>A list of <a>Handshake</a> objects with details about each of the handshakes that are associated with an organization.</p>
-- @param NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
function M.ListHandshakesForOrganizationResponse(Handshakes, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHandshakesForOrganizationResponse")
	local t = { 
		["Handshakes"] = Handshakes,
		["NextToken"] = NextToken,
	}
	M.AssertListHandshakesForOrganizationResponse(t)
	return t
end

local DescribeAccountResponse_keys = { "Account" = true, nil }

function M.AssertDescribeAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountResponse to be of type 'table'")
	if struct["Account"] then M.AssertAccount(struct["Account"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAccountResponse_keys[k], "DescribeAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountResponse
--  
-- @param Account [Account] <p>A structure that contains information about the requested account.</p>
function M.DescribeAccountResponse(Account, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountResponse")
	local t = { 
		["Account"] = Account,
	}
	M.AssertDescribeAccountResponse(t)
	return t
end

local HandshakeFilter_keys = { "ActionType" = true, "ParentHandshakeId" = true, nil }

function M.AssertHandshakeFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HandshakeFilter to be of type 'table'")
	if struct["ActionType"] then M.AssertActionType(struct["ActionType"]) end
	if struct["ParentHandshakeId"] then M.AssertHandshakeId(struct["ParentHandshakeId"]) end
	for k,_ in pairs(struct) do
		assert(HandshakeFilter_keys[k], "HandshakeFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HandshakeFilter
-- <p>Specifies the criteria that are used to select the handshakes for the operation.</p>
-- @param ActionType [ActionType] <p>Specifies the type of handshake action.</p> <p>If you specify <code>ActionType</code>, you cannot also specify <code>ParentHandshakeId</code>.</p>
-- @param ParentHandshakeId [HandshakeId] <p>Specifies the parent handshake. Only used for handshake types that are a child of another type.</p> <p>If you specify <code>ParentHandshakeId</code>, you cannot also specify <code>ActionType</code>.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
function M.HandshakeFilter(ActionType, ParentHandshakeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HandshakeFilter")
	local t = { 
		["ActionType"] = ActionType,
		["ParentHandshakeId"] = ParentHandshakeId,
	}
	M.AssertHandshakeFilter(t)
	return t
end

local CreateAccountResponse_keys = { "CreateAccountStatus" = true, nil }

function M.AssertCreateAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccountResponse to be of type 'table'")
	if struct["CreateAccountStatus"] then M.AssertCreateAccountStatus(struct["CreateAccountStatus"]) end
	for k,_ in pairs(struct) do
		assert(CreateAccountResponse_keys[k], "CreateAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccountResponse
--  
-- @param CreateAccountStatus [CreateAccountStatus] <p>A structure that contains details about the request to create an account. This response structure might not be fully populated when you first receive it because account creation is an asynchronous process. You can pass the returned CreateAccountStatus ID as a parameter to <code> <a>DescribeCreateAccountStatus</a> </code> to get status about the progress of the request at later times. </p>
function M.CreateAccountResponse(CreateAccountStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAccountResponse")
	local t = { 
		["CreateAccountStatus"] = CreateAccountStatus,
	}
	M.AssertCreateAccountResponse(t)
	return t
end

local AcceptHandshakeResponse_keys = { "Handshake" = true, nil }

function M.AssertAcceptHandshakeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptHandshakeResponse to be of type 'table'")
	if struct["Handshake"] then M.AssertHandshake(struct["Handshake"]) end
	for k,_ in pairs(struct) do
		assert(AcceptHandshakeResponse_keys[k], "AcceptHandshakeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptHandshakeResponse
--  
-- @param Handshake [Handshake] <p>A structure that contains details about the accepted handshake.</p>
function M.AcceptHandshakeResponse(Handshake, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcceptHandshakeResponse")
	local t = { 
		["Handshake"] = Handshake,
	}
	M.AssertAcceptHandshakeResponse(t)
	return t
end

local ListHandshakesForOrganizationRequest_keys = { "Filter" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListHandshakesForOrganizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHandshakesForOrganizationRequest to be of type 'table'")
	if struct["Filter"] then M.AssertHandshakeFilter(struct["Filter"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListHandshakesForOrganizationRequest_keys[k], "ListHandshakesForOrganizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHandshakesForOrganizationRequest
--  
-- @param Filter [HandshakeFilter] <p>A filter of the handshakes that you want included in the response. The default is all types. Use the <code>ActionType</code> element to limit the output to only a specified type, such as <code>INVITE</code>, <code>ENABLE-ALL-FEATURES</code>, or <code>APPROVE-ALL-FEATURES</code>. Alternatively, for the <code>ENABLE-ALL-FEATURES</code> handshake that generates a separate child handshake for each member account, you can specify the <code>ParentHandshakeId</code> to see only the handshakes that were generated by that parent request.</p>
-- @param NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
function M.ListHandshakesForOrganizationRequest(Filter, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHandshakesForOrganizationRequest")
	local t = { 
		["Filter"] = Filter,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListHandshakesForOrganizationRequest(t)
	return t
end

local DescribeOrganizationalUnitRequest_keys = { "OrganizationalUnitId" = true, nil }

function M.AssertDescribeOrganizationalUnitRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOrganizationalUnitRequest to be of type 'table'")
	assert(struct["OrganizationalUnitId"], "Expected key OrganizationalUnitId to exist in table")
	if struct["OrganizationalUnitId"] then M.AssertOrganizationalUnitId(struct["OrganizationalUnitId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeOrganizationalUnitRequest_keys[k], "DescribeOrganizationalUnitRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOrganizationalUnitRequest
--  
-- @param OrganizationalUnitId [OrganizationalUnitId] <p>The unique identifier (ID) of the organizational unit that you want details about. You can get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p>
-- Required parameter: OrganizationalUnitId
function M.DescribeOrganizationalUnitRequest(OrganizationalUnitId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOrganizationalUnitRequest")
	local t = { 
		["OrganizationalUnitId"] = OrganizationalUnitId,
	}
	M.AssertDescribeOrganizationalUnitRequest(t)
	return t
end

local DescribePolicyRequest_keys = { "PolicyId" = true, nil }

function M.AssertDescribePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePolicyRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	if struct["PolicyId"] then M.AssertPolicyId(struct["PolicyId"]) end
	for k,_ in pairs(struct) do
		assert(DescribePolicyRequest_keys[k], "DescribePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePolicyRequest
--  
-- @param PolicyId [PolicyId] <p>The unique identifier (ID) of the policy that you want details about. You can get the ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- Required parameter: PolicyId
function M.DescribePolicyRequest(PolicyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePolicyRequest")
	local t = { 
		["PolicyId"] = PolicyId,
	}
	M.AssertDescribePolicyRequest(t)
	return t
end

local DeclineHandshakeRequest_keys = { "HandshakeId" = true, nil }

function M.AssertDeclineHandshakeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeclineHandshakeRequest to be of type 'table'")
	assert(struct["HandshakeId"], "Expected key HandshakeId to exist in table")
	if struct["HandshakeId"] then M.AssertHandshakeId(struct["HandshakeId"]) end
	for k,_ in pairs(struct) do
		assert(DeclineHandshakeRequest_keys[k], "DeclineHandshakeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeclineHandshakeRequest
--  
-- @param HandshakeId [HandshakeId] <p>The unique identifier (ID) of the handshake that you want to decline. You can get the ID from the <a>ListHandshakesForAccount</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
-- Required parameter: HandshakeId
function M.DeclineHandshakeRequest(HandshakeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeclineHandshakeRequest")
	local t = { 
		["HandshakeId"] = HandshakeId,
	}
	M.AssertDeclineHandshakeRequest(t)
	return t
end

local DescribeHandshakeRequest_keys = { "HandshakeId" = true, nil }

function M.AssertDescribeHandshakeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHandshakeRequest to be of type 'table'")
	assert(struct["HandshakeId"], "Expected key HandshakeId to exist in table")
	if struct["HandshakeId"] then M.AssertHandshakeId(struct["HandshakeId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeHandshakeRequest_keys[k], "DescribeHandshakeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHandshakeRequest
--  
-- @param HandshakeId [HandshakeId] <p>The unique identifier (ID) of the handshake that you want information about. You can get the ID from the original call to <a>InviteAccountToOrganization</a>, or from a call to <a>ListHandshakesForAccount</a> or <a>ListHandshakesForOrganization</a>.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
-- Required parameter: HandshakeId
function M.DescribeHandshakeRequest(HandshakeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHandshakeRequest")
	local t = { 
		["HandshakeId"] = HandshakeId,
	}
	M.AssertDescribeHandshakeRequest(t)
	return t
end

local AccessDeniedException_keys = { "Message" = true, nil }

function M.AssertAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDeniedException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(AccessDeniedException_keys[k], "AccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDeniedException
-- <p>You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access Management</a> in the <i>IAM User Guide</i>.</p>
-- @param Message [ExceptionMessage] <p>You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access Management</a> in the <i>IAM User Guide</i>.</p>
function M.AccessDeniedException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessDeniedException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertAccessDeniedException(t)
	return t
end

local CreateAccountStatus_keys = { "FailureReason" = true, "AccountName" = true, "State" = true, "RequestedTimestamp" = true, "CompletedTimestamp" = true, "Id" = true, "AccountId" = true, nil }

function M.AssertCreateAccountStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccountStatus to be of type 'table'")
	if struct["FailureReason"] then M.AssertCreateAccountFailureReason(struct["FailureReason"]) end
	if struct["AccountName"] then M.AssertAccountName(struct["AccountName"]) end
	if struct["State"] then M.AssertCreateAccountState(struct["State"]) end
	if struct["RequestedTimestamp"] then M.AssertTimestamp(struct["RequestedTimestamp"]) end
	if struct["CompletedTimestamp"] then M.AssertTimestamp(struct["CompletedTimestamp"]) end
	if struct["Id"] then M.AssertCreateAccountRequestId(struct["Id"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(CreateAccountStatus_keys[k], "CreateAccountStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccountStatus
-- <p>Contains the status about a <a>CreateAccount</a> request to create an AWS account in an organization.</p>
-- @param FailureReason [CreateAccountFailureReason] <p>If the request failed, a description of the reason for the failure.</p> <ul> <li> <p>ACCOUNT_LIMIT_EXCEEDED: The account could not be created because you have reached the limit on the number of accounts in your organization.</p> </li> <li> <p>EMAIL_ALREADY_EXISTS: The account could not be created because another AWS account with that email address already exists.</p> </li> <li> <p>INVALID_ADDRESS: The account could not be created because the address you provided is not valid.</p> </li> <li> <p>INVALID_EMAIL: The account could not be created because the email address you provided is not valid.</p> </li> <li> <p>INTERNAL_FAILURE: The account could not be created because of an internal failure. Try again later. If the problem persists, contact Customer Support.</p> </li> </ul>
-- @param AccountName [AccountName] <p>The account name given to the account when it was created.</p>
-- @param State [CreateAccountState] <p>The status of the request.</p>
-- @param RequestedTimestamp [Timestamp] <p>The date and time that the request was made for the account creation.</p>
-- @param CompletedTimestamp [Timestamp] <p>The date and time that the account was created and the request completed.</p>
-- @param Id [CreateAccountRequestId] <p>The unique identifier (ID) that references this request. You get this value from the response of the initial <a>CreateAccount</a> request to create the account.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an create account request ID string requires "car-" followed by from 8 to 32 lower-case letters or digits.</p>
-- @param AccountId [AccountId] <p>If the account was created successfully, the unique identifier (ID) of the new account.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
function M.CreateAccountStatus(FailureReason, AccountName, State, RequestedTimestamp, CompletedTimestamp, Id, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAccountStatus")
	local t = { 
		["FailureReason"] = FailureReason,
		["AccountName"] = AccountName,
		["State"] = State,
		["RequestedTimestamp"] = RequestedTimestamp,
		["CompletedTimestamp"] = CompletedTimestamp,
		["Id"] = Id,
		["AccountId"] = AccountId,
	}
	M.AssertCreateAccountStatus(t)
	return t
end

local ListTargetsForPolicyRequest_keys = { "NextToken" = true, "PolicyId" = true, "MaxResults" = true, nil }

function M.AssertListTargetsForPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTargetsForPolicyRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["PolicyId"] then M.AssertPolicyId(struct["PolicyId"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListTargetsForPolicyRequest_keys[k], "ListTargetsForPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTargetsForPolicyRequest
--  
-- @param NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param PolicyId [PolicyId] <p>The unique identifier (ID) of the policy for which you want to know its attachments.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- @param MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- Required parameter: PolicyId
function M.ListTargetsForPolicyRequest(NextToken, PolicyId, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTargetsForPolicyRequest")
	local t = { 
		["NextToken"] = NextToken,
		["PolicyId"] = PolicyId,
		["MaxResults"] = MaxResults,
	}
	M.AssertListTargetsForPolicyRequest(t)
	return t
end

local Root_keys = { "PolicyTypes" = true, "Id" = true, "Arn" = true, "Name" = true, nil }

function M.AssertRoot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Root to be of type 'table'")
	if struct["PolicyTypes"] then M.AssertPolicyTypes(struct["PolicyTypes"]) end
	if struct["Id"] then M.AssertRootId(struct["Id"]) end
	if struct["Arn"] then M.AssertRootArn(struct["Arn"]) end
	if struct["Name"] then M.AssertRootName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(Root_keys[k], "Root contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Root
-- <p>Contains details about a root. A root is a top-level parent node in the hierarchy of an organization that can contain organizational units (OUs) and accounts. Every root contains every AWS account in the organization. Each root enables the accounts to be organized in a different way and to have different policy types enabled for use in that root.</p>
-- @param PolicyTypes [PolicyTypes] <p>The types of policies that are currently enabled for the root and therefore can be attached to the root or to its OUs or accounts.</p>
-- @param Id [RootId] <p>The unique identifier (ID) for the root.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by from 4 to 32 lower-case letters or digits.</p>
-- @param Arn [RootArn] <p>The Amazon Resource Name (ARN) of the root.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param Name [RootName] <p>The friendly name of the root.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
function M.Root(PolicyTypes, Id, Arn, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Root")
	local t = { 
		["PolicyTypes"] = PolicyTypes,
		["Id"] = Id,
		["Arn"] = Arn,
		["Name"] = Name,
	}
	M.AssertRoot(t)
	return t
end

local ListParentsRequest_keys = { "NextToken" = true, "MaxResults" = true, "ChildId" = true, nil }

function M.AssertListParentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListParentsRequest to be of type 'table'")
	assert(struct["ChildId"], "Expected key ChildId to exist in table")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	if struct["ChildId"] then M.AssertChildId(struct["ChildId"]) end
	for k,_ in pairs(struct) do
		assert(ListParentsRequest_keys[k], "ListParentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListParentsRequest
--  
-- @param NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- @param ChildId [ChildId] <p>The unique identifier (ID) of the OU or account whose parent containers you want to list. Do not specify a root.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a child ID string requires one of the following:</p> <ul> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- Required parameter: ChildId
function M.ListParentsRequest(NextToken, MaxResults, ChildId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListParentsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["ChildId"] = ChildId,
	}
	M.AssertListParentsRequest(t)
	return t
end

local ListAccountsForParentRequest_keys = { "NextToken" = true, "MaxResults" = true, "ParentId" = true, nil }

function M.AssertListAccountsForParentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccountsForParentRequest to be of type 'table'")
	assert(struct["ParentId"], "Expected key ParentId to exist in table")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	if struct["ParentId"] then M.AssertParentId(struct["ParentId"]) end
	for k,_ in pairs(struct) do
		assert(ListAccountsForParentRequest_keys[k], "ListAccountsForParentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccountsForParentRequest
--  
-- @param NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- @param ParentId [ParentId] <p>The unique identifier (ID) for the parent root or organization unit (OU) whose accounts you want to list.</p>
-- Required parameter: ParentId
function M.ListAccountsForParentRequest(NextToken, MaxResults, ParentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAccountsForParentRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["ParentId"] = ParentId,
	}
	M.AssertListAccountsForParentRequest(t)
	return t
end

local HandshakeNotFoundException_keys = { "Message" = true, nil }

function M.AssertHandshakeNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HandshakeNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(HandshakeNotFoundException_keys[k], "HandshakeNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HandshakeNotFoundException
-- <p>We can't find a handshake with the HandshakeId that you specified.</p>
-- @param Message [ExceptionMessage] <p>We can't find a handshake with the HandshakeId that you specified.</p>
function M.HandshakeNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HandshakeNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertHandshakeNotFoundException(t)
	return t
end

local ListOrganizationalUnitsForParentRequest_keys = { "NextToken" = true, "MaxResults" = true, "ParentId" = true, nil }

function M.AssertListOrganizationalUnitsForParentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOrganizationalUnitsForParentRequest to be of type 'table'")
	assert(struct["ParentId"], "Expected key ParentId to exist in table")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	if struct["ParentId"] then M.AssertParentId(struct["ParentId"]) end
	for k,_ in pairs(struct) do
		assert(ListOrganizationalUnitsForParentRequest_keys[k], "ListOrganizationalUnitsForParentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOrganizationalUnitsForParentRequest
--  
-- @param NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- @param ParentId [ParentId] <p>The unique identifier (ID) of the root or OU whose child OUs you want to list.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- Required parameter: ParentId
function M.ListOrganizationalUnitsForParentRequest(NextToken, MaxResults, ParentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOrganizationalUnitsForParentRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["ParentId"] = ParentId,
	}
	M.AssertListOrganizationalUnitsForParentRequest(t)
	return t
end

local ListAccountsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListAccountsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccountsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListAccountsRequest_keys[k], "ListAccountsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccountsRequest
--  
-- @param NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
function M.ListAccountsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAccountsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListAccountsRequest(t)
	return t
end

local OrganizationalUnit_keys = { "Id" = true, "Arn" = true, "Name" = true, nil }

function M.AssertOrganizationalUnit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrganizationalUnit to be of type 'table'")
	if struct["Id"] then M.AssertOrganizationalUnitId(struct["Id"]) end
	if struct["Arn"] then M.AssertOrganizationalUnitArn(struct["Arn"]) end
	if struct["Name"] then M.AssertOrganizationalUnitName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(OrganizationalUnit_keys[k], "OrganizationalUnit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrganizationalUnit
-- <p>Contains details about an organizational unit (OU). An OU is a container of AWS accounts within a root of an organization. Policies that are attached to an OU apply to all accounts contained in that OU and in any child OUs.</p>
-- @param Id [OrganizationalUnitId] <p>The unique identifier (ID) associated with this OU.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p>
-- @param Arn [OrganizationalUnitArn] <p>The Amazon Resource Name (ARN) of this OU.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param Name [OrganizationalUnitName] <p>The friendly name of this OU.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
function M.OrganizationalUnit(Id, Arn, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrganizationalUnit")
	local t = { 
		["Id"] = Id,
		["Arn"] = Arn,
		["Name"] = Name,
	}
	M.AssertOrganizationalUnit(t)
	return t
end

local UpdatePolicyRequest_keys = { "Content" = true, "Description" = true, "PolicyId" = true, "Name" = true, nil }

function M.AssertUpdatePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePolicyRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	if struct["Content"] then M.AssertPolicyContent(struct["Content"]) end
	if struct["Description"] then M.AssertPolicyDescription(struct["Description"]) end
	if struct["PolicyId"] then M.AssertPolicyId(struct["PolicyId"]) end
	if struct["Name"] then M.AssertPolicyName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(UpdatePolicyRequest_keys[k], "UpdatePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePolicyRequest
--  
-- @param Content [PolicyContent] <p>If provided, the new content for the policy. The text must be correctly formatted JSON that complies with the syntax for the policy's type. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html">Service Control Policy Syntax</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param Description [PolicyDescription] <p>If provided, the new description for the policy.</p>
-- @param PolicyId [PolicyId] <p>The unique identifier (ID) of the policy that you want to update.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- @param Name [PolicyName] <p>If provided, the new name for the policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- Required parameter: PolicyId
function M.UpdatePolicyRequest(Content, Description, PolicyId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePolicyRequest")
	local t = { 
		["Content"] = Content,
		["Description"] = Description,
		["PolicyId"] = PolicyId,
		["Name"] = Name,
	}
	M.AssertUpdatePolicyRequest(t)
	return t
end

function M.AssertGenericArn(str)
	assert(str)
	assert(type(str) == "string", "Expected GenericArn to be of type 'string'")
	assert(str:match("^arn:aws:organizations::.+:.+"), "Expected string to match pattern '^arn:aws:organizations::.+:.+'")
end

--  
function M.GenericArn(str)
	M.AssertGenericArn(str)
	return str
end

function M.AssertChildType(str)
	assert(str)
	assert(type(str) == "string", "Expected ChildType to be of type 'string'")
end

--  
function M.ChildType(str)
	M.AssertChildType(str)
	return str
end

function M.AssertPolicyTargetId(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyTargetId to be of type 'string'")
	assert(str:match("^(r-[0-9a-z]{4,32})|(%d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"), "Expected string to match pattern '^(r-[0-9a-z]{4,32})|(%d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$'")
end

--  
function M.PolicyTargetId(str)
	M.AssertPolicyTargetId(str)
	return str
end

function M.AssertCreateAccountRequestId(str)
	assert(str)
	assert(type(str) == "string", "Expected CreateAccountRequestId to be of type 'string'")
	assert(str:match("^car-[a-z0-9]{8,32}$"), "Expected string to match pattern '^car-[a-z0-9]{8,32}$'")
end

--  
function M.CreateAccountRequestId(str)
	M.AssertCreateAccountRequestId(str)
	return str
end

function M.AssertAccountArn(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountArn to be of type 'string'")
	assert(str:match("^arn:aws:organizations::%d{12}:account%/o-[a-z0-9]{10,32}%/%d{12}"), "Expected string to match pattern '^arn:aws:organizations::%d{12}:account%/o-[a-z0-9]{10,32}%/%d{12}'")
end

--  
function M.AccountArn(str)
	M.AssertAccountArn(str)
	return str
end

function M.AssertHandshakeConstraintViolationExceptionReason(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakeConstraintViolationExceptionReason to be of type 'string'")
end

--  
function M.HandshakeConstraintViolationExceptionReason(str)
	M.AssertHandshakeConstraintViolationExceptionReason(str)
	return str
end

function M.AssertActionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionType to be of type 'string'")
end

--  
function M.ActionType(str)
	M.AssertActionType(str)
	return str
end

function M.AssertTargetName(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TargetName(str)
	M.AssertTargetName(str)
	return str
end

function M.AssertPolicyName(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PolicyName(str)
	M.AssertPolicyName(str)
	return str
end

function M.AssertHandshakeNotes(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakeNotes to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.HandshakeNotes(str)
	M.AssertHandshakeNotes(str)
	return str
end

function M.AssertPolicyTypeStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyTypeStatus to be of type 'string'")
end

--  
function M.PolicyTypeStatus(str)
	M.AssertPolicyTypeStatus(str)
	return str
end

function M.AssertOrganizationFeatureSet(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationFeatureSet to be of type 'string'")
end

--  
function M.OrganizationFeatureSet(str)
	M.AssertOrganizationFeatureSet(str)
	return str
end

function M.AssertHandshakePartyId(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakePartyId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.HandshakePartyId(str)
	M.AssertHandshakePartyId(str)
	return str
end

function M.AssertTargetType(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetType to be of type 'string'")
end

--  
function M.TargetType(str)
	M.AssertTargetType(str)
	return str
end

function M.AssertPolicyDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyDescription to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
end

--  
function M.PolicyDescription(str)
	M.AssertPolicyDescription(str)
	return str
end

function M.AssertOrganizationId(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationId to be of type 'string'")
	assert(str:match("^o-[a-z0-9]{10,32}$"), "Expected string to match pattern '^o-[a-z0-9]{10,32}$'")
end

--  
function M.OrganizationId(str)
	M.AssertOrganizationId(str)
	return str
end

function M.AssertPolicyArn(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyArn to be of type 'string'")
	assert(str:match("^(arn:aws:organizations::%d{12}:policy%/o-[a-z0-9]{10,32}%/[0-9a-z_]+%/p-[0-9a-z]{10,32})|(arn:aws:organizations::aws:policy%/[0-9a-z_]+%/p-[0-9a-zA-Z_]{10,128})"), "Expected string to match pattern '^(arn:aws:organizations::%d{12}:policy%/o-[a-z0-9]{10,32}%/[0-9a-z_]+%/p-[0-9a-z]{10,32})|(arn:aws:organizations::aws:policy%/[0-9a-z_]+%/p-[0-9a-zA-Z_]{10,128})'")
end

--  
function M.PolicyArn(str)
	M.AssertPolicyArn(str)
	return str
end

function M.AssertAccountJoinedMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountJoinedMethod to be of type 'string'")
end

--  
function M.AccountJoinedMethod(str)
	M.AssertAccountJoinedMethod(str)
	return str
end

function M.AssertPolicyId(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyId to be of type 'string'")
	assert(str:match("^p-[0-9a-zA-Z_]{8,128}$"), "Expected string to match pattern '^p-[0-9a-zA-Z_]{8,128}$'")
end

--  
function M.PolicyId(str)
	M.AssertPolicyId(str)
	return str
end

function M.AssertOrganizationalUnitId(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationalUnitId to be of type 'string'")
	assert(str:match("^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"), "Expected string to match pattern '^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$'")
end

--  
function M.OrganizationalUnitId(str)
	M.AssertOrganizationalUnitId(str)
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

function M.AssertEmail(str)
	assert(str)
	assert(type(str) == "string", "Expected Email to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
	assert(str:match("[^%s@]+@[^%s@]+%.[^%s@]+"), "Expected string to match pattern '[^%s@]+@[^%s@]+%.[^%s@]+'")
end

--  
function M.Email(str)
	M.AssertEmail(str)
	return str
end

function M.AssertRootName(str)
	assert(str)
	assert(type(str) == "string", "Expected RootName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RootName(str)
	M.AssertRootName(str)
	return str
end

function M.AssertExceptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionType to be of type 'string'")
end

--  
function M.ExceptionType(str)
	M.AssertExceptionType(str)
	return str
end

function M.AssertChildId(str)
	assert(str)
	assert(type(str) == "string", "Expected ChildId to be of type 'string'")
	assert(str:match("^(%d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"), "Expected string to match pattern '^(%d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$'")
end

--  
function M.ChildId(str)
	M.AssertChildId(str)
	return str
end

function M.AssertParentId(str)
	assert(str)
	assert(type(str) == "string", "Expected ParentId to be of type 'string'")
	assert(str:match("^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"), "Expected string to match pattern '^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$'")
end

--  
function M.ParentId(str)
	M.AssertParentId(str)
	return str
end

function M.AssertCreateAccountState(str)
	assert(str)
	assert(type(str) == "string", "Expected CreateAccountState to be of type 'string'")
end

--  
function M.CreateAccountState(str)
	M.AssertCreateAccountState(str)
	return str
end

function M.AssertHandshakePartyType(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakePartyType to be of type 'string'")
end

--  
function M.HandshakePartyType(str)
	M.AssertHandshakePartyType(str)
	return str
end

function M.AssertOrganizationalUnitArn(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationalUnitArn to be of type 'string'")
	assert(str:match("^arn:aws:organizations::%d{12}:ou%/o-[a-z0-9]{10,32}%/ou-[0-9a-z]{4,32}-[0-9a-z]{8,32}"), "Expected string to match pattern '^arn:aws:organizations::%d{12}:ou%/o-[a-z0-9]{10,32}%/ou-[0-9a-z]{4,32}-[0-9a-z]{8,32}'")
end

--  
function M.OrganizationalUnitArn(str)
	M.AssertOrganizationalUnitArn(str)
	return str
end

function M.AssertHandshakeResourceValue(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakeResourceValue to be of type 'string'")
end

--  
function M.HandshakeResourceValue(str)
	M.AssertHandshakeResourceValue(str)
	return str
end

function M.AssertRootId(str)
	assert(str)
	assert(type(str) == "string", "Expected RootId to be of type 'string'")
	assert(str:match("^r-[0-9a-z]{4,32}$"), "Expected string to match pattern '^r-[0-9a-z]{4,32}$'")
end

--  
function M.RootId(str)
	M.AssertRootId(str)
	return str
end

function M.AssertAccountName(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountName to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AccountName(str)
	M.AssertAccountName(str)
	return str
end

function M.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
end

--  
function M.ExceptionMessage(str)
	M.AssertExceptionMessage(str)
	return str
end

function M.AssertInvalidInputExceptionReason(str)
	assert(str)
	assert(type(str) == "string", "Expected InvalidInputExceptionReason to be of type 'string'")
end

--  
function M.InvalidInputExceptionReason(str)
	M.AssertInvalidInputExceptionReason(str)
	return str
end

function M.AssertPolicyType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyType to be of type 'string'")
end

--  
function M.PolicyType(str)
	M.AssertPolicyType(str)
	return str
end

function M.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
	assert(str:match("^%d{12}$"), "Expected string to match pattern '^%d{12}$'")
end

--  
function M.AccountId(str)
	M.AssertAccountId(str)
	return str
end

function M.AssertOrganizationalUnitName(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationalUnitName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.OrganizationalUnitName(str)
	M.AssertOrganizationalUnitName(str)
	return str
end

function M.AssertHandshakeState(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakeState to be of type 'string'")
end

--  
function M.HandshakeState(str)
	M.AssertHandshakeState(str)
	return str
end

function M.AssertAccountStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountStatus to be of type 'string'")
end

--  
function M.AccountStatus(str)
	M.AssertAccountStatus(str)
	return str
end

function M.AssertRootArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RootArn to be of type 'string'")
	assert(str:match("^arn:aws:organizations::%d{12}:root%/o-[a-z0-9]{10,32}%/r-[0-9a-z]{4,32}"), "Expected string to match pattern '^arn:aws:organizations::%d{12}:root%/o-[a-z0-9]{10,32}%/r-[0-9a-z]{4,32}'")
end

--  
function M.RootArn(str)
	M.AssertRootArn(str)
	return str
end

function M.AssertHandshakeId(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakeId to be of type 'string'")
	assert(str:match("^h-[0-9a-z]{8,32}$"), "Expected string to match pattern '^h-[0-9a-z]{8,32}$'")
end

--  
function M.HandshakeId(str)
	M.AssertHandshakeId(str)
	return str
end

function M.AssertRoleName(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleName to be of type 'string'")
	assert(str:match("[%w+=,.@-]{1,64}"), "Expected string to match pattern '[%w+=,.@-]{1,64}'")
end

--  
function M.RoleName(str)
	M.AssertRoleName(str)
	return str
end

function M.AssertIAMUserAccessToBilling(str)
	assert(str)
	assert(type(str) == "string", "Expected IAMUserAccessToBilling to be of type 'string'")
end

--  
function M.IAMUserAccessToBilling(str)
	M.AssertIAMUserAccessToBilling(str)
	return str
end

function M.AssertPolicyContent(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyContent to be of type 'string'")
	assert(#str <= 1000000, "Expected string to be max 1000000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PolicyContent(str)
	M.AssertPolicyContent(str)
	return str
end

function M.AssertCreateAccountFailureReason(str)
	assert(str)
	assert(type(str) == "string", "Expected CreateAccountFailureReason to be of type 'string'")
end

--  
function M.CreateAccountFailureReason(str)
	M.AssertCreateAccountFailureReason(str)
	return str
end

function M.AssertOrganizationArn(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationArn to be of type 'string'")
	assert(str:match("^arn:aws:organizations::%d{12}:organization%/o-[a-z0-9]{10,32}"), "Expected string to match pattern '^arn:aws:organizations::%d{12}:organization%/o-[a-z0-9]{10,32}'")
end

--  
function M.OrganizationArn(str)
	M.AssertOrganizationArn(str)
	return str
end

function M.AssertHandshakeResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakeResourceType to be of type 'string'")
end

--  
function M.HandshakeResourceType(str)
	M.AssertHandshakeResourceType(str)
	return str
end

function M.AssertParentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ParentType to be of type 'string'")
end

--  
function M.ParentType(str)
	M.AssertParentType(str)
	return str
end

function M.AssertHandshakeArn(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakeArn to be of type 'string'")
	assert(str:match("^arn:aws:organizations::%d{12}:handshake%/o-[a-z0-9]{10,32}%/[a-z_]{1,32}%/h-[0-9a-z]{8,32}"), "Expected string to match pattern '^arn:aws:organizations::%d{12}:handshake%/o-[a-z0-9]{10,32}%/[a-z_]{1,32}%/h-[0-9a-z]{8,32}'")
end

--  
function M.HandshakeArn(str)
	M.AssertHandshakeArn(str)
	return str
end

function M.AssertConstraintViolationExceptionReason(str)
	assert(str)
	assert(type(str) == "string", "Expected ConstraintViolationExceptionReason to be of type 'string'")
end

--  
function M.ConstraintViolationExceptionReason(str)
	M.AssertConstraintViolationExceptionReason(str)
	return str
end

function M.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 20, "Expected integer to be max 20")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	M.AssertMaxResults(integer)
	return integer
end

function M.AssertAwsManagedPolicy(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AwsManagedPolicy to be of type 'boolean'")
end

function M.AwsManagedPolicy(boolean)
	M.AssertAwsManagedPolicy(boolean)
	return boolean
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertParents(list)
	assert(list)
	assert(type(list) == "table", "Expected Parents to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParent(v)
	end
end

--  
-- List of Parent objects
function M.Parents(list)
	M.AssertParents(list)
	return list
end

function M.AssertHandshakeResources(list)
	assert(list)
	assert(type(list) == "table", "Expected HandshakeResources to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertHandshakeResource(v)
	end
end

--  
-- List of HandshakeResource objects
function M.HandshakeResources(list)
	M.AssertHandshakeResources(list)
	return list
end

function M.AssertAccounts(list)
	assert(list)
	assert(type(list) == "table", "Expected Accounts to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAccount(v)
	end
end

--  
-- List of Account objects
function M.Accounts(list)
	M.AssertAccounts(list)
	return list
end

function M.AssertOrganizationalUnits(list)
	assert(list)
	assert(type(list) == "table", "Expected OrganizationalUnits to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOrganizationalUnit(v)
	end
end

--  
-- List of OrganizationalUnit objects
function M.OrganizationalUnits(list)
	M.AssertOrganizationalUnits(list)
	return list
end

function M.AssertPolicies(list)
	assert(list)
	assert(type(list) == "table", "Expected Policies to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPolicySummary(v)
	end
end

--  
-- List of PolicySummary objects
function M.Policies(list)
	M.AssertPolicies(list)
	return list
end

function M.AssertHandshakeParties(list)
	assert(list)
	assert(type(list) == "table", "Expected HandshakeParties to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertHandshakeParty(v)
	end
end

--  
-- List of HandshakeParty objects
function M.HandshakeParties(list)
	M.AssertHandshakeParties(list)
	return list
end

function M.AssertPolicyTargets(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyTargets to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPolicyTargetSummary(v)
	end
end

--  
-- List of PolicyTargetSummary objects
function M.PolicyTargets(list)
	M.AssertPolicyTargets(list)
	return list
end

function M.AssertChildren(list)
	assert(list)
	assert(type(list) == "table", "Expected Children to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertChild(v)
	end
end

--  
-- List of Child objects
function M.Children(list)
	M.AssertChildren(list)
	return list
end

function M.AssertPolicyTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyTypes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPolicyTypeSummary(v)
	end
end

--  
-- List of PolicyTypeSummary objects
function M.PolicyTypes(list)
	M.AssertPolicyTypes(list)
	return list
end

function M.AssertHandshakes(list)
	assert(list)
	assert(type(list) == "table", "Expected Handshakes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertHandshake(v)
	end
end

--  
-- List of Handshake objects
function M.Handshakes(list)
	M.AssertHandshakes(list)
	return list
end

function M.AssertCreateAccountStates(list)
	assert(list)
	assert(type(list) == "table", "Expected CreateAccountStates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCreateAccountState(v)
	end
end

--  
-- List of CreateAccountState objects
function M.CreateAccountStates(list)
	M.AssertCreateAccountStates(list)
	return list
end

function M.AssertCreateAccountStatuses(list)
	assert(list)
	assert(type(list) == "table", "Expected CreateAccountStatuses to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCreateAccountStatus(v)
	end
end

--  
-- List of CreateAccountStatus objects
function M.CreateAccountStatuses(list)
	M.AssertCreateAccountStatuses(list)
	return list
end

function M.AssertRoots(list)
	assert(list)
	assert(type(list) == "table", "Expected Roots to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRoot(v)
	end
end

--  
-- List of Root objects
function M.Roots(list)
	M.AssertRoots(list)
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
			return "organizations.amazonaws.com"
		end
	end
	local ss = { "organizations" }
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
--- DeclineHandshake
-- @param DeclineHandshakeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeclineHandshakeAsync(DeclineHandshakeRequest, cb)
	assert(DeclineHandshakeRequest, "You must provide a DeclineHandshakeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DeclineHandshake",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeclineHandshakeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisablePolicyType
-- @param DisablePolicyTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisablePolicyTypeAsync(DisablePolicyTypeRequest, cb)
	assert(DisablePolicyTypeRequest, "You must provide a DisablePolicyTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DisablePolicyType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisablePolicyTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCreateAccountStatus
-- @param DescribeCreateAccountStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCreateAccountStatusAsync(DescribeCreateAccountStatusRequest, cb)
	assert(DescribeCreateAccountStatusRequest, "You must provide a DescribeCreateAccountStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribeCreateAccountStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCreateAccountStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListOrganizationalUnitsForParent
-- @param ListOrganizationalUnitsForParentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListOrganizationalUnitsForParentAsync(ListOrganizationalUnitsForParentRequest, cb)
	assert(ListOrganizationalUnitsForParentRequest, "You must provide a ListOrganizationalUnitsForParentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListOrganizationalUnitsForParent",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListOrganizationalUnitsForParentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeOrganizationalUnit
-- @param DescribeOrganizationalUnitRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeOrganizationalUnitAsync(DescribeOrganizationalUnitRequest, cb)
	assert(DescribeOrganizationalUnitRequest, "You must provide a DescribeOrganizationalUnitRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribeOrganizationalUnit",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeOrganizationalUnitRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AcceptHandshake
-- @param AcceptHandshakeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AcceptHandshakeAsync(AcceptHandshakeRequest, cb)
	assert(AcceptHandshakeRequest, "You must provide a AcceptHandshakeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.AcceptHandshake",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AcceptHandshakeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteOrganizationalUnit
-- @param DeleteOrganizationalUnitRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteOrganizationalUnitAsync(DeleteOrganizationalUnitRequest, cb)
	assert(DeleteOrganizationalUnitRequest, "You must provide a DeleteOrganizationalUnitRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DeleteOrganizationalUnit",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteOrganizationalUnitRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeletePolicy
-- @param DeletePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePolicyAsync(DeletePolicyRequest, cb)
	assert(DeletePolicyRequest, "You must provide a DeletePolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DeletePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeletePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetachPolicy
-- @param DetachPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetachPolicyAsync(DetachPolicyRequest, cb)
	assert(DetachPolicyRequest, "You must provide a DetachPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DetachPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DetachPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListHandshakesForAccount
-- @param ListHandshakesForAccountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListHandshakesForAccountAsync(ListHandshakesForAccountRequest, cb)
	assert(ListHandshakesForAccountRequest, "You must provide a ListHandshakesForAccountRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListHandshakesForAccount",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListHandshakesForAccountRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveAccountFromOrganization
-- @param RemoveAccountFromOrganizationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveAccountFromOrganizationAsync(RemoveAccountFromOrganizationRequest, cb)
	assert(RemoveAccountFromOrganizationRequest, "You must provide a RemoveAccountFromOrganizationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.RemoveAccountFromOrganization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveAccountFromOrganizationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableAllFeatures
-- @param EnableAllFeaturesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnableAllFeaturesAsync(EnableAllFeaturesRequest, cb)
	assert(EnableAllFeaturesRequest, "You must provide a EnableAllFeaturesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.EnableAllFeatures",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableAllFeaturesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteOrganization
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteOrganizationAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DeleteOrganization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPoliciesForTarget
-- @param ListPoliciesForTargetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPoliciesForTargetAsync(ListPoliciesForTargetRequest, cb)
	assert(ListPoliciesForTargetRequest, "You must provide a ListPoliciesForTargetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListPoliciesForTarget",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListPoliciesForTargetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribePolicy
-- @param DescribePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePolicyAsync(DescribePolicyRequest, cb)
	assert(DescribePolicyRequest, "You must provide a DescribePolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListCreateAccountStatus
-- @param ListCreateAccountStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCreateAccountStatusAsync(ListCreateAccountStatusRequest, cb)
	assert(ListCreateAccountStatusRequest, "You must provide a ListCreateAccountStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListCreateAccountStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListCreateAccountStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateAccount
-- @param CreateAccountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAccountAsync(CreateAccountRequest, cb)
	assert(CreateAccountRequest, "You must provide a CreateAccountRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.CreateAccount",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateAccountRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CancelHandshake
-- @param CancelHandshakeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CancelHandshakeAsync(CancelHandshakeRequest, cb)
	assert(CancelHandshakeRequest, "You must provide a CancelHandshakeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.CancelHandshake",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CancelHandshakeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAccounts
-- @param ListAccountsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAccountsAsync(ListAccountsRequest, cb)
	assert(ListAccountsRequest, "You must provide a ListAccountsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListAccounts",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAccountsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AttachPolicy
-- @param AttachPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AttachPolicyAsync(AttachPolicyRequest, cb)
	assert(AttachPolicyRequest, "You must provide a AttachPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.AttachPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AttachPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- MoveAccount
-- @param MoveAccountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.MoveAccountAsync(MoveAccountRequest, cb)
	assert(MoveAccountRequest, "You must provide a MoveAccountRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.MoveAccount",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", MoveAccountRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeOrganization
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeOrganizationAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribeOrganization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListChildren
-- @param ListChildrenRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListChildrenAsync(ListChildrenRequest, cb)
	assert(ListChildrenRequest, "You must provide a ListChildrenRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListChildren",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListChildrenRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateOrganization
-- @param CreateOrganizationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateOrganizationAsync(CreateOrganizationRequest, cb)
	assert(CreateOrganizationRequest, "You must provide a CreateOrganizationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.CreateOrganization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateOrganizationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdatePolicy
-- @param UpdatePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdatePolicyAsync(UpdatePolicyRequest, cb)
	assert(UpdatePolicyRequest, "You must provide a UpdatePolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.UpdatePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdatePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- LeaveOrganization
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.LeaveOrganizationAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.LeaveOrganization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateOrganizationalUnit
-- @param CreateOrganizationalUnitRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateOrganizationalUnitAsync(CreateOrganizationalUnitRequest, cb)
	assert(CreateOrganizationalUnitRequest, "You must provide a CreateOrganizationalUnitRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.CreateOrganizationalUnit",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateOrganizationalUnitRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnablePolicyType
-- @param EnablePolicyTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnablePolicyTypeAsync(EnablePolicyTypeRequest, cb)
	assert(EnablePolicyTypeRequest, "You must provide a EnablePolicyTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.EnablePolicyType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnablePolicyTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAccount
-- @param DescribeAccountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAccountAsync(DescribeAccountRequest, cb)
	assert(DescribeAccountRequest, "You must provide a DescribeAccountRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribeAccount",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAccountRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- InviteAccountToOrganization
-- @param InviteAccountToOrganizationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.InviteAccountToOrganizationAsync(InviteAccountToOrganizationRequest, cb)
	assert(InviteAccountToOrganizationRequest, "You must provide a InviteAccountToOrganizationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.InviteAccountToOrganization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", InviteAccountToOrganizationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPolicies
-- @param ListPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPoliciesAsync(ListPoliciesRequest, cb)
	assert(ListPoliciesRequest, "You must provide a ListPoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListPoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAccountsForParent
-- @param ListAccountsForParentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAccountsForParentAsync(ListAccountsForParentRequest, cb)
	assert(ListAccountsForParentRequest, "You must provide a ListAccountsForParentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListAccountsForParent",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAccountsForParentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeHandshake
-- @param DescribeHandshakeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeHandshakeAsync(DescribeHandshakeRequest, cb)
	assert(DescribeHandshakeRequest, "You must provide a DescribeHandshakeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribeHandshake",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeHandshakeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListParents
-- @param ListParentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListParentsAsync(ListParentsRequest, cb)
	assert(ListParentsRequest, "You must provide a ListParentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListParents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListParentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateOrganizationalUnit
-- @param UpdateOrganizationalUnitRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateOrganizationalUnitAsync(UpdateOrganizationalUnitRequest, cb)
	assert(UpdateOrganizationalUnitRequest, "You must provide a UpdateOrganizationalUnitRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.UpdateOrganizationalUnit",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateOrganizationalUnitRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListHandshakesForOrganization
-- @param ListHandshakesForOrganizationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListHandshakesForOrganizationAsync(ListHandshakesForOrganizationRequest, cb)
	assert(ListHandshakesForOrganizationRequest, "You must provide a ListHandshakesForOrganizationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListHandshakesForOrganization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListHandshakesForOrganizationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePolicy
-- @param CreatePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePolicyAsync(CreatePolicyRequest, cb)
	assert(CreatePolicyRequest, "You must provide a CreatePolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.CreatePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreatePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTargetsForPolicy
-- @param ListTargetsForPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTargetsForPolicyAsync(ListTargetsForPolicyRequest, cb)
	assert(ListTargetsForPolicyRequest, "You must provide a ListTargetsForPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListTargetsForPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTargetsForPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListRoots
-- @param ListRootsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListRootsAsync(ListRootsRequest, cb)
	assert(ListRootsRequest, "You must provide a ListRootsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListRoots",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListRootsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M