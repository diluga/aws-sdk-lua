--- GENERATED CODE - DO NOT MODIFY
-- Amazon Relational Database Service (rds-2014-10-31)

local M = {}

M.metadata = {
	api_version = "2014-10-31",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "rds",
	service_abbreviation = "Amazon RDS",
	service_full_name = "Amazon Relational Database Service",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "rds-2014-10-31",
}

local keys = {}
local asserts = {}

keys.CertificateNotFoundFault = { nil }

function asserts.AssertCertificateNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CertificateNotFoundFault[k], "CertificateNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateNotFoundFault
-- <p> <i>CertificateIdentifier</i> does not refer to an existing certificate. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CertificateNotFoundFault structure as a key-value pair table
function M.CertificateNotFoundFault(args)
	assert(args, "You must provide an argument table when creating CertificateNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCertificateNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSubnetGroupNotFoundFault = { nil }

function asserts.AssertDBSubnetGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSubnetGroupNotFoundFault[k], "DBSubnetGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupNotFoundFault
-- <p> <i>DBSubnetGroupName</i> does not refer to an existing DB subnet group. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSubnetGroupNotFoundFault structure as a key-value pair table
function M.DBSubnetGroupNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBSubnetGroupNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSubnetGroupNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyDBClusterParameterGroupMessage = { ["TargetDBClusterParameterGroupIdentifier"] = true, ["Tags"] = true, ["SourceDBClusterParameterGroupIdentifier"] = true, ["TargetDBClusterParameterGroupDescription"] = true, nil }

function asserts.AssertCopyDBClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBClusterParameterGroupMessage to be of type 'table'")
	assert(struct["SourceDBClusterParameterGroupIdentifier"], "Expected key SourceDBClusterParameterGroupIdentifier to exist in table")
	assert(struct["TargetDBClusterParameterGroupIdentifier"], "Expected key TargetDBClusterParameterGroupIdentifier to exist in table")
	assert(struct["TargetDBClusterParameterGroupDescription"], "Expected key TargetDBClusterParameterGroupDescription to exist in table")
	if struct["TargetDBClusterParameterGroupIdentifier"] then asserts.AssertString(struct["TargetDBClusterParameterGroupIdentifier"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["SourceDBClusterParameterGroupIdentifier"] then asserts.AssertString(struct["SourceDBClusterParameterGroupIdentifier"]) end
	if struct["TargetDBClusterParameterGroupDescription"] then asserts.AssertString(struct["TargetDBClusterParameterGroupDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyDBClusterParameterGroupMessage[k], "CopyDBClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBClusterParameterGroupMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetDBClusterParameterGroupIdentifier [String] <p>The identifier for the copied DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-cluster-param-group1</code> </p>
-- * Tags [TagList] 
-- * SourceDBClusterParameterGroupIdentifier [String] <p>The identifier or Amazon Resource Name (ARN) for the source DB cluster parameter group. For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid DB cluster parameter group.</p> </li> <li> <p>If the source DB cluster parameter group is in the same region as the copy, specify a valid DB parameter group identifier, for example <code>my-db-cluster-param-group</code>, or a valid ARN.</p> </li> <li> <p>If the source DB parameter group is in a different region than the copy, specify a valid DB cluster parameter group ARN, for example <code>arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1</code>.</p> </li> </ul>
-- * TargetDBClusterParameterGroupDescription [String] <p>A description for the copied DB cluster parameter group.</p>
-- Required key: SourceDBClusterParameterGroupIdentifier
-- Required key: TargetDBClusterParameterGroupIdentifier
-- Required key: TargetDBClusterParameterGroupDescription
-- @return CopyDBClusterParameterGroupMessage structure as a key-value pair table
function M.CopyDBClusterParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating CopyDBClusterParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetDBClusterParameterGroupIdentifier"] = args["TargetDBClusterParameterGroupIdentifier"],
		["Tags"] = args["Tags"],
		["SourceDBClusterParameterGroupIdentifier"] = args["SourceDBClusterParameterGroupIdentifier"],
		["TargetDBClusterParameterGroupDescription"] = args["TargetDBClusterParameterGroupDescription"],
	}
	asserts.AssertCopyDBClusterParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddSourceIdentifierToSubscriptionMessage = { ["SourceIdentifier"] = true, ["SubscriptionName"] = true, nil }

function asserts.AssertAddSourceIdentifierToSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddSourceIdentifierToSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	assert(struct["SourceIdentifier"], "Expected key SourceIdentifier to exist in table")
	if struct["SourceIdentifier"] then asserts.AssertString(struct["SourceIdentifier"]) end
	if struct["SubscriptionName"] then asserts.AssertString(struct["SubscriptionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddSourceIdentifierToSubscriptionMessage[k], "AddSourceIdentifierToSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddSourceIdentifierToSubscriptionMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceIdentifier [String] <p>The identifier of the event source to be added. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it cannot end with a hyphen or contain two consecutive hyphens.</p> <p>Constraints:</p> <ul> <li> <p>If the source type is a DB instance, then a <code>DBInstanceIdentifier</code> must be supplied.</p> </li> <li> <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> must be supplied.</p> </li> </ul>
-- * SubscriptionName [String] <p>The name of the RDS event notification subscription you want to add a source identifier to.</p>
-- Required key: SubscriptionName
-- Required key: SourceIdentifier
-- @return AddSourceIdentifierToSubscriptionMessage structure as a key-value pair table
function M.AddSourceIdentifierToSubscriptionMessage(args)
	assert(args, "You must provide an argument table when creating AddSourceIdentifierToSubscriptionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceIdentifier"] = args["SourceIdentifier"],
		["SubscriptionName"] = args["SubscriptionName"],
	}
	asserts.AssertAddSourceIdentifierToSubscriptionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubscriptionAlreadyExistFault = { nil }

function asserts.AssertSubscriptionAlreadyExistFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionAlreadyExistFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubscriptionAlreadyExistFault[k], "SubscriptionAlreadyExistFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionAlreadyExistFault
-- <p>The supplied subscription name already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SubscriptionAlreadyExistFault structure as a key-value pair table
function M.SubscriptionAlreadyExistFault(args)
	assert(args, "You must provide an argument table when creating SubscriptionAlreadyExistFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSubscriptionAlreadyExistFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSubnetGroupQuotaExceededFault = { nil }

function asserts.AssertDBSubnetGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSubnetGroupQuotaExceededFault[k], "DBSubnetGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupQuotaExceededFault
-- <p>Request would result in user exceeding the allowed number of DB subnet groups.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSubnetGroupQuotaExceededFault structure as a key-value pair table
function M.DBSubnetGroupQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating DBSubnetGroupQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSubnetGroupQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterRole = { ["Status"] = true, ["RoleArn"] = true, nil }

function asserts.AssertDBClusterRole(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterRole to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["RoleArn"] then asserts.AssertString(struct["RoleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterRole[k], "DBClusterRole contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterRole
-- <p>Describes an AWS Identity and Access Management (IAM) role that is associated with a DB cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>Describes the state of association between the IAM role and the DB cluster. The Status property returns one of the following values:</p> <ul> <li> <p> <code>ACTIVE</code> - the IAM role ARN is associated with the DB cluster and can be used to access other AWS services on your behalf.</p> </li> <li> <p> <code>PENDING</code> - the IAM role ARN is being associated with the DB cluster.</p> </li> <li> <p> <code>INVALID</code> - the IAM role ARN is associated with the DB cluster, but the DB cluster is unable to assume the IAM role in order to access other AWS services on your behalf.</p> </li> </ul>
-- * RoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role that is associated with the DB cluster.</p>
-- @return DBClusterRole structure as a key-value pair table
function M.DBClusterRole(args)
	assert(args, "You must provide an argument table when creating DBClusterRole")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["RoleArn"] = args["RoleArn"],
	}
	asserts.AssertDBClusterRole(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyOptionGroupMessage = { ["OptionsToRemove"] = true, ["OptionsToInclude"] = true, ["ApplyImmediately"] = true, ["OptionGroupName"] = true, nil }

function asserts.AssertModifyOptionGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyOptionGroupMessage to be of type 'table'")
	assert(struct["OptionGroupName"], "Expected key OptionGroupName to exist in table")
	if struct["OptionsToRemove"] then asserts.AssertOptionNamesList(struct["OptionsToRemove"]) end
	if struct["OptionsToInclude"] then asserts.AssertOptionConfigurationList(struct["OptionsToInclude"]) end
	if struct["ApplyImmediately"] then asserts.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyOptionGroupMessage[k], "ModifyOptionGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyOptionGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OptionsToRemove [OptionNamesList] <p>Options in this list are removed from the option group.</p>
-- * OptionsToInclude [OptionConfigurationList] <p>Options in this list are added to the option group or, if already present, the specified configuration is used to update the existing configuration.</p>
-- * ApplyImmediately [Boolean] <p>Indicates whether the changes should be applied immediately, or during the next maintenance window for each instance associated with the option group.</p>
-- * OptionGroupName [String] <p>The name of the option group to be modified.</p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, cannot be removed from an option group, and that option group cannot be removed from a DB instance once it is associated with a DB instance</p>
-- Required key: OptionGroupName
-- @return ModifyOptionGroupMessage structure as a key-value pair table
function M.ModifyOptionGroupMessage(args)
	assert(args, "You must provide an argument table when creating ModifyOptionGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OptionsToRemove"] = args["OptionsToRemove"],
		["OptionsToInclude"] = args["OptionsToInclude"],
		["ApplyImmediately"] = args["ApplyImmediately"],
		["OptionGroupName"] = args["OptionGroupName"],
	}
	asserts.AssertModifyOptionGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyEventSubscriptionMessage = { ["EventCategories"] = true, ["Enabled"] = true, ["SourceType"] = true, ["SubscriptionName"] = true, ["SnsTopicArn"] = true, nil }

function asserts.AssertModifyEventSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyEventSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	if struct["EventCategories"] then asserts.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["Enabled"] then asserts.AssertBooleanOptional(struct["Enabled"]) end
	if struct["SourceType"] then asserts.AssertString(struct["SourceType"]) end
	if struct["SubscriptionName"] then asserts.AssertString(struct["SubscriptionName"]) end
	if struct["SnsTopicArn"] then asserts.AssertString(struct["SnsTopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyEventSubscriptionMessage[k], "ModifyEventSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyEventSubscriptionMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventCategories [EventCategoriesList] <p> A list of event categories for a SourceType that you want to subscribe to. You can see a list of the categories for a given SourceType in the <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html">Events</a> topic in the Amazon RDS User Guide or by using the <b>DescribeEventCategories</b> action. </p>
-- * Enabled [BooleanOptional] <p> A Boolean value; set to <b>true</b> to activate the subscription. </p>
-- * SourceType [String] <p>The type of source that will be generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. if this value is not specified, all events are returned.</p> <p>Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot</p>
-- * SubscriptionName [String] <p>The name of the RDS event notification subscription.</p>
-- * SnsTopicArn [String] <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
-- Required key: SubscriptionName
-- @return ModifyEventSubscriptionMessage structure as a key-value pair table
function M.ModifyEventSubscriptionMessage(args)
	assert(args, "You must provide an argument table when creating ModifyEventSubscriptionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventCategories"] = args["EventCategories"],
		["Enabled"] = args["Enabled"],
		["SourceType"] = args["SourceType"],
		["SubscriptionName"] = args["SubscriptionName"],
		["SnsTopicArn"] = args["SnsTopicArn"],
	}
	asserts.AssertModifyEventSubscriptionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyOptionGroupMessage = { ["TargetOptionGroupDescription"] = true, ["Tags"] = true, ["TargetOptionGroupIdentifier"] = true, ["SourceOptionGroupIdentifier"] = true, nil }

function asserts.AssertCopyOptionGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyOptionGroupMessage to be of type 'table'")
	assert(struct["SourceOptionGroupIdentifier"], "Expected key SourceOptionGroupIdentifier to exist in table")
	assert(struct["TargetOptionGroupIdentifier"], "Expected key TargetOptionGroupIdentifier to exist in table")
	assert(struct["TargetOptionGroupDescription"], "Expected key TargetOptionGroupDescription to exist in table")
	if struct["TargetOptionGroupDescription"] then asserts.AssertString(struct["TargetOptionGroupDescription"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["TargetOptionGroupIdentifier"] then asserts.AssertString(struct["TargetOptionGroupIdentifier"]) end
	if struct["SourceOptionGroupIdentifier"] then asserts.AssertString(struct["SourceOptionGroupIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyOptionGroupMessage[k], "CopyOptionGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyOptionGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetOptionGroupDescription [String] <p>The description for the copied option group.</p>
-- * Tags [TagList] 
-- * TargetOptionGroupIdentifier [String] <p>The identifier for the copied option group.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-option-group</code> </p>
-- * SourceOptionGroupIdentifier [String] <p>The identifier or ARN for the source option group. For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid option group.</p> </li> <li> <p>If the source option group is in the same region as the copy, specify a valid option group identifier, for example <code>my-option-group</code>, or a valid ARN.</p> </li> <li> <p>If the source option group is in a different region than the copy, specify a valid option group ARN, for example <code>arn:aws:rds:us-west-2:123456789012:og:special-options</code>.</p> </li> </ul>
-- Required key: SourceOptionGroupIdentifier
-- Required key: TargetOptionGroupIdentifier
-- Required key: TargetOptionGroupDescription
-- @return CopyOptionGroupMessage structure as a key-value pair table
function M.CopyOptionGroupMessage(args)
	assert(args, "You must provide an argument table when creating CopyOptionGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetOptionGroupDescription"] = args["TargetOptionGroupDescription"],
		["Tags"] = args["Tags"],
		["TargetOptionGroupIdentifier"] = args["TargetOptionGroupIdentifier"],
		["SourceOptionGroupIdentifier"] = args["SourceOptionGroupIdentifier"],
	}
	asserts.AssertCopyOptionGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSecurityGroupMessage = { ["Marker"] = true, ["DBSecurityGroups"] = true, nil }

function asserts.AssertDBSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBSecurityGroups"] then asserts.AssertDBSecurityGroups(struct["DBSecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSecurityGroupMessage[k], "DBSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBSecurityGroups</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBSecurityGroups [DBSecurityGroups] <p> A list of <a>DBSecurityGroup</a> instances. </p>
-- @return DBSecurityGroupMessage structure as a key-value pair table
function M.DBSecurityGroupMessage(args)
	assert(args, "You must provide an argument table when creating DBSecurityGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBSecurityGroups"] = args["DBSecurityGroups"],
	}
	asserts.AssertDBSecurityGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSubnetGroup = { ["Subnets"] = true, ["VpcId"] = true, ["DBSubnetGroupDescription"] = true, ["SubnetGroupStatus"] = true, ["DBSubnetGroupArn"] = true, ["DBSubnetGroupName"] = true, nil }

function asserts.AssertDBSubnetGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroup to be of type 'table'")
	if struct["Subnets"] then asserts.AssertSubnetList(struct["Subnets"]) end
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["DBSubnetGroupDescription"] then asserts.AssertString(struct["DBSubnetGroupDescription"]) end
	if struct["SubnetGroupStatus"] then asserts.AssertString(struct["SubnetGroupStatus"]) end
	if struct["DBSubnetGroupArn"] then asserts.AssertString(struct["DBSubnetGroupArn"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSubnetGroup[k], "DBSubnetGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroup
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBSubnetGroup</a> </p> </li> <li> <p> <a>ModifyDBSubnetGroup</a> </p> </li> <li> <p> <a>DescribeDBSubnetGroups</a> </p> </li> <li> <p> <a>DeleteDBSubnetGroup</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBSubnetGroups</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Subnets [SubnetList] <p> Contains a list of <a>Subnet</a> elements. </p>
-- * VpcId [String] <p>Provides the VpcId of the DB subnet group.</p>
-- * DBSubnetGroupDescription [String] <p>Provides the description of the DB subnet group.</p>
-- * SubnetGroupStatus [String] <p>Provides the status of the DB subnet group.</p>
-- * DBSubnetGroupArn [String] <p>The Amazon Resource Name (ARN) for the DB subnet group.</p>
-- * DBSubnetGroupName [String] <p>The name of the DB subnet group.</p>
-- @return DBSubnetGroup structure as a key-value pair table
function M.DBSubnetGroup(args)
	assert(args, "You must provide an argument table when creating DBSubnetGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Subnets"] = args["Subnets"],
		["VpcId"] = args["VpcId"],
		["DBSubnetGroupDescription"] = args["DBSubnetGroupDescription"],
		["SubnetGroupStatus"] = args["SubnetGroupStatus"],
		["DBSubnetGroupArn"] = args["DBSubnetGroupArn"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
	}
	asserts.AssertDBSubnetGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSubnetGroupAlreadyExistsFault = { nil }

function asserts.AssertDBSubnetGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSubnetGroupAlreadyExistsFault[k], "DBSubnetGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupAlreadyExistsFault
-- <p> <i>DBSubnetGroupName</i> is already used by an existing DB subnet group. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSubnetGroupAlreadyExistsFault structure as a key-value pair table
function M.DBSubnetGroupAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating DBSubnetGroupAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSubnetGroupAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBInstanceMessage = { ["FinalDBSnapshotIdentifier"] = true, ["SkipFinalSnapshot"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertDeleteDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["FinalDBSnapshotIdentifier"] then asserts.AssertString(struct["FinalDBSnapshotIdentifier"]) end
	if struct["SkipFinalSnapshot"] then asserts.AssertBoolean(struct["SkipFinalSnapshot"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBInstanceMessage[k], "DeleteDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBInstanceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FinalDBSnapshotIdentifier [String] <p> The DBSnapshotIdentifier of the new DBSnapshot created when SkipFinalSnapshot is set to <code>false</code>. </p> <note> <p>Specifying this parameter and also setting the SkipFinalShapshot parameter to true results in an error.</p> </note> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> <li> <p>Cannot be specified when deleting a Read Replica.</p> </li> </ul>
-- * SkipFinalSnapshot [Boolean] <p> Determines whether a final DB snapshot is created before the DB instance is deleted. If <code>true</code> is specified, no DBSnapshot is created. If <code>false</code> is specified, a DB snapshot is created before the DB instance is deleted. </p> <p>Note that when a DB instance is in a failure state and has a status of 'failed', 'incompatible-restore', or 'incompatible-network', it can only be deleted when the SkipFinalSnapshot parameter is set to "true".</p> <p>Specify <code>true</code> when deleting a Read Replica.</p> <note> <p>The FinalDBSnapshotIdentifier parameter must be specified if SkipFinalSnapshot is <code>false</code>.</p> </note> <p>Default: <code>false</code> </p>
-- * DBInstanceIdentifier [String] <p>The DB instance identifier for the DB instance to be deleted. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required key: DBInstanceIdentifier
-- @return DeleteDBInstanceMessage structure as a key-value pair table
function M.DeleteDBInstanceMessage(args)
	assert(args, "You must provide an argument table when creating DeleteDBInstanceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FinalDBSnapshotIdentifier"] = args["FinalDBSnapshotIdentifier"],
		["SkipFinalSnapshot"] = args["SkipFinalSnapshot"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertDeleteDBInstanceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSubnetGroupNotAllowedFault = { nil }

function asserts.AssertDBSubnetGroupNotAllowedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupNotAllowedFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSubnetGroupNotAllowedFault[k], "DBSubnetGroupNotAllowedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupNotAllowedFault
-- <p>Indicates that the DBSubnetGroup should not be specified while creating read replicas that lie in the same region as the source instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSubnetGroupNotAllowedFault structure as a key-value pair table
function M.DBSubnetGroupNotAllowedFault(args)
	assert(args, "You must provide an argument table when creating DBSubnetGroupNotAllowedFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSubnetGroupNotAllowedFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBClusterParameterGroupsMessage = { ["DBClusterParameterGroupName"] = true, ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeDBClusterParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClusterParameterGroupsMessage to be of type 'table'")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBClusterParameterGroupsMessage[k], "DescribeDBClusterParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClusterParameterGroupsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>The name of a specific DB cluster parameter group to return details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBClusterParameterGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @return DescribeDBClusterParameterGroupsMessage structure as a key-value pair table
function M.DescribeDBClusterParameterGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBClusterParameterGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeDBClusterParameterGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterSnapshotAttribute = { ["AttributeName"] = true, ["AttributeValues"] = true, nil }

function asserts.AssertDBClusterSnapshotAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshotAttribute to be of type 'table'")
	if struct["AttributeName"] then asserts.AssertString(struct["AttributeName"]) end
	if struct["AttributeValues"] then asserts.AssertAttributeValueList(struct["AttributeValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterSnapshotAttribute[k], "DBClusterSnapshotAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshotAttribute
-- <p>Contains the name and values of a manual DB cluster snapshot attribute.</p> <p>Manual DB cluster snapshot attributes are used to authorize other AWS accounts to restore a manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeName [String] <p>The name of the manual DB cluster snapshot attribute.</p> <p>The attribute named <code>restore</code> refers to the list of AWS accounts that have permission to copy or restore the manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- * AttributeValues [AttributeValueList] <p>The value(s) for the manual DB cluster snapshot attribute.</p> <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element returns a list of IDs of the AWS accounts that are authorized to copy or restore the manual DB cluster snapshot. If a value of <code>all</code> is in the list, then the manual DB cluster snapshot is public and available for any AWS account to copy or restore.</p>
-- @return DBClusterSnapshotAttribute structure as a key-value pair table
function M.DBClusterSnapshotAttribute(args)
	assert(args, "You must provide an argument table when creating DBClusterSnapshotAttribute")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeName"] = args["AttributeName"],
		["AttributeValues"] = args["AttributeValues"],
	}
	asserts.AssertDBClusterSnapshotAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StorageTypeNotSupportedFault = { nil }

function asserts.AssertStorageTypeNotSupportedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageTypeNotSupportedFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StorageTypeNotSupportedFault[k], "StorageTypeNotSupportedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageTypeNotSupportedFault
-- <p> <i>StorageType</i> specified cannot be associated with the DB Instance. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StorageTypeNotSupportedFault structure as a key-value pair table
function M.StorageTypeNotSupportedFault(args)
	assert(args, "You must provide an argument table when creating StorageTypeNotSupportedFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStorageTypeNotSupportedFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateOptionGroupResult = { ["OptionGroup"] = true, nil }

function asserts.AssertCreateOptionGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOptionGroupResult to be of type 'table'")
	if struct["OptionGroup"] then asserts.AssertOptionGroup(struct["OptionGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateOptionGroupResult[k], "CreateOptionGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOptionGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OptionGroup [OptionGroup] 
-- @return CreateOptionGroupResult structure as a key-value pair table
function M.CreateOptionGroupResult(args)
	assert(args, "You must provide an argument table when creating CreateOptionGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OptionGroup"] = args["OptionGroup"],
	}
	asserts.AssertCreateOptionGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateEventSubscriptionMessage = { ["EventCategories"] = true, ["SourceType"] = true, ["Tags"] = true, ["Enabled"] = true, ["SnsTopicArn"] = true, ["SubscriptionName"] = true, ["SourceIds"] = true, nil }

function asserts.AssertCreateEventSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEventSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	assert(struct["SnsTopicArn"], "Expected key SnsTopicArn to exist in table")
	if struct["EventCategories"] then asserts.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then asserts.AssertString(struct["SourceType"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["Enabled"] then asserts.AssertBooleanOptional(struct["Enabled"]) end
	if struct["SnsTopicArn"] then asserts.AssertString(struct["SnsTopicArn"]) end
	if struct["SubscriptionName"] then asserts.AssertString(struct["SubscriptionName"]) end
	if struct["SourceIds"] then asserts.AssertSourceIdsList(struct["SourceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEventSubscriptionMessage[k], "CreateEventSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEventSubscriptionMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventCategories [EventCategoriesList] <p> A list of event categories for a SourceType that you want to subscribe to. You can see a list of the categories for a given SourceType in the <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html">Events</a> topic in the Amazon RDS User Guide or by using the <b>DescribeEventCategories</b> action. </p>
-- * SourceType [String] <p>The type of source that will be generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. if this value is not specified, all events are returned.</p> <p>Valid values: <code>db-instance</code> | <code>db-cluster</code> | <code>db-parameter-group</code> | <code>db-security-group</code> | <code>db-snapshot</code> | <code>db-cluster-snapshot</code> </p>
-- * Tags [TagList] 
-- * Enabled [BooleanOptional] <p> A Boolean value; set to <b>true</b> to activate the subscription, set to <b>false</b> to create the subscription but not active it. </p>
-- * SnsTopicArn [String] <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
-- * SubscriptionName [String] <p>The name of the subscription.</p> <p>Constraints: The name must be less than 255 characters.</p>
-- * SourceIds [SourceIdsList] <p>The list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it cannot end with a hyphen or contain two consecutive hyphens.</p> <p>Constraints:</p> <ul> <li> <p>If SourceIds are supplied, SourceType must also be provided.</p> </li> <li> <p>If the source type is a DB instance, then a <code>DBInstanceIdentifier</code> must be supplied.</p> </li> <li> <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> must be supplied.</p> </li> </ul>
-- Required key: SubscriptionName
-- Required key: SnsTopicArn
-- @return CreateEventSubscriptionMessage structure as a key-value pair table
function M.CreateEventSubscriptionMessage(args)
	assert(args, "You must provide an argument table when creating CreateEventSubscriptionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventCategories"] = args["EventCategories"],
		["SourceType"] = args["SourceType"],
		["Tags"] = args["Tags"],
		["Enabled"] = args["Enabled"],
		["SnsTopicArn"] = args["SnsTopicArn"],
		["SubscriptionName"] = args["SubscriptionName"],
		["SourceIds"] = args["SourceIds"],
	}
	asserts.AssertCreateEventSubscriptionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddRoleToDBClusterMessage = { ["RoleArn"] = true, ["DBClusterIdentifier"] = true, nil }

function asserts.AssertAddRoleToDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddRoleToDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	if struct["RoleArn"] then asserts.AssertString(struct["RoleArn"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddRoleToDBClusterMessage[k], "AddRoleToDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddRoleToDBClusterMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role to associate with the Aurora DB cluster, for example <code>arn:aws:iam::123456789012:role/AuroraAccessRole</code>.</p>
-- * DBClusterIdentifier [String] <p>The name of the DB cluster to associate the IAM role with.</p>
-- Required key: DBClusterIdentifier
-- Required key: RoleArn
-- @return AddRoleToDBClusterMessage structure as a key-value pair table
function M.AddRoleToDBClusterMessage(args)
	assert(args, "You must provide an argument table when creating AddRoleToDBClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleArn"] = args["RoleArn"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
	}
	asserts.AssertAddRoleToDBClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSnapshotMessage = { ["Marker"] = true, ["DBSnapshots"] = true, nil }

function asserts.AssertDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshotMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBSnapshots"] then asserts.AssertDBSnapshotList(struct["DBSnapshots"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSnapshotMessage[k], "DBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshotMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBSnapshots</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBSnapshots [DBSnapshotList] <p> A list of <a>DBSnapshot</a> instances. </p>
-- @return DBSnapshotMessage structure as a key-value pair table
function M.DBSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating DBSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBSnapshots"] = args["DBSnapshots"],
	}
	asserts.AssertDBSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	if struct["Key"] then asserts.AssertString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Metadata assigned to an Amazon RDS resource consisting of a key-value pair.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [String] <p>A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and cannot be prefixed with "aws:" or "rds:". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
-- * Key [String] <p>A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length and cannot be prefixed with "aws:" or "rds:". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
-- @return Tag structure as a key-value pair table
function M.Tag(args)
	assert(args, "You must provide an argument table when creating Tag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyDBSnapshotMessage = { ["CopyTags"] = true, ["SourceRegion"] = true, ["Tags"] = true, ["PreSignedUrl"] = true, ["TargetDBSnapshotIdentifier"] = true, ["SourceDBSnapshotIdentifier"] = true, ["KmsKeyId"] = true, ["OptionGroupName"] = true, nil }

function asserts.AssertCopyDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBSnapshotMessage to be of type 'table'")
	assert(struct["SourceDBSnapshotIdentifier"], "Expected key SourceDBSnapshotIdentifier to exist in table")
	assert(struct["TargetDBSnapshotIdentifier"], "Expected key TargetDBSnapshotIdentifier to exist in table")
	if struct["CopyTags"] then asserts.AssertBooleanOptional(struct["CopyTags"]) end
	if struct["SourceRegion"] then asserts.AssertString(struct["SourceRegion"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["PreSignedUrl"] then asserts.AssertString(struct["PreSignedUrl"]) end
	if struct["TargetDBSnapshotIdentifier"] then asserts.AssertString(struct["TargetDBSnapshotIdentifier"]) end
	if struct["SourceDBSnapshotIdentifier"] then asserts.AssertString(struct["SourceDBSnapshotIdentifier"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyDBSnapshotMessage[k], "CopyDBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBSnapshotMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CopyTags [BooleanOptional] <p>True to copy all tags from the source DB snapshot to the target DB snapshot; otherwise false. The default is false.</p>
-- * SourceRegion [String] <p>The ID of the region that contains the snapshot to be copied.</p>
-- * Tags [TagList] 
-- * PreSignedUrl [String] <p>The URL that contains a Signature Version 4 signed request for the <code>CopyDBSnapshot</code> API action in the source AWS region that contains the source DB snapshot to copy. </p> <p>You must specify this parameter when you copy an encrypted DB snapshot from another AWS region by using the Amazon RDS API. You can specify the source region option instead of this parameter when you copy an encrypted DB snapshot from another AWS region by using the AWS CLI. </p> <p>The presigned URL must be a valid request for the <code>CopyDBSnapshot</code> API action that can be executed in the source region that contains the encrypted DB snapshot to be copied. The presigned URL request must contain the following parameter values: </p> <ul> <li> <p> <code>DestinationRegion</code> - The AWS Region that the encrypted DB snapshot will be copied to. This region is the same one where the <code>CopyDBSnapshot</code> action is called that contains this presigned URL. </p> <p>For example, if you copy an encrypted DB snapshot from the us-west-2 region to the us-east-1 region, then you will call the <code>CopyDBSnapshot</code> action in the us-east-1 region and provide a presigned URL that contains a call to the <code>CopyDBSnapshot</code> action in the us-west-2 region. For this example, the <code>DestinationRegion</code> in the presigned URL must be set to the us-east-1 region. </p> </li> <li> <p> <code>KmsKeyId</code> - The KMS key identifier for the key to use to encrypt the copy of the DB snapshot in the destination region. This is the same identifier for both the <code>CopyDBSnapshot</code> action that is called in the destination region, and the action contained in the presigned URL. </p> </li> <li> <p> <code>SourceDBSnapshotIdentifier</code> - The DB snapshot identifier for the encrypted snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source region. For example, if you are copying an encrypted DB snapshot from the us-west-2 region, then your <code>SourceDBSnapshotIdentifier</code> looks like the following example: <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20161115</code>. </p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html">Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 Signing Process</a>. </p><note><p>If you supply a value for this operation's <code>SourceRegion</code> parameter, a pre-signed URL will be calculated on your behalf.</p></note>
-- * TargetDBSnapshotIdentifier [String] <p>The identifier for the copy of the snapshot. </p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-db-snapshot</code> </p>
-- * SourceDBSnapshotIdentifier [String] <p>The identifier for the source DB snapshot.</p> <p>If the source snapshot is in the same region as the copy, specify a valid DB snapshot identifier. For example, <code>rds:mysql-instance1-snapshot-20130805</code>. </p> <p>If the source snapshot is in a different region than the copy, specify a valid DB snapshot ARN. For example, <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805</code>. </p> <p>If you are copying from a shared manual DB snapshot, this parameter must be the Amazon Resource Name (ARN) of the shared DB snapshot. </p> <p>If you are copying an encrypted snapshot this parameter must be in the ARN format for the source region, and must match the <code>SourceDBSnapshotIdentifier</code> in the <code>PreSignedUrl</code> parameter. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid system snapshot in the "available" state.</p> </li> </ul> <p>Example: <code>rds:mydb-2012-04-02-00-01</code> </p> <p>Example: <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805</code> </p>
-- * KmsKeyId [String] <p>The AWS KMS key ID for an encrypted DB snapshot. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key. </p> <p>If you copy an encrypted DB snapshot from your AWS account, you can specify a value for this parameter to encrypt the copy with a new KMS encryption key. If you don't specify a value for this parameter, then the copy of the DB snapshot is encrypted with the same KMS key as the source DB snapshot. </p> <p>If you copy an encrypted DB snapshot that is shared from another AWS account, then you must specify a value for this parameter. </p> <p>If you specify this parameter when you copy an unencrypted snapshot, the copy is encrypted. </p> <p>If you copy an encrypted snapshot to a different AWS region, then you must specify a KMS key for the destination AWS region. KMS encryption keys are specific to the region that they are created in, and you cannot use encryption keys from one region in another region. </p>
-- * OptionGroupName [String] <p>The name of an option group to associate with the copy. </p> <p>Specify this option if you are copying a snapshot from one AWS region to another, and your DB instance uses a non-default option group. If your source DB instance uses Transparent Data Encryption for Oracle or Microsoft SQL Server, you must specify this option when copying across regions. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopySnapshot.Options">Option Group Considerations</a>. </p>
-- Required key: SourceDBSnapshotIdentifier
-- Required key: TargetDBSnapshotIdentifier
-- @return CopyDBSnapshotMessage structure as a key-value pair table
function M.CopyDBSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating CopyDBSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CopyTags"] = args["CopyTags"],
		["SourceRegion"] = args["SourceRegion"],
		["Tags"] = args["Tags"],
		["PreSignedUrl"] = args["PreSignedUrl"],
		["TargetDBSnapshotIdentifier"] = args["TargetDBSnapshotIdentifier"],
		["SourceDBSnapshotIdentifier"] = args["SourceDBSnapshotIdentifier"],
		["KmsKeyId"] = args["KmsKeyId"],
		["OptionGroupName"] = args["OptionGroupName"],
	}
	asserts.AssertCopyDBSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OrderableDBInstanceOption = { ["Engine"] = true, ["SupportsIAMDatabaseAuthentication"] = true, ["StorageType"] = true, ["LicenseModel"] = true, ["SupportsStorageEncryption"] = true, ["SupportsEnhancedMonitoring"] = true, ["Vpc"] = true, ["EngineVersion"] = true, ["DBInstanceClass"] = true, ["AvailabilityZones"] = true, ["MultiAZCapable"] = true, ["ReadReplicaCapable"] = true, ["SupportsIops"] = true, nil }

function asserts.AssertOrderableDBInstanceOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrderableDBInstanceOption to be of type 'table'")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["SupportsIAMDatabaseAuthentication"] then asserts.AssertBoolean(struct["SupportsIAMDatabaseAuthentication"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["SupportsStorageEncryption"] then asserts.AssertBoolean(struct["SupportsStorageEncryption"]) end
	if struct["SupportsEnhancedMonitoring"] then asserts.AssertBoolean(struct["SupportsEnhancedMonitoring"]) end
	if struct["Vpc"] then asserts.AssertBoolean(struct["Vpc"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZoneList(struct["AvailabilityZones"]) end
	if struct["MultiAZCapable"] then asserts.AssertBoolean(struct["MultiAZCapable"]) end
	if struct["ReadReplicaCapable"] then asserts.AssertBoolean(struct["ReadReplicaCapable"]) end
	if struct["SupportsIops"] then asserts.AssertBoolean(struct["SupportsIops"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrderableDBInstanceOption[k], "OrderableDBInstanceOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrderableDBInstanceOption
-- <p>Contains a list of available options for a DB instance</p> <p> This data type is used as a response element in the <a>DescribeOrderableDBInstanceOptions</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p>The engine type of the orderable DB instance.</p>
-- * SupportsIAMDatabaseAuthentication [Boolean] <p>Indicates whether this orderable DB instance supports IAM database authentication.</p>
-- * StorageType [String] <p>Indicates the storage type for this orderable DB instance.</p>
-- * LicenseModel [String] <p>The license model for the orderable DB instance.</p>
-- * SupportsStorageEncryption [Boolean] <p>Indicates whether this orderable DB instance supports encrypted storage.</p>
-- * SupportsEnhancedMonitoring [Boolean] <p>Indicates whether the DB instance supports enhanced monitoring at intervals from 1 to 60 seconds.</p>
-- * Vpc [Boolean] <p>Indicates whether this is a VPC orderable DB instance.</p>
-- * EngineVersion [String] <p>The engine version of the orderable DB instance.</p>
-- * DBInstanceClass [String] <p>The DB instance class for the orderable DB instance.</p>
-- * AvailabilityZones [AvailabilityZoneList] <p>A list of Availability Zones for the orderable DB instance.</p>
-- * MultiAZCapable [Boolean] <p>Indicates whether this orderable DB instance is multi-AZ capable.</p>
-- * ReadReplicaCapable [Boolean] <p>Indicates whether this orderable DB instance can have a Read Replica.</p>
-- * SupportsIops [Boolean] <p>Indicates whether this orderable DB instance supports provisioned IOPS.</p>
-- @return OrderableDBInstanceOption structure as a key-value pair table
function M.OrderableDBInstanceOption(args)
	assert(args, "You must provide an argument table when creating OrderableDBInstanceOption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["SupportsIAMDatabaseAuthentication"] = args["SupportsIAMDatabaseAuthentication"],
		["StorageType"] = args["StorageType"],
		["LicenseModel"] = args["LicenseModel"],
		["SupportsStorageEncryption"] = args["SupportsStorageEncryption"],
		["SupportsEnhancedMonitoring"] = args["SupportsEnhancedMonitoring"],
		["Vpc"] = args["Vpc"],
		["EngineVersion"] = args["EngineVersion"],
		["DBInstanceClass"] = args["DBInstanceClass"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["MultiAZCapable"] = args["MultiAZCapable"],
		["ReadReplicaCapable"] = args["ReadReplicaCapable"],
		["SupportsIops"] = args["SupportsIops"],
	}
	asserts.AssertOrderableDBInstanceOption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSecurityGroupAlreadyExistsFault = { nil }

function asserts.AssertDBSecurityGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSecurityGroupAlreadyExistsFault[k], "DBSecurityGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupAlreadyExistsFault
-- <p> A DB security group with the name specified in <i>DBSecurityGroupName</i> already exists. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSecurityGroupAlreadyExistsFault structure as a key-value pair table
function M.DBSecurityGroupAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating DBSecurityGroupAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSecurityGroupAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterParameterGroupNameMessage = { ["DBClusterParameterGroupName"] = true, nil }

function asserts.AssertDBClusterParameterGroupNameMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterParameterGroupNameMessage to be of type 'table'")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterParameterGroupNameMessage[k], "DBClusterParameterGroupNameMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterParameterGroupNameMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <note> <p>This value is stored as a lowercase string.</p> </note>
-- @return DBClusterParameterGroupNameMessage structure as a key-value pair table
function M.DBClusterParameterGroupNameMessage(args)
	assert(args, "You must provide an argument table when creating DBClusterParameterGroupNameMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
	}
	asserts.AssertDBClusterParameterGroupNameMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidOptionGroupStateFault = { nil }

function asserts.AssertInvalidOptionGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOptionGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidOptionGroupStateFault[k], "InvalidOptionGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOptionGroupStateFault
-- <p> The option group is not in the <i>available</i> state. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidOptionGroupStateFault structure as a key-value pair table
function M.InvalidOptionGroupStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidOptionGroupStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidOptionGroupStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBSecurityGroupsMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["DBSecurityGroupName"] = true, nil }

function asserts.AssertDescribeDBSecurityGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBSecurityGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["DBSecurityGroupName"] then asserts.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBSecurityGroupsMessage[k], "DescribeDBSecurityGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBSecurityGroupsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBSecurityGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- * DBSecurityGroupName [String] <p>The name of the DB security group to return details for.</p>
-- @return DescribeDBSecurityGroupsMessage structure as a key-value pair table
function M.DescribeDBSecurityGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBSecurityGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["DBSecurityGroupName"] = args["DBSecurityGroupName"],
	}
	asserts.AssertDescribeDBSecurityGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyDBSnapshotResult = { ["DBSnapshot"] = true, nil }

function asserts.AssertCopyDBSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBSnapshotResult to be of type 'table'")
	if struct["DBSnapshot"] then asserts.AssertDBSnapshot(struct["DBSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyDBSnapshotResult[k], "CopyDBSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSnapshot [DBSnapshot] 
-- @return CopyDBSnapshotResult structure as a key-value pair table
function M.CopyDBSnapshotResult(args)
	assert(args, "You must provide an argument table when creating CopyDBSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSnapshot"] = args["DBSnapshot"],
	}
	asserts.AssertCopyDBSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBInstanceAlreadyExistsFault = { nil }

function asserts.AssertDBInstanceAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBInstanceAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBInstanceAlreadyExistsFault[k], "DBInstanceAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBInstanceAlreadyExistsFault
-- <p>User already has a DB instance with the given identifier.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBInstanceAlreadyExistsFault structure as a key-value pair table
function M.DBInstanceAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating DBInstanceAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBInstanceAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterSnapshot = { ["Engine"] = true, ["SnapshotCreateTime"] = true, ["VpcId"] = true, ["DBClusterIdentifier"] = true, ["DBClusterSnapshotArn"] = true, ["MasterUsername"] = true, ["LicenseModel"] = true, ["Status"] = true, ["PercentProgress"] = true, ["DBClusterSnapshotIdentifier"] = true, ["KmsKeyId"] = true, ["ClusterCreateTime"] = true, ["StorageEncrypted"] = true, ["AllocatedStorage"] = true, ["EngineVersion"] = true, ["SnapshotType"] = true, ["SourceDBClusterSnapshotArn"] = true, ["AvailabilityZones"] = true, ["IAMDatabaseAuthenticationEnabled"] = true, ["Port"] = true, nil }

function asserts.AssertDBClusterSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshot to be of type 'table'")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["SnapshotCreateTime"] then asserts.AssertTStamp(struct["SnapshotCreateTime"]) end
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["DBClusterSnapshotArn"] then asserts.AssertString(struct["DBClusterSnapshotArn"]) end
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["PercentProgress"] then asserts.AssertInteger(struct["PercentProgress"]) end
	if struct["DBClusterSnapshotIdentifier"] then asserts.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["ClusterCreateTime"] then asserts.AssertTStamp(struct["ClusterCreateTime"]) end
	if struct["StorageEncrypted"] then asserts.AssertBoolean(struct["StorageEncrypted"]) end
	if struct["AllocatedStorage"] then asserts.AssertInteger(struct["AllocatedStorage"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["SnapshotType"] then asserts.AssertString(struct["SnapshotType"]) end
	if struct["SourceDBClusterSnapshotArn"] then asserts.AssertString(struct["SourceDBClusterSnapshotArn"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["IAMDatabaseAuthenticationEnabled"] then asserts.AssertBoolean(struct["IAMDatabaseAuthenticationEnabled"]) end
	if struct["Port"] then asserts.AssertInteger(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterSnapshot[k], "DBClusterSnapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshot
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBClusterSnapshot</a> </p> </li> <li> <p> <a>DeleteDBClusterSnapshot</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBClusterSnapshots</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p>Specifies the name of the database engine.</p>
-- * SnapshotCreateTime [TStamp] <p>Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC).</p>
-- * VpcId [String] <p>Provides the VPC ID associated with the DB cluster snapshot.</p>
-- * DBClusterIdentifier [String] <p>Specifies the DB cluster identifier of the DB cluster that this DB cluster snapshot was created from.</p>
-- * DBClusterSnapshotArn [String] <p>The Amazon Resource Name (ARN) for the DB cluster snapshot.</p>
-- * MasterUsername [String] <p>Provides the master username for the DB cluster snapshot.</p>
-- * LicenseModel [String] <p>Provides the license model information for this DB cluster snapshot.</p>
-- * Status [String] <p>Specifies the status of this DB cluster snapshot.</p>
-- * PercentProgress [Integer] <p>Specifies the percentage of the estimated data that has been transferred.</p>
-- * DBClusterSnapshotIdentifier [String] <p>Specifies the identifier for the DB cluster snapshot.</p>
-- * KmsKeyId [String] <p>If <code>StorageEncrypted</code> is true, the KMS key identifier for the encrypted DB cluster snapshot.</p>
-- * ClusterCreateTime [TStamp] <p>Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).</p>
-- * StorageEncrypted [Boolean] <p>Specifies whether the DB cluster snapshot is encrypted.</p>
-- * AllocatedStorage [Integer] <p>Specifies the allocated storage size in gigabytes (GB).</p>
-- * EngineVersion [String] <p>Provides the version of the database engine for this DB cluster snapshot.</p>
-- * SnapshotType [String] <p>Provides the type of the DB cluster snapshot.</p>
-- * SourceDBClusterSnapshotArn [String] <p>If the DB cluster snapshot was copied from a source DB cluster snapshot, the Amazon Resource Name (ARN) for the source DB cluster snapshot; otherwise, a null value.</p>
-- * AvailabilityZones [AvailabilityZones] <p>Provides the list of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in.</p>
-- * IAMDatabaseAuthenticationEnabled [Boolean] <p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled; otherwise false.</p>
-- * Port [Integer] <p>Specifies the port that the DB cluster was listening on at the time of the snapshot.</p>
-- @return DBClusterSnapshot structure as a key-value pair table
function M.DBClusterSnapshot(args)
	assert(args, "You must provide an argument table when creating DBClusterSnapshot")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["SnapshotCreateTime"] = args["SnapshotCreateTime"],
		["VpcId"] = args["VpcId"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["DBClusterSnapshotArn"] = args["DBClusterSnapshotArn"],
		["MasterUsername"] = args["MasterUsername"],
		["LicenseModel"] = args["LicenseModel"],
		["Status"] = args["Status"],
		["PercentProgress"] = args["PercentProgress"],
		["DBClusterSnapshotIdentifier"] = args["DBClusterSnapshotIdentifier"],
		["KmsKeyId"] = args["KmsKeyId"],
		["ClusterCreateTime"] = args["ClusterCreateTime"],
		["StorageEncrypted"] = args["StorageEncrypted"],
		["AllocatedStorage"] = args["AllocatedStorage"],
		["EngineVersion"] = args["EngineVersion"],
		["SnapshotType"] = args["SnapshotType"],
		["SourceDBClusterSnapshotArn"] = args["SourceDBClusterSnapshotArn"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["IAMDatabaseAuthenticationEnabled"] = args["IAMDatabaseAuthenticationEnabled"],
		["Port"] = args["Port"],
	}
	asserts.AssertDBClusterSnapshot(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FailoverDBClusterResult = { ["DBCluster"] = true, nil }

function asserts.AssertFailoverDBClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailoverDBClusterResult to be of type 'table'")
	if struct["DBCluster"] then asserts.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailoverDBClusterResult[k], "FailoverDBClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailoverDBClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBCluster [DBCluster] 
-- @return FailoverDBClusterResult structure as a key-value pair table
function M.FailoverDBClusterResult(args)
	assert(args, "You must provide an argument table when creating FailoverDBClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBCluster"] = args["DBCluster"],
	}
	asserts.AssertFailoverDBClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SourceRegion = { ["Status"] = true, ["Endpoint"] = true, ["RegionName"] = true, nil }

function asserts.AssertSourceRegion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceRegion to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["Endpoint"] then asserts.AssertString(struct["Endpoint"]) end
	if struct["RegionName"] then asserts.AssertString(struct["RegionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SourceRegion[k], "SourceRegion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceRegion
-- <p>Contains an AWS Region name as the result of a successful call to the <a>DescribeSourceRegions</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the source region.</p>
-- * Endpoint [String] <p>The source region endpoint.</p>
-- * RegionName [String] <p>The source region name.</p>
-- @return SourceRegion structure as a key-value pair table
function M.SourceRegion(args)
	assert(args, "You must provide an argument table when creating SourceRegion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Endpoint"] = args["Endpoint"],
		["RegionName"] = args["RegionName"],
	}
	asserts.AssertSourceRegion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PurchaseReservedDBInstancesOfferingMessage = { ["ReservedDBInstanceId"] = true, ["ReservedDBInstancesOfferingId"] = true, ["DBInstanceCount"] = true, ["Tags"] = true, nil }

function asserts.AssertPurchaseReservedDBInstancesOfferingMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseReservedDBInstancesOfferingMessage to be of type 'table'")
	assert(struct["ReservedDBInstancesOfferingId"], "Expected key ReservedDBInstancesOfferingId to exist in table")
	if struct["ReservedDBInstanceId"] then asserts.AssertString(struct["ReservedDBInstanceId"]) end
	if struct["ReservedDBInstancesOfferingId"] then asserts.AssertString(struct["ReservedDBInstancesOfferingId"]) end
	if struct["DBInstanceCount"] then asserts.AssertIntegerOptional(struct["DBInstanceCount"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurchaseReservedDBInstancesOfferingMessage[k], "PurchaseReservedDBInstancesOfferingMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseReservedDBInstancesOfferingMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReservedDBInstanceId [String] <p>Customer-specified identifier to track this reservation.</p> <p>Example: myreservationID</p>
-- * ReservedDBInstancesOfferingId [String] <p>The ID of the Reserved DB instance offering to purchase.</p> <p>Example: 438012d3-4052-4cc7-b2e3-8d3372e0e706</p>
-- * DBInstanceCount [IntegerOptional] <p>The number of instances to reserve.</p> <p>Default: <code>1</code> </p>
-- * Tags [TagList] 
-- Required key: ReservedDBInstancesOfferingId
-- @return PurchaseReservedDBInstancesOfferingMessage structure as a key-value pair table
function M.PurchaseReservedDBInstancesOfferingMessage(args)
	assert(args, "You must provide an argument table when creating PurchaseReservedDBInstancesOfferingMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReservedDBInstanceId"] = args["ReservedDBInstanceId"],
		["ReservedDBInstancesOfferingId"] = args["ReservedDBInstancesOfferingId"],
		["DBInstanceCount"] = args["DBInstanceCount"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertPurchaseReservedDBInstancesOfferingMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResetDBParameterGroupMessage = { ["DBParameterGroupName"] = true, ["ResetAllParameters"] = true, ["Parameters"] = true, nil }

function asserts.AssertResetDBParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetDBParameterGroupMessage to be of type 'table'")
	assert(struct["DBParameterGroupName"], "Expected key DBParameterGroupName to exist in table")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["ResetAllParameters"] then asserts.AssertBoolean(struct["ResetAllParameters"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResetDBParameterGroupMessage[k], "ResetDBParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetDBParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupName [String] <p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * ResetAllParameters [Boolean] <p> Specifies whether (<code>true</code>) or not (<code>false</code>) to reset all parameters in the DB parameter group to default values. </p> <p>Default: <code>true</code> </p>
-- * Parameters [ParametersList] <p>To reset the entire DB parameter group, specify the <code>DBParameterGroup</code> name and <code>ResetAllParameters</code> parameters. To reset specific parameters, provide a list of the following: <code>ParameterName</code> and <code>ApplyMethod</code>. A maximum of 20 parameters can be modified in a single request.</p> <p> <b>MySQL</b> </p> <p>Valid Values (for Apply method): <code>immediate</code> | <code>pending-reboot</code> </p> <p>You can use the immediate value with dynamic parameters only. You can use the <code>pending-reboot</code> value for both dynamic and static parameters, and changes are applied when DB instance reboots.</p> <p> <b>MariaDB</b> </p> <p>Valid Values (for Apply method): <code>immediate</code> | <code>pending-reboot</code> </p> <p>You can use the immediate value with dynamic parameters only. You can use the <code>pending-reboot</code> value for both dynamic and static parameters, and changes are applied when DB instance reboots.</p> <p> <b>Oracle</b> </p> <p>Valid Values (for Apply method): <code>pending-reboot</code> </p>
-- Required key: DBParameterGroupName
-- @return ResetDBParameterGroupMessage structure as a key-value pair table
function M.ResetDBParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating ResetDBParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["ResetAllParameters"] = args["ResetAllParameters"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertResetDBParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterSnapshotMessage = { ["Marker"] = true, ["DBClusterSnapshots"] = true, nil }

function asserts.AssertDBClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshotMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBClusterSnapshots"] then asserts.AssertDBClusterSnapshotList(struct["DBClusterSnapshots"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterSnapshotMessage[k], "DBClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshotMessage
-- <p> Provides a list of DB cluster snapshots for the user as the result of a call to the <a>DescribeDBClusterSnapshots</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <a>DescribeDBClusterSnapshots</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBClusterSnapshots [DBClusterSnapshotList] <p>Provides a list of DB cluster snapshots for the user.</p>
-- @return DBClusterSnapshotMessage structure as a key-value pair table
function M.DBClusterSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating DBClusterSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBClusterSnapshots"] = args["DBClusterSnapshots"],
	}
	asserts.AssertDBClusterSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterMember = { ["IsClusterWriter"] = true, ["DBClusterParameterGroupStatus"] = true, ["PromotionTier"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertDBClusterMember(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterMember to be of type 'table'")
	if struct["IsClusterWriter"] then asserts.AssertBoolean(struct["IsClusterWriter"]) end
	if struct["DBClusterParameterGroupStatus"] then asserts.AssertString(struct["DBClusterParameterGroupStatus"]) end
	if struct["PromotionTier"] then asserts.AssertIntegerOptional(struct["PromotionTier"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterMember[k], "DBClusterMember contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterMember
-- <p>Contains information about an instance that is part of a DB cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IsClusterWriter [Boolean] <p>Value that is <code>true</code> if the cluster member is the primary instance for the DB cluster and <code>false</code> otherwise.</p>
-- * DBClusterParameterGroupStatus [String] <p>Specifies the status of the DB cluster parameter group for this member of the DB cluster.</p>
-- * PromotionTier [IntegerOptional] <p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance"> Fault Tolerance for an Aurora DB Cluster</a>. </p>
-- * DBInstanceIdentifier [String] <p>Specifies the instance identifier for this member of the DB cluster.</p>
-- @return DBClusterMember structure as a key-value pair table
function M.DBClusterMember(args)
	assert(args, "You must provide an argument table when creating DBClusterMember")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IsClusterWriter"] = args["IsClusterWriter"],
		["DBClusterParameterGroupStatus"] = args["DBClusterParameterGroupStatus"],
		["PromotionTier"] = args["PromotionTier"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertDBClusterMember(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RebootDBInstanceMessage = { ["ForceFailover"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertRebootDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["ForceFailover"] then asserts.AssertBooleanOptional(struct["ForceFailover"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootDBInstanceMessage[k], "RebootDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootDBInstanceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ForceFailover [BooleanOptional] <p> When <code>true</code>, the reboot will be conducted through a MultiAZ failover. </p> <p>Constraint: You cannot specify <code>true</code> if the instance is not configured for MultiAZ.</p>
-- * DBInstanceIdentifier [String] <p>The DB instance identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required key: DBInstanceIdentifier
-- @return RebootDBInstanceMessage structure as a key-value pair table
function M.RebootDBInstanceMessage(args)
	assert(args, "You must provide an argument table when creating RebootDBInstanceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ForceFailover"] = args["ForceFailover"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertRebootDBInstanceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AvailabilityZone = { ["Name"] = true, nil }

function asserts.AssertAvailabilityZone(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AvailabilityZone to be of type 'table'")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.AvailabilityZone[k], "AvailabilityZone contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AvailabilityZone
-- <p>Contains Availability Zone information.</p> <p> This data type is used as an element in the following data type:</p> <ul> <li> <p> <a>OrderableDBInstanceOption</a> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>The name of the availability zone.</p>
-- @return AvailabilityZone structure as a key-value pair table
function M.AvailabilityZone(args)
	assert(args, "You must provide an argument table when creating AvailabilityZone")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertAvailabilityZone(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBClusterParameterGroupMessage = { ["DBClusterParameterGroupName"] = true, ["Parameters"] = true, nil }

function asserts.AssertModifyDBClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBClusterParameterGroupMessage to be of type 'table'")
	assert(struct["DBClusterParameterGroupName"], "Expected key DBClusterParameterGroupName to exist in table")
	assert(struct["Parameters"], "Expected key Parameters to exist in table")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBClusterParameterGroupMessage[k], "ModifyDBClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBClusterParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group to modify.</p>
-- * Parameters [ParametersList] <p>A list of parameters in the DB cluster parameter group to modify.</p>
-- Required key: DBClusterParameterGroupName
-- Required key: Parameters
-- @return ModifyDBClusterParameterGroupMessage structure as a key-value pair table
function M.ModifyDBClusterParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating ModifyDBClusterParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertModifyDBClusterParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBSnapshotAttributeMessage = { ["ValuesToAdd"] = true, ["ValuesToRemove"] = true, ["DBSnapshotIdentifier"] = true, ["AttributeName"] = true, nil }

function asserts.AssertModifyDBSnapshotAttributeMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSnapshotAttributeMessage to be of type 'table'")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	if struct["ValuesToAdd"] then asserts.AssertAttributeValueList(struct["ValuesToAdd"]) end
	if struct["ValuesToRemove"] then asserts.AssertAttributeValueList(struct["ValuesToRemove"]) end
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["AttributeName"] then asserts.AssertString(struct["AttributeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBSnapshotAttributeMessage[k], "ModifyDBSnapshotAttributeMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSnapshotAttributeMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ValuesToAdd [AttributeValueList] <p>A list of DB snapshot attributes to add to the attribute specified by <code>AttributeName</code>.</p> <p>To authorize other AWS accounts to copy or restore a manual snapshot, set this list to include one or more AWS account IDs, or <code>all</code> to make the manual DB snapshot restorable by any AWS account. Do not add the <code>all</code> value for any manual DB snapshots that contain private information that you don't want available to all AWS accounts.</p>
-- * ValuesToRemove [AttributeValueList] <p>A list of DB snapshot attributes to remove from the attribute specified by <code>AttributeName</code>.</p> <p>To remove authorization for other AWS accounts to copy or restore a manual snapshot, set this list to include one or more AWS account identifiers, or <code>all</code> to remove authorization for any AWS account to copy or restore the DB snapshot. If you specify <code>all</code>, an AWS account whose account ID is explicitly added to the <code>restore</code> attribute can still copy or restore the manual DB snapshot.</p>
-- * DBSnapshotIdentifier [String] <p>The identifier for the DB snapshot to modify the attributes for.</p>
-- * AttributeName [String] <p>The name of the DB snapshot attribute to modify.</p> <p>To manage authorization for other AWS accounts to copy or restore a manual DB snapshot, set this value to <code>restore</code>.</p>
-- Required key: DBSnapshotIdentifier
-- Required key: AttributeName
-- @return ModifyDBSnapshotAttributeMessage structure as a key-value pair table
function M.ModifyDBSnapshotAttributeMessage(args)
	assert(args, "You must provide an argument table when creating ModifyDBSnapshotAttributeMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ValuesToAdd"] = args["ValuesToAdd"],
		["ValuesToRemove"] = args["ValuesToRemove"],
		["DBSnapshotIdentifier"] = args["DBSnapshotIdentifier"],
		["AttributeName"] = args["AttributeName"],
	}
	asserts.AssertModifyDBSnapshotAttributeMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterAlreadyExistsFault = { nil }

function asserts.AssertDBClusterAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterAlreadyExistsFault[k], "DBClusterAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterAlreadyExistsFault
-- <p>User already has a DB cluster with the given identifier.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterAlreadyExistsFault structure as a key-value pair table
function M.DBClusterAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating DBClusterAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBSecurityGroupMessage = { ["Tags"] = true, ["DBSecurityGroupDescription"] = true, ["DBSecurityGroupName"] = true, nil }

function asserts.AssertCreateDBSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSecurityGroupMessage to be of type 'table'")
	assert(struct["DBSecurityGroupName"], "Expected key DBSecurityGroupName to exist in table")
	assert(struct["DBSecurityGroupDescription"], "Expected key DBSecurityGroupDescription to exist in table")
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["DBSecurityGroupDescription"] then asserts.AssertString(struct["DBSecurityGroupDescription"]) end
	if struct["DBSecurityGroupName"] then asserts.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBSecurityGroupMessage[k], "CreateDBSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSecurityGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [TagList] 
-- * DBSecurityGroupDescription [String] <p>The description for the DB security group.</p>
-- * DBSecurityGroupName [String] <p>The name for the DB security group. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> <li> <p>Must not be "Default"</p> </li> </ul> <p>Example: <code>mysecuritygroup</code> </p>
-- Required key: DBSecurityGroupName
-- Required key: DBSecurityGroupDescription
-- @return CreateDBSecurityGroupMessage structure as a key-value pair table
function M.CreateDBSecurityGroupMessage(args)
	assert(args, "You must provide an argument table when creating CreateDBSecurityGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
		["DBSecurityGroupDescription"] = args["DBSecurityGroupDescription"],
		["DBSecurityGroupName"] = args["DBSecurityGroupName"],
	}
	asserts.AssertCreateDBSecurityGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Certificate = { ["CertificateArn"] = true, ["ValidTill"] = true, ["CertificateIdentifier"] = true, ["Thumbprint"] = true, ["CertificateType"] = true, ["ValidFrom"] = true, nil }

function asserts.AssertCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Certificate to be of type 'table'")
	if struct["CertificateArn"] then asserts.AssertString(struct["CertificateArn"]) end
	if struct["ValidTill"] then asserts.AssertTStamp(struct["ValidTill"]) end
	if struct["CertificateIdentifier"] then asserts.AssertString(struct["CertificateIdentifier"]) end
	if struct["Thumbprint"] then asserts.AssertString(struct["Thumbprint"]) end
	if struct["CertificateType"] then asserts.AssertString(struct["CertificateType"]) end
	if struct["ValidFrom"] then asserts.AssertTStamp(struct["ValidFrom"]) end
	for k,_ in pairs(struct) do
		assert(keys.Certificate[k], "Certificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Certificate
-- <p>A CA certificate for an AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [String] <p>The Amazon Resource Name (ARN) for the certificate.</p>
-- * ValidTill [TStamp] <p>The final date that the certificate continues to be valid.</p>
-- * CertificateIdentifier [String] <p>The unique key that identifies a certificate.</p>
-- * Thumbprint [String] <p>The thumbprint of the certificate.</p>
-- * CertificateType [String] <p>The type of the certificate.</p>
-- * ValidFrom [TStamp] <p>The starting date from which the certificate is valid.</p>
-- @return Certificate structure as a key-value pair table
function M.Certificate(args)
	assert(args, "You must provide an argument table when creating Certificate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateArn"] = args["CertificateArn"],
		["ValidTill"] = args["ValidTill"],
		["CertificateIdentifier"] = args["CertificateIdentifier"],
		["Thumbprint"] = args["Thumbprint"],
		["CertificateType"] = args["CertificateType"],
		["ValidFrom"] = args["ValidFrom"],
	}
	asserts.AssertCertificate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagListMessage = { ["TagList"] = true, nil }

function asserts.AssertTagListMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagListMessage to be of type 'table'")
	if struct["TagList"] then asserts.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagListMessage[k], "TagListMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagListMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagList [TagList] <p>List of tags returned by the ListTagsForResource operation.</p>
-- @return TagListMessage structure as a key-value pair table
function M.TagListMessage(args)
	assert(args, "You must provide an argument table when creating TagListMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagList"] = args["TagList"],
	}
	asserts.AssertTagListMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservedDBInstanceNotFoundFault = { nil }

function asserts.AssertReservedDBInstanceNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstanceNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ReservedDBInstanceNotFoundFault[k], "ReservedDBInstanceNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstanceNotFoundFault
-- <p>The specified reserved DB Instance not found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ReservedDBInstanceNotFoundFault structure as a key-value pair table
function M.ReservedDBInstanceNotFoundFault(args)
	assert(args, "You must provide an argument table when creating ReservedDBInstanceNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertReservedDBInstanceNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSubnetGroupDoesNotCoverEnoughAZs = { nil }

function asserts.AssertDBSubnetGroupDoesNotCoverEnoughAZs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupDoesNotCoverEnoughAZs to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSubnetGroupDoesNotCoverEnoughAZs[k], "DBSubnetGroupDoesNotCoverEnoughAZs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupDoesNotCoverEnoughAZs
-- <p>Subnets in the DB subnet group should cover at least two Availability Zones unless there is only one Availability Zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSubnetGroupDoesNotCoverEnoughAZs structure as a key-value pair table
function M.DBSubnetGroupDoesNotCoverEnoughAZs(args)
	assert(args, "You must provide an argument table when creating DBSubnetGroupDoesNotCoverEnoughAZs")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSubnetGroupDoesNotCoverEnoughAZs(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PromoteReadReplicaDBClusterResult = { ["DBCluster"] = true, nil }

function asserts.AssertPromoteReadReplicaDBClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PromoteReadReplicaDBClusterResult to be of type 'table'")
	if struct["DBCluster"] then asserts.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.PromoteReadReplicaDBClusterResult[k], "PromoteReadReplicaDBClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PromoteReadReplicaDBClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBCluster [DBCluster] 
-- @return PromoteReadReplicaDBClusterResult structure as a key-value pair table
function M.PromoteReadReplicaDBClusterResult(args)
	assert(args, "You must provide an argument table when creating PromoteReadReplicaDBClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBCluster"] = args["DBCluster"],
	}
	asserts.AssertPromoteReadReplicaDBClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForResourceMessage = { ["ResourceName"] = true, ["Filters"] = true, nil }

function asserts.AssertListTagsForResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceMessage to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	if struct["ResourceName"] then asserts.AssertString(struct["ResourceName"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceMessage[k], "ListTagsForResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceName [String] <p>The Amazon RDS resource with tags to be listed. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- Required key: ResourceName
-- @return ListTagsForResourceMessage structure as a key-value pair table
function M.ListTagsForResourceMessage(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceName"] = args["ResourceName"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertListTagsForResourceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreDBInstanceFromDBSnapshotResult = { ["DBInstance"] = true, nil }

function asserts.AssertRestoreDBInstanceFromDBSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBInstanceFromDBSnapshotResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBInstanceFromDBSnapshotResult[k], "RestoreDBInstanceFromDBSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBInstanceFromDBSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBInstance [DBInstance] 
-- @return RestoreDBInstanceFromDBSnapshotResult structure as a key-value pair table
function M.RestoreDBInstanceFromDBSnapshotResult(args)
	assert(args, "You must provide an argument table when creating RestoreDBInstanceFromDBSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBInstance"] = args["DBInstance"],
	}
	asserts.AssertRestoreDBInstanceFromDBSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResetDBClusterParameterGroupMessage = { ["DBClusterParameterGroupName"] = true, ["ResetAllParameters"] = true, ["Parameters"] = true, nil }

function asserts.AssertResetDBClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetDBClusterParameterGroupMessage to be of type 'table'")
	assert(struct["DBClusterParameterGroupName"], "Expected key DBClusterParameterGroupName to exist in table")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["ResetAllParameters"] then asserts.AssertBoolean(struct["ResetAllParameters"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResetDBClusterParameterGroupMessage[k], "ResetDBClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetDBClusterParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group to reset.</p>
-- * ResetAllParameters [Boolean] <p>A value that is set to <code>true</code> to reset all parameters in the DB cluster parameter group to their default values, and <code>false</code> otherwise. You cannot use this parameter if there is a list of parameter names specified for the <code>Parameters</code> parameter.</p>
-- * Parameters [ParametersList] <p>A list of parameter names in the DB cluster parameter group to reset to the default values. You cannot use this parameter if the <code>ResetAllParameters</code> parameter is set to <code>true</code>.</p>
-- Required key: DBClusterParameterGroupName
-- @return ResetDBClusterParameterGroupMessage structure as a key-value pair table
function M.ResetDBClusterParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating ResetDBClusterParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
		["ResetAllParameters"] = args["ResetAllParameters"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertResetDBClusterParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PromoteReadReplicaMessage = { ["PreferredBackupWindow"] = true, ["BackupRetentionPeriod"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertPromoteReadReplicaMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PromoteReadReplicaMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["PreferredBackupWindow"] then asserts.AssertString(struct["PreferredBackupWindow"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.PromoteReadReplicaMessage[k], "PromoteReadReplicaMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PromoteReadReplicaMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PreferredBackupWindow [String] <p> The daily time range during which automated backups are created if automated backups are enabled, using the <code>BackupRetentionPeriod</code> parameter. </p> <p> Default: A 30-minute window selected at random from an 8-hour block of time per region. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Times should be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- * BackupRetentionPeriod [IntegerOptional] <p>The number of days to retain automated backups. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 0 to 8</p> </li> </ul>
-- * DBInstanceIdentifier [String] <p>The DB instance identifier. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier for an existing Read Replica DB instance</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>mydbinstance</code> </p>
-- Required key: DBInstanceIdentifier
-- @return PromoteReadReplicaMessage structure as a key-value pair table
function M.PromoteReadReplicaMessage(args)
	assert(args, "You must provide an argument table when creating PromoteReadReplicaMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["BackupRetentionPeriod"] = args["BackupRetentionPeriod"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertPromoteReadReplicaMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidVPCNetworkStateFault = { nil }

function asserts.AssertInvalidVPCNetworkStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidVPCNetworkStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidVPCNetworkStateFault[k], "InvalidVPCNetworkStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidVPCNetworkStateFault
-- <p>DB subnet group does not cover all Availability Zones after it is created because users' change.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidVPCNetworkStateFault structure as a key-value pair table
function M.InvalidVPCNetworkStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidVPCNetworkStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidVPCNetworkStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OptionGroups = { ["Marker"] = true, ["OptionGroupsList"] = true, nil }

function asserts.AssertOptionGroups(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroups to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["OptionGroupsList"] then asserts.AssertOptionGroupsList(struct["OptionGroupsList"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionGroups[k], "OptionGroups contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroups
-- <p>List of option groups.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * OptionGroupsList [OptionGroupsList] <p>List of option groups.</p>
-- @return OptionGroups structure as a key-value pair table
function M.OptionGroups(args)
	assert(args, "You must provide an argument table when creating OptionGroups")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["OptionGroupsList"] = args["OptionGroupsList"],
	}
	asserts.AssertOptionGroups(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDBSnapshotStateFault = { nil }

function asserts.AssertInvalidDBSnapshotStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBSnapshotStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBSnapshotStateFault[k], "InvalidDBSnapshotStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBSnapshotStateFault
-- <p>The state of the DB snapshot does not allow deletion.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDBSnapshotStateFault structure as a key-value pair table
function M.InvalidDBSnapshotStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidDBSnapshotStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDBSnapshotStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCertificatesMessage = { ["Marker"] = true, ["CertificateIdentifier"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeCertificatesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificatesMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["CertificateIdentifier"] then asserts.AssertString(struct["CertificateIdentifier"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCertificatesMessage[k], "DescribeCertificatesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificatesMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <a>DescribeCertificates</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * CertificateIdentifier [String] <p>The user-supplied certificate identifier. If this parameter is specified, information for only the identified certificate is returned. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @return DescribeCertificatesMessage structure as a key-value pair table
function M.DescribeCertificatesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeCertificatesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["CertificateIdentifier"] = args["CertificateIdentifier"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeCertificatesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourcePendingMaintenanceActions = { ["PendingMaintenanceActionDetails"] = true, ["ResourceIdentifier"] = true, nil }

function asserts.AssertResourcePendingMaintenanceActions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourcePendingMaintenanceActions to be of type 'table'")
	if struct["PendingMaintenanceActionDetails"] then asserts.AssertPendingMaintenanceActionDetails(struct["PendingMaintenanceActionDetails"]) end
	if struct["ResourceIdentifier"] then asserts.AssertString(struct["ResourceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourcePendingMaintenanceActions[k], "ResourcePendingMaintenanceActions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourcePendingMaintenanceActions
-- <p>Describes the pending maintenance actions for a resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PendingMaintenanceActionDetails [PendingMaintenanceActionDetails] <p>A list that provides details about the pending maintenance actions for the resource.</p>
-- * ResourceIdentifier [String] <p>The ARN of the resource that has pending maintenance actions.</p>
-- @return ResourcePendingMaintenanceActions structure as a key-value pair table
function M.ResourcePendingMaintenanceActions(args)
	assert(args, "You must provide an argument table when creating ResourcePendingMaintenanceActions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PendingMaintenanceActionDetails"] = args["PendingMaintenanceActionDetails"],
		["ResourceIdentifier"] = args["ResourceIdentifier"],
	}
	asserts.AssertResourcePendingMaintenanceActions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PurchaseReservedDBInstancesOfferingResult = { ["ReservedDBInstance"] = true, nil }

function asserts.AssertPurchaseReservedDBInstancesOfferingResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseReservedDBInstancesOfferingResult to be of type 'table'")
	if struct["ReservedDBInstance"] then asserts.AssertReservedDBInstance(struct["ReservedDBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurchaseReservedDBInstancesOfferingResult[k], "PurchaseReservedDBInstancesOfferingResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseReservedDBInstancesOfferingResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReservedDBInstance [ReservedDBInstance] 
-- @return PurchaseReservedDBInstancesOfferingResult structure as a key-value pair table
function M.PurchaseReservedDBInstancesOfferingResult(args)
	assert(args, "You must provide an argument table when creating PurchaseReservedDBInstancesOfferingResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReservedDBInstance"] = args["ReservedDBInstance"],
	}
	asserts.AssertPurchaseReservedDBInstancesOfferingResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBLogFileNotFoundFault = { nil }

function asserts.AssertDBLogFileNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBLogFileNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBLogFileNotFoundFault[k], "DBLogFileNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBLogFileNotFoundFault
-- <p> <i>LogFileName</i> does not refer to an existing DB log file.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBLogFileNotFoundFault structure as a key-value pair table
function M.DBLogFileNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBLogFileNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBLogFileNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSecurityGroupMembership = { ["Status"] = true, ["DBSecurityGroupName"] = true, nil }

function asserts.AssertDBSecurityGroupMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupMembership to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["DBSecurityGroupName"] then asserts.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSecurityGroupMembership[k], "DBSecurityGroupMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupMembership
-- <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>ModifyDBInstance</a> </p> </li> <li> <p> <a>RebootDBInstance</a> </p> </li> <li> <p> <a>RestoreDBInstanceFromDBSnapshot</a> </p> </li> <li> <p> <a>RestoreDBInstanceToPointInTime</a> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the DB security group.</p>
-- * DBSecurityGroupName [String] <p>The name of the DB security group.</p>
-- @return DBSecurityGroupMembership structure as a key-value pair table
function M.DBSecurityGroupMembership(args)
	assert(args, "You must provide an argument table when creating DBSecurityGroupMembership")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["DBSecurityGroupName"] = args["DBSecurityGroupName"],
	}
	asserts.AssertDBSecurityGroupMembership(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBParameterGroupNotFoundFault = { nil }

function asserts.AssertDBParameterGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBParameterGroupNotFoundFault[k], "DBParameterGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupNotFoundFault
-- <p> <i>DBParameterGroupName</i> does not refer to an existing DB parameter group. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBParameterGroupNotFoundFault structure as a key-value pair table
function M.DBParameterGroupNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBParameterGroupNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBParameterGroupNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBClusterMessage = { ["FinalDBSnapshotIdentifier"] = true, ["SkipFinalSnapshot"] = true, ["DBClusterIdentifier"] = true, nil }

function asserts.AssertDeleteDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	if struct["FinalDBSnapshotIdentifier"] then asserts.AssertString(struct["FinalDBSnapshotIdentifier"]) end
	if struct["SkipFinalSnapshot"] then asserts.AssertBoolean(struct["SkipFinalSnapshot"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBClusterMessage[k], "DeleteDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBClusterMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FinalDBSnapshotIdentifier [String] <p> The DB cluster snapshot identifier of the new DB cluster snapshot created when <code>SkipFinalSnapshot</code> is set to <code>false</code>. </p> <note> <p> Specifying this parameter and also setting the <code>SkipFinalShapshot</code> parameter to true results in an error. </p> </note> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * SkipFinalSnapshot [Boolean] <p> Determines whether a final DB cluster snapshot is created before the DB cluster is deleted. If <code>true</code> is specified, no DB cluster snapshot is created. If <code>false</code> is specified, a DB cluster snapshot is created before the DB cluster is deleted. </p> <note> <p>You must specify a <code>FinalDBSnapshotIdentifier</code> parameter if <code>SkipFinalSnapshot</code> is <code>false</code>.</p> </note> <p>Default: <code>false</code> </p>
-- * DBClusterIdentifier [String] <p>The DB cluster identifier for the DB cluster to be deleted. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required key: DBClusterIdentifier
-- @return DeleteDBClusterMessage structure as a key-value pair table
function M.DeleteDBClusterMessage(args)
	assert(args, "You must provide an argument table when creating DeleteDBClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FinalDBSnapshotIdentifier"] = args["FinalDBSnapshotIdentifier"],
		["SkipFinalSnapshot"] = args["SkipFinalSnapshot"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
	}
	asserts.AssertDeleteDBClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBClusterSnapshotAttributeMessage = { ["ValuesToAdd"] = true, ["DBClusterSnapshotIdentifier"] = true, ["ValuesToRemove"] = true, ["AttributeName"] = true, nil }

function asserts.AssertModifyDBClusterSnapshotAttributeMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBClusterSnapshotAttributeMessage to be of type 'table'")
	assert(struct["DBClusterSnapshotIdentifier"], "Expected key DBClusterSnapshotIdentifier to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	if struct["ValuesToAdd"] then asserts.AssertAttributeValueList(struct["ValuesToAdd"]) end
	if struct["DBClusterSnapshotIdentifier"] then asserts.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	if struct["ValuesToRemove"] then asserts.AssertAttributeValueList(struct["ValuesToRemove"]) end
	if struct["AttributeName"] then asserts.AssertString(struct["AttributeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBClusterSnapshotAttributeMessage[k], "ModifyDBClusterSnapshotAttributeMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBClusterSnapshotAttributeMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ValuesToAdd [AttributeValueList] <p>A list of DB cluster snapshot attributes to add to the attribute specified by <code>AttributeName</code>.</p> <p>To authorize other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more AWS account IDs, or <code>all</code> to make the manual DB cluster snapshot restorable by any AWS account. Do not add the <code>all</code> value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts.</p>
-- * DBClusterSnapshotIdentifier [String] <p>The identifier for the DB cluster snapshot to modify the attributes for.</p>
-- * ValuesToRemove [AttributeValueList] <p>A list of DB cluster snapshot attributes to remove from the attribute specified by <code>AttributeName</code>.</p> <p>To remove authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more AWS account identifiers, or <code>all</code> to remove authorization for any AWS account to copy or restore the DB cluster snapshot. If you specify <code>all</code>, an AWS account whose account ID is explicitly added to the <code>restore</code> attribute can still copy or restore a manual DB cluster snapshot.</p>
-- * AttributeName [String] <p>The name of the DB cluster snapshot attribute to modify.</p> <p>To manage authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, set this value to <code>restore</code>.</p>
-- Required key: DBClusterSnapshotIdentifier
-- Required key: AttributeName
-- @return ModifyDBClusterSnapshotAttributeMessage structure as a key-value pair table
function M.ModifyDBClusterSnapshotAttributeMessage(args)
	assert(args, "You must provide an argument table when creating ModifyDBClusterSnapshotAttributeMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ValuesToAdd"] = args["ValuesToAdd"],
		["DBClusterSnapshotIdentifier"] = args["DBClusterSnapshotIdentifier"],
		["ValuesToRemove"] = args["ValuesToRemove"],
		["AttributeName"] = args["AttributeName"],
	}
	asserts.AssertModifyDBClusterSnapshotAttributeMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateOptionGroupMessage = { ["OptionGroupDescription"] = true, ["EngineName"] = true, ["MajorEngineVersion"] = true, ["OptionGroupName"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateOptionGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOptionGroupMessage to be of type 'table'")
	assert(struct["OptionGroupName"], "Expected key OptionGroupName to exist in table")
	assert(struct["EngineName"], "Expected key EngineName to exist in table")
	assert(struct["MajorEngineVersion"], "Expected key MajorEngineVersion to exist in table")
	assert(struct["OptionGroupDescription"], "Expected key OptionGroupDescription to exist in table")
	if struct["OptionGroupDescription"] then asserts.AssertString(struct["OptionGroupDescription"]) end
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["MajorEngineVersion"] then asserts.AssertString(struct["MajorEngineVersion"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateOptionGroupMessage[k], "CreateOptionGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOptionGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OptionGroupDescription [String] <p>The description of the option group.</p>
-- * EngineName [String] <p>Specifies the name of the engine that this option group should be associated with.</p>
-- * MajorEngineVersion [String] <p>Specifies the major version of the engine that this option group should be associated with.</p>
-- * OptionGroupName [String] <p>Specifies the name of the option group to be created.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>myoptiongroup</code> </p>
-- * Tags [TagList] 
-- Required key: OptionGroupName
-- Required key: EngineName
-- Required key: MajorEngineVersion
-- Required key: OptionGroupDescription
-- @return CreateOptionGroupMessage structure as a key-value pair table
function M.CreateOptionGroupMessage(args)
	assert(args, "You must provide an argument table when creating CreateOptionGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OptionGroupDescription"] = args["OptionGroupDescription"],
		["EngineName"] = args["EngineName"],
		["MajorEngineVersion"] = args["MajorEngineVersion"],
		["OptionGroupName"] = args["OptionGroupName"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateOptionGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEventSubscriptionMessage = { ["SubscriptionName"] = true, nil }

function asserts.AssertDeleteEventSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEventSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	if struct["SubscriptionName"] then asserts.AssertString(struct["SubscriptionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEventSubscriptionMessage[k], "DeleteEventSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEventSubscriptionMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubscriptionName [String] <p>The name of the RDS event notification subscription you want to delete.</p>
-- Required key: SubscriptionName
-- @return DeleteEventSubscriptionMessage structure as a key-value pair table
function M.DeleteEventSubscriptionMessage(args)
	assert(args, "You must provide an argument table when creating DeleteEventSubscriptionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubscriptionName"] = args["SubscriptionName"],
	}
	asserts.AssertDeleteEventSubscriptionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBSubnetGroupResult = { ["DBSubnetGroup"] = true, nil }

function asserts.AssertCreateDBSubnetGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSubnetGroupResult to be of type 'table'")
	if struct["DBSubnetGroup"] then asserts.AssertDBSubnetGroup(struct["DBSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBSubnetGroupResult[k], "CreateDBSubnetGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSubnetGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSubnetGroup [DBSubnetGroup] 
-- @return CreateDBSubnetGroupResult structure as a key-value pair table
function M.CreateDBSubnetGroupResult(args)
	assert(args, "You must provide an argument table when creating CreateDBSubnetGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSubnetGroup"] = args["DBSubnetGroup"],
	}
	asserts.AssertCreateDBSubnetGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservedDBInstanceAlreadyExistsFault = { nil }

function asserts.AssertReservedDBInstanceAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstanceAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ReservedDBInstanceAlreadyExistsFault[k], "ReservedDBInstanceAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstanceAlreadyExistsFault
-- <p>User already has a reservation with the given identifier.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ReservedDBInstanceAlreadyExistsFault structure as a key-value pair table
function M.ReservedDBInstanceAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating ReservedDBInstanceAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertReservedDBInstanceAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeOrderableDBInstanceOptionsMessage = { ["Engine"] = true, ["Vpc"] = true, ["LicenseModel"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["EngineVersion"] = true, ["Marker"] = true, ["DBInstanceClass"] = true, nil }

function asserts.AssertDescribeOrderableDBInstanceOptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOrderableDBInstanceOptionsMessage to be of type 'table'")
	assert(struct["Engine"], "Expected key Engine to exist in table")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["Vpc"] then asserts.AssertBooleanOptional(struct["Vpc"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOrderableDBInstanceOptionsMessage[k], "DescribeOrderableDBInstanceOptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOrderableDBInstanceOptionsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p>The name of the engine to retrieve DB instance options for.</p>
-- * Vpc [BooleanOptional] <p>The VPC filter value. Specify this parameter to show only the available VPC or non-VPC offerings.</p>
-- * LicenseModel [String] <p>The license model filter value. Specify this parameter to show only the available offerings matching the specified license model.</p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- * EngineVersion [String] <p>The engine version filter value. Specify this parameter to show only the available offerings matching the specified engine version.</p>
-- * Marker [String] <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- * DBInstanceClass [String] <p>The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.</p>
-- Required key: Engine
-- @return DescribeOrderableDBInstanceOptionsMessage structure as a key-value pair table
function M.DescribeOrderableDBInstanceOptionsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeOrderableDBInstanceOptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["Vpc"] = args["Vpc"],
		["LicenseModel"] = args["LicenseModel"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["EngineVersion"] = args["EngineVersion"],
		["Marker"] = args["Marker"],
		["DBInstanceClass"] = args["DBInstanceClass"],
	}
	asserts.AssertDescribeOrderableDBInstanceOptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBClusterParameterGroupMessage = { ["DBClusterParameterGroupName"] = true, nil }

function asserts.AssertDeleteDBClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBClusterParameterGroupMessage to be of type 'table'")
	assert(struct["DBClusterParameterGroupName"], "Expected key DBClusterParameterGroupName to exist in table")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBClusterParameterGroupMessage[k], "DeleteDBClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBClusterParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be the name of an existing DB cluster parameter group.</p> </li> <li> <p>You cannot delete a default DB cluster parameter group.</p> </li> <li> <p>Cannot be associated with any DB clusters.</p> </li> </ul>
-- Required key: DBClusterParameterGroupName
-- @return DeleteDBClusterParameterGroupMessage structure as a key-value pair table
function M.DeleteDBClusterParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating DeleteDBClusterParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
	}
	asserts.AssertDeleteDBClusterParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopDBInstanceMessage = { ["DBSnapshotIdentifier"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertStopDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopDBInstanceMessage[k], "StopDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopDBInstanceMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSnapshotIdentifier [String] <p> The user-supplied instance identifier of the DB Snapshot created immediately before the DB instance is stopped. </p>
-- * DBInstanceIdentifier [String] <p> The user-supplied instance identifier. </p>
-- Required key: DBInstanceIdentifier
-- @return StopDBInstanceMessage structure as a key-value pair table
function M.StopDBInstanceMessage(args)
	assert(args, "You must provide an argument table when creating StopDBInstanceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSnapshotIdentifier"] = args["DBSnapshotIdentifier"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertStopDBInstanceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBClusterSnapshotResult = { ["DBClusterSnapshot"] = true, nil }

function asserts.AssertDeleteDBClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBClusterSnapshotResult to be of type 'table'")
	if struct["DBClusterSnapshot"] then asserts.AssertDBClusterSnapshot(struct["DBClusterSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBClusterSnapshotResult[k], "DeleteDBClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBClusterSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshot [DBClusterSnapshot] 
-- @return DeleteDBClusterSnapshotResult structure as a key-value pair table
function M.DeleteDBClusterSnapshotResult(args)
	assert(args, "You must provide an argument table when creating DeleteDBClusterSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshot"] = args["DBClusterSnapshot"],
	}
	asserts.AssertDeleteDBClusterSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpgradeTarget = { ["Engine"] = true, ["IsMajorVersionUpgrade"] = true, ["AutoUpgrade"] = true, ["Description"] = true, ["EngineVersion"] = true, nil }

function asserts.AssertUpgradeTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpgradeTarget to be of type 'table'")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["IsMajorVersionUpgrade"] then asserts.AssertBoolean(struct["IsMajorVersionUpgrade"]) end
	if struct["AutoUpgrade"] then asserts.AssertBoolean(struct["AutoUpgrade"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpgradeTarget[k], "UpgradeTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpgradeTarget
-- <p>The version of the database engine that a DB instance can be upgraded to.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p>The name of the upgrade target database engine.</p>
-- * IsMajorVersionUpgrade [Boolean] <p>A value that indicates whether a database engine will be upgraded to a major version.</p>
-- * AutoUpgrade [Boolean] <p>A value that indicates whether the target version will be applied to any source DB instances that have AutoMinorVersionUpgrade set to true.</p>
-- * Description [String] <p>The version of the database engine that a DB instance can be upgraded to.</p>
-- * EngineVersion [String] <p>The version number of the upgrade target database engine.</p>
-- @return UpgradeTarget structure as a key-value pair table
function M.UpgradeTarget(args)
	assert(args, "You must provide an argument table when creating UpgradeTarget")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["IsMajorVersionUpgrade"] = args["IsMajorVersionUpgrade"],
		["AutoUpgrade"] = args["AutoUpgrade"],
		["Description"] = args["Description"],
		["EngineVersion"] = args["EngineVersion"],
	}
	asserts.AssertUpgradeTarget(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBSnapshotResult = { ["DBSnapshot"] = true, nil }

function asserts.AssertModifyDBSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSnapshotResult to be of type 'table'")
	if struct["DBSnapshot"] then asserts.AssertDBSnapshot(struct["DBSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBSnapshotResult[k], "ModifyDBSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSnapshot [DBSnapshot] 
-- @return ModifyDBSnapshotResult structure as a key-value pair table
function M.ModifyDBSnapshotResult(args)
	assert(args, "You must provide an argument table when creating ModifyDBSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSnapshot"] = args["DBSnapshot"],
	}
	asserts.AssertModifyDBSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBSnapshotMessage = { ["DBSnapshotIdentifier"] = true, ["DBInstanceIdentifier"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSnapshotMessage to be of type 'table'")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBSnapshotMessage[k], "CreateDBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSnapshotMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSnapshotIdentifier [String] <p>The identifier for the DB snapshot.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-snapshot-id</code> </p>
-- * DBInstanceIdentifier [String] <p>The DB instance identifier. This is the unique key that identifies a DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * Tags [TagList] 
-- Required key: DBSnapshotIdentifier
-- Required key: DBInstanceIdentifier
-- @return CreateDBSnapshotMessage structure as a key-value pair table
function M.CreateDBSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating CreateDBSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSnapshotIdentifier"] = args["DBSnapshotIdentifier"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateDBSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBInstanceResult = { ["DBInstance"] = true, nil }

function asserts.AssertModifyDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBInstanceResult[k], "ModifyDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBInstanceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBInstance [DBInstance] 
-- @return ModifyDBInstanceResult structure as a key-value pair table
function M.ModifyDBInstanceResult(args)
	assert(args, "You must provide an argument table when creating ModifyDBInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBInstance"] = args["DBInstance"],
	}
	asserts.AssertModifyDBInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreDBClusterFromS3Message = { ["SourceEngine"] = true, ["MasterUsername"] = true, ["VpcSecurityGroupIds"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["S3IngestionRoleArn"] = true, ["Engine"] = true, ["Tags"] = true, ["S3Prefix"] = true, ["PreferredBackupWindow"] = true, ["SourceEngineVersion"] = true, ["BackupRetentionPeriod"] = true, ["PreferredMaintenanceWindow"] = true, ["S3BucketName"] = true, ["DBClusterParameterGroupName"] = true, ["EngineVersion"] = true, ["DBSubnetGroupName"] = true, ["OptionGroupName"] = true, ["CharacterSetName"] = true, ["DBClusterIdentifier"] = true, ["MasterUserPassword"] = true, ["KmsKeyId"] = true, ["StorageEncrypted"] = true, ["DatabaseName"] = true, ["AvailabilityZones"] = true, ["Port"] = true, nil }

function asserts.AssertRestoreDBClusterFromS3Message(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBClusterFromS3Message to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	assert(struct["Engine"], "Expected key Engine to exist in table")
	assert(struct["MasterUsername"], "Expected key MasterUsername to exist in table")
	assert(struct["MasterUserPassword"], "Expected key MasterUserPassword to exist in table")
	assert(struct["SourceEngine"], "Expected key SourceEngine to exist in table")
	assert(struct["SourceEngineVersion"], "Expected key SourceEngineVersion to exist in table")
	assert(struct["S3BucketName"], "Expected key S3BucketName to exist in table")
	assert(struct["S3IngestionRoleArn"], "Expected key S3IngestionRoleArn to exist in table")
	if struct["SourceEngine"] then asserts.AssertString(struct["SourceEngine"]) end
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["S3IngestionRoleArn"] then asserts.AssertString(struct["S3IngestionRoleArn"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["S3Prefix"] then asserts.AssertString(struct["S3Prefix"]) end
	if struct["PreferredBackupWindow"] then asserts.AssertString(struct["PreferredBackupWindow"]) end
	if struct["SourceEngineVersion"] then asserts.AssertString(struct["SourceEngineVersion"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["S3BucketName"] then asserts.AssertString(struct["S3BucketName"]) end
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["CharacterSetName"] then asserts.AssertString(struct["CharacterSetName"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["MasterUserPassword"] then asserts.AssertString(struct["MasterUserPassword"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["StorageEncrypted"] then asserts.AssertBooleanOptional(struct["StorageEncrypted"]) end
	if struct["DatabaseName"] then asserts.AssertString(struct["DatabaseName"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBClusterFromS3Message[k], "RestoreDBClusterFromS3Message contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterFromS3Message
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceEngine [String] <p>The identifier for the database engine that was backed up to create the files stored in the Amazon S3 bucket. </p> <p>Valid values: <code>mysql</code> </p>
-- * MasterUsername [String] <p>The name of the master user for the restored DB cluster.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 16 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul>
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of EC2 VPC security groups to associate with the restored DB cluster.</p>
-- * EnableIAMDatabaseAuthentication [BooleanOptional] <p>A Boolean value that is true to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- * S3IngestionRoleArn [String] <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon RDS to access the Amazon S3 bucket on your behalf.</p>
-- * Engine [String] <p>The name of the database engine to be used for the restored DB cluster.</p> <p>Valid Values: <code>aurora</code> </p>
-- * Tags [TagList] 
-- * S3Prefix [String] <p>The prefix for all of the file names that contain the data used to create the Amazon Aurora DB cluster. If you do not specify a <b>SourceS3Prefix</b> value, then the Amazon Aurora DB cluster is created by using all of the files in the Amazon S3 bucket.</p>
-- * PreferredBackupWindow [String] <p>The daily time range during which automated backups are created if automated backups are enabled using the <code>BackupRetentionPeriod</code> parameter. </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Times should be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- * SourceEngineVersion [String] <p>The version of the database that the backup files were created from.</p> <p>MySQL version 5.5 and 5.6 are supported. </p> <p>Example: <code>5.6.22</code> </p>
-- * BackupRetentionPeriod [IntegerOptional] <p>The number of days for which automated backups of the restored DB cluster are retained. You must specify a minimum value of 1.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 1 to 35</p> </li> </ul>
-- * PreferredMaintenanceWindow [String] <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- * S3BucketName [String] <p>The name of the Amazon S3 bucket that contains the data used to create the Amazon Aurora DB cluster.</p>
-- * DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group to associate with the restored DB cluster. If this argument is omitted, <code>default.aurora5.6</code> will be used. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * EngineVersion [String] <p>The version number of the database engine to use.</p> <p> <b>Aurora</b> </p> <p>Example: <code>5.6.10a</code> </p>
-- * DBSubnetGroupName [String] <p>A DB subnet group to associate with the restored DB cluster.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- * OptionGroupName [String] <p>A value that indicates that the restored DB cluster should be associated with the specified option group.</p> <p>Permanent options cannot be removed from an option group. An option group cannot be removed from a DB cluster once it is associated with a DB cluster.</p>
-- * CharacterSetName [String] <p>A value that indicates that the restored DB cluster should be associated with the specified CharacterSet.</p>
-- * DBClusterIdentifier [String] <p>The name of the DB cluster to create from the source data in the S3 bucket. This parameter is isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1</code> </p>
-- * MasterUserPassword [String] <p>The password for the master database user. This password can contain any printable ASCII character except "/", """, or "@".</p> <p>Constraints: Must contain from 8 to 41 characters.</p>
-- * KmsKeyId [String] <p>The KMS key identifier for an encrypted DB cluster.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KM encryption key.</p> <p>If the <code>StorageEncrypted</code> parameter is true, and you do not specify a value for the <code>KmsKeyId</code> parameter, then Amazon RDS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.</p>
-- * StorageEncrypted [BooleanOptional] <p>Specifies whether the restored DB cluster is encrypted.</p>
-- * DatabaseName [String] <p>The database name for the restored DB cluster.</p>
-- * AvailabilityZones [AvailabilityZones] <p>A list of EC2 Availability Zones that instances in the restored DB cluster can be created in.</p>
-- * Port [IntegerOptional] <p>The port number on which the instances in the restored DB cluster accept connections.</p> <p> Default: <code>3306</code> </p>
-- Required key: DBClusterIdentifier
-- Required key: Engine
-- Required key: MasterUsername
-- Required key: MasterUserPassword
-- Required key: SourceEngine
-- Required key: SourceEngineVersion
-- Required key: S3BucketName
-- Required key: S3IngestionRoleArn
-- @return RestoreDBClusterFromS3Message structure as a key-value pair table
function M.RestoreDBClusterFromS3Message(args)
	assert(args, "You must provide an argument table when creating RestoreDBClusterFromS3Message")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceEngine"] = args["SourceEngine"],
		["MasterUsername"] = args["MasterUsername"],
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["EnableIAMDatabaseAuthentication"] = args["EnableIAMDatabaseAuthentication"],
		["S3IngestionRoleArn"] = args["S3IngestionRoleArn"],
		["Engine"] = args["Engine"],
		["Tags"] = args["Tags"],
		["S3Prefix"] = args["S3Prefix"],
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["SourceEngineVersion"] = args["SourceEngineVersion"],
		["BackupRetentionPeriod"] = args["BackupRetentionPeriod"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["S3BucketName"] = args["S3BucketName"],
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
		["EngineVersion"] = args["EngineVersion"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["OptionGroupName"] = args["OptionGroupName"],
		["CharacterSetName"] = args["CharacterSetName"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["MasterUserPassword"] = args["MasterUserPassword"],
		["KmsKeyId"] = args["KmsKeyId"],
		["StorageEncrypted"] = args["StorageEncrypted"],
		["DatabaseName"] = args["DatabaseName"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["Port"] = args["Port"],
	}
	asserts.AssertRestoreDBClusterFromS3Message(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterNotFoundFault = { nil }

function asserts.AssertDBClusterNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterNotFoundFault[k], "DBClusterNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterNotFoundFault
-- <p> <i>DBClusterIdentifier</i> does not refer to an existing DB cluster. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterNotFoundFault structure as a key-value pair table
function M.DBClusterNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBClusterNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PointInTimeRestoreNotEnabledFault = { nil }

function asserts.AssertPointInTimeRestoreNotEnabledFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PointInTimeRestoreNotEnabledFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PointInTimeRestoreNotEnabledFault[k], "PointInTimeRestoreNotEnabledFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PointInTimeRestoreNotEnabledFault
-- <p> <i>SourceDBInstanceIdentifier</i> refers to a DB instance with <i>BackupRetentionPeriod</i> equal to 0. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PointInTimeRestoreNotEnabledFault structure as a key-value pair table
function M.PointInTimeRestoreNotEnabledFault(args)
	assert(args, "You must provide an argument table when creating PointInTimeRestoreNotEnabledFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPointInTimeRestoreNotEnabledFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAccountAttributesMessage = { nil }

function asserts.AssertDescribeAccountAttributesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountAttributesMessage to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DescribeAccountAttributesMessage[k], "DescribeAccountAttributesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountAttributesMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DescribeAccountAttributesMessage structure as a key-value pair table
function M.DescribeAccountAttributesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeAccountAttributesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDescribeAccountAttributesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBParametersMessage = { ["Marker"] = true, ["DBParameterGroupName"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["Source"] = true, nil }

function asserts.AssertDescribeDBParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBParametersMessage to be of type 'table'")
	assert(struct["DBParameterGroupName"], "Expected key DBParameterGroupName to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["Source"] then asserts.AssertString(struct["Source"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBParametersMessage[k], "DescribeDBParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBParametersMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBParameterGroupName [String] <p>The name of a specific DB parameter group to return details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- * Source [String] <p>The parameter types to return.</p> <p>Default: All parameter types returned</p> <p>Valid Values: <code>user | system | engine-default</code> </p>
-- Required key: DBParameterGroupName
-- @return DescribeDBParametersMessage structure as a key-value pair table
function M.DescribeDBParametersMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBParametersMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["Source"] = args["Source"],
	}
	asserts.AssertDescribeDBParametersMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDBSubnetGroupFault = { nil }

function asserts.AssertInvalidDBSubnetGroupFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBSubnetGroupFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBSubnetGroupFault[k], "InvalidDBSubnetGroupFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBSubnetGroupFault
-- <p>Indicates the DBSubnetGroup does not belong to the same VPC as that of an existing cross region read replica of the same source instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDBSubnetGroupFault structure as a key-value pair table
function M.InvalidDBSubnetGroupFault(args)
	assert(args, "You must provide an argument table when creating InvalidDBSubnetGroupFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDBSubnetGroupFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateEventSubscriptionResult = { ["EventSubscription"] = true, nil }

function asserts.AssertCreateEventSubscriptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEventSubscriptionResult to be of type 'table'")
	if struct["EventSubscription"] then asserts.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEventSubscriptionResult[k], "CreateEventSubscriptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEventSubscriptionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventSubscription [EventSubscription] 
-- @return CreateEventSubscriptionResult structure as a key-value pair table
function M.CreateEventSubscriptionResult(args)
	assert(args, "You must provide an argument table when creating CreateEventSubscriptionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventSubscription"] = args["EventSubscription"],
	}
	asserts.AssertCreateEventSubscriptionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterParameterGroupsMessage = { ["Marker"] = true, ["DBClusterParameterGroups"] = true, nil }

function asserts.AssertDBClusterParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterParameterGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBClusterParameterGroups"] then asserts.AssertDBClusterParameterGroupList(struct["DBClusterParameterGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterParameterGroupsMessage[k], "DBClusterParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterParameterGroupsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBClusterParameterGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBClusterParameterGroups [DBClusterParameterGroupList] <p>A list of DB cluster parameter groups.</p>
-- @return DBClusterParameterGroupsMessage structure as a key-value pair table
function M.DBClusterParameterGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DBClusterParameterGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBClusterParameterGroups"] = args["DBClusterParameterGroups"],
	}
	asserts.AssertDBClusterParameterGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBSnapshotResult = { ["DBSnapshot"] = true, nil }

function asserts.AssertCreateDBSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSnapshotResult to be of type 'table'")
	if struct["DBSnapshot"] then asserts.AssertDBSnapshot(struct["DBSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBSnapshotResult[k], "CreateDBSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSnapshot [DBSnapshot] 
-- @return CreateDBSnapshotResult structure as a key-value pair table
function M.CreateDBSnapshotResult(args)
	assert(args, "You must provide an argument table when creating CreateDBSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSnapshot"] = args["DBSnapshot"],
	}
	asserts.AssertCreateDBSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBParameterGroupMessage = { ["DBParameterGroupName"] = true, nil }

function asserts.AssertDeleteDBParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBParameterGroupMessage to be of type 'table'")
	assert(struct["DBParameterGroupName"], "Expected key DBParameterGroupName to exist in table")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBParameterGroupMessage[k], "DeleteDBParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupName [String] <p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be the name of an existing DB parameter group</p> </li> <li> <p>You cannot delete a default DB parameter group</p> </li> <li> <p>Cannot be associated with any DB instances</p> </li> </ul>
-- Required key: DBParameterGroupName
-- @return DeleteDBParameterGroupMessage structure as a key-value pair table
function M.DeleteDBParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating DeleteDBParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupName"] = args["DBParameterGroupName"],
	}
	asserts.AssertDeleteDBParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBUpgradeDependencyFailureFault = { nil }

function asserts.AssertDBUpgradeDependencyFailureFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBUpgradeDependencyFailureFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBUpgradeDependencyFailureFault[k], "DBUpgradeDependencyFailureFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBUpgradeDependencyFailureFault
-- <p>The DB upgrade failed because a resource the DB depends on could not be modified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBUpgradeDependencyFailureFault structure as a key-value pair table
function M.DBUpgradeDependencyFailureFault(args)
	assert(args, "You must provide an argument table when creating DBUpgradeDependencyFailureFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBUpgradeDependencyFailureFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AuthorizationQuotaExceededFault = { nil }

function asserts.AssertAuthorizationQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizationQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AuthorizationQuotaExceededFault[k], "AuthorizationQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizationQuotaExceededFault
-- <p>DB security group authorization quota has been reached.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AuthorizationQuotaExceededFault structure as a key-value pair table
function M.AuthorizationQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating AuthorizationQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAuthorizationQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDBClusterSnapshotStateFault = { nil }

function asserts.AssertInvalidDBClusterSnapshotStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBClusterSnapshotStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBClusterSnapshotStateFault[k], "InvalidDBClusterSnapshotStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBClusterSnapshotStateFault
-- <p>The supplied value is not a valid DB cluster snapshot state.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDBClusterSnapshotStateFault structure as a key-value pair table
function M.InvalidDBClusterSnapshotStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidDBClusterSnapshotStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDBClusterSnapshotStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReservedDBInstancesMessage = { ["MultiAZ"] = true, ["OfferingType"] = true, ["ProductDescription"] = true, ["ReservedDBInstancesOfferingId"] = true, ["Marker"] = true, ["Duration"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["ReservedDBInstanceId"] = true, ["DBInstanceClass"] = true, nil }

function asserts.AssertDescribeReservedDBInstancesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedDBInstancesMessage to be of type 'table'")
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["OfferingType"] then asserts.AssertString(struct["OfferingType"]) end
	if struct["ProductDescription"] then asserts.AssertString(struct["ProductDescription"]) end
	if struct["ReservedDBInstancesOfferingId"] then asserts.AssertString(struct["ReservedDBInstancesOfferingId"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Duration"] then asserts.AssertString(struct["Duration"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["ReservedDBInstanceId"] then asserts.AssertString(struct["ReservedDBInstanceId"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReservedDBInstancesMessage[k], "DescribeReservedDBInstancesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedDBInstancesMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MultiAZ [BooleanOptional] <p>The Multi-AZ filter value. Specify this parameter to show only those reservations matching the specified Multi-AZ parameter.</p>
-- * OfferingType [String] <p>The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type.</p> <p>Valid Values: <code>"Partial Upfront" | "All Upfront" | "No Upfront" </code> </p>
-- * ProductDescription [String] <p>The product description filter value. Specify this parameter to show only those reservations matching the specified product description.</p>
-- * ReservedDBInstancesOfferingId [String] <p>The offering identifier filter value. Specify this parameter to show only purchased reservations matching the specified offering identifier.</p>
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * Duration [String] <p>The duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration.</p> <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code> </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is included in the response so that the following results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- * ReservedDBInstanceId [String] <p>The reserved DB instance identifier filter value. Specify this parameter to show only the reservation that matches the specified reservation ID.</p>
-- * DBInstanceClass [String] <p>The DB instance class filter value. Specify this parameter to show only those reservations matching the specified DB instances class.</p>
-- @return DescribeReservedDBInstancesMessage structure as a key-value pair table
function M.DescribeReservedDBInstancesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeReservedDBInstancesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MultiAZ"] = args["MultiAZ"],
		["OfferingType"] = args["OfferingType"],
		["ProductDescription"] = args["ProductDescription"],
		["ReservedDBInstancesOfferingId"] = args["ReservedDBInstancesOfferingId"],
		["Marker"] = args["Marker"],
		["Duration"] = args["Duration"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["ReservedDBInstanceId"] = args["ReservedDBInstanceId"],
		["DBInstanceClass"] = args["DBInstanceClass"],
	}
	asserts.AssertDescribeReservedDBInstancesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBInstanceReadReplicaResult = { ["DBInstance"] = true, nil }

function asserts.AssertCreateDBInstanceReadReplicaResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBInstanceReadReplicaResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBInstanceReadReplicaResult[k], "CreateDBInstanceReadReplicaResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBInstanceReadReplicaResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBInstance [DBInstance] 
-- @return CreateDBInstanceReadReplicaResult structure as a key-value pair table
function M.CreateDBInstanceReadReplicaResult(args)
	assert(args, "You must provide an argument table when creating CreateDBInstanceReadReplicaResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBInstance"] = args["DBInstance"],
	}
	asserts.AssertCreateDBInstanceReadReplicaResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEventsMessage = { ["EventCategories"] = true, ["SourceType"] = true, ["Marker"] = true, ["MaxRecords"] = true, ["StartTime"] = true, ["Duration"] = true, ["Filters"] = true, ["SourceIdentifier"] = true, ["EndTime"] = true, nil }

function asserts.AssertDescribeEventsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsMessage to be of type 'table'")
	if struct["EventCategories"] then asserts.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then asserts.AssertSourceType(struct["SourceType"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["StartTime"] then asserts.AssertTStamp(struct["StartTime"]) end
	if struct["Duration"] then asserts.AssertIntegerOptional(struct["Duration"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["SourceIdentifier"] then asserts.AssertString(struct["SourceIdentifier"]) end
	if struct["EndTime"] then asserts.AssertTStamp(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventsMessage[k], "DescribeEventsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventCategories [EventCategoriesList] <p>A list of event categories that trigger notifications for a event notification subscription.</p>
-- * SourceType [SourceType] <p>The event source to retrieve events for. If no value is specified, all events are returned.</p>
-- * Marker [String] <p> An optional pagination token provided by a previous DescribeEvents request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * StartTime [TStamp] <p> The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a> </p> <p>Example: 2009-07-08T18:00Z</p>
-- * Duration [IntegerOptional] <p>The number of minutes to retrieve events for.</p> <p>Default: 60</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- * SourceIdentifier [String] <p>The identifier of the event source for which events will be returned. If not specified, then all sources are included in the response.</p> <p>Constraints:</p> <ul> <li> <p>If SourceIdentifier is supplied, SourceType must also be provided.</p> </li> <li> <p>If the source type is <code>DBInstance</code>, then a <code>DBInstanceIdentifier</code> must be supplied.</p> </li> <li> <p>If the source type is <code>DBSecurityGroup</code>, a <code>DBSecurityGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is <code>DBParameterGroup</code>, a <code>DBParameterGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is <code>DBSnapshot</code>, a <code>DBSnapshotIdentifier</code> must be supplied.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- * EndTime [TStamp] <p> The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a> </p> <p>Example: 2009-07-08T18:00Z</p>
-- @return DescribeEventsMessage structure as a key-value pair table
function M.DescribeEventsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeEventsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventCategories"] = args["EventCategories"],
		["SourceType"] = args["SourceType"],
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["StartTime"] = args["StartTime"],
		["Duration"] = args["Duration"],
		["Filters"] = args["Filters"],
		["SourceIdentifier"] = args["SourceIdentifier"],
		["EndTime"] = args["EndTime"],
	}
	asserts.AssertDescribeEventsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StorageQuotaExceededFault = { nil }

function asserts.AssertStorageQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StorageQuotaExceededFault[k], "StorageQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageQuotaExceededFault
-- <p>Request would result in user exceeding the allowed amount of storage available across all DB instances.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StorageQuotaExceededFault structure as a key-value pair table
function M.StorageQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating StorageQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStorageQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBCluster = { ["MasterUsername"] = true, ["ReaderEndpoint"] = true, ["ReadReplicaIdentifiers"] = true, ["CloneGroupId"] = true, ["VpcSecurityGroups"] = true, ["IAMDatabaseAuthenticationEnabled"] = true, ["HostedZoneId"] = true, ["Status"] = true, ["MultiAZ"] = true, ["LatestRestorableTime"] = true, ["PreferredBackupWindow"] = true, ["DBSubnetGroup"] = true, ["AllocatedStorage"] = true, ["DBClusterOptionGroupMemberships"] = true, ["BackupRetentionPeriod"] = true, ["PreferredMaintenanceWindow"] = true, ["Engine"] = true, ["Endpoint"] = true, ["AssociatedRoles"] = true, ["EarliestRestorableTime"] = true, ["PercentProgress"] = true, ["ReplicationSourceIdentifier"] = true, ["ClusterCreateTime"] = true, ["EngineVersion"] = true, ["CharacterSetName"] = true, ["DBClusterIdentifier"] = true, ["DbClusterResourceId"] = true, ["DBClusterMembers"] = true, ["DBClusterArn"] = true, ["KmsKeyId"] = true, ["StorageEncrypted"] = true, ["DatabaseName"] = true, ["DBClusterParameterGroup"] = true, ["AvailabilityZones"] = true, ["Port"] = true, nil }

function asserts.AssertDBCluster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBCluster to be of type 'table'")
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["ReaderEndpoint"] then asserts.AssertString(struct["ReaderEndpoint"]) end
	if struct["ReadReplicaIdentifiers"] then asserts.AssertReadReplicaIdentifierList(struct["ReadReplicaIdentifiers"]) end
	if struct["CloneGroupId"] then asserts.AssertString(struct["CloneGroupId"]) end
	if struct["VpcSecurityGroups"] then asserts.AssertVpcSecurityGroupMembershipList(struct["VpcSecurityGroups"]) end
	if struct["IAMDatabaseAuthenticationEnabled"] then asserts.AssertBoolean(struct["IAMDatabaseAuthenticationEnabled"]) end
	if struct["HostedZoneId"] then asserts.AssertString(struct["HostedZoneId"]) end
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["MultiAZ"] then asserts.AssertBoolean(struct["MultiAZ"]) end
	if struct["LatestRestorableTime"] then asserts.AssertTStamp(struct["LatestRestorableTime"]) end
	if struct["PreferredBackupWindow"] then asserts.AssertString(struct["PreferredBackupWindow"]) end
	if struct["DBSubnetGroup"] then asserts.AssertString(struct["DBSubnetGroup"]) end
	if struct["AllocatedStorage"] then asserts.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["DBClusterOptionGroupMemberships"] then asserts.AssertDBClusterOptionGroupMemberships(struct["DBClusterOptionGroupMemberships"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["Endpoint"] then asserts.AssertString(struct["Endpoint"]) end
	if struct["AssociatedRoles"] then asserts.AssertDBClusterRoles(struct["AssociatedRoles"]) end
	if struct["EarliestRestorableTime"] then asserts.AssertTStamp(struct["EarliestRestorableTime"]) end
	if struct["PercentProgress"] then asserts.AssertString(struct["PercentProgress"]) end
	if struct["ReplicationSourceIdentifier"] then asserts.AssertString(struct["ReplicationSourceIdentifier"]) end
	if struct["ClusterCreateTime"] then asserts.AssertTStamp(struct["ClusterCreateTime"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["CharacterSetName"] then asserts.AssertString(struct["CharacterSetName"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["DbClusterResourceId"] then asserts.AssertString(struct["DbClusterResourceId"]) end
	if struct["DBClusterMembers"] then asserts.AssertDBClusterMemberList(struct["DBClusterMembers"]) end
	if struct["DBClusterArn"] then asserts.AssertString(struct["DBClusterArn"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["StorageEncrypted"] then asserts.AssertBoolean(struct["StorageEncrypted"]) end
	if struct["DatabaseName"] then asserts.AssertString(struct["DatabaseName"]) end
	if struct["DBClusterParameterGroup"] then asserts.AssertString(struct["DBClusterParameterGroup"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBCluster[k], "DBCluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBCluster
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBCluster</a> </p> </li> <li> <p> <a>DeleteDBCluster</a> </p> </li> <li> <p> <a>FailoverDBCluster</a> </p> </li> <li> <p> <a>ModifyDBCluster</a> </p> </li> <li> <p> <a>RestoreDBClusterFromSnapshot</a> </p> </li> <li> <p> <a>RestoreDBClusterToPointInTime</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBClusters</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MasterUsername [String] <p>Contains the master username for the DB cluster.</p>
-- * ReaderEndpoint [String] <p>The reader endpoint for the DB cluster. The reader endpoint for a DB cluster load-balances connections across the Aurora Replicas that are available in a DB cluster. As clients request new connections to the reader endpoint, Aurora distributes the connection requests among the Aurora Replicas in the DB cluster. This functionality can help balance your read workload across multiple Aurora Replicas in your DB cluster. </p> <p>If a failover occurs, and the Aurora Replica that you are connected to is promoted to be the primary instance, your connection will be dropped. To continue sending your read workload to other Aurora Replicas in the cluster, you can then reconnect to the reader endpoint.</p>
-- * ReadReplicaIdentifiers [ReadReplicaIdentifierList] <p>Contains one or more identifiers of the Read Replicas associated with this DB cluster.</p>
-- * CloneGroupId [String] <p>Identifies the clone group to which the DB cluster is associated.</p>
-- * VpcSecurityGroups [VpcSecurityGroupMembershipList] <p>Provides a list of VPC security groups that the DB cluster belongs to.</p>
-- * IAMDatabaseAuthenticationEnabled [Boolean] <p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled; otherwise false.</p>
-- * HostedZoneId [String] <p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>
-- * Status [String] <p>Specifies the current state of this DB cluster.</p>
-- * MultiAZ [Boolean] <p>Specifies whether the DB cluster has instances in multiple Availability Zones.</p>
-- * LatestRestorableTime [TStamp] <p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>
-- * PreferredBackupWindow [String] <p>Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code>. </p>
-- * DBSubnetGroup [String] <p>Specifies information on the subnet group associated with the DB cluster, including the name, description, and subnets in the subnet group.</p>
-- * AllocatedStorage [IntegerOptional] <p>For all database engines except Amazon Aurora, <code>AllocatedStorage</code> specifies the allocated storage size in gigabytes (GB). For Aurora, <code>AllocatedStorage</code> always returns 1, because Aurora DB cluster storage size is not fixed, but instead automatically adjusts as needed.</p>
-- * DBClusterOptionGroupMemberships [DBClusterOptionGroupMemberships] <p>Provides the list of option group memberships for this DB cluster.</p>
-- * BackupRetentionPeriod [IntegerOptional] <p>Specifies the number of days for which automatic DB snapshots are retained.</p>
-- * PreferredMaintenanceWindow [String] <p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
-- * Engine [String] <p>Provides the name of the database engine to be used for this DB cluster.</p>
-- * Endpoint [String] <p>Specifies the connection endpoint for the primary instance of the DB cluster.</p>
-- * AssociatedRoles [DBClusterRoles] <p>Provides a list of the AWS Identity and Access Management (IAM) roles that are associated with the DB cluster. IAM roles that are associated with a DB cluster grant permission for the DB cluster to access other AWS services on your behalf.</p>
-- * EarliestRestorableTime [TStamp] <p>Specifies the earliest time to which a database can be restored with point-in-time restore.</p>
-- * PercentProgress [String] <p>Specifies the progress of the operation as a percentage.</p>
-- * ReplicationSourceIdentifier [String] <p>Contains the identifier of the source DB cluster if this DB cluster is a Read Replica.</p>
-- * ClusterCreateTime [TStamp] <p>Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).</p>
-- * EngineVersion [String] <p>Indicates the database engine version.</p>
-- * CharacterSetName [String] <p>If present, specifies the name of the character set that this cluster is associated with.</p>
-- * DBClusterIdentifier [String] <p>Contains a user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.</p>
-- * DbClusterResourceId [String] <p>The region-unique, immutable identifier for the DB cluster. This identifier is found in AWS CloudTrail log entries whenever the KMS key for the DB cluster is accessed.</p>
-- * DBClusterMembers [DBClusterMemberList] <p>Provides the list of instances that make up the DB cluster.</p>
-- * DBClusterArn [String] <p>The Amazon Resource Name (ARN) for the DB cluster.</p>
-- * KmsKeyId [String] <p>If <code>StorageEncrypted</code> is true, the KMS key identifier for the encrypted DB cluster.</p>
-- * StorageEncrypted [Boolean] <p>Specifies whether the DB cluster is encrypted.</p>
-- * DatabaseName [String] <p>Contains the name of the initial database of this DB cluster that was provided at create time, if one was specified when the DB cluster was created. This same name is returned for the life of the DB cluster.</p>
-- * DBClusterParameterGroup [String] <p>Specifies the name of the DB cluster parameter group for the DB cluster.</p>
-- * AvailabilityZones [AvailabilityZones] <p>Provides the list of EC2 Availability Zones that instances in the DB cluster can be created in.</p>
-- * Port [IntegerOptional] <p>Specifies the port that the database engine is listening on.</p>
-- @return DBCluster structure as a key-value pair table
function M.DBCluster(args)
	assert(args, "You must provide an argument table when creating DBCluster")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MasterUsername"] = args["MasterUsername"],
		["ReaderEndpoint"] = args["ReaderEndpoint"],
		["ReadReplicaIdentifiers"] = args["ReadReplicaIdentifiers"],
		["CloneGroupId"] = args["CloneGroupId"],
		["VpcSecurityGroups"] = args["VpcSecurityGroups"],
		["IAMDatabaseAuthenticationEnabled"] = args["IAMDatabaseAuthenticationEnabled"],
		["HostedZoneId"] = args["HostedZoneId"],
		["Status"] = args["Status"],
		["MultiAZ"] = args["MultiAZ"],
		["LatestRestorableTime"] = args["LatestRestorableTime"],
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["DBSubnetGroup"] = args["DBSubnetGroup"],
		["AllocatedStorage"] = args["AllocatedStorage"],
		["DBClusterOptionGroupMemberships"] = args["DBClusterOptionGroupMemberships"],
		["BackupRetentionPeriod"] = args["BackupRetentionPeriod"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["Engine"] = args["Engine"],
		["Endpoint"] = args["Endpoint"],
		["AssociatedRoles"] = args["AssociatedRoles"],
		["EarliestRestorableTime"] = args["EarliestRestorableTime"],
		["PercentProgress"] = args["PercentProgress"],
		["ReplicationSourceIdentifier"] = args["ReplicationSourceIdentifier"],
		["ClusterCreateTime"] = args["ClusterCreateTime"],
		["EngineVersion"] = args["EngineVersion"],
		["CharacterSetName"] = args["CharacterSetName"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["DbClusterResourceId"] = args["DbClusterResourceId"],
		["DBClusterMembers"] = args["DBClusterMembers"],
		["DBClusterArn"] = args["DBClusterArn"],
		["KmsKeyId"] = args["KmsKeyId"],
		["StorageEncrypted"] = args["StorageEncrypted"],
		["DatabaseName"] = args["DatabaseName"],
		["DBClusterParameterGroup"] = args["DBClusterParameterGroup"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["Port"] = args["Port"],
	}
	asserts.AssertDBCluster(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSnapshotAlreadyExistsFault = { nil }

function asserts.AssertDBSnapshotAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshotAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSnapshotAlreadyExistsFault[k], "DBSnapshotAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshotAlreadyExistsFault
-- <p> <i>DBSnapshotIdentifier</i> is already used by an existing snapshot. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSnapshotAlreadyExistsFault structure as a key-value pair table
function M.DBSnapshotAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating DBSnapshotAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSnapshotAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSnapshotAttribute = { ["AttributeName"] = true, ["AttributeValues"] = true, nil }

function asserts.AssertDBSnapshotAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshotAttribute to be of type 'table'")
	if struct["AttributeName"] then asserts.AssertString(struct["AttributeName"]) end
	if struct["AttributeValues"] then asserts.AssertAttributeValueList(struct["AttributeValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSnapshotAttribute[k], "DBSnapshotAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshotAttribute
-- <p>Contains the name and values of a manual DB snapshot attribute</p> <p>Manual DB snapshot attributes are used to authorize other AWS accounts to restore a manual DB snapshot. For more information, see the <a>ModifyDBSnapshotAttribute</a> API.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeName [String] <p>The name of the manual DB snapshot attribute.</p> <p>The attribute named <code>restore</code> refers to the list of AWS accounts that have permission to copy or restore the manual DB cluster snapshot. For more information, see the <a>ModifyDBSnapshotAttribute</a> API action.</p>
-- * AttributeValues [AttributeValueList] <p>The value or values for the manual DB snapshot attribute.</p> <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element returns a list of IDs of the AWS accounts that are authorized to copy or restore the manual DB snapshot. If a value of <code>all</code> is in the list, then the manual DB snapshot is public and available for any AWS account to copy or restore.</p>
-- @return DBSnapshotAttribute structure as a key-value pair table
function M.DBSnapshotAttribute(args)
	assert(args, "You must provide an argument table when creating DBSnapshotAttribute")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeName"] = args["AttributeName"],
		["AttributeValues"] = args["AttributeValues"],
	}
	asserts.AssertDBSnapshotAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBSnapshotAttributesMessage = { ["DBSnapshotIdentifier"] = true, nil }

function asserts.AssertDescribeDBSnapshotAttributesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBSnapshotAttributesMessage to be of type 'table'")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBSnapshotAttributesMessage[k], "DescribeDBSnapshotAttributesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBSnapshotAttributesMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSnapshotIdentifier [String] <p>The identifier for the DB snapshot to describe the attributes for.</p>
-- Required key: DBSnapshotIdentifier
-- @return DescribeDBSnapshotAttributesMessage structure as a key-value pair table
function M.DescribeDBSnapshotAttributesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBSnapshotAttributesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSnapshotIdentifier"] = args["DBSnapshotIdentifier"],
	}
	asserts.AssertDescribeDBSnapshotAttributesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Event = { ["EventCategories"] = true, ["SourceType"] = true, ["SourceArn"] = true, ["Date"] = true, ["Message"] = true, ["SourceIdentifier"] = true, nil }

function asserts.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["EventCategories"] then asserts.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then asserts.AssertSourceType(struct["SourceType"]) end
	if struct["SourceArn"] then asserts.AssertString(struct["SourceArn"]) end
	if struct["Date"] then asserts.AssertTStamp(struct["Date"]) end
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["SourceIdentifier"] then asserts.AssertString(struct["SourceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.Event[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- <p> This data type is used as a response element in the <a>DescribeEvents</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventCategories [EventCategoriesList] <p>Specifies the category for the event.</p>
-- * SourceType [SourceType] <p>Specifies the source type for this event.</p>
-- * SourceArn [String] <p>The Amazon Resource Name (ARN) for the event.</p>
-- * Date [TStamp] <p>Specifies the date and time of the event.</p>
-- * Message [String] <p>Provides the text of this event.</p>
-- * SourceIdentifier [String] <p>Provides the identifier for the source of the event.</p>
-- @return Event structure as a key-value pair table
function M.Event(args)
	assert(args, "You must provide an argument table when creating Event")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventCategories"] = args["EventCategories"],
		["SourceType"] = args["SourceType"],
		["SourceArn"] = args["SourceArn"],
		["Date"] = args["Date"],
		["Message"] = args["Message"],
		["SourceIdentifier"] = args["SourceIdentifier"],
	}
	asserts.AssertEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBClusterSnapshotMessage = { ["DBClusterSnapshotIdentifier"] = true, nil }

function asserts.AssertDeleteDBClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBClusterSnapshotMessage to be of type 'table'")
	assert(struct["DBClusterSnapshotIdentifier"], "Expected key DBClusterSnapshotIdentifier to exist in table")
	if struct["DBClusterSnapshotIdentifier"] then asserts.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBClusterSnapshotMessage[k], "DeleteDBClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBClusterSnapshotMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshotIdentifier [String] <p>The identifier of the DB cluster snapshot to delete.</p> <p>Constraints: Must be the name of an existing DB cluster snapshot in the <code>available</code> state.</p>
-- Required key: DBClusterSnapshotIdentifier
-- @return DeleteDBClusterSnapshotMessage structure as a key-value pair table
function M.DeleteDBClusterSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating DeleteDBClusterSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshotIdentifier"] = args["DBClusterSnapshotIdentifier"],
	}
	asserts.AssertDeleteDBClusterSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreDBClusterToPointInTimeResult = { ["DBCluster"] = true, nil }

function asserts.AssertRestoreDBClusterToPointInTimeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBClusterToPointInTimeResult to be of type 'table'")
	if struct["DBCluster"] then asserts.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBClusterToPointInTimeResult[k], "RestoreDBClusterToPointInTimeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterToPointInTimeResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBCluster [DBCluster] 
-- @return RestoreDBClusterToPointInTimeResult structure as a key-value pair table
function M.RestoreDBClusterToPointInTimeResult(args)
	assert(args, "You must provide an argument table when creating RestoreDBClusterToPointInTimeResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBCluster"] = args["DBCluster"],
	}
	asserts.AssertRestoreDBClusterToPointInTimeResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SourceNotFoundFault = { nil }

function asserts.AssertSourceNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SourceNotFoundFault[k], "SourceNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceNotFoundFault
-- <p>The requested source could not be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SourceNotFoundFault structure as a key-value pair table
function M.SourceNotFoundFault(args)
	assert(args, "You must provide an argument table when creating SourceNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSourceNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBClusterSnapshotsMessage = { ["IncludeShared"] = true, ["DBClusterIdentifier"] = true, ["IncludePublic"] = true, ["MaxRecords"] = true, ["Marker"] = true, ["DBClusterSnapshotIdentifier"] = true, ["Filters"] = true, ["SnapshotType"] = true, nil }

function asserts.AssertDescribeDBClusterSnapshotsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClusterSnapshotsMessage to be of type 'table'")
	if struct["IncludeShared"] then asserts.AssertBoolean(struct["IncludeShared"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["IncludePublic"] then asserts.AssertBoolean(struct["IncludePublic"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBClusterSnapshotIdentifier"] then asserts.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["SnapshotType"] then asserts.AssertString(struct["SnapshotType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBClusterSnapshotsMessage[k], "DescribeDBClusterSnapshotsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClusterSnapshotsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IncludeShared [Boolean] <p>Set this value to <code>true</code> to include shared manual DB cluster snapshots from other AWS accounts that this AWS account has been given permission to copy or restore, otherwise set this value to <code>false</code>. The default is <code>false</code>.</p> <p>You can give an AWS account permission to restore a manual DB cluster snapshot from another AWS account by the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- * DBClusterIdentifier [String] <p>The ID of the DB cluster to retrieve the list of DB cluster snapshots for. This parameter cannot be used in conjunction with the <code>DBClusterSnapshotIdentifier</code> parameter. This parameter is not case-sensitive. </p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * IncludePublic [Boolean] <p>Set this value to <code>true</code> to include manual DB cluster snapshots that are public and can be copied or restored by any AWS account, otherwise set this value to <code>false</code>. The default is <code>false</code>. The default is false.</p> <p>You can share a manual DB cluster snapshot as public by using the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Marker [String] <p>An optional pagination token provided by a previous <code>DescribeDBClusterSnapshots</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBClusterSnapshotIdentifier [String] <p>A specific DB cluster snapshot identifier to describe. This parameter cannot be used in conjunction with the <code>DBClusterIdentifier</code> parameter. This value is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> <li> <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code> parameter must also be specified.</p> </li> </ul>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- * SnapshotType [String] <p>The type of DB cluster snapshots to be returned. You can specify one of the following values:</p> <ul> <li> <p> <code>automated</code> - Return all DB cluster snapshots that have been automatically taken by Amazon RDS for my AWS account.</p> </li> <li> <p> <code>manual</code> - Return all DB cluster snapshots that have been taken by my AWS account.</p> </li> <li> <p> <code>shared</code> - Return all manual DB cluster snapshots that have been shared to my AWS account.</p> </li> <li> <p> <code>public</code> - Return all DB cluster snapshots that have been marked as public.</p> </li> </ul> <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual DB cluster snapshots are returned. You can include shared DB cluster snapshots with these results by setting the <code>IncludeShared</code> parameter to <code>true</code>. You can include public DB cluster snapshots with these results by setting the <code>IncludePublic</code> parameter to <code>true</code>.</p> <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>public</code>.</p>
-- @return DescribeDBClusterSnapshotsMessage structure as a key-value pair table
function M.DescribeDBClusterSnapshotsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBClusterSnapshotsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IncludeShared"] = args["IncludeShared"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["IncludePublic"] = args["IncludePublic"],
		["MaxRecords"] = args["MaxRecords"],
		["Marker"] = args["Marker"],
		["DBClusterSnapshotIdentifier"] = args["DBClusterSnapshotIdentifier"],
		["Filters"] = args["Filters"],
		["SnapshotType"] = args["SnapshotType"],
	}
	asserts.AssertDescribeDBClusterSnapshotsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Parameter = { ["ApplyMethod"] = true, ["Description"] = true, ["DataType"] = true, ["IsModifiable"] = true, ["AllowedValues"] = true, ["Source"] = true, ["ParameterValue"] = true, ["ParameterName"] = true, ["MinimumEngineVersion"] = true, ["ApplyType"] = true, nil }

function asserts.AssertParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Parameter to be of type 'table'")
	if struct["ApplyMethod"] then asserts.AssertApplyMethod(struct["ApplyMethod"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["DataType"] then asserts.AssertString(struct["DataType"]) end
	if struct["IsModifiable"] then asserts.AssertBoolean(struct["IsModifiable"]) end
	if struct["AllowedValues"] then asserts.AssertString(struct["AllowedValues"]) end
	if struct["Source"] then asserts.AssertString(struct["Source"]) end
	if struct["ParameterValue"] then asserts.AssertString(struct["ParameterValue"]) end
	if struct["ParameterName"] then asserts.AssertString(struct["ParameterName"]) end
	if struct["MinimumEngineVersion"] then asserts.AssertString(struct["MinimumEngineVersion"]) end
	if struct["ApplyType"] then asserts.AssertString(struct["ApplyType"]) end
	for k,_ in pairs(struct) do
		assert(keys.Parameter[k], "Parameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Parameter
-- <p> This data type is used as a request parameter in the <a>ModifyDBParameterGroup</a> and <a>ResetDBParameterGroup</a> actions. </p> <p>This data type is used as a response element in the <a>DescribeEngineDefaultParameters</a> and <a>DescribeDBParameters</a> actions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplyMethod [ApplyMethod] <p>Indicates when to apply parameter updates.</p>
-- * Description [String] <p>Provides a description of the parameter.</p>
-- * DataType [String] <p>Specifies the valid data type for the parameter.</p>
-- * IsModifiable [Boolean] <p> Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed. </p>
-- * AllowedValues [String] <p>Specifies the valid range of values for the parameter.</p>
-- * Source [String] <p>Indicates the source of the parameter value.</p>
-- * ParameterValue [String] <p>Specifies the value of the parameter.</p>
-- * ParameterName [String] <p>Specifies the name of the parameter.</p>
-- * MinimumEngineVersion [String] <p>The earliest engine version to which the parameter can apply.</p>
-- * ApplyType [String] <p>Specifies the engine specific parameters type.</p>
-- @return Parameter structure as a key-value pair table
function M.Parameter(args)
	assert(args, "You must provide an argument table when creating Parameter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplyMethod"] = args["ApplyMethod"],
		["Description"] = args["Description"],
		["DataType"] = args["DataType"],
		["IsModifiable"] = args["IsModifiable"],
		["AllowedValues"] = args["AllowedValues"],
		["Source"] = args["Source"],
		["ParameterValue"] = args["ParameterValue"],
		["ParameterName"] = args["ParameterName"],
		["MinimumEngineVersion"] = args["MinimumEngineVersion"],
		["ApplyType"] = args["ApplyType"],
	}
	asserts.AssertParameter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBSubnetGroupResult = { ["DBSubnetGroup"] = true, nil }

function asserts.AssertModifyDBSubnetGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSubnetGroupResult to be of type 'table'")
	if struct["DBSubnetGroup"] then asserts.AssertDBSubnetGroup(struct["DBSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBSubnetGroupResult[k], "ModifyDBSubnetGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSubnetGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSubnetGroup [DBSubnetGroup] 
-- @return ModifyDBSubnetGroupResult structure as a key-value pair table
function M.ModifyDBSubnetGroupResult(args)
	assert(args, "You must provide an argument table when creating ModifyDBSubnetGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSubnetGroup"] = args["DBSubnetGroup"],
	}
	asserts.AssertModifyDBSubnetGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CharacterSet = { ["CharacterSetName"] = true, ["CharacterSetDescription"] = true, nil }

function asserts.AssertCharacterSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CharacterSet to be of type 'table'")
	if struct["CharacterSetName"] then asserts.AssertString(struct["CharacterSetName"]) end
	if struct["CharacterSetDescription"] then asserts.AssertString(struct["CharacterSetDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.CharacterSet[k], "CharacterSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CharacterSet
-- <p> This data type is used as a response element in the action <a>DescribeDBEngineVersions</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CharacterSetName [String] <p>The name of the character set.</p>
-- * CharacterSetDescription [String] <p>The description of the character set.</p>
-- @return CharacterSet structure as a key-value pair table
function M.CharacterSet(args)
	assert(args, "You must provide an argument table when creating CharacterSet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CharacterSetName"] = args["CharacterSetName"],
		["CharacterSetDescription"] = args["CharacterSetDescription"],
	}
	asserts.AssertCharacterSet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventCategoriesMessage = { ["EventCategoriesMapList"] = true, nil }

function asserts.AssertEventCategoriesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventCategoriesMessage to be of type 'table'")
	if struct["EventCategoriesMapList"] then asserts.AssertEventCategoriesMapList(struct["EventCategoriesMapList"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventCategoriesMessage[k], "EventCategoriesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventCategoriesMessage
-- <p>Data returned from the <b>DescribeEventCategories</b> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventCategoriesMapList [EventCategoriesMapList] <p>A list of EventCategoriesMap data types.</p>
-- @return EventCategoriesMessage structure as a key-value pair table
function M.EventCategoriesMessage(args)
	assert(args, "You must provide an argument table when creating EventCategoriesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventCategoriesMapList"] = args["EventCategoriesMapList"],
	}
	asserts.AssertEventCategoriesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBClusterSnapshotAttributesResult = { ["DBClusterSnapshotAttributesResult"] = true, nil }

function asserts.AssertDescribeDBClusterSnapshotAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClusterSnapshotAttributesResult to be of type 'table'")
	if struct["DBClusterSnapshotAttributesResult"] then asserts.AssertDBClusterSnapshotAttributesResult(struct["DBClusterSnapshotAttributesResult"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBClusterSnapshotAttributesResult[k], "DescribeDBClusterSnapshotAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClusterSnapshotAttributesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshotAttributesResult [DBClusterSnapshotAttributesResult] 
-- @return DescribeDBClusterSnapshotAttributesResult structure as a key-value pair table
function M.DescribeDBClusterSnapshotAttributesResult(args)
	assert(args, "You must provide an argument table when creating DescribeDBClusterSnapshotAttributesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshotAttributesResult"] = args["DBClusterSnapshotAttributesResult"],
	}
	asserts.AssertDescribeDBClusterSnapshotAttributesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBInstanceNotFoundFault = { nil }

function asserts.AssertDBInstanceNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBInstanceNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBInstanceNotFoundFault[k], "DBInstanceNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBInstanceNotFoundFault
-- <p> <i>DBInstanceIdentifier</i> does not refer to an existing DB instance. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBInstanceNotFoundFault structure as a key-value pair table
function M.DBInstanceNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBInstanceNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBInstanceNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RecurringCharge = { ["RecurringChargeAmount"] = true, ["RecurringChargeFrequency"] = true, nil }

function asserts.AssertRecurringCharge(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecurringCharge to be of type 'table'")
	if struct["RecurringChargeAmount"] then asserts.AssertDouble(struct["RecurringChargeAmount"]) end
	if struct["RecurringChargeFrequency"] then asserts.AssertString(struct["RecurringChargeFrequency"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecurringCharge[k], "RecurringCharge contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecurringCharge
-- <p> This data type is used as a response element in the <a>DescribeReservedDBInstances</a> and <a>DescribeReservedDBInstancesOfferings</a> actions. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecurringChargeAmount [Double] <p>The amount of the recurring charge.</p>
-- * RecurringChargeFrequency [String] <p>The frequency of the recurring charge.</p>
-- @return RecurringCharge structure as a key-value pair table
function M.RecurringCharge(args)
	assert(args, "You must provide an argument table when creating RecurringCharge")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RecurringChargeAmount"] = args["RecurringChargeAmount"],
		["RecurringChargeFrequency"] = args["RecurringChargeFrequency"],
	}
	asserts.AssertRecurringCharge(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccountAttributesMessage = { ["AccountQuotas"] = true, nil }

function asserts.AssertAccountAttributesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountAttributesMessage to be of type 'table'")
	if struct["AccountQuotas"] then asserts.AssertAccountQuotaList(struct["AccountQuotas"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountAttributesMessage[k], "AccountAttributesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountAttributesMessage
-- <p>Data returned by the <b>DescribeAccountAttributes</b> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountQuotas [AccountQuotaList] <p>A list of <a>AccountQuota</a> objects. Within this list, each quota has a name, a count of usage toward the quota maximum, and a maximum value for the quota.</p>
-- @return AccountAttributesMessage structure as a key-value pair table
function M.AccountAttributesMessage(args)
	assert(args, "You must provide an argument table when creating AccountAttributesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountQuotas"] = args["AccountQuotas"],
	}
	asserts.AssertAccountAttributesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreDBInstanceFromDBSnapshotMessage = { ["PubliclyAccessible"] = true, ["DomainIAMRoleName"] = true, ["LicenseModel"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["CopyTagsToSnapshot"] = true, ["Engine"] = true, ["MultiAZ"] = true, ["Tags"] = true, ["AutoMinorVersionUpgrade"] = true, ["DBSnapshotIdentifier"] = true, ["DBSubnetGroupName"] = true, ["DBName"] = true, ["TdeCredentialPassword"] = true, ["TdeCredentialArn"] = true, ["OptionGroupName"] = true, ["Domain"] = true, ["AvailabilityZone"] = true, ["StorageType"] = true, ["Iops"] = true, ["DBInstanceClass"] = true, ["Port"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertRestoreDBInstanceFromDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBInstanceFromDBSnapshotMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	if struct["PubliclyAccessible"] then asserts.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["DomainIAMRoleName"] then asserts.AssertString(struct["DomainIAMRoleName"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["CopyTagsToSnapshot"] then asserts.AssertBooleanOptional(struct["CopyTagsToSnapshot"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["DBName"] then asserts.AssertString(struct["DBName"]) end
	if struct["TdeCredentialPassword"] then asserts.AssertString(struct["TdeCredentialPassword"]) end
	if struct["TdeCredentialArn"] then asserts.AssertString(struct["TdeCredentialArn"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["Domain"] then asserts.AssertString(struct["Domain"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["Iops"] then asserts.AssertIntegerOptional(struct["Iops"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBInstanceFromDBSnapshotMessage[k], "RestoreDBInstanceFromDBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBInstanceFromDBSnapshotMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PubliclyAccessible [BooleanOptional] <p>Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.</p> <p>Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.</p> <ul> <li> <p> <b>Default VPC:</b> true</p> </li> <li> <p> <b>VPC:</b> false</p> </li> </ul> <p>If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be private.</p>
-- * DomainIAMRoleName [String] <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
-- * LicenseModel [String] <p>License model information for the restored DB instance.</p> <p>Default: Same as source.</p> <p> Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- * EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts; otherwise false.</p> <p>You can enable IAM database authentication for the following database engines</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> <li> <p>Aurora 5.6 or higher.</p> </li> </ul> <p>Default: <code>false</code> </p>
-- * CopyTagsToSnapshot [BooleanOptional] <p>True to copy all tags from the restored DB instance to snapshots of the DB instance; otherwise false. The default is false.</p>
-- * Engine [String] <p>The database engine to use for the new instance.</p> <p>Default: The same as source</p> <p>Constraint: Must be compatible with the engine of the source. You can restore a MariaDB 10.1 DB instance from a MySQL 5.6 snapshot.</p> <p> Valid Values: <code>MySQL</code> | <code>mariadb</code> | <code>oracle-se1</code> | <code>oracle-se</code> | <code>oracle-ee</code> | <code>sqlserver-ee</code> | <code>sqlserver-se</code> | <code>sqlserver-ex</code> | <code>sqlserver-web</code> | <code>postgres</code> | <code>aurora</code> </p>
-- * MultiAZ [BooleanOptional] <p>Specifies if the DB instance is a Multi-AZ deployment.</p> <p>Constraint: You cannot specify the AvailabilityZone parameter if the MultiAZ parameter is set to <code>true</code>.</p>
-- * Tags [TagList] 
-- * AutoMinorVersionUpgrade [BooleanOptional] <p>Indicates that minor version upgrades will be applied automatically to the DB instance during the maintenance window.</p>
-- * DBSnapshotIdentifier [String] <p>The identifier for the DB snapshot to restore from.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>If you are restoring from a shared manual DB snapshot, the <code>DBSnapshotIdentifier</code> must be the ARN of the shared DB snapshot.</p>
-- * DBSubnetGroupName [String] <p>The DB subnet group name to use for the new instance.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- * DBName [String] <p>The database name for the restored DB instance.</p> <note> <p>This parameter doesn't apply to the MySQL, PostgreSQL, or MariaDB engines.</p> </note>
-- * TdeCredentialPassword [String] <p>The password for the given ARN from the Key Store in order to access the device.</p>
-- * TdeCredentialArn [String] <p>The ARN from the Key Store with which to associate the instance for TDE encryption.</p>
-- * OptionGroupName [String] <p>The name of the option group to be used for the restored DB instance.</p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, cannot be removed from an option group, and that option group cannot be removed from a DB instance once it is associated with a DB instance</p>
-- * Domain [String] <p>Specify the Active Directory Domain to restore the instance in.</p>
-- * AvailabilityZone [String] <p>The EC2 Availability Zone that the database instance will be created in.</p> <p>Default: A random, system-chosen Availability Zone.</p> <p>Constraint: You cannot specify the AvailabilityZone parameter if the MultiAZ parameter is set to <code>true</code>.</p> <p>Example: <code>us-east-1a</code> </p>
-- * StorageType [String] <p>Specifies the storage type to be associated with the DB instance.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified; otherwise <code>standard</code> </p>
-- * Iops [IntegerOptional] <p>Specifies the amount of provisioned IOPS for the DB instance, expressed in I/O operations per second. If this parameter is not specified, the IOPS value will be taken from the backup. If this parameter is set to 0, the new instance will be converted to a non-PIOPS instance, which will take additional time, though your DB instance will be available for connections before the conversion starts.</p> <p>Constraints: Must be an integer greater than 1000.</p> <p> <b>SQL Server</b> </p> <p>Setting the IOPS value for the SQL Server database engine is not supported.</p>
-- * DBInstanceClass [String] <p>The compute and memory capacity of the Amazon RDS DB instance.</p> <p>Valid Values: <code>db.t1.micro | db.m1.small | db.m1.medium | db.m1.large | db.m1.xlarge | db.m2.2xlarge | db.m2.4xlarge | db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge | db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge | db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small | db.t2.medium | db.t2.large</code> </p>
-- * Port [IntegerOptional] <p>The port number on which the database accepts connections.</p> <p>Default: The same port as the original DB instance</p> <p>Constraints: Value must be <code>1150-65535</code> </p>
-- * DBInstanceIdentifier [String] <p>Name of the DB instance to create from the DB snapshot. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens (1 to 15 for SQL Server)</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-snapshot-id</code> </p>
-- Required key: DBInstanceIdentifier
-- Required key: DBSnapshotIdentifier
-- @return RestoreDBInstanceFromDBSnapshotMessage structure as a key-value pair table
function M.RestoreDBInstanceFromDBSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating RestoreDBInstanceFromDBSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["DomainIAMRoleName"] = args["DomainIAMRoleName"],
		["LicenseModel"] = args["LicenseModel"],
		["EnableIAMDatabaseAuthentication"] = args["EnableIAMDatabaseAuthentication"],
		["CopyTagsToSnapshot"] = args["CopyTagsToSnapshot"],
		["Engine"] = args["Engine"],
		["MultiAZ"] = args["MultiAZ"],
		["Tags"] = args["Tags"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["DBSnapshotIdentifier"] = args["DBSnapshotIdentifier"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["DBName"] = args["DBName"],
		["TdeCredentialPassword"] = args["TdeCredentialPassword"],
		["TdeCredentialArn"] = args["TdeCredentialArn"],
		["OptionGroupName"] = args["OptionGroupName"],
		["Domain"] = args["Domain"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["StorageType"] = args["StorageType"],
		["Iops"] = args["Iops"],
		["DBInstanceClass"] = args["DBInstanceClass"],
		["Port"] = args["Port"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertRestoreDBInstanceFromDBSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDBClusterStateFault = { nil }

function asserts.AssertInvalidDBClusterStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBClusterStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBClusterStateFault[k], "InvalidDBClusterStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBClusterStateFault
-- <p>The DB cluster is not in a valid state.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDBClusterStateFault structure as a key-value pair table
function M.InvalidDBClusterStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidDBClusterStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDBClusterStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBEngineVersion = { ["Engine"] = true, ["DBParameterGroupFamily"] = true, ["SupportedCharacterSets"] = true, ["DefaultCharacterSet"] = true, ["SupportedTimezones"] = true, ["DBEngineDescription"] = true, ["EngineVersion"] = true, ["DBEngineVersionDescription"] = true, ["ValidUpgradeTarget"] = true, nil }

function asserts.AssertDBEngineVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBEngineVersion to be of type 'table'")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["SupportedCharacterSets"] then asserts.AssertSupportedCharacterSetsList(struct["SupportedCharacterSets"]) end
	if struct["DefaultCharacterSet"] then asserts.AssertCharacterSet(struct["DefaultCharacterSet"]) end
	if struct["SupportedTimezones"] then asserts.AssertSupportedTimezonesList(struct["SupportedTimezones"]) end
	if struct["DBEngineDescription"] then asserts.AssertString(struct["DBEngineDescription"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["DBEngineVersionDescription"] then asserts.AssertString(struct["DBEngineVersionDescription"]) end
	if struct["ValidUpgradeTarget"] then asserts.AssertValidUpgradeTargetList(struct["ValidUpgradeTarget"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBEngineVersion[k], "DBEngineVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBEngineVersion
-- <p> This data type is used as a response element in the action <a>DescribeDBEngineVersions</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p>The name of the database engine.</p>
-- * DBParameterGroupFamily [String] <p>The name of the DB parameter group family for the database engine.</p>
-- * SupportedCharacterSets [SupportedCharacterSetsList] <p> A list of the character sets supported by this engine for the <code>CharacterSetName</code> parameter of the <code>CreateDBInstance</code> action. </p>
-- * DefaultCharacterSet [CharacterSet] <p> The default character set for new instances of this engine version, if the <code>CharacterSetName</code> parameter of the CreateDBInstance API is not specified. </p>
-- * SupportedTimezones [SupportedTimezonesList] <p>A list of the time zones supported by this engine for the <code>Timezone</code> parameter of the <code>CreateDBInstance</code> action. </p>
-- * DBEngineDescription [String] <p>The description of the database engine.</p>
-- * EngineVersion [String] <p>The version number of the database engine.</p>
-- * DBEngineVersionDescription [String] <p>The description of the database engine version.</p>
-- * ValidUpgradeTarget [ValidUpgradeTargetList] <p>A list of engine versions that this database engine version can be upgraded to.</p>
-- @return DBEngineVersion structure as a key-value pair table
function M.DBEngineVersion(args)
	assert(args, "You must provide an argument table when creating DBEngineVersion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["SupportedCharacterSets"] = args["SupportedCharacterSets"],
		["DefaultCharacterSet"] = args["DefaultCharacterSet"],
		["SupportedTimezones"] = args["SupportedTimezones"],
		["DBEngineDescription"] = args["DBEngineDescription"],
		["EngineVersion"] = args["EngineVersion"],
		["DBEngineVersionDescription"] = args["DBEngineVersionDescription"],
		["ValidUpgradeTarget"] = args["ValidUpgradeTarget"],
	}
	asserts.AssertDBEngineVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSubnetQuotaExceededFault = { nil }

function asserts.AssertDBSubnetQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSubnetQuotaExceededFault[k], "DBSubnetQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetQuotaExceededFault
-- <p>Request would result in user exceeding the allowed number of subnets in a DB subnet groups.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSubnetQuotaExceededFault structure as a key-value pair table
function M.DBSubnetQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating DBSubnetQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSubnetQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveSourceIdentifierFromSubscriptionMessage = { ["SourceIdentifier"] = true, ["SubscriptionName"] = true, nil }

function asserts.AssertRemoveSourceIdentifierFromSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveSourceIdentifierFromSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	assert(struct["SourceIdentifier"], "Expected key SourceIdentifier to exist in table")
	if struct["SourceIdentifier"] then asserts.AssertString(struct["SourceIdentifier"]) end
	if struct["SubscriptionName"] then asserts.AssertString(struct["SubscriptionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveSourceIdentifierFromSubscriptionMessage[k], "RemoveSourceIdentifierFromSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveSourceIdentifierFromSubscriptionMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceIdentifier [String] <p> The source identifier to be removed from the subscription, such as the <b>DB instance identifier</b> for a DB instance or the name of a security group. </p>
-- * SubscriptionName [String] <p>The name of the RDS event notification subscription you want to remove a source identifier from.</p>
-- Required key: SubscriptionName
-- Required key: SourceIdentifier
-- @return RemoveSourceIdentifierFromSubscriptionMessage structure as a key-value pair table
function M.RemoveSourceIdentifierFromSubscriptionMessage(args)
	assert(args, "You must provide an argument table when creating RemoveSourceIdentifierFromSubscriptionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceIdentifier"] = args["SourceIdentifier"],
		["SubscriptionName"] = args["SubscriptionName"],
	}
	asserts.AssertRemoveSourceIdentifierFromSubscriptionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBSnapshotsMessage = { ["IncludeShared"] = true, ["IncludePublic"] = true, ["Marker"] = true, ["MaxRecords"] = true, ["DBSnapshotIdentifier"] = true, ["Filters"] = true, ["SnapshotType"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertDescribeDBSnapshotsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBSnapshotsMessage to be of type 'table'")
	if struct["IncludeShared"] then asserts.AssertBoolean(struct["IncludeShared"]) end
	if struct["IncludePublic"] then asserts.AssertBoolean(struct["IncludePublic"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["SnapshotType"] then asserts.AssertString(struct["SnapshotType"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBSnapshotsMessage[k], "DescribeDBSnapshotsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBSnapshotsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IncludeShared [Boolean] <p>Set this value to <code>true</code> to include shared manual DB snapshots from other AWS accounts that this AWS account has been given permission to copy or restore, otherwise set this value to <code>false</code>. The default is <code>false</code>.</p> <p>You can give an AWS account permission to restore a manual DB snapshot from another AWS account by using the <a>ModifyDBSnapshotAttribute</a> API action.</p>
-- * IncludePublic [Boolean] <p>Set this value to <code>true</code> to include manual DB snapshots that are public and can be copied or restored by any AWS account, otherwise set this value to <code>false</code>. The default is <code>false</code>.</p> <p>You can share a manual DB snapshot as public by using the <a>ModifyDBSnapshotAttribute</a> API.</p>
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBSnapshots</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * DBSnapshotIdentifier [String] <p> A specific DB snapshot identifier to describe. This parameter cannot be used in conjunction with <code>DBInstanceIdentifier</code>. This value is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code> parameter must also be specified.</p> </li> </ul>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- * SnapshotType [String] <p>The type of snapshots to be returned. You can specify one of the following values:</p> <ul> <li> <p> <code>automated</code> - Return all DB snapshots that have been automatically taken by Amazon RDS for my AWS account.</p> </li> <li> <p> <code>manual</code> - Return all DB snapshots that have been taken by my AWS account.</p> </li> <li> <p> <code>shared</code> - Return all manual DB snapshots that have been shared to my AWS account.</p> </li> <li> <p> <code>public</code> - Return all DB snapshots that have been marked as public.</p> </li> </ul> <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual snapshots are returned. Shared and public DB snapshots are not included in the returned results by default. You can include shared snapshots with these results by setting the <code>IncludeShared</code> parameter to <code>true</code>. You can include public snapshots with these results by setting the <code>IncludePublic</code> parameter to <code>true</code>.</p> <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>public</code>.</p>
-- * DBInstanceIdentifier [String] <p>The ID of the DB instance to retrieve the list of DB snapshots for. This parameter cannot be used in conjunction with <code>DBSnapshotIdentifier</code>. This parameter is not case-sensitive. </p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @return DescribeDBSnapshotsMessage structure as a key-value pair table
function M.DescribeDBSnapshotsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBSnapshotsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IncludeShared"] = args["IncludeShared"],
		["IncludePublic"] = args["IncludePublic"],
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["DBSnapshotIdentifier"] = args["DBSnapshotIdentifier"],
		["Filters"] = args["Filters"],
		["SnapshotType"] = args["SnapshotType"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertDescribeDBSnapshotsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBClusterResult = { ["DBCluster"] = true, nil }

function asserts.AssertModifyDBClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBClusterResult to be of type 'table'")
	if struct["DBCluster"] then asserts.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBClusterResult[k], "ModifyDBClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBCluster [DBCluster] 
-- @return ModifyDBClusterResult structure as a key-value pair table
function M.ModifyDBClusterResult(args)
	assert(args, "You must provide an argument table when creating ModifyDBClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBCluster"] = args["DBCluster"],
	}
	asserts.AssertModifyDBClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBClusterSnapshotResult = { ["DBClusterSnapshot"] = true, nil }

function asserts.AssertCreateDBClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterSnapshotResult to be of type 'table'")
	if struct["DBClusterSnapshot"] then asserts.AssertDBClusterSnapshot(struct["DBClusterSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBClusterSnapshotResult[k], "CreateDBClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshot [DBClusterSnapshot] 
-- @return CreateDBClusterSnapshotResult structure as a key-value pair table
function M.CreateDBClusterSnapshotResult(args)
	assert(args, "You must provide an argument table when creating CreateDBClusterSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshot"] = args["DBClusterSnapshot"],
	}
	asserts.AssertCreateDBClusterSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBSubnetGroupMessage = { ["DBSubnetGroupName"] = true, nil }

function asserts.AssertDeleteDBSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBSubnetGroupMessage to be of type 'table'")
	assert(struct["DBSubnetGroupName"], "Expected key DBSubnetGroupName to exist in table")
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBSubnetGroupMessage[k], "DeleteDBSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBSubnetGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSubnetGroupName [String] <p>The name of the database subnet group to delete.</p> <note> <p>You cannot delete the default subnet group.</p> </note> <p>Constraints:</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- Required key: DBSubnetGroupName
-- @return DeleteDBSubnetGroupMessage structure as a key-value pair table
function M.DeleteDBSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating DeleteDBSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
	}
	asserts.AssertDeleteDBSubnetGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEventSubscriptionsMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["SubscriptionName"] = true, nil }

function asserts.AssertDescribeEventSubscriptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventSubscriptionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["SubscriptionName"] then asserts.AssertString(struct["SubscriptionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventSubscriptionsMessage[k], "DescribeEventSubscriptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventSubscriptionsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- * SubscriptionName [String] <p>The name of the RDS event notification subscription you want to describe.</p>
-- @return DescribeEventSubscriptionsMessage structure as a key-value pair table
function M.DescribeEventSubscriptionsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeEventSubscriptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["SubscriptionName"] = args["SubscriptionName"],
	}
	asserts.AssertDescribeEventSubscriptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OptionVersion = { ["Version"] = true, ["IsDefault"] = true, nil }

function asserts.AssertOptionVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionVersion to be of type 'table'")
	if struct["Version"] then asserts.AssertString(struct["Version"]) end
	if struct["IsDefault"] then asserts.AssertBoolean(struct["IsDefault"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionVersion[k], "OptionVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionVersion
-- <p>The version for an option. Option group option versions are returned by the <a>DescribeOptionGroupOptions</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [String] <p>The version of the option.</p>
-- * IsDefault [Boolean] <p>True if the version is the default version of the option; otherwise, false.</p>
-- @return OptionVersion structure as a key-value pair table
function M.OptionVersion(args)
	assert(args, "You must provide an argument table when creating OptionVersion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["IsDefault"] = args["IsDefault"],
	}
	asserts.AssertOptionVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreDBInstanceToPointInTimeResult = { ["DBInstance"] = true, nil }

function asserts.AssertRestoreDBInstanceToPointInTimeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBInstanceToPointInTimeResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBInstanceToPointInTimeResult[k], "RestoreDBInstanceToPointInTimeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBInstanceToPointInTimeResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBInstance [DBInstance] 
-- @return RestoreDBInstanceToPointInTimeResult structure as a key-value pair table
function M.RestoreDBInstanceToPointInTimeResult(args)
	assert(args, "You must provide an argument table when creating RestoreDBInstanceToPointInTimeResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBInstance"] = args["DBInstance"],
	}
	asserts.AssertRestoreDBInstanceToPointInTimeResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBInstanceReadReplicaMessage = { ["SourceRegion"] = true, ["AvailabilityZone"] = true, ["DBSubnetGroupName"] = true, ["MonitoringRoleArn"] = true, ["PubliclyAccessible"] = true, ["Tags"] = true, ["StorageType"] = true, ["PreSignedUrl"] = true, ["AutoMinorVersionUpgrade"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["KmsKeyId"] = true, ["Iops"] = true, ["OptionGroupName"] = true, ["MonitoringInterval"] = true, ["CopyTagsToSnapshot"] = true, ["DBInstanceClass"] = true, ["SourceDBInstanceIdentifier"] = true, ["Port"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertCreateDBInstanceReadReplicaMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBInstanceReadReplicaMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	assert(struct["SourceDBInstanceIdentifier"], "Expected key SourceDBInstanceIdentifier to exist in table")
	if struct["SourceRegion"] then asserts.AssertString(struct["SourceRegion"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["MonitoringRoleArn"] then asserts.AssertString(struct["MonitoringRoleArn"]) end
	if struct["PubliclyAccessible"] then asserts.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["PreSignedUrl"] then asserts.AssertString(struct["PreSignedUrl"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["Iops"] then asserts.AssertIntegerOptional(struct["Iops"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["MonitoringInterval"] then asserts.AssertIntegerOptional(struct["MonitoringInterval"]) end
	if struct["CopyTagsToSnapshot"] then asserts.AssertBooleanOptional(struct["CopyTagsToSnapshot"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["SourceDBInstanceIdentifier"] then asserts.AssertString(struct["SourceDBInstanceIdentifier"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBInstanceReadReplicaMessage[k], "CreateDBInstanceReadReplicaMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBInstanceReadReplicaMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceRegion [String] <p>The ID of the region that contains the source for the read replica.</p>
-- * AvailabilityZone [String] <p>The Amazon EC2 Availability Zone that the Read Replica will be created in.</p> <p>Default: A random, system-chosen Availability Zone in the endpoint's region.</p> <p> Example: <code>us-east-1d</code> </p>
-- * DBSubnetGroupName [String] <p>Specifies a DB subnet group for the DB instance. The new DB instance will be created in the VPC associated with the DB subnet group. If no DB subnet group is specified, then the new DB instance is not created in a VPC.</p> <p>Constraints:</p> <ul> <li> <p>Can only be specified if the source DB instance identifier specifies a DB instance in another region.</p> </li> <li> <p>The specified DB subnet group must be in the same region in which the operation is running.</p> </li> <li> <p>All Read Replicas in one region that are created from the same source DB instance must either:&gt;</p> <ul> <li> <p>Specify DB subnet groups from the same VPC. All these Read Replicas will be created in the same VPC.</p> </li> <li> <p>Not specify a DB subnet group. All these Read Replicas will be created outside of any VPC.</p> </li> </ul> </li> </ul> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- * MonitoringRoleArn [String] <p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role, go to <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole">To create an IAM role for Amazon RDS Enhanced Monitoring</a>.</p> <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>
-- * PubliclyAccessible [BooleanOptional] <p>Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.</p> <p>Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.</p> <ul> <li> <p> <b>Default VPC:</b>true</p> </li> <li> <p> <b>VPC:</b>false</p> </li> </ul> <p>If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be private.</p>
-- * Tags [TagList] 
-- * StorageType [String] <p>Specifies the storage type to be associated with the Read Replica.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified; otherwise <code>standard</code> </p>
-- * PreSignedUrl [String] <p>The URL that contains a Signature Version 4 signed request for the <code> CreateDBInstanceReadReplica</code> API action in the AWS region that contains the source DB instance. The <code>PreSignedUrl</code> parameter must be used when encrypting a Read Replica from another AWS region.</p> <p>The presigned URL must be a valid request for the <code>CreateDBInstanceReadReplica</code> API action that can be executed in the source region that contains the encrypted DB instance. The presigned URL request must contain the following parameter values:</p> <ul> <li> <p> <code>DestinationRegion</code> - The AWS Region that the Read Replica is created in. This region is the same one where the <code>CreateDBInstanceReadReplica</code> action is called that contains this presigned URL. </p> <p> For example, if you create an encrypted Read Replica in the us-east-1 region, and the source DB instance is in the west-2 region, then you call the <code>CreateDBInstanceReadReplica</code> action in the us-east-1 region and provide a presigned URL that contains a call to the <code>CreateDBInstanceReadReplica</code> action in the us-west-2 region. For this example, the <code>DestinationRegion</code> in the presigned URL must be set to the us-east-1 region.</p> </li> <li> <p> <code>KmsKeyId</code> - The KMS key identifier for the key to use to encrypt the Read Replica in the destination region. This is the same identifier for both the <code>CreateDBInstanceReadReplica</code> action that is called in the destination region, and the action contained in the presigned URL.</p> </li> <li> <p> <code>SourceDBInstanceIdentifier</code> - The DB instance identifier for the encrypted Read Replica to be created. This identifier must be in the Amazon Resource Name (ARN) format for the source region. For example, if you create an encrypted Read Replica from a DB instance in the us-west-2 region, then your <code>SourceDBInstanceIdentifier</code> would look like this example: <code> arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-instance-20161115</code>.</p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html"> Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html"> Signature Version 4 Signing Process</a>.</p><note><p>If you supply a value for this operation's <code>SourceRegion</code> parameter, a pre-signed URL will be calculated on your behalf.</p></note>
-- * AutoMinorVersionUpgrade [BooleanOptional] <p>Indicates that minor engine upgrades will be applied automatically to the Read Replica during the maintenance window.</p> <p>Default: Inherits from the source DB instance</p>
-- * EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts; otherwise false.</p> <p>You can enable IAM database authentication for the following database engines</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> <li> <p>Aurora 5.6 or higher.</p> </li> </ul> <p>Default: <code>false</code> </p>
-- * KmsKeyId [String] <p>The AWS KMS key ID for an encrypted Read Replica. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key. </p> <p>If you create an unencrypted Read Replica and specify a value for the <code>KmsKeyId</code> parameter, Amazon RDS encrypts the target Read Replica using the specified KMS encryption key. </p> <p>If you create an encrypted Read Replica from your AWS account, you can specify a value for <code>KmsKeyId</code> to encrypt the Read Replica with a new KMS encryption key. If you don't specify a value for <code>KmsKeyId</code>, then the Read Replica is encrypted with the same KMS key as the source DB instance. </p> <p> If you create an encrypted Read Replica in a different AWS region, then you must specify a KMS key for the destination AWS region. KMS encryption keys are specific to the region that they are created in, and you cannot use encryption keys from one region in another region.</p>
-- * Iops [IntegerOptional] <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.</p>
-- * OptionGroupName [String] <p>The option group the DB instance will be associated with. If omitted, the default option group for the engine specified will be used.</p>
-- * MonitoringInterval [IntegerOptional] <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the Read Replica. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p> <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code> to a value other than 0.</p> <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code> </p>
-- * CopyTagsToSnapshot [BooleanOptional] <p>True to copy all tags from the Read Replica to snapshots of the Read Replica; otherwise false. The default is false.</p>
-- * DBInstanceClass [String] <p>The compute and memory capacity of the Read Replica. Note that not all instance classes are available in all regions for all DB engines.</p> <p> Valid Values: <code>db.m1.small | db.m1.medium | db.m1.large | db.m1.xlarge | db.m2.xlarge |db.m2.2xlarge | db.m2.4xlarge | db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge | db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge | db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small | db.t2.medium | db.t2.large</code> </p> <p>Default: Inherits from the source DB instance.</p>
-- * SourceDBInstanceIdentifier [String] <p>The identifier of the DB instance that will act as the source for the Read Replica. Each DB instance can have up to five Read Replicas.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier of an existing MySQL, MariaDB, or PostgreSQL DB instance.</p> </li> <li> <p>Can specify a DB instance that is a MySQL Read Replica only if the source is running MySQL 5.6.</p> </li> <li> <p>Can specify a DB instance that is a PostgreSQL DB instance only if the source is running PostgreSQL 9.3.5 or later.</p> </li> <li> <p>The specified DB instance must have automatic backups enabled, its backup retention period must be greater than 0.</p> </li> <li> <p>If the source DB instance is in the same region as the Read Replica, specify a valid DB instance identifier.</p> </li> <li> <p>If the source DB instance is in a different region than the Read Replica, specify a valid DB instance ARN. For more information, go to <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing a Amazon RDS Amazon Resource Name (ARN)</a>.</p> </li> </ul>
-- * Port [IntegerOptional] <p>The port number that the DB instance uses for connections.</p> <p>Default: Inherits from the source DB instance</p> <p>Valid Values: <code>1150-65535</code> </p>
-- * DBInstanceIdentifier [String] <p>The DB instance identifier of the Read Replica. This identifier is the unique key that identifies a DB instance. This parameter is stored as a lowercase string.</p>
-- Required key: DBInstanceIdentifier
-- Required key: SourceDBInstanceIdentifier
-- @return CreateDBInstanceReadReplicaMessage structure as a key-value pair table
function M.CreateDBInstanceReadReplicaMessage(args)
	assert(args, "You must provide an argument table when creating CreateDBInstanceReadReplicaMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceRegion"] = args["SourceRegion"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["MonitoringRoleArn"] = args["MonitoringRoleArn"],
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["Tags"] = args["Tags"],
		["StorageType"] = args["StorageType"],
		["PreSignedUrl"] = args["PreSignedUrl"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["EnableIAMDatabaseAuthentication"] = args["EnableIAMDatabaseAuthentication"],
		["KmsKeyId"] = args["KmsKeyId"],
		["Iops"] = args["Iops"],
		["OptionGroupName"] = args["OptionGroupName"],
		["MonitoringInterval"] = args["MonitoringInterval"],
		["CopyTagsToSnapshot"] = args["CopyTagsToSnapshot"],
		["DBInstanceClass"] = args["DBInstanceClass"],
		["SourceDBInstanceIdentifier"] = args["SourceDBInstanceIdentifier"],
		["Port"] = args["Port"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertCreateDBInstanceReadReplicaMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBClustersMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["DBClusterIdentifier"] = true, nil }

function asserts.AssertDescribeDBClustersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClustersMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBClustersMessage[k], "DescribeDBClustersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClustersMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <a>DescribeDBClusters</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>A filter that specifies one or more DB clusters to describe.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB clusters identified by these ARNs.</p> </li> </ul>
-- * DBClusterIdentifier [String] <p>The user-supplied DB cluster identifier. If this parameter is specified, information from only the specific DB cluster is returned. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @return DescribeDBClustersMessage structure as a key-value pair table
function M.DescribeDBClustersMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBClustersMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
	}
	asserts.AssertDescribeDBClustersMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidRestoreFault = { nil }

function asserts.AssertInvalidRestoreFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRestoreFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidRestoreFault[k], "InvalidRestoreFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRestoreFault
-- <p>Cannot restore from vpc backup to non-vpc DB instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidRestoreFault structure as a key-value pair table
function M.InvalidRestoreFault(args)
	assert(args, "You must provide an argument table when creating InvalidRestoreFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidRestoreFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubscriptionCategoryNotFoundFault = { nil }

function asserts.AssertSubscriptionCategoryNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionCategoryNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubscriptionCategoryNotFoundFault[k], "SubscriptionCategoryNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionCategoryNotFoundFault
-- <p>The supplied category does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SubscriptionCategoryNotFoundFault structure as a key-value pair table
function M.SubscriptionCategoryNotFoundFault(args)
	assert(args, "You must provide an argument table when creating SubscriptionCategoryNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSubscriptionCategoryNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBInstance = { ["PubliclyAccessible"] = true, ["MasterUsername"] = true, ["MonitoringInterval"] = true, ["LicenseModel"] = true, ["MonitoringRoleArn"] = true, ["VpcSecurityGroups"] = true, ["InstanceCreateTime"] = true, ["CopyTagsToSnapshot"] = true, ["OptionGroupMemberships"] = true, ["PendingModifiedValues"] = true, ["Engine"] = true, ["MultiAZ"] = true, ["LatestRestorableTime"] = true, ["DBSecurityGroups"] = true, ["DBParameterGroups"] = true, ["ReadReplicaSourceDBInstanceIdentifier"] = true, ["AutoMinorVersionUpgrade"] = true, ["PreferredBackupWindow"] = true, ["PromotionTier"] = true, ["DBSubnetGroup"] = true, ["SecondaryAvailabilityZone"] = true, ["ReadReplicaDBInstanceIdentifiers"] = true, ["AllocatedStorage"] = true, ["DBInstanceArn"] = true, ["BackupRetentionPeriod"] = true, ["DBName"] = true, ["PreferredMaintenanceWindow"] = true, ["Endpoint"] = true, ["DBInstanceStatus"] = true, ["StatusInfos"] = true, ["IAMDatabaseAuthenticationEnabled"] = true, ["EngineVersion"] = true, ["ReadReplicaDBClusterIdentifiers"] = true, ["TdeCredentialArn"] = true, ["EnhancedMonitoringResourceArn"] = true, ["CharacterSetName"] = true, ["AvailabilityZone"] = true, ["DomainMemberships"] = true, ["DBClusterIdentifier"] = true, ["StorageType"] = true, ["DbiResourceId"] = true, ["CACertificateIdentifier"] = true, ["Iops"] = true, ["StorageEncrypted"] = true, ["KmsKeyId"] = true, ["Timezone"] = true, ["DBInstanceClass"] = true, ["DbInstancePort"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertDBInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBInstance to be of type 'table'")
	if struct["PubliclyAccessible"] then asserts.AssertBoolean(struct["PubliclyAccessible"]) end
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["MonitoringInterval"] then asserts.AssertIntegerOptional(struct["MonitoringInterval"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["MonitoringRoleArn"] then asserts.AssertString(struct["MonitoringRoleArn"]) end
	if struct["VpcSecurityGroups"] then asserts.AssertVpcSecurityGroupMembershipList(struct["VpcSecurityGroups"]) end
	if struct["InstanceCreateTime"] then asserts.AssertTStamp(struct["InstanceCreateTime"]) end
	if struct["CopyTagsToSnapshot"] then asserts.AssertBoolean(struct["CopyTagsToSnapshot"]) end
	if struct["OptionGroupMemberships"] then asserts.AssertOptionGroupMembershipList(struct["OptionGroupMemberships"]) end
	if struct["PendingModifiedValues"] then asserts.AssertPendingModifiedValues(struct["PendingModifiedValues"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["MultiAZ"] then asserts.AssertBoolean(struct["MultiAZ"]) end
	if struct["LatestRestorableTime"] then asserts.AssertTStamp(struct["LatestRestorableTime"]) end
	if struct["DBSecurityGroups"] then asserts.AssertDBSecurityGroupMembershipList(struct["DBSecurityGroups"]) end
	if struct["DBParameterGroups"] then asserts.AssertDBParameterGroupStatusList(struct["DBParameterGroups"]) end
	if struct["ReadReplicaSourceDBInstanceIdentifier"] then asserts.AssertString(struct["ReadReplicaSourceDBInstanceIdentifier"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBoolean(struct["AutoMinorVersionUpgrade"]) end
	if struct["PreferredBackupWindow"] then asserts.AssertString(struct["PreferredBackupWindow"]) end
	if struct["PromotionTier"] then asserts.AssertIntegerOptional(struct["PromotionTier"]) end
	if struct["DBSubnetGroup"] then asserts.AssertDBSubnetGroup(struct["DBSubnetGroup"]) end
	if struct["SecondaryAvailabilityZone"] then asserts.AssertString(struct["SecondaryAvailabilityZone"]) end
	if struct["ReadReplicaDBInstanceIdentifiers"] then asserts.AssertReadReplicaDBInstanceIdentifierList(struct["ReadReplicaDBInstanceIdentifiers"]) end
	if struct["AllocatedStorage"] then asserts.AssertInteger(struct["AllocatedStorage"]) end
	if struct["DBInstanceArn"] then asserts.AssertString(struct["DBInstanceArn"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertInteger(struct["BackupRetentionPeriod"]) end
	if struct["DBName"] then asserts.AssertString(struct["DBName"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["Endpoint"] then asserts.AssertEndpoint(struct["Endpoint"]) end
	if struct["DBInstanceStatus"] then asserts.AssertString(struct["DBInstanceStatus"]) end
	if struct["StatusInfos"] then asserts.AssertDBInstanceStatusInfoList(struct["StatusInfos"]) end
	if struct["IAMDatabaseAuthenticationEnabled"] then asserts.AssertBoolean(struct["IAMDatabaseAuthenticationEnabled"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["ReadReplicaDBClusterIdentifiers"] then asserts.AssertReadReplicaDBClusterIdentifierList(struct["ReadReplicaDBClusterIdentifiers"]) end
	if struct["TdeCredentialArn"] then asserts.AssertString(struct["TdeCredentialArn"]) end
	if struct["EnhancedMonitoringResourceArn"] then asserts.AssertString(struct["EnhancedMonitoringResourceArn"]) end
	if struct["CharacterSetName"] then asserts.AssertString(struct["CharacterSetName"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["DomainMemberships"] then asserts.AssertDomainMembershipList(struct["DomainMemberships"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["DbiResourceId"] then asserts.AssertString(struct["DbiResourceId"]) end
	if struct["CACertificateIdentifier"] then asserts.AssertString(struct["CACertificateIdentifier"]) end
	if struct["Iops"] then asserts.AssertIntegerOptional(struct["Iops"]) end
	if struct["StorageEncrypted"] then asserts.AssertBoolean(struct["StorageEncrypted"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["Timezone"] then asserts.AssertString(struct["Timezone"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["DbInstancePort"] then asserts.AssertInteger(struct["DbInstancePort"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBInstance[k], "DBInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBInstance
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBInstance</a> </p> </li> <li> <p> <a>DeleteDBInstance</a> </p> </li> <li> <p> <a>ModifyDBInstance</a> </p> </li> <li> <p> <a>StopDBInstance</a> </p> </li> <li> <p> <a>StartDBInstance</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBInstances</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PubliclyAccessible [Boolean] <p>Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.</p> <p>Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.</p> <ul> <li> <p> <b>Default VPC:</b>true</p> </li> <li> <p> <b>VPC:</b>false</p> </li> </ul> <p>If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be private.</p>
-- * MasterUsername [String] <p>Contains the master username for the DB instance.</p>
-- * MonitoringInterval [IntegerOptional] <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance.</p>
-- * LicenseModel [String] <p>License model information for this DB instance.</p>
-- * MonitoringRoleArn [String] <p>The ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to CloudWatch Logs.</p>
-- * VpcSecurityGroups [VpcSecurityGroupMembershipList] <p>Provides a list of VPC security group elements that the DB instance belongs to.</p>
-- * InstanceCreateTime [TStamp] <p>Provides the date and time the DB instance was created.</p>
-- * CopyTagsToSnapshot [Boolean] <p>Specifies whether tags are copied from the DB instance to snapshots of the DB instance.</p>
-- * OptionGroupMemberships [OptionGroupMembershipList] <p>Provides the list of option group memberships for this DB instance.</p>
-- * PendingModifiedValues [PendingModifiedValues] <p>Specifies that changes to the DB instance are pending. This element is only included when changes are pending. Specific changes are identified by subelements.</p>
-- * Engine [String] <p>Provides the name of the database engine to be used for this DB instance.</p>
-- * MultiAZ [Boolean] <p>Specifies if the DB instance is a Multi-AZ deployment.</p>
-- * LatestRestorableTime [TStamp] <p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>
-- * DBSecurityGroups [DBSecurityGroupMembershipList] <p> Provides List of DB security group elements containing only <code>DBSecurityGroup.Name</code> and <code>DBSecurityGroup.Status</code> subelements. </p>
-- * DBParameterGroups [DBParameterGroupStatusList] <p>Provides the list of DB parameter groups applied to this DB instance.</p>
-- * ReadReplicaSourceDBInstanceIdentifier [String] <p>Contains the identifier of the source DB instance if this DB instance is a Read Replica.</p>
-- * AutoMinorVersionUpgrade [Boolean] <p>Indicates that minor version patches are applied automatically.</p>
-- * PreferredBackupWindow [String] <p> Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code>. </p>
-- * PromotionTier [IntegerOptional] <p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance"> Fault Tolerance for an Aurora DB Cluster</a>. </p>
-- * DBSubnetGroup [DBSubnetGroup] <p>Specifies information on the subnet group associated with the DB instance, including the name, description, and subnets in the subnet group.</p>
-- * SecondaryAvailabilityZone [String] <p>If present, specifies the name of the secondary Availability Zone for a DB instance with multi-AZ support.</p>
-- * ReadReplicaDBInstanceIdentifiers [ReadReplicaDBInstanceIdentifierList] <p>Contains one or more identifiers of the Read Replicas associated with this DB instance.</p>
-- * AllocatedStorage [Integer] <p>Specifies the allocated storage size specified in gigabytes.</p>
-- * DBInstanceArn [String] <p>The Amazon Resource Name (ARN) for the DB instance.</p>
-- * BackupRetentionPeriod [Integer] <p>Specifies the number of days for which automatic DB snapshots are retained.</p>
-- * DBName [String] <p>The meaning of this parameter differs according to the database engine you use. For example, this value returns MySQL, MariaDB, or PostgreSQL information when returning values from CreateDBInstanceReadReplica since Read Replicas are only supported for these engines.</p> <p> <b>MySQL, MariaDB, SQL Server, PostgreSQL</b> </p> <p>Contains the name of the initial database of this instance that was provided at create time, if one was specified when the DB instance was created. This same name is returned for the life of the DB instance.</p> <p>Type: String</p> <p> <b>Oracle</b> </p> <p>Contains the Oracle System ID (SID) of the created DB instance. Not shown when the returned parameters do not apply to an Oracle DB instance.</p>
-- * PreferredMaintenanceWindow [String] <p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
-- * Endpoint [Endpoint] <p>Specifies the connection endpoint.</p>
-- * DBInstanceStatus [String] <p>Specifies the current state of this database.</p>
-- * StatusInfos [DBInstanceStatusInfoList] <p>The status of a Read Replica. If the instance is not a Read Replica, this will be blank.</p>
-- * IAMDatabaseAuthenticationEnabled [Boolean] <p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled; otherwise false.</p> <p>IAM database authentication can be enabled for the following database engines</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> <li> <p>Aurora 5.6 or higher. To enable IAM database authentication for Aurora, see DBCluster Type.</p> </li> </ul>
-- * EngineVersion [String] <p>Indicates the database engine version.</p>
-- * ReadReplicaDBClusterIdentifiers [ReadReplicaDBClusterIdentifierList] <p>Contains one or more identifiers of Aurora DB clusters that are Read Replicas of this DB instance.</p>
-- * TdeCredentialArn [String] <p>The ARN from the key store with which the instance is associated for TDE encryption.</p>
-- * EnhancedMonitoringResourceArn [String] <p>The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream that receives the Enhanced Monitoring metrics data for the DB instance.</p>
-- * CharacterSetName [String] <p>If present, specifies the name of the character set that this instance is associated with.</p>
-- * AvailabilityZone [String] <p>Specifies the name of the Availability Zone the DB instance is located in.</p>
-- * DomainMemberships [DomainMembershipList] <p>The Active Directory Domain membership records associated with the DB instance.</p>
-- * DBClusterIdentifier [String] <p>If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of.</p>
-- * StorageType [String] <p>Specifies the storage type associated with DB instance.</p>
-- * DbiResourceId [String] <p>The region-unique, immutable identifier for the DB instance. This identifier is found in AWS CloudTrail log entries whenever the KMS key for the DB instance is accessed.</p>
-- * CACertificateIdentifier [String] <p>The identifier of the CA certificate for this DB instance.</p>
-- * Iops [IntegerOptional] <p>Specifies the Provisioned IOPS (I/O operations per second) value.</p>
-- * StorageEncrypted [Boolean] <p>Specifies whether the DB instance is encrypted.</p>
-- * KmsKeyId [String] <p> If <code>StorageEncrypted</code> is true, the KMS key identifier for the encrypted DB instance. </p>
-- * Timezone [String] <p>The time zone of the DB instance. In most cases, the <code>Timezone</code> element is empty. <code>Timezone</code> content appears only for Microsoft SQL Server DB instances that were created with a time zone specified. </p>
-- * DBInstanceClass [String] <p>Contains the name of the compute and memory capacity class of the DB instance.</p>
-- * DbInstancePort [Integer] <p>Specifies the port that the DB instance listens on. If the DB instance is part of a DB cluster, this can be a different port than the DB cluster port.</p>
-- * DBInstanceIdentifier [String] <p>Contains a user-supplied database identifier. This identifier is the unique key that identifies a DB instance.</p>
-- @return DBInstance structure as a key-value pair table
function M.DBInstance(args)
	assert(args, "You must provide an argument table when creating DBInstance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["MasterUsername"] = args["MasterUsername"],
		["MonitoringInterval"] = args["MonitoringInterval"],
		["LicenseModel"] = args["LicenseModel"],
		["MonitoringRoleArn"] = args["MonitoringRoleArn"],
		["VpcSecurityGroups"] = args["VpcSecurityGroups"],
		["InstanceCreateTime"] = args["InstanceCreateTime"],
		["CopyTagsToSnapshot"] = args["CopyTagsToSnapshot"],
		["OptionGroupMemberships"] = args["OptionGroupMemberships"],
		["PendingModifiedValues"] = args["PendingModifiedValues"],
		["Engine"] = args["Engine"],
		["MultiAZ"] = args["MultiAZ"],
		["LatestRestorableTime"] = args["LatestRestorableTime"],
		["DBSecurityGroups"] = args["DBSecurityGroups"],
		["DBParameterGroups"] = args["DBParameterGroups"],
		["ReadReplicaSourceDBInstanceIdentifier"] = args["ReadReplicaSourceDBInstanceIdentifier"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["PromotionTier"] = args["PromotionTier"],
		["DBSubnetGroup"] = args["DBSubnetGroup"],
		["SecondaryAvailabilityZone"] = args["SecondaryAvailabilityZone"],
		["ReadReplicaDBInstanceIdentifiers"] = args["ReadReplicaDBInstanceIdentifiers"],
		["AllocatedStorage"] = args["AllocatedStorage"],
		["DBInstanceArn"] = args["DBInstanceArn"],
		["BackupRetentionPeriod"] = args["BackupRetentionPeriod"],
		["DBName"] = args["DBName"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["Endpoint"] = args["Endpoint"],
		["DBInstanceStatus"] = args["DBInstanceStatus"],
		["StatusInfos"] = args["StatusInfos"],
		["IAMDatabaseAuthenticationEnabled"] = args["IAMDatabaseAuthenticationEnabled"],
		["EngineVersion"] = args["EngineVersion"],
		["ReadReplicaDBClusterIdentifiers"] = args["ReadReplicaDBClusterIdentifiers"],
		["TdeCredentialArn"] = args["TdeCredentialArn"],
		["EnhancedMonitoringResourceArn"] = args["EnhancedMonitoringResourceArn"],
		["CharacterSetName"] = args["CharacterSetName"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["DomainMemberships"] = args["DomainMemberships"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["StorageType"] = args["StorageType"],
		["DbiResourceId"] = args["DbiResourceId"],
		["CACertificateIdentifier"] = args["CACertificateIdentifier"],
		["Iops"] = args["Iops"],
		["StorageEncrypted"] = args["StorageEncrypted"],
		["KmsKeyId"] = args["KmsKeyId"],
		["Timezone"] = args["Timezone"],
		["DBInstanceClass"] = args["DBInstanceClass"],
		["DbInstancePort"] = args["DbInstancePort"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertDBInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreDBClusterFromSnapshotResult = { ["DBCluster"] = true, nil }

function asserts.AssertRestoreDBClusterFromSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBClusterFromSnapshotResult to be of type 'table'")
	if struct["DBCluster"] then asserts.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBClusterFromSnapshotResult[k], "RestoreDBClusterFromSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterFromSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBCluster [DBCluster] 
-- @return RestoreDBClusterFromSnapshotResult structure as a key-value pair table
function M.RestoreDBClusterFromSnapshotResult(args)
	assert(args, "You must provide an argument table when creating RestoreDBClusterFromSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBCluster"] = args["DBCluster"],
	}
	asserts.AssertRestoreDBClusterFromSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PendingMaintenanceAction = { ["Description"] = true, ["OptInStatus"] = true, ["ForcedApplyDate"] = true, ["AutoAppliedAfterDate"] = true, ["Action"] = true, ["CurrentApplyDate"] = true, nil }

function asserts.AssertPendingMaintenanceAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingMaintenanceAction to be of type 'table'")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["OptInStatus"] then asserts.AssertString(struct["OptInStatus"]) end
	if struct["ForcedApplyDate"] then asserts.AssertTStamp(struct["ForcedApplyDate"]) end
	if struct["AutoAppliedAfterDate"] then asserts.AssertTStamp(struct["AutoAppliedAfterDate"]) end
	if struct["Action"] then asserts.AssertString(struct["Action"]) end
	if struct["CurrentApplyDate"] then asserts.AssertTStamp(struct["CurrentApplyDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.PendingMaintenanceAction[k], "PendingMaintenanceAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingMaintenanceAction
-- <p>Provides information about a pending maintenance action for a resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [String] <p>A description providing more detail about the maintenance action.</p>
-- * OptInStatus [String] <p>Indicates the type of opt-in request that has been received for the resource.</p>
-- * ForcedApplyDate [TStamp] <p>The date when the maintenance action will be automatically applied. The maintenance action will be applied to the resource on this date regardless of the maintenance window for the resource. If this date is specified, any <code>immediate</code> opt-in requests are ignored.</p>
-- * AutoAppliedAfterDate [TStamp] <p>The date of the maintenance window when the action will be applied. The maintenance action will be applied to the resource during its first maintenance window after this date. If this date is specified, any <code>next-maintenance</code> opt-in requests are ignored.</p>
-- * Action [String] <p>The type of pending maintenance action that is available for the resource.</p>
-- * CurrentApplyDate [TStamp] <p>The effective date when the pending maintenance action will be applied to the resource. This date takes into account opt-in requests received from the <a>ApplyPendingMaintenanceAction</a> API, the <code>AutoAppliedAfterDate</code>, and the <code>ForcedApplyDate</code>. This value is blank if an opt-in request has not been received and nothing has been specified as <code>AutoAppliedAfterDate</code> or <code>ForcedApplyDate</code>.</p>
-- @return PendingMaintenanceAction structure as a key-value pair table
function M.PendingMaintenanceAction(args)
	assert(args, "You must provide an argument table when creating PendingMaintenanceAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["OptInStatus"] = args["OptInStatus"],
		["ForcedApplyDate"] = args["ForcedApplyDate"],
		["AutoAppliedAfterDate"] = args["AutoAppliedAfterDate"],
		["Action"] = args["Action"],
		["CurrentApplyDate"] = args["CurrentApplyDate"],
	}
	asserts.AssertPendingMaintenanceAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEventSubscriptionResult = { ["EventSubscription"] = true, nil }

function asserts.AssertDeleteEventSubscriptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEventSubscriptionResult to be of type 'table'")
	if struct["EventSubscription"] then asserts.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEventSubscriptionResult[k], "DeleteEventSubscriptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEventSubscriptionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventSubscription [EventSubscription] 
-- @return DeleteEventSubscriptionResult structure as a key-value pair table
function M.DeleteEventSubscriptionResult(args)
	assert(args, "You must provide an argument table when creating DeleteEventSubscriptionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventSubscription"] = args["EventSubscription"],
	}
	asserts.AssertDeleteEventSubscriptionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservedDBInstance = { ["MultiAZ"] = true, ["OfferingType"] = true, ["FixedPrice"] = true, ["CurrencyCode"] = true, ["ProductDescription"] = true, ["ReservedDBInstancesOfferingId"] = true, ["RecurringCharges"] = true, ["ReservedDBInstanceArn"] = true, ["Duration"] = true, ["State"] = true, ["DBInstanceCount"] = true, ["StartTime"] = true, ["ReservedDBInstanceId"] = true, ["DBInstanceClass"] = true, ["UsagePrice"] = true, nil }

function asserts.AssertReservedDBInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstance to be of type 'table'")
	if struct["MultiAZ"] then asserts.AssertBoolean(struct["MultiAZ"]) end
	if struct["OfferingType"] then asserts.AssertString(struct["OfferingType"]) end
	if struct["FixedPrice"] then asserts.AssertDouble(struct["FixedPrice"]) end
	if struct["CurrencyCode"] then asserts.AssertString(struct["CurrencyCode"]) end
	if struct["ProductDescription"] then asserts.AssertString(struct["ProductDescription"]) end
	if struct["ReservedDBInstancesOfferingId"] then asserts.AssertString(struct["ReservedDBInstancesOfferingId"]) end
	if struct["RecurringCharges"] then asserts.AssertRecurringChargeList(struct["RecurringCharges"]) end
	if struct["ReservedDBInstanceArn"] then asserts.AssertString(struct["ReservedDBInstanceArn"]) end
	if struct["Duration"] then asserts.AssertInteger(struct["Duration"]) end
	if struct["State"] then asserts.AssertString(struct["State"]) end
	if struct["DBInstanceCount"] then asserts.AssertInteger(struct["DBInstanceCount"]) end
	if struct["StartTime"] then asserts.AssertTStamp(struct["StartTime"]) end
	if struct["ReservedDBInstanceId"] then asserts.AssertString(struct["ReservedDBInstanceId"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["UsagePrice"] then asserts.AssertDouble(struct["UsagePrice"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedDBInstance[k], "ReservedDBInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstance
-- <p> This data type is used as a response element in the <a>DescribeReservedDBInstances</a> and <a>PurchaseReservedDBInstancesOffering</a> actions. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MultiAZ [Boolean] <p>Indicates if the reservation applies to Multi-AZ deployments.</p>
-- * OfferingType [String] <p>The offering type of this reserved DB instance.</p>
-- * FixedPrice [Double] <p>The fixed price charged for this reserved DB instance.</p>
-- * CurrencyCode [String] <p>The currency code for the reserved DB instance.</p>
-- * ProductDescription [String] <p>The description of the reserved DB instance.</p>
-- * ReservedDBInstancesOfferingId [String] <p>The offering identifier.</p>
-- * RecurringCharges [RecurringChargeList] <p>The recurring price charged to run this reserved DB instance.</p>
-- * ReservedDBInstanceArn [String] <p>The Amazon Resource Name (ARN) for the reserved DB instance.</p>
-- * Duration [Integer] <p>The duration of the reservation in seconds.</p>
-- * State [String] <p>The state of the reserved DB instance.</p>
-- * DBInstanceCount [Integer] <p>The number of reserved DB instances.</p>
-- * StartTime [TStamp] <p>The time the reservation started.</p>
-- * ReservedDBInstanceId [String] <p>The unique identifier for the reservation.</p>
-- * DBInstanceClass [String] <p>The DB instance class for the reserved DB instance.</p>
-- * UsagePrice [Double] <p>The hourly price charged for this reserved DB instance.</p>
-- @return ReservedDBInstance structure as a key-value pair table
function M.ReservedDBInstance(args)
	assert(args, "You must provide an argument table when creating ReservedDBInstance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MultiAZ"] = args["MultiAZ"],
		["OfferingType"] = args["OfferingType"],
		["FixedPrice"] = args["FixedPrice"],
		["CurrencyCode"] = args["CurrencyCode"],
		["ProductDescription"] = args["ProductDescription"],
		["ReservedDBInstancesOfferingId"] = args["ReservedDBInstancesOfferingId"],
		["RecurringCharges"] = args["RecurringCharges"],
		["ReservedDBInstanceArn"] = args["ReservedDBInstanceArn"],
		["Duration"] = args["Duration"],
		["State"] = args["State"],
		["DBInstanceCount"] = args["DBInstanceCount"],
		["StartTime"] = args["StartTime"],
		["ReservedDBInstanceId"] = args["ReservedDBInstanceId"],
		["DBInstanceClass"] = args["DBInstanceClass"],
		["UsagePrice"] = args["UsagePrice"],
	}
	asserts.AssertReservedDBInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDBSubnetStateFault = { nil }

function asserts.AssertInvalidDBSubnetStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBSubnetStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBSubnetStateFault[k], "InvalidDBSubnetStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBSubnetStateFault
-- <p> The DB subnet is not in the <i>available</i> state. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDBSubnetStateFault structure as a key-value pair table
function M.InvalidDBSubnetStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidDBSubnetStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDBSubnetStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AuthorizeDBSecurityGroupIngressMessage = { ["EC2SecurityGroupName"] = true, ["EC2SecurityGroupOwnerId"] = true, ["CIDRIP"] = true, ["EC2SecurityGroupId"] = true, ["DBSecurityGroupName"] = true, nil }

function asserts.AssertAuthorizeDBSecurityGroupIngressMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeDBSecurityGroupIngressMessage to be of type 'table'")
	assert(struct["DBSecurityGroupName"], "Expected key DBSecurityGroupName to exist in table")
	if struct["EC2SecurityGroupName"] then asserts.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then asserts.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	if struct["CIDRIP"] then asserts.AssertString(struct["CIDRIP"]) end
	if struct["EC2SecurityGroupId"] then asserts.AssertString(struct["EC2SecurityGroupId"]) end
	if struct["DBSecurityGroupName"] then asserts.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthorizeDBSecurityGroupIngressMessage[k], "AuthorizeDBSecurityGroupIngressMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeDBSecurityGroupIngressMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EC2SecurityGroupName [String] <p> Name of the EC2 security group to authorize. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- * EC2SecurityGroupOwnerId [String] <p> AWS account number of the owner of the EC2 security group specified in the <code>EC2SecurityGroupName</code> parameter. The AWS Access Key ID is not an acceptable value. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- * CIDRIP [String] <p>The IP range to authorize.</p>
-- * EC2SecurityGroupId [String] <p> Id of the EC2 security group to authorize. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- * DBSecurityGroupName [String] <p>The name of the DB security group to add authorization to.</p>
-- Required key: DBSecurityGroupName
-- @return AuthorizeDBSecurityGroupIngressMessage structure as a key-value pair table
function M.AuthorizeDBSecurityGroupIngressMessage(args)
	assert(args, "You must provide an argument table when creating AuthorizeDBSecurityGroupIngressMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EC2SecurityGroupName"] = args["EC2SecurityGroupName"],
		["EC2SecurityGroupOwnerId"] = args["EC2SecurityGroupOwnerId"],
		["CIDRIP"] = args["CIDRIP"],
		["EC2SecurityGroupId"] = args["EC2SecurityGroupId"],
		["DBSecurityGroupName"] = args["DBSecurityGroupName"],
	}
	asserts.AssertAuthorizeDBSecurityGroupIngressMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OptionGroupMembership = { ["Status"] = true, ["OptionGroupName"] = true, nil }

function asserts.AssertOptionGroupMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupMembership to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionGroupMembership[k], "OptionGroupMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupMembership
-- <p>Provides information on the option groups the DB instance is a member of.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the DB instance's option group membership. Valid values are: <code>in-sync</code>, <code>pending-apply</code>, <code>pending-removal</code>, <code>pending-maintenance-apply</code>, <code>pending-maintenance-removal</code>, <code>applying</code>, <code>removing</code>, and <code>failed</code>. </p>
-- * OptionGroupName [String] <p>The name of the option group that the instance belongs to.</p>
-- @return OptionGroupMembership structure as a key-value pair table
function M.OptionGroupMembership(args)
	assert(args, "You must provide an argument table when creating OptionGroupMembership")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["OptionGroupName"] = args["OptionGroupName"],
	}
	asserts.AssertOptionGroupMembership(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBParameterGroupResult = { ["DBParameterGroup"] = true, nil }

function asserts.AssertCreateDBParameterGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBParameterGroupResult to be of type 'table'")
	if struct["DBParameterGroup"] then asserts.AssertDBParameterGroup(struct["DBParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBParameterGroupResult[k], "CreateDBParameterGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBParameterGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroup [DBParameterGroup] 
-- @return CreateDBParameterGroupResult structure as a key-value pair table
function M.CreateDBParameterGroupResult(args)
	assert(args, "You must provide an argument table when creating CreateDBParameterGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroup"] = args["DBParameterGroup"],
	}
	asserts.AssertCreateDBParameterGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceNotFoundFault = { nil }

function asserts.AssertResourceNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundFault[k], "ResourceNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundFault
-- <p>The specified resource ID was not found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ResourceNotFoundFault structure as a key-value pair table
function M.ResourceNotFoundFault(args)
	assert(args, "You must provide an argument table when creating ResourceNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertResourceNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBClusterResult = { ["DBCluster"] = true, nil }

function asserts.AssertCreateDBClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterResult to be of type 'table'")
	if struct["DBCluster"] then asserts.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBClusterResult[k], "CreateDBClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBCluster [DBCluster] 
-- @return CreateDBClusterResult structure as a key-value pair table
function M.CreateDBClusterResult(args)
	assert(args, "You must provide an argument table when creating CreateDBClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBCluster"] = args["DBCluster"],
	}
	asserts.AssertCreateDBClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PromoteReadReplicaResult = { ["DBInstance"] = true, nil }

function asserts.AssertPromoteReadReplicaResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PromoteReadReplicaResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.PromoteReadReplicaResult[k], "PromoteReadReplicaResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PromoteReadReplicaResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBInstance [DBInstance] 
-- @return PromoteReadReplicaResult structure as a key-value pair table
function M.PromoteReadReplicaResult(args)
	assert(args, "You must provide an argument table when creating PromoteReadReplicaResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBInstance"] = args["DBInstance"],
	}
	asserts.AssertPromoteReadReplicaResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OptionSetting = { ["IsCollection"] = true, ["Name"] = true, ["DataType"] = true, ["DefaultValue"] = true, ["Value"] = true, ["AllowedValues"] = true, ["IsModifiable"] = true, ["ApplyType"] = true, ["Description"] = true, nil }

function asserts.AssertOptionSetting(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionSetting to be of type 'table'")
	if struct["IsCollection"] then asserts.AssertBoolean(struct["IsCollection"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["DataType"] then asserts.AssertString(struct["DataType"]) end
	if struct["DefaultValue"] then asserts.AssertString(struct["DefaultValue"]) end
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	if struct["AllowedValues"] then asserts.AssertString(struct["AllowedValues"]) end
	if struct["IsModifiable"] then asserts.AssertBoolean(struct["IsModifiable"]) end
	if struct["ApplyType"] then asserts.AssertString(struct["ApplyType"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionSetting[k], "OptionSetting contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionSetting
-- <p>Option settings are the actual settings being applied or configured for that option. It is used when you modify an option group or describe option groups. For example, the NATIVE_NETWORK_ENCRYPTION option has a setting called SQLNET.ENCRYPTION_SERVER that can have several different values.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IsCollection [Boolean] <p>Indicates if the option setting is part of a collection.</p>
-- * Name [String] <p>The name of the option that has settings that you can set.</p>
-- * DataType [String] <p>The data type of the option setting.</p>
-- * DefaultValue [String] <p>The default value of the option setting.</p>
-- * Value [String] <p>The current value of the option setting.</p>
-- * AllowedValues [String] <p>The allowed values of the option setting.</p>
-- * IsModifiable [Boolean] <p>A Boolean value that, when true, indicates the option setting can be modified from the default.</p>
-- * ApplyType [String] <p>The DB engine specific parameter type.</p>
-- * Description [String] <p>The description of the option setting.</p>
-- @return OptionSetting structure as a key-value pair table
function M.OptionSetting(args)
	assert(args, "You must provide an argument table when creating OptionSetting")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IsCollection"] = args["IsCollection"],
		["Name"] = args["Name"],
		["DataType"] = args["DataType"],
		["DefaultValue"] = args["DefaultValue"],
		["Value"] = args["Value"],
		["AllowedValues"] = args["AllowedValues"],
		["IsModifiable"] = args["IsModifiable"],
		["ApplyType"] = args["ApplyType"],
		["Description"] = args["Description"],
	}
	asserts.AssertOptionSetting(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBClusterMessage = { ["MasterUsername"] = true, ["VpcSecurityGroupIds"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["Engine"] = true, ["Tags"] = true, ["PreferredBackupWindow"] = true, ["SourceRegion"] = true, ["BackupRetentionPeriod"] = true, ["PreferredMaintenanceWindow"] = true, ["DBClusterParameterGroupName"] = true, ["PreSignedUrl"] = true, ["ReplicationSourceIdentifier"] = true, ["EngineVersion"] = true, ["DBSubnetGroupName"] = true, ["OptionGroupName"] = true, ["CharacterSetName"] = true, ["DBClusterIdentifier"] = true, ["MasterUserPassword"] = true, ["KmsKeyId"] = true, ["StorageEncrypted"] = true, ["DatabaseName"] = true, ["AvailabilityZones"] = true, ["Port"] = true, nil }

function asserts.AssertCreateDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	assert(struct["Engine"], "Expected key Engine to exist in table")
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["PreferredBackupWindow"] then asserts.AssertString(struct["PreferredBackupWindow"]) end
	if struct["SourceRegion"] then asserts.AssertString(struct["SourceRegion"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["PreSignedUrl"] then asserts.AssertString(struct["PreSignedUrl"]) end
	if struct["ReplicationSourceIdentifier"] then asserts.AssertString(struct["ReplicationSourceIdentifier"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["CharacterSetName"] then asserts.AssertString(struct["CharacterSetName"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["MasterUserPassword"] then asserts.AssertString(struct["MasterUserPassword"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["StorageEncrypted"] then asserts.AssertBooleanOptional(struct["StorageEncrypted"]) end
	if struct["DatabaseName"] then asserts.AssertString(struct["DatabaseName"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBClusterMessage[k], "CreateDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MasterUsername [String] <p>The name of the master user for the DB cluster.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 16 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul>
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of EC2 VPC security groups to associate with this DB cluster.</p>
-- * EnableIAMDatabaseAuthentication [BooleanOptional] <p>A Boolean value that is true to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- * Engine [String] <p>The name of the database engine to be used for this DB cluster.</p> <p>Valid Values: <code>aurora</code> </p>
-- * Tags [TagList] 
-- * PreferredBackupWindow [String] <p>The daily time range during which automated backups are created if automated backups are enabled using the <code>BackupRetentionPeriod</code> parameter. </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Times should be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- * SourceRegion [String] <p>The ID of the region that contains the source for the read replica.</p>
-- * BackupRetentionPeriod [IntegerOptional] <p>The number of days for which automated backups are retained. You must specify a minimum value of 1.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 1 to 35</p> </li> </ul>
-- * PreferredMaintenanceWindow [String] <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- * DBClusterParameterGroupName [String] <p> The name of the DB cluster parameter group to associate with this DB cluster. If this argument is omitted, <code>default.aurora5.6</code> will be used. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * PreSignedUrl [String] <p>A URL that contains a Signature Version 4 signed request for the <code>CreateDBCluster</code> action to be called in the source region where the DB cluster will be replicated from. You only need to specify <code>PreSignedUrl</code> when you are performing cross-region replication from an encrypted DB cluster.</p> <p>The pre-signed URL must be a valid request for the <code>CreateDBCluster</code> API action that can be executed in the source region that contains the encrypted DB cluster to be copied.</p> <p>The pre-signed URL request must contain the following parameter values:</p> <ul> <li> <p> <code>KmsKeyId</code> - The KMS key identifier for the key to use to encrypt the copy of the DB cluster in the destination region. This should refer to the same KMS key for both the <code>CreateDBCluster</code> action that is called in the destination region, and the action contained in the pre-signed URL.</p> </li> <li> <p> <code>DestinationRegion</code> - The name of the region that Aurora Read Replica will be created in.</p> </li> <li> <p> <code>ReplicationSourceIdentifier</code> - The DB cluster identifier for the encrypted DB cluster to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source region. For example, if you are copying an encrypted DB cluster from the us-west-2 region, then your <code>ReplicationSourceIdentifier</code> would look like Example: <code>arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1</code>.</p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html"> Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html"> Signature Version 4 Signing Process</a>.</p><note><p>If you supply a value for this operation's <code>SourceRegion</code> parameter, a pre-signed URL will be calculated on your behalf.</p></note>
-- * ReplicationSourceIdentifier [String] <p>The Amazon Resource Name (ARN) of the source DB instance or DB cluster if this DB cluster is created as a Read Replica.</p>
-- * EngineVersion [String] <p>The version number of the database engine to use.</p> <p> <b>Aurora</b> </p> <p>Example: <code>5.6.10a</code> </p>
-- * DBSubnetGroupName [String] <p>A DB subnet group to associate with this DB cluster.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- * OptionGroupName [String] <p>A value that indicates that the DB cluster should be associated with the specified option group.</p> <p>Permanent options cannot be removed from an option group. The option group cannot be removed from a DB cluster once it is associated with a DB cluster.</p>
-- * CharacterSetName [String] <p>A value that indicates that the DB cluster should be associated with the specified CharacterSet.</p>
-- * DBClusterIdentifier [String] <p>The DB cluster identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1</code> </p>
-- * MasterUserPassword [String] <p>The password for the master database user. This password can contain any printable ASCII character except "/", """, or "@".</p> <p>Constraints: Must contain from 8 to 41 characters.</p>
-- * KmsKeyId [String] <p>The KMS key identifier for an encrypted DB cluster.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p> <p>If the <code>StorageEncrypted</code> parameter is true, and you do not specify a value for the <code>KmsKeyId</code> parameter, then Amazon RDS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.</p> <p>If you create a Read Replica of an encrypted DB cluster in another region, you must set <code>KmsKeyId</code> to a KMS key ID that is valid in the destination region. This key is used to encrypt the Read Replica in that region.</p>
-- * StorageEncrypted [BooleanOptional] <p>Specifies whether the DB cluster is encrypted.</p>
-- * DatabaseName [String] <p>The name for your database of up to 64 alpha-numeric characters. If you do not provide a name, Amazon RDS will not create a database in the DB cluster you are creating.</p>
-- * AvailabilityZones [AvailabilityZones] <p>A list of EC2 Availability Zones that instances in the DB cluster can be created in. For information on regions and Availability Zones, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html">Regions and Availability Zones</a>. </p>
-- * Port [IntegerOptional] <p>The port number on which the instances in the DB cluster accept connections.</p> <p> Default: <code>3306</code> </p>
-- Required key: DBClusterIdentifier
-- Required key: Engine
-- @return CreateDBClusterMessage structure as a key-value pair table
function M.CreateDBClusterMessage(args)
	assert(args, "You must provide an argument table when creating CreateDBClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MasterUsername"] = args["MasterUsername"],
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["EnableIAMDatabaseAuthentication"] = args["EnableIAMDatabaseAuthentication"],
		["Engine"] = args["Engine"],
		["Tags"] = args["Tags"],
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["SourceRegion"] = args["SourceRegion"],
		["BackupRetentionPeriod"] = args["BackupRetentionPeriod"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
		["PreSignedUrl"] = args["PreSignedUrl"],
		["ReplicationSourceIdentifier"] = args["ReplicationSourceIdentifier"],
		["EngineVersion"] = args["EngineVersion"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["OptionGroupName"] = args["OptionGroupName"],
		["CharacterSetName"] = args["CharacterSetName"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["MasterUserPassword"] = args["MasterUserPassword"],
		["KmsKeyId"] = args["KmsKeyId"],
		["StorageEncrypted"] = args["StorageEncrypted"],
		["DatabaseName"] = args["DatabaseName"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["Port"] = args["Port"],
	}
	asserts.AssertCreateDBClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DownloadDBLogFilePortionDetails = { ["Marker"] = true, ["AdditionalDataPending"] = true, ["LogFileData"] = true, nil }

function asserts.AssertDownloadDBLogFilePortionDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DownloadDBLogFilePortionDetails to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["AdditionalDataPending"] then asserts.AssertBoolean(struct["AdditionalDataPending"]) end
	if struct["LogFileData"] then asserts.AssertString(struct["LogFileData"]) end
	for k,_ in pairs(struct) do
		assert(keys.DownloadDBLogFilePortionDetails[k], "DownloadDBLogFilePortionDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DownloadDBLogFilePortionDetails
-- <p>This data type is used as a response element to <a>DownloadDBLogFilePortion</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A pagination token that can be used in a subsequent DownloadDBLogFilePortion request.</p>
-- * AdditionalDataPending [Boolean] <p>Boolean value that if true, indicates there is more data to be downloaded.</p>
-- * LogFileData [String] <p>Entries from the specified log file.</p>
-- @return DownloadDBLogFilePortionDetails structure as a key-value pair table
function M.DownloadDBLogFilePortionDetails(args)
	assert(args, "You must provide an argument table when creating DownloadDBLogFilePortionDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["AdditionalDataPending"] = args["AdditionalDataPending"],
		["LogFileData"] = args["LogFileData"],
	}
	asserts.AssertDownloadDBLogFilePortionDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBParameterGroupAlreadyExistsFault = { nil }

function asserts.AssertDBParameterGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBParameterGroupAlreadyExistsFault[k], "DBParameterGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupAlreadyExistsFault
-- <p>A DB parameter group with the same name exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBParameterGroupAlreadyExistsFault structure as a key-value pair table
function M.DBParameterGroupAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating DBParameterGroupAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBParameterGroupAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBEngineVersionMessage = { ["Marker"] = true, ["DBEngineVersions"] = true, nil }

function asserts.AssertDBEngineVersionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBEngineVersionMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBEngineVersions"] then asserts.AssertDBEngineVersionList(struct["DBEngineVersions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBEngineVersionMessage[k], "DBEngineVersionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBEngineVersionMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBEngineVersions</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBEngineVersions [DBEngineVersionList] <p> A list of <code>DBEngineVersion</code> elements. </p>
-- @return DBEngineVersionMessage structure as a key-value pair table
function M.DBEngineVersionMessage(args)
	assert(args, "You must provide an argument table when creating DBEngineVersionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBEngineVersions"] = args["DBEngineVersions"],
	}
	asserts.AssertDBEngineVersionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBInstancesMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertDescribeDBInstancesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBInstancesMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBInstancesMessage[k], "DescribeDBInstancesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBInstancesMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBInstances</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>A filter that specifies one or more DB instances to describe.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB instances associated with the DB Clusters identified by these ARNs.</p> </li> <li> <p> <code>db-instance-id</code> - Accepts DB instance identifiers and DB instance Amazon Resource Names (ARNs). The results list will only include information about the DB instances identified by these ARNs.</p> </li> </ul>
-- * DBInstanceIdentifier [String] <p>The user-supplied instance identifier. If this parameter is specified, information from only the specific DB instance is returned. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @return DescribeDBInstancesMessage structure as a key-value pair table
function M.DescribeDBInstancesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBInstancesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertDescribeDBInstancesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SNSNoAuthorizationFault = { nil }

function asserts.AssertSNSNoAuthorizationFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SNSNoAuthorizationFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SNSNoAuthorizationFault[k], "SNSNoAuthorizationFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SNSNoAuthorizationFault
-- <p>You do not have permission to publish to the SNS topic ARN.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SNSNoAuthorizationFault structure as a key-value pair table
function M.SNSNoAuthorizationFault(args)
	assert(args, "You must provide an argument table when creating SNSNoAuthorizationFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSNSNoAuthorizationFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBParameterGroupDetails = { ["Marker"] = true, ["Parameters"] = true, nil }

function asserts.AssertDBParameterGroupDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupDetails to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBParameterGroupDetails[k], "DBParameterGroupDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupDetails
-- <p> Contains the result of a successful invocation of the <a>DescribeDBParameters</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * Parameters [ParametersList] <p> A list of <a>Parameter</a> values. </p>
-- @return DBParameterGroupDetails structure as a key-value pair table
function M.DBParameterGroupDetails(args)
	assert(args, "You must provide an argument table when creating DBParameterGroupDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertDBParameterGroupDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBInstanceResult = { ["DBInstance"] = true, nil }

function asserts.AssertCreateDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBInstanceResult[k], "CreateDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBInstanceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBInstance [DBInstance] 
-- @return CreateDBInstanceResult structure as a key-value pair table
function M.CreateDBInstanceResult(args)
	assert(args, "You must provide an argument table when creating CreateDBInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBInstance"] = args["DBInstance"],
	}
	asserts.AssertCreateDBInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDBInstanceStateFault = { nil }

function asserts.AssertInvalidDBInstanceStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBInstanceStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBInstanceStateFault[k], "InvalidDBInstanceStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBInstanceStateFault
-- <p> The specified DB instance is not in the <i>available</i> state. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDBInstanceStateFault structure as a key-value pair table
function M.InvalidDBInstanceStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidDBInstanceStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDBInstanceStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBSnapshotResult = { ["DBSnapshot"] = true, nil }

function asserts.AssertDeleteDBSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBSnapshotResult to be of type 'table'")
	if struct["DBSnapshot"] then asserts.AssertDBSnapshot(struct["DBSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBSnapshotResult[k], "DeleteDBSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSnapshot [DBSnapshot] 
-- @return DeleteDBSnapshotResult structure as a key-value pair table
function M.DeleteDBSnapshotResult(args)
	assert(args, "You must provide an argument table when creating DeleteDBSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSnapshot"] = args["DBSnapshot"],
	}
	asserts.AssertDeleteDBSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBSecurityGroupResult = { ["DBSecurityGroup"] = true, nil }

function asserts.AssertCreateDBSecurityGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSecurityGroupResult to be of type 'table'")
	if struct["DBSecurityGroup"] then asserts.AssertDBSecurityGroup(struct["DBSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBSecurityGroupResult[k], "CreateDBSecurityGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSecurityGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSecurityGroup [DBSecurityGroup] 
-- @return CreateDBSecurityGroupResult structure as a key-value pair table
function M.CreateDBSecurityGroupResult(args)
	assert(args, "You must provide an argument table when creating CreateDBSecurityGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSecurityGroup"] = args["DBSecurityGroup"],
	}
	asserts.AssertCreateDBSecurityGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBClusterParameterGroupResult = { ["DBClusterParameterGroup"] = true, nil }

function asserts.AssertCreateDBClusterParameterGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterParameterGroupResult to be of type 'table'")
	if struct["DBClusterParameterGroup"] then asserts.AssertDBClusterParameterGroup(struct["DBClusterParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBClusterParameterGroupResult[k], "CreateDBClusterParameterGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterParameterGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroup [DBClusterParameterGroup] 
-- @return CreateDBClusterParameterGroupResult structure as a key-value pair table
function M.CreateDBClusterParameterGroupResult(args)
	assert(args, "You must provide an argument table when creating CreateDBClusterParameterGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroup"] = args["DBClusterParameterGroup"],
	}
	asserts.AssertCreateDBClusterParameterGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSecurityGroupNotSupportedFault = { nil }

function asserts.AssertDBSecurityGroupNotSupportedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupNotSupportedFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSecurityGroupNotSupportedFault[k], "DBSecurityGroupNotSupportedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupNotSupportedFault
-- <p>A DB security group is not allowed for this action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSecurityGroupNotSupportedFault structure as a key-value pair table
function M.DBSecurityGroupNotSupportedFault(args)
	assert(args, "You must provide an argument table when creating DBSecurityGroupNotSupportedFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSecurityGroupNotSupportedFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSecurityGroupQuotaExceededFault = { nil }

function asserts.AssertDBSecurityGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSecurityGroupQuotaExceededFault[k], "DBSecurityGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupQuotaExceededFault
-- <p>Request would result in user exceeding the allowed number of DB security groups.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSecurityGroupQuotaExceededFault structure as a key-value pair table
function M.DBSecurityGroupQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating DBSecurityGroupQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSecurityGroupQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OptionGroupOption = { ["MinimumRequiredMinorEngineVersion"] = true, ["OptionsDependedOn"] = true, ["MajorEngineVersion"] = true, ["OptionGroupOptionVersions"] = true, ["Persistent"] = true, ["Description"] = true, ["DefaultPort"] = true, ["Permanent"] = true, ["OptionGroupOptionSettings"] = true, ["OptionsConflictsWith"] = true, ["EngineName"] = true, ["PortRequired"] = true, ["Name"] = true, nil }

function asserts.AssertOptionGroupOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupOption to be of type 'table'")
	if struct["MinimumRequiredMinorEngineVersion"] then asserts.AssertString(struct["MinimumRequiredMinorEngineVersion"]) end
	if struct["OptionsDependedOn"] then asserts.AssertOptionsDependedOn(struct["OptionsDependedOn"]) end
	if struct["MajorEngineVersion"] then asserts.AssertString(struct["MajorEngineVersion"]) end
	if struct["OptionGroupOptionVersions"] then asserts.AssertOptionGroupOptionVersionsList(struct["OptionGroupOptionVersions"]) end
	if struct["Persistent"] then asserts.AssertBoolean(struct["Persistent"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["DefaultPort"] then asserts.AssertIntegerOptional(struct["DefaultPort"]) end
	if struct["Permanent"] then asserts.AssertBoolean(struct["Permanent"]) end
	if struct["OptionGroupOptionSettings"] then asserts.AssertOptionGroupOptionSettingsList(struct["OptionGroupOptionSettings"]) end
	if struct["OptionsConflictsWith"] then asserts.AssertOptionsConflictsWith(struct["OptionsConflictsWith"]) end
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["PortRequired"] then asserts.AssertBoolean(struct["PortRequired"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionGroupOption[k], "OptionGroupOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupOption
-- <p>Available option.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MinimumRequiredMinorEngineVersion [String] <p>The minimum required engine version for the option to be applied.</p>
-- * OptionsDependedOn [OptionsDependedOn] <p>The options that are prerequisites for this option.</p>
-- * MajorEngineVersion [String] <p>Indicates the major engine version that the option is available for.</p>
-- * OptionGroupOptionVersions [OptionGroupOptionVersionsList] <p>The versions that are available for the option.</p>
-- * Persistent [Boolean] <p>Persistent options can't be removed from an option group while DB instances are associated with the option group. If you disassociate all DB instances from the option group, your can remove the persistent option from the option group.</p>
-- * Description [String] <p>The description of the option.</p>
-- * DefaultPort [IntegerOptional] <p>If the option requires a port, specifies the default port for the option.</p>
-- * Permanent [Boolean] <p>Permanent options can never be removed from an option group. An option group containing a permanent option can't be removed from a DB instance.</p>
-- * OptionGroupOptionSettings [OptionGroupOptionSettingsList] <p>The option settings that are available (and the default value) for each option in an option group.</p>
-- * OptionsConflictsWith [OptionsConflictsWith] <p>The options that conflict with this option.</p>
-- * EngineName [String] <p>The name of the engine that this option can be applied to.</p>
-- * PortRequired [Boolean] <p>Specifies whether the option requires a port.</p>
-- * Name [String] <p>The name of the option.</p>
-- @return OptionGroupOption structure as a key-value pair table
function M.OptionGroupOption(args)
	assert(args, "You must provide an argument table when creating OptionGroupOption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MinimumRequiredMinorEngineVersion"] = args["MinimumRequiredMinorEngineVersion"],
		["OptionsDependedOn"] = args["OptionsDependedOn"],
		["MajorEngineVersion"] = args["MajorEngineVersion"],
		["OptionGroupOptionVersions"] = args["OptionGroupOptionVersions"],
		["Persistent"] = args["Persistent"],
		["Description"] = args["Description"],
		["DefaultPort"] = args["DefaultPort"],
		["Permanent"] = args["Permanent"],
		["OptionGroupOptionSettings"] = args["OptionGroupOptionSettings"],
		["OptionsConflictsWith"] = args["OptionsConflictsWith"],
		["EngineName"] = args["EngineName"],
		["PortRequired"] = args["PortRequired"],
		["Name"] = args["Name"],
	}
	asserts.AssertOptionGroupOption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterParameterGroup = { ["DBClusterParameterGroupName"] = true, ["DBParameterGroupFamily"] = true, ["Description"] = true, ["DBClusterParameterGroupArn"] = true, nil }

function asserts.AssertDBClusterParameterGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterParameterGroup to be of type 'table'")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["DBClusterParameterGroupArn"] then asserts.AssertString(struct["DBClusterParameterGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterParameterGroup[k], "DBClusterParameterGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterParameterGroup
-- <p>Contains the result of a successful invocation of the <a>CreateDBClusterParameterGroup</a> or <a>CopyDBClusterParameterGroup</a> action. </p> <p>This data type is used as a request parameter in the <a>DeleteDBClusterParameterGroup</a> action, and as a response element in the <a>DescribeDBClusterParameterGroups</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>Provides the name of the DB cluster parameter group.</p>
-- * DBParameterGroupFamily [String] <p>Provides the name of the DB parameter group family that this DB cluster parameter group is compatible with.</p>
-- * Description [String] <p>Provides the customer-specified description for this DB cluster parameter group.</p>
-- * DBClusterParameterGroupArn [String] <p>The Amazon Resource Name (ARN) for the DB cluster parameter group.</p>
-- @return DBClusterParameterGroup structure as a key-value pair table
function M.DBClusterParameterGroup(args)
	assert(args, "You must provide an argument table when creating DBClusterParameterGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["Description"] = args["Description"],
		["DBClusterParameterGroupArn"] = args["DBClusterParameterGroupArn"],
	}
	asserts.AssertDBClusterParameterGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterQuotaExceededFault = { nil }

function asserts.AssertDBClusterQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterQuotaExceededFault[k], "DBClusterQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterQuotaExceededFault
-- <p>User attempted to create a new DB cluster and the user has already reached the maximum allowed DB cluster quota.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterQuotaExceededFault structure as a key-value pair table
function M.DBClusterQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating DBClusterQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBEngineVersionsMessage = { ["Engine"] = true, ["DBParameterGroupFamily"] = true, ["ListSupportedCharacterSets"] = true, ["DefaultOnly"] = true, ["ListSupportedTimezones"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["EngineVersion"] = true, ["Marker"] = true, nil }

function asserts.AssertDescribeDBEngineVersionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBEngineVersionsMessage to be of type 'table'")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["ListSupportedCharacterSets"] then asserts.AssertBooleanOptional(struct["ListSupportedCharacterSets"]) end
	if struct["DefaultOnly"] then asserts.AssertBoolean(struct["DefaultOnly"]) end
	if struct["ListSupportedTimezones"] then asserts.AssertBooleanOptional(struct["ListSupportedTimezones"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBEngineVersionsMessage[k], "DescribeDBEngineVersionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBEngineVersionsMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p>The database engine to return.</p>
-- * DBParameterGroupFamily [String] <p>The name of a specific DB parameter group family to return details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * ListSupportedCharacterSets [BooleanOptional] <p>If this parameter is specified and the requested engine supports the <code>CharacterSetName</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported character sets for each engine version. </p>
-- * DefaultOnly [Boolean] <p>Indicates that only the default version of the specified engine or engine and major version combination is returned.</p>
-- * ListSupportedTimezones [BooleanOptional] <p>If this parameter is specified and the requested engine supports the <code>TimeZone</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported time zones for each engine version. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is included in the response so that the following results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>Not currently supported.</p>
-- * EngineVersion [String] <p>The database engine version to return.</p> <p>Example: <code>5.1.49</code> </p>
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @return DescribeDBEngineVersionsMessage structure as a key-value pair table
function M.DescribeDBEngineVersionsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBEngineVersionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["ListSupportedCharacterSets"] = args["ListSupportedCharacterSets"],
		["DefaultOnly"] = args["DefaultOnly"],
		["ListSupportedTimezones"] = args["ListSupportedTimezones"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["EngineVersion"] = args["EngineVersion"],
		["Marker"] = args["Marker"],
	}
	asserts.AssertDescribeDBEngineVersionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddSourceIdentifierToSubscriptionResult = { ["EventSubscription"] = true, nil }

function asserts.AssertAddSourceIdentifierToSubscriptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddSourceIdentifierToSubscriptionResult to be of type 'table'")
	if struct["EventSubscription"] then asserts.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddSourceIdentifierToSubscriptionResult[k], "AddSourceIdentifierToSubscriptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddSourceIdentifierToSubscriptionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventSubscription [EventSubscription] 
-- @return AddSourceIdentifierToSubscriptionResult structure as a key-value pair table
function M.AddSourceIdentifierToSubscriptionResult(args)
	assert(args, "You must provide an argument table when creating AddSourceIdentifierToSubscriptionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventSubscription"] = args["EventSubscription"],
	}
	asserts.AssertAddSourceIdentifierToSubscriptionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplyPendingMaintenanceActionResult = { ["ResourcePendingMaintenanceActions"] = true, nil }

function asserts.AssertApplyPendingMaintenanceActionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplyPendingMaintenanceActionResult to be of type 'table'")
	if struct["ResourcePendingMaintenanceActions"] then asserts.AssertResourcePendingMaintenanceActions(struct["ResourcePendingMaintenanceActions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplyPendingMaintenanceActionResult[k], "ApplyPendingMaintenanceActionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplyPendingMaintenanceActionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourcePendingMaintenanceActions [ResourcePendingMaintenanceActions] 
-- @return ApplyPendingMaintenanceActionResult structure as a key-value pair table
function M.ApplyPendingMaintenanceActionResult(args)
	assert(args, "You must provide an argument table when creating ApplyPendingMaintenanceActionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourcePendingMaintenanceActions"] = args["ResourcePendingMaintenanceActions"],
	}
	asserts.AssertApplyPendingMaintenanceActionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyDBClusterParameterGroupResult = { ["DBClusterParameterGroup"] = true, nil }

function asserts.AssertCopyDBClusterParameterGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBClusterParameterGroupResult to be of type 'table'")
	if struct["DBClusterParameterGroup"] then asserts.AssertDBClusterParameterGroup(struct["DBClusterParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyDBClusterParameterGroupResult[k], "CopyDBClusterParameterGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBClusterParameterGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroup [DBClusterParameterGroup] 
-- @return CopyDBClusterParameterGroupResult structure as a key-value pair table
function M.CopyDBClusterParameterGroupResult(args)
	assert(args, "You must provide an argument table when creating CopyDBClusterParameterGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroup"] = args["DBClusterParameterGroup"],
	}
	asserts.AssertCopyDBClusterParameterGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OptionGroupOptionsMessage = { ["OptionGroupOptions"] = true, ["Marker"] = true, nil }

function asserts.AssertOptionGroupOptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupOptionsMessage to be of type 'table'")
	if struct["OptionGroupOptions"] then asserts.AssertOptionGroupOptionsList(struct["OptionGroupOptions"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionGroupOptionsMessage[k], "OptionGroupOptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupOptionsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OptionGroupOptions [OptionGroupOptionsList] 
-- * Marker [String] <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- @return OptionGroupOptionsMessage structure as a key-value pair table
function M.OptionGroupOptionsMessage(args)
	assert(args, "You must provide an argument table when creating OptionGroupOptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OptionGroupOptions"] = args["OptionGroupOptions"],
		["Marker"] = args["Marker"],
	}
	asserts.AssertOptionGroupOptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterOptionGroupStatus = { ["Status"] = true, ["DBClusterOptionGroupName"] = true, nil }

function asserts.AssertDBClusterOptionGroupStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterOptionGroupStatus to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["DBClusterOptionGroupName"] then asserts.AssertString(struct["DBClusterOptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterOptionGroupStatus[k], "DBClusterOptionGroupStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterOptionGroupStatus
-- <p>Contains status information for a DB cluster option group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>Specifies the status of the DB cluster option group.</p>
-- * DBClusterOptionGroupName [String] <p>Specifies the name of the DB cluster option group.</p>
-- @return DBClusterOptionGroupStatus structure as a key-value pair table
function M.DBClusterOptionGroupStatus(args)
	assert(args, "You must provide an argument table when creating DBClusterOptionGroupStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["DBClusterOptionGroupName"] = args["DBClusterOptionGroupName"],
	}
	asserts.AssertDBClusterOptionGroupStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBParameterGroup = { ["DBParameterGroupArn"] = true, ["DBParameterGroupName"] = true, ["DBParameterGroupFamily"] = true, ["Description"] = true, nil }

function asserts.AssertDBParameterGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroup to be of type 'table'")
	if struct["DBParameterGroupArn"] then asserts.AssertString(struct["DBParameterGroupArn"]) end
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBParameterGroup[k], "DBParameterGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroup
-- <p>Contains the result of a successful invocation of the <a>CreateDBParameterGroup</a> action. </p> <p>This data type is used as a request parameter in the <a>DeleteDBParameterGroup</a> action, and as a response element in the <a>DescribeDBParameterGroups</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupArn [String] <p>The Amazon Resource Name (ARN) for the DB parameter group.</p>
-- * DBParameterGroupName [String] <p>Provides the name of the DB parameter group.</p>
-- * DBParameterGroupFamily [String] <p>Provides the name of the DB parameter group family that this DB parameter group is compatible with.</p>
-- * Description [String] <p>Provides the customer-specified description for this DB parameter group.</p>
-- @return DBParameterGroup structure as a key-value pair table
function M.DBParameterGroup(args)
	assert(args, "You must provide an argument table when creating DBParameterGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupArn"] = args["DBParameterGroupArn"],
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["Description"] = args["Description"],
	}
	asserts.AssertDBParameterGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopDBInstanceResult = { ["DBInstance"] = true, nil }

function asserts.AssertStopDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopDBInstanceResult[k], "StopDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopDBInstanceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBInstance [DBInstance] 
-- @return StopDBInstanceResult structure as a key-value pair table
function M.StopDBInstanceResult(args)
	assert(args, "You must provide an argument table when creating StopDBInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBInstance"] = args["DBInstance"],
	}
	asserts.AssertStopDBInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEventCategoriesMessage = { ["SourceType"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeEventCategoriesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventCategoriesMessage to be of type 'table'")
	if struct["SourceType"] then asserts.AssertString(struct["SourceType"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventCategoriesMessage[k], "DescribeEventCategoriesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventCategoriesMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceType [String] <p>The type of source that will be generating the events.</p> <p>Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @return DescribeEventCategoriesMessage structure as a key-value pair table
function M.DescribeEventCategoriesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeEventCategoriesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceType"] = args["SourceType"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeEventCategoriesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreDBClusterToPointInTimeMessage = { ["VpcSecurityGroupIds"] = true, ["DBClusterIdentifier"] = true, ["Tags"] = true, ["UseLatestRestorableTime"] = true, ["RestoreType"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["KmsKeyId"] = true, ["SourceDBClusterIdentifier"] = true, ["DBSubnetGroupName"] = true, ["RestoreToTime"] = true, ["Port"] = true, ["OptionGroupName"] = true, nil }

function asserts.AssertRestoreDBClusterToPointInTimeMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBClusterToPointInTimeMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	assert(struct["SourceDBClusterIdentifier"], "Expected key SourceDBClusterIdentifier to exist in table")
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["UseLatestRestorableTime"] then asserts.AssertBoolean(struct["UseLatestRestorableTime"]) end
	if struct["RestoreType"] then asserts.AssertString(struct["RestoreType"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["SourceDBClusterIdentifier"] then asserts.AssertString(struct["SourceDBClusterIdentifier"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["RestoreToTime"] then asserts.AssertTStamp(struct["RestoreToTime"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBClusterToPointInTimeMessage[k], "RestoreDBClusterToPointInTimeMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterToPointInTimeMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of VPC security groups that the new DB cluster belongs to.</p>
-- * DBClusterIdentifier [String] <p>The name of the new DB cluster to be created.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * Tags [TagList] 
-- * UseLatestRestorableTime [Boolean] <p>A value that is set to <code>true</code> to restore the DB cluster to the latest restorable backup time, and <code>false</code> otherwise. </p> <p>Default: <code>false</code> </p> <p>Constraints: Cannot be specified if <code>RestoreToTime</code> parameter is provided.</p>
-- * RestoreType [String] <p>The type of restore to be performed. You can specify one of the following values:</p> <ul> <li> <p> <code>full-copy</code> - The new DB cluster is restored as a full copy of the source DB cluster.</p> </li> <li> <p> <code>copy-on-write</code> - The new DB cluster is restored as a clone of the source DB cluster.</p> </li> </ul> <p>Constraints: You cannot specify <code>copy-on-write</code> if the engine version of the source DB cluster is earlier than 1.11.</p> <p>If you don't specify a <code>RestoreType</code> value, then the new DB cluster is restored as a full copy of the source DB cluster.</p>
-- * EnableIAMDatabaseAuthentication [BooleanOptional] <p>A Boolean value that is true to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- * KmsKeyId [String] <p>The KMS key identifier to use when restoring an encrypted DB cluster from an encrypted DB cluster.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p> <p>You can restore to a new DB cluster and encrypt the new DB cluster with a KMS key that is different than the KMS key used to encrypt the source DB cluster. The new DB cluster will be encrypted with the KMS key identified by the <code>KmsKeyId</code> parameter.</p> <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following will occur:</p> <ul> <li> <p>If the DB cluster is encrypted, then the restored DB cluster is encrypted using the KMS key that was used to encrypt the source DB cluster.</p> </li> <li> <p>If the DB cluster is not encrypted, then the restored DB cluster is not encrypted.</p> </li> </ul> <p>If <code>DBClusterIdentifier</code> refers to a DB cluster that is not encrypted, then the restore request is rejected.</p>
-- * SourceDBClusterIdentifier [String] <p>The identifier of the source DB cluster from which to restore.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier of an existing database instance</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * DBSubnetGroupName [String] <p>The DB subnet group name to use for the new DB cluster.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- * RestoreToTime [TStamp] <p>The date and time to restore the DB cluster to.</p> <p>Valid Values: Value must be a time in Universal Coordinated Time (UTC) format</p> <p>Constraints:</p> <ul> <li> <p>Must be before the latest restorable time for the DB instance</p> </li> <li> <p>Must be specified if <code>UseLatestRestorableTime</code> parameter is not provided</p> </li> <li> <p>Cannot be specified if <code>UseLatestRestorableTime</code> parameter is true</p> </li> <li> <p>Cannot be specified if <code>RestoreType</code> parameter is <code>copy-on-write</code> </p> </li> </ul> <p>Example: <code>2015-03-07T23:45:00Z</code> </p>
-- * Port [IntegerOptional] <p>The port number on which the new DB cluster accepts connections.</p> <p>Constraints: Value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB cluster.</p>
-- * OptionGroupName [String] <p>The name of the option group for the new DB cluster.</p>
-- Required key: DBClusterIdentifier
-- Required key: SourceDBClusterIdentifier
-- @return RestoreDBClusterToPointInTimeMessage structure as a key-value pair table
function M.RestoreDBClusterToPointInTimeMessage(args)
	assert(args, "You must provide an argument table when creating RestoreDBClusterToPointInTimeMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["Tags"] = args["Tags"],
		["UseLatestRestorableTime"] = args["UseLatestRestorableTime"],
		["RestoreType"] = args["RestoreType"],
		["EnableIAMDatabaseAuthentication"] = args["EnableIAMDatabaseAuthentication"],
		["KmsKeyId"] = args["KmsKeyId"],
		["SourceDBClusterIdentifier"] = args["SourceDBClusterIdentifier"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["RestoreToTime"] = args["RestoreToTime"],
		["Port"] = args["Port"],
		["OptionGroupName"] = args["OptionGroupName"],
	}
	asserts.AssertRestoreDBClusterToPointInTimeMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBClusterSnapshotMessage = { ["DBClusterSnapshotIdentifier"] = true, ["DBClusterIdentifier"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateDBClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterSnapshotMessage to be of type 'table'")
	assert(struct["DBClusterSnapshotIdentifier"], "Expected key DBClusterSnapshotIdentifier to exist in table")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	if struct["DBClusterSnapshotIdentifier"] then asserts.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBClusterSnapshotMessage[k], "CreateDBClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterSnapshotMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshotIdentifier [String] <p>The identifier of the DB cluster snapshot. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1-snapshot1</code> </p>
-- * DBClusterIdentifier [String] <p>The identifier of the DB cluster to create a snapshot for. This parameter is not case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1</code> </p>
-- * Tags [TagList] <p>The tags to be assigned to the DB cluster snapshot.</p>
-- Required key: DBClusterSnapshotIdentifier
-- Required key: DBClusterIdentifier
-- @return CreateDBClusterSnapshotMessage structure as a key-value pair table
function M.CreateDBClusterSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating CreateDBClusterSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshotIdentifier"] = args["DBClusterSnapshotIdentifier"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateDBClusterSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RebootDBInstanceResult = { ["DBInstance"] = true, nil }

function asserts.AssertRebootDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootDBInstanceResult[k], "RebootDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootDBInstanceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBInstance [DBInstance] 
-- @return RebootDBInstanceResult structure as a key-value pair table
function M.RebootDBInstanceResult(args)
	assert(args, "You must provide an argument table when creating RebootDBInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBInstance"] = args["DBInstance"],
	}
	asserts.AssertRebootDBInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PromoteReadReplicaDBClusterMessage = { ["DBClusterIdentifier"] = true, nil }

function asserts.AssertPromoteReadReplicaDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PromoteReadReplicaDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.PromoteReadReplicaDBClusterMessage[k], "PromoteReadReplicaDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PromoteReadReplicaDBClusterMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterIdentifier [String] <p>The identifier of the DB cluster Read Replica to promote. This parameter is not case-sensitive. </p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster-replica1</code> </p>
-- Required key: DBClusterIdentifier
-- @return PromoteReadReplicaDBClusterMessage structure as a key-value pair table
function M.PromoteReadReplicaDBClusterMessage(args)
	assert(args, "You must provide an argument table when creating PromoteReadReplicaDBClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
	}
	asserts.AssertPromoteReadReplicaDBClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyDBParameterGroupResult = { ["DBParameterGroup"] = true, nil }

function asserts.AssertCopyDBParameterGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBParameterGroupResult to be of type 'table'")
	if struct["DBParameterGroup"] then asserts.AssertDBParameterGroup(struct["DBParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyDBParameterGroupResult[k], "CopyDBParameterGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBParameterGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroup [DBParameterGroup] 
-- @return CopyDBParameterGroupResult structure as a key-value pair table
function M.CopyDBParameterGroupResult(args)
	assert(args, "You must provide an argument table when creating CopyDBParameterGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroup"] = args["DBParameterGroup"],
	}
	asserts.AssertCopyDBParameterGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SNSInvalidTopicFault = { nil }

function asserts.AssertSNSInvalidTopicFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SNSInvalidTopicFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SNSInvalidTopicFault[k], "SNSInvalidTopicFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SNSInvalidTopicFault
-- <p>SNS has responded that there is a problem with the SND topic specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SNSInvalidTopicFault structure as a key-value pair table
function M.SNSInvalidTopicFault(args)
	assert(args, "You must provide an argument table when creating SNSInvalidTopicFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSNSInvalidTopicFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveSourceIdentifierFromSubscriptionResult = { ["EventSubscription"] = true, nil }

function asserts.AssertRemoveSourceIdentifierFromSubscriptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveSourceIdentifierFromSubscriptionResult to be of type 'table'")
	if struct["EventSubscription"] then asserts.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveSourceIdentifierFromSubscriptionResult[k], "RemoveSourceIdentifierFromSubscriptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveSourceIdentifierFromSubscriptionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventSubscription [EventSubscription] 
-- @return RemoveSourceIdentifierFromSubscriptionResult structure as a key-value pair table
function M.RemoveSourceIdentifierFromSubscriptionResult(args)
	assert(args, "You must provide an argument table when creating RemoveSourceIdentifierFromSubscriptionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventSubscription"] = args["EventSubscription"],
	}
	asserts.AssertRemoveSourceIdentifierFromSubscriptionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBClusterResult = { ["DBCluster"] = true, nil }

function asserts.AssertDeleteDBClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBClusterResult to be of type 'table'")
	if struct["DBCluster"] then asserts.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBClusterResult[k], "DeleteDBClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBCluster [DBCluster] 
-- @return DeleteDBClusterResult structure as a key-value pair table
function M.DeleteDBClusterResult(args)
	assert(args, "You must provide an argument table when creating DeleteDBClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBCluster"] = args["DBCluster"],
	}
	asserts.AssertDeleteDBClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyDBClusterSnapshotMessage = { ["CopyTags"] = true, ["SourceRegion"] = true, ["Tags"] = true, ["SourceDBClusterSnapshotIdentifier"] = true, ["PreSignedUrl"] = true, ["KmsKeyId"] = true, ["TargetDBClusterSnapshotIdentifier"] = true, nil }

function asserts.AssertCopyDBClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBClusterSnapshotMessage to be of type 'table'")
	assert(struct["SourceDBClusterSnapshotIdentifier"], "Expected key SourceDBClusterSnapshotIdentifier to exist in table")
	assert(struct["TargetDBClusterSnapshotIdentifier"], "Expected key TargetDBClusterSnapshotIdentifier to exist in table")
	if struct["CopyTags"] then asserts.AssertBooleanOptional(struct["CopyTags"]) end
	if struct["SourceRegion"] then asserts.AssertString(struct["SourceRegion"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["SourceDBClusterSnapshotIdentifier"] then asserts.AssertString(struct["SourceDBClusterSnapshotIdentifier"]) end
	if struct["PreSignedUrl"] then asserts.AssertString(struct["PreSignedUrl"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["TargetDBClusterSnapshotIdentifier"] then asserts.AssertString(struct["TargetDBClusterSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyDBClusterSnapshotMessage[k], "CopyDBClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBClusterSnapshotMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CopyTags [BooleanOptional] <p>True to copy all tags from the source DB cluster snapshot to the target DB cluster snapshot; otherwise false. The default is false.</p>
-- * SourceRegion [String] <p>The ID of the region that contains the snapshot to be copied.</p>
-- * Tags [TagList] 
-- * SourceDBClusterSnapshotIdentifier [String] <p>The identifier of the DB cluster snapshot to copy. This parameter is not case-sensitive.</p> <p>You cannot copy an encrypted, shared DB cluster snapshot from one AWS region to another.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must specify a valid system snapshot in the "available" state.</p> </li> <li> <p>If the source snapshot is in the same region as the copy, specify a valid DB snapshot identifier.</p> </li> <li> <p>If the source snapshot is in a different region than the copy, specify a valid DB cluster snapshot ARN. For more information, go to <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html"> Copying a DB Snapshot or DB Cluster Snapshot</a>.</p> </li> </ul> <p>Example: <code>my-cluster-snapshot1</code> </p>
-- * PreSignedUrl [String] <p>The URL that contains a Signature Version 4 signed request for the <code>CopyDBClusterSnapshot</code> API action in the AWS region that contains the source DB cluster snapshot to copy. The <code>PreSignedUrl</code> parameter must be used when copying an encrypted DB cluster snapshot from another AWS region.</p> <p>The pre-signed URL must be a valid request for the <code>CopyDBSClusterSnapshot</code> API action that can be executed in the source region that contains the encrypted DB cluster snapshot to be copied. The pre-signed URL request must contain the following parameter values:</p> <ul> <li> <p> <code>KmsKeyId</code> - The KMS key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination region. This is the same identifier for both the <code>CopyDBClusterSnapshot</code> action that is called in the destination region, and the action contained in the pre-signed URL.</p> </li> <li> <p> <code>DestinationRegion</code> - The name of the region that the DB cluster snapshot will be created in.</p> </li> <li> <p> <code>SourceDBClusterSnapshotIdentifier</code> - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source region. For example, if you are copying an encrypted DB cluster snapshot from the us-west-2 region, then your <code>SourceDBClusterSnapshotIdentifier</code> looks like the following example: <code>arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115</code>.</p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html"> Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html"> Signature Version 4 Signing Process</a>.</p><note><p>If you supply a value for this operation's <code>SourceRegion</code> parameter, a pre-signed URL will be calculated on your behalf.</p></note>
-- * KmsKeyId [String] <p>The AWS KMS key ID for an encrypted DB cluster snapshot. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key. </p> <p>If you copy an unencrypted DB cluster snapshot and specify a value for the <code>KmsKeyId</code> parameter, Amazon RDS encrypts the target DB cluster snapshot using the specified KMS encryption key. </p> <p>If you copy an encrypted DB cluster snapshot from your AWS account, you can specify a value for <code>KmsKeyId</code> to encrypt the copy with a new KMS encryption key. If you don't specify a value for <code>KmsKeyId</code>, then the copy of the DB cluster snapshot is encrypted with the same KMS key as the source DB cluster snapshot. </p> <p>If you copy an encrypted DB cluster snapshot that is shared from another AWS account, then you must specify a value for <code>KmsKeyId</code>. </p> <p>To copy an encrypted DB cluster snapshot to another region, you must set <code>KmsKeyId</code> to the KMS key ID you want to use to encrypt the copy of the DB cluster snapshot in the destination region. KMS encryption keys are specific to the region that they are created in, and you cannot use encryption keys from one region in another region.</p>
-- * TargetDBClusterSnapshotIdentifier [String] <p>The identifier of the new DB cluster snapshot to create from the source DB cluster snapshot. This parameter is not case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster-snapshot2</code> </p>
-- Required key: SourceDBClusterSnapshotIdentifier
-- Required key: TargetDBClusterSnapshotIdentifier
-- @return CopyDBClusterSnapshotMessage structure as a key-value pair table
function M.CopyDBClusterSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating CopyDBClusterSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CopyTags"] = args["CopyTags"],
		["SourceRegion"] = args["SourceRegion"],
		["Tags"] = args["Tags"],
		["SourceDBClusterSnapshotIdentifier"] = args["SourceDBClusterSnapshotIdentifier"],
		["PreSignedUrl"] = args["PreSignedUrl"],
		["KmsKeyId"] = args["KmsKeyId"],
		["TargetDBClusterSnapshotIdentifier"] = args["TargetDBClusterSnapshotIdentifier"],
	}
	asserts.AssertCopyDBClusterSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEngineDefaultClusterParametersResult = { ["EngineDefaults"] = true, nil }

function asserts.AssertDescribeEngineDefaultClusterParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEngineDefaultClusterParametersResult to be of type 'table'")
	if struct["EngineDefaults"] then asserts.AssertEngineDefaults(struct["EngineDefaults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEngineDefaultClusterParametersResult[k], "DescribeEngineDefaultClusterParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEngineDefaultClusterParametersResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EngineDefaults [EngineDefaults] 
-- @return DescribeEngineDefaultClusterParametersResult structure as a key-value pair table
function M.DescribeEngineDefaultClusterParametersResult(args)
	assert(args, "You must provide an argument table when creating DescribeEngineDefaultClusterParametersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EngineDefaults"] = args["EngineDefaults"],
	}
	asserts.AssertDescribeEngineDefaultClusterParametersResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubscriptionNotFoundFault = { nil }

function asserts.AssertSubscriptionNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubscriptionNotFoundFault[k], "SubscriptionNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionNotFoundFault
-- <p>The subscription name does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SubscriptionNotFoundFault structure as a key-value pair table
function M.SubscriptionNotFoundFault(args)
	assert(args, "You must provide an argument table when creating SubscriptionNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSubscriptionNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReservedDBInstancesOfferingsMessage = { ["MultiAZ"] = true, ["OfferingType"] = true, ["ProductDescription"] = true, ["ReservedDBInstancesOfferingId"] = true, ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["Duration"] = true, ["DBInstanceClass"] = true, nil }

function asserts.AssertDescribeReservedDBInstancesOfferingsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedDBInstancesOfferingsMessage to be of type 'table'")
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["OfferingType"] then asserts.AssertString(struct["OfferingType"]) end
	if struct["ProductDescription"] then asserts.AssertString(struct["ProductDescription"]) end
	if struct["ReservedDBInstancesOfferingId"] then asserts.AssertString(struct["ReservedDBInstancesOfferingId"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["Duration"] then asserts.AssertString(struct["Duration"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReservedDBInstancesOfferingsMessage[k], "DescribeReservedDBInstancesOfferingsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedDBInstancesOfferingsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MultiAZ [BooleanOptional] <p>The Multi-AZ filter value. Specify this parameter to show only the available offerings matching the specified Multi-AZ parameter.</p>
-- * OfferingType [String] <p>The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type.</p> <p>Valid Values: <code>"Partial Upfront" | "All Upfront" | "No Upfront" </code> </p>
-- * ProductDescription [String] <p>Product description filter value. Specify this parameter to show only the available offerings matching the specified product description.</p>
-- * ReservedDBInstancesOfferingId [String] <p>The offering identifier filter value. Specify this parameter to show only the available offering that matches the specified reservation identifier.</p> <p>Example: <code>438012d3-4052-4cc7-b2e3-8d3372e0e706</code> </p>
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is included in the response so that the following results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- * Duration [String] <p>Duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration.</p> <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code> </p>
-- * DBInstanceClass [String] <p>The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.</p>
-- @return DescribeReservedDBInstancesOfferingsMessage structure as a key-value pair table
function M.DescribeReservedDBInstancesOfferingsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeReservedDBInstancesOfferingsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MultiAZ"] = args["MultiAZ"],
		["OfferingType"] = args["OfferingType"],
		["ProductDescription"] = args["ProductDescription"],
		["ReservedDBInstancesOfferingId"] = args["ReservedDBInstancesOfferingId"],
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["Duration"] = args["Duration"],
		["DBInstanceClass"] = args["DBInstanceClass"],
	}
	asserts.AssertDescribeReservedDBInstancesOfferingsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteOptionGroupMessage = { ["OptionGroupName"] = true, nil }

function asserts.AssertDeleteOptionGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteOptionGroupMessage to be of type 'table'")
	assert(struct["OptionGroupName"], "Expected key OptionGroupName to exist in table")
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteOptionGroupMessage[k], "DeleteOptionGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteOptionGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OptionGroupName [String] <p>The name of the option group to be deleted.</p> <note> <p>You cannot delete default option groups.</p> </note>
-- Required key: OptionGroupName
-- @return DeleteOptionGroupMessage structure as a key-value pair table
function M.DeleteOptionGroupMessage(args)
	assert(args, "You must provide an argument table when creating DeleteOptionGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OptionGroupName"] = args["OptionGroupName"],
	}
	asserts.AssertDeleteOptionGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePendingMaintenanceActionsMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["ResourceIdentifier"] = true, nil }

function asserts.AssertDescribePendingMaintenanceActionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePendingMaintenanceActionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["ResourceIdentifier"] then asserts.AssertString(struct["ResourceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePendingMaintenanceActionsMessage[k], "DescribePendingMaintenanceActionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePendingMaintenanceActionsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribePendingMaintenanceActions</code> request. If this parameter is specified, the response includes only records beyond the marker, up to a number of records specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>A filter that specifies one or more resources to return pending maintenance actions for.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include pending maintenance actions for the DB clusters identified by these ARNs.</p> </li> <li> <p> <code>db-instance-id</code> - Accepts DB instance identifiers and DB instance ARNs. The results list will only include pending maintenance actions for the DB instances identified by these ARNs.</p> </li> </ul>
-- * ResourceIdentifier [String] <p>The ARN of a resource to return pending maintenance actions for.</p>
-- @return DescribePendingMaintenanceActionsMessage structure as a key-value pair table
function M.DescribePendingMaintenanceActionsMessage(args)
	assert(args, "You must provide an argument table when creating DescribePendingMaintenanceActionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["ResourceIdentifier"] = args["ResourceIdentifier"],
	}
	asserts.AssertDescribePendingMaintenanceActionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDBParameterGroupStateFault = { nil }

function asserts.AssertInvalidDBParameterGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBParameterGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBParameterGroupStateFault[k], "InvalidDBParameterGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBParameterGroupStateFault
-- <p>The DB parameter group is in use or is in an invalid state. If you are attempting to delete the parameter group, you cannot delete it when the parameter group is in this state.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDBParameterGroupStateFault structure as a key-value pair table
function M.InvalidDBParameterGroupStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidDBParameterGroupStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDBParameterGroupStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeOptionGroupsMessage = { ["MajorEngineVersion"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["Marker"] = true, ["EngineName"] = true, ["OptionGroupName"] = true, nil }

function asserts.AssertDescribeOptionGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOptionGroupsMessage to be of type 'table'")
	if struct["MajorEngineVersion"] then asserts.AssertString(struct["MajorEngineVersion"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOptionGroupsMessage[k], "DescribeOptionGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOptionGroupsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MajorEngineVersion [String] <p>Filters the list of option groups to only include groups associated with a specific database engine version. If specified, then EngineName must also be specified.</p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- * Marker [String] <p> An optional pagination token provided by a previous DescribeOptionGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * EngineName [String] <p>Filters the list of option groups to only include groups associated with a specific database engine.</p>
-- * OptionGroupName [String] <p>The name of the option group to describe. Cannot be supplied together with EngineName or MajorEngineVersion.</p>
-- @return DescribeOptionGroupsMessage structure as a key-value pair table
function M.DescribeOptionGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeOptionGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MajorEngineVersion"] = args["MajorEngineVersion"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["Marker"] = args["Marker"],
		["EngineName"] = args["EngineName"],
		["OptionGroupName"] = args["OptionGroupName"],
	}
	asserts.AssertDescribeOptionGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSnapshotNotFoundFault = { nil }

function asserts.AssertDBSnapshotNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshotNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSnapshotNotFoundFault[k], "DBSnapshotNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshotNotFoundFault
-- <p> <i>DBSnapshotIdentifier</i> does not refer to an existing DB snapshot. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSnapshotNotFoundFault structure as a key-value pair table
function M.DBSnapshotNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBSnapshotNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSnapshotNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterParameterGroupDetails = { ["Marker"] = true, ["Parameters"] = true, nil }

function asserts.AssertDBClusterParameterGroupDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterParameterGroupDetails to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterParameterGroupDetails[k], "DBClusterParameterGroupDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterParameterGroupDetails
-- <p>Provides details about a DB cluster parameter group including the parameters in the DB cluster parameter group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous DescribeDBClusterParameters request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- * Parameters [ParametersList] <p>Provides a list of parameters for the DB cluster parameter group.</p>
-- @return DBClusterParameterGroupDetails structure as a key-value pair table
function M.DBClusterParameterGroupDetails(args)
	assert(args, "You must provide an argument table when creating DBClusterParameterGroupDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertDBClusterParameterGroupDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBSubnetGroupMessage = { ["DBSubnetGroupName"] = true, ["DBSubnetGroupDescription"] = true, ["SubnetIds"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateDBSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSubnetGroupMessage to be of type 'table'")
	assert(struct["DBSubnetGroupName"], "Expected key DBSubnetGroupName to exist in table")
	assert(struct["DBSubnetGroupDescription"], "Expected key DBSubnetGroupDescription to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["DBSubnetGroupDescription"] then asserts.AssertString(struct["DBSubnetGroupDescription"]) end
	if struct["SubnetIds"] then asserts.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBSubnetGroupMessage[k], "CreateDBSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSubnetGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSubnetGroupName [String] <p>The name for the DB subnet group. This value is stored as a lowercase string.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- * DBSubnetGroupDescription [String] <p>The description for the DB subnet group.</p>
-- * SubnetIds [SubnetIdentifierList] <p>The EC2 Subnet IDs for the DB subnet group.</p>
-- * Tags [TagList] 
-- Required key: DBSubnetGroupName
-- Required key: DBSubnetGroupDescription
-- Required key: SubnetIds
-- @return CreateDBSubnetGroupMessage structure as a key-value pair table
function M.CreateDBSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating CreateDBSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["DBSubnetGroupDescription"] = args["DBSubnetGroupDescription"],
		["SubnetIds"] = args["SubnetIds"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateDBSubnetGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSubnetGroupMessage = { ["Marker"] = true, ["DBSubnetGroups"] = true, nil }

function asserts.AssertDBSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBSubnetGroups"] then asserts.AssertDBSubnetGroups(struct["DBSubnetGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSubnetGroupMessage[k], "DBSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBSubnetGroups</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBSubnetGroups [DBSubnetGroups] <p> A list of <a>DBSubnetGroup</a> instances. </p>
-- @return DBSubnetGroupMessage structure as a key-value pair table
function M.DBSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating DBSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBSubnetGroups"] = args["DBSubnetGroups"],
	}
	asserts.AssertDBSubnetGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VpcSecurityGroupMembership = { ["Status"] = true, ["VpcSecurityGroupId"] = true, nil }

function asserts.AssertVpcSecurityGroupMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VpcSecurityGroupMembership to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["VpcSecurityGroupId"] then asserts.AssertString(struct["VpcSecurityGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.VpcSecurityGroupMembership[k], "VpcSecurityGroupMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VpcSecurityGroupMembership
-- <p>This data type is used as a response element for queries on VPC security group membership.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the VPC security group.</p>
-- * VpcSecurityGroupId [String] <p>The name of the VPC security group.</p>
-- @return VpcSecurityGroupMembership structure as a key-value pair table
function M.VpcSecurityGroupMembership(args)
	assert(args, "You must provide an argument table when creating VpcSecurityGroupMembership")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["VpcSecurityGroupId"] = args["VpcSecurityGroupId"],
	}
	asserts.AssertVpcSecurityGroupMembership(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreDBClusterFromSnapshotMessage = { ["Engine"] = true, ["DBClusterIdentifier"] = true, ["Tags"] = true, ["VpcSecurityGroupIds"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["KmsKeyId"] = true, ["DatabaseName"] = true, ["EngineVersion"] = true, ["DBSubnetGroupName"] = true, ["AvailabilityZones"] = true, ["Port"] = true, ["OptionGroupName"] = true, ["SnapshotIdentifier"] = true, nil }

function asserts.AssertRestoreDBClusterFromSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBClusterFromSnapshotMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	assert(struct["SnapshotIdentifier"], "Expected key SnapshotIdentifier to exist in table")
	assert(struct["Engine"], "Expected key Engine to exist in table")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["DatabaseName"] then asserts.AssertString(struct["DatabaseName"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["SnapshotIdentifier"] then asserts.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBClusterFromSnapshotMessage[k], "RestoreDBClusterFromSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterFromSnapshotMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p>The database engine to use for the new DB cluster.</p> <p>Default: The same as source</p> <p>Constraint: Must be compatible with the engine of the source</p>
-- * DBClusterIdentifier [String] <p>The name of the DB cluster to create from the DB cluster snapshot. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-snapshot-id</code> </p>
-- * Tags [TagList] <p>The tags to be assigned to the restored DB cluster.</p>
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of VPC security groups that the new DB cluster will belong to.</p>
-- * EnableIAMDatabaseAuthentication [BooleanOptional] <p>A Boolean value that is true to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- * KmsKeyId [String] <p>The KMS key identifier to use when restoring an encrypted DB cluster from a DB cluster snapshot.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p> <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following will occur:</p> <ul> <li> <p>If the DB cluster snapshot is encrypted, then the restored DB cluster is encrypted using the KMS key that was used to encrypt the DB cluster snapshot.</p> </li> <li> <p>If the DB cluster snapshot is not encrypted, then the restored DB cluster is encrypted using the specified encryption key.</p> </li> </ul>
-- * DatabaseName [String] <p>The database name for the restored DB cluster.</p>
-- * EngineVersion [String] <p>The version of the database engine to use for the new DB cluster.</p>
-- * DBSubnetGroupName [String] <p>The name of the DB subnet group to use for the new DB cluster.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- * AvailabilityZones [AvailabilityZones] <p>Provides the list of EC2 Availability Zones that instances in the restored DB cluster can be created in.</p>
-- * Port [IntegerOptional] <p>The port number on which the new DB cluster accepts connections.</p> <p>Constraints: Value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB cluster.</p>
-- * OptionGroupName [String] <p>The name of the option group to use for the restored DB cluster.</p>
-- * SnapshotIdentifier [String] <p>The identifier for the DB cluster snapshot to restore from.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required key: DBClusterIdentifier
-- Required key: SnapshotIdentifier
-- Required key: Engine
-- @return RestoreDBClusterFromSnapshotMessage structure as a key-value pair table
function M.RestoreDBClusterFromSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating RestoreDBClusterFromSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["Tags"] = args["Tags"],
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["EnableIAMDatabaseAuthentication"] = args["EnableIAMDatabaseAuthentication"],
		["KmsKeyId"] = args["KmsKeyId"],
		["DatabaseName"] = args["DatabaseName"],
		["EngineVersion"] = args["EngineVersion"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["Port"] = args["Port"],
		["OptionGroupName"] = args["OptionGroupName"],
		["SnapshotIdentifier"] = args["SnapshotIdentifier"],
	}
	asserts.AssertRestoreDBClusterFromSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RevokeDBSecurityGroupIngressMessage = { ["EC2SecurityGroupName"] = true, ["EC2SecurityGroupOwnerId"] = true, ["CIDRIP"] = true, ["EC2SecurityGroupId"] = true, ["DBSecurityGroupName"] = true, nil }

function asserts.AssertRevokeDBSecurityGroupIngressMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeDBSecurityGroupIngressMessage to be of type 'table'")
	assert(struct["DBSecurityGroupName"], "Expected key DBSecurityGroupName to exist in table")
	if struct["EC2SecurityGroupName"] then asserts.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then asserts.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	if struct["CIDRIP"] then asserts.AssertString(struct["CIDRIP"]) end
	if struct["EC2SecurityGroupId"] then asserts.AssertString(struct["EC2SecurityGroupId"]) end
	if struct["DBSecurityGroupName"] then asserts.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevokeDBSecurityGroupIngressMessage[k], "RevokeDBSecurityGroupIngressMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeDBSecurityGroupIngressMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EC2SecurityGroupName [String] <p> The name of the EC2 security group to revoke access from. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- * EC2SecurityGroupOwnerId [String] <p> The AWS Account Number of the owner of the EC2 security group specified in the <code>EC2SecurityGroupName</code> parameter. The AWS Access Key ID is not an acceptable value. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- * CIDRIP [String] <p> The IP range to revoke access from. Must be a valid CIDR range. If <code>CIDRIP</code> is specified, <code>EC2SecurityGroupName</code>, <code>EC2SecurityGroupId</code> and <code>EC2SecurityGroupOwnerId</code> cannot be provided. </p>
-- * EC2SecurityGroupId [String] <p> The id of the EC2 security group to revoke access from. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- * DBSecurityGroupName [String] <p>The name of the DB security group to revoke ingress from.</p>
-- Required key: DBSecurityGroupName
-- @return RevokeDBSecurityGroupIngressMessage structure as a key-value pair table
function M.RevokeDBSecurityGroupIngressMessage(args)
	assert(args, "You must provide an argument table when creating RevokeDBSecurityGroupIngressMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EC2SecurityGroupName"] = args["EC2SecurityGroupName"],
		["EC2SecurityGroupOwnerId"] = args["EC2SecurityGroupOwnerId"],
		["CIDRIP"] = args["CIDRIP"],
		["EC2SecurityGroupId"] = args["EC2SecurityGroupId"],
		["DBSecurityGroupName"] = args["DBSecurityGroupName"],
	}
	asserts.AssertRevokeDBSecurityGroupIngressMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceQuotaExceededFault = { nil }

function asserts.AssertInstanceQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InstanceQuotaExceededFault[k], "InstanceQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceQuotaExceededFault
-- <p>Request would result in user exceeding the allowed number of DB instances.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InstanceQuotaExceededFault structure as a key-value pair table
function M.InstanceQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating InstanceQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInstanceQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventSubscriptionsMessage = { ["Marker"] = true, ["EventSubscriptionsList"] = true, nil }

function asserts.AssertEventSubscriptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSubscriptionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["EventSubscriptionsList"] then asserts.AssertEventSubscriptionsList(struct["EventSubscriptionsList"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventSubscriptionsMessage[k], "EventSubscriptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSubscriptionsMessage
-- <p>Data returned by the <b>DescribeEventSubscriptions</b> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * EventSubscriptionsList [EventSubscriptionsList] <p>A list of EventSubscriptions data types.</p>
-- @return EventSubscriptionsMessage structure as a key-value pair table
function M.EventSubscriptionsMessage(args)
	assert(args, "You must provide an argument table when creating EventSubscriptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["EventSubscriptionsList"] = args["EventSubscriptionsList"],
	}
	asserts.AssertEventSubscriptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservedDBInstancesOfferingNotFoundFault = { nil }

function asserts.AssertReservedDBInstancesOfferingNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstancesOfferingNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ReservedDBInstancesOfferingNotFoundFault[k], "ReservedDBInstancesOfferingNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstancesOfferingNotFoundFault
-- <p>Specified offering does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ReservedDBInstancesOfferingNotFoundFault structure as a key-value pair table
function M.ReservedDBInstancesOfferingNotFoundFault(args)
	assert(args, "You must provide an argument table when creating ReservedDBInstancesOfferingNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertReservedDBInstancesOfferingNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KMSKeyNotAccessibleFault = { nil }

function asserts.AssertKMSKeyNotAccessibleFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSKeyNotAccessibleFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.KMSKeyNotAccessibleFault[k], "KMSKeyNotAccessibleFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSKeyNotAccessibleFault
-- <p>Error accessing KMS key.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return KMSKeyNotAccessibleFault structure as a key-value pair table
function M.KMSKeyNotAccessibleFault(args)
	assert(args, "You must provide an argument table when creating KMSKeyNotAccessibleFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertKMSKeyNotAccessibleFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSecurityGroupNotFoundFault = { nil }

function asserts.AssertDBSecurityGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSecurityGroupNotFoundFault[k], "DBSecurityGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupNotFoundFault
-- <p> <i>DBSecurityGroupName</i> does not refer to an existing DB security group. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSecurityGroupNotFoundFault structure as a key-value pair table
function M.DBSecurityGroupNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBSecurityGroupNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSecurityGroupNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBClusterMessage = { ["DBClusterParameterGroupName"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["DBClusterIdentifier"] = true, ["PreferredMaintenanceWindow"] = true, ["NewDBClusterIdentifier"] = true, ["VpcSecurityGroupIds"] = true, ["ApplyImmediately"] = true, ["PreferredBackupWindow"] = true, ["MasterUserPassword"] = true, ["BackupRetentionPeriod"] = true, ["Port"] = true, ["OptionGroupName"] = true, nil }

function asserts.AssertModifyDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["NewDBClusterIdentifier"] then asserts.AssertString(struct["NewDBClusterIdentifier"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["ApplyImmediately"] then asserts.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["PreferredBackupWindow"] then asserts.AssertString(struct["PreferredBackupWindow"]) end
	if struct["MasterUserPassword"] then asserts.AssertString(struct["MasterUserPassword"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBClusterMessage[k], "ModifyDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBClusterMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group to use for the DB cluster.</p>
-- * EnableIAMDatabaseAuthentication [BooleanOptional] <p>A Boolean value that is true to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- * DBClusterIdentifier [String] <p>The DB cluster identifier for the cluster being modified. This parameter is not case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier for an existing DB cluster.</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- * PreferredMaintenanceWindow [String] <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- * NewDBClusterIdentifier [String] <p>The new DB cluster identifier for the DB cluster when renaming a DB cluster. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-cluster2</code> </p>
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of VPC security groups that the DB cluster will belong to.</p>
-- * ApplyImmediately [Boolean] <p>A value that specifies whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the <code>PreferredMaintenanceWindow</code> setting for the DB cluster. If this parameter is set to <code>false</code>, changes to the DB cluster are applied during the next maintenance window.</p> <p>The <code>ApplyImmediately</code> parameter only affects the <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values. If you set the <code>ApplyImmediately</code> parameter value to false, then changes to the <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values are applied during the next maintenance window. All other changes are applied immediately, regardless of the value of the <code>ApplyImmediately</code> parameter.</p> <p>Default: <code>false</code> </p>
-- * PreferredBackupWindow [String] <p>The daily time range during which automated backups are created if automated backups are enabled, using the <code>BackupRetentionPeriod</code> parameter. </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Times should be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- * MasterUserPassword [String] <p>The new password for the master database user. This password can contain any printable ASCII character except "/", """, or "@".</p> <p>Constraints: Must contain from 8 to 41 characters.</p>
-- * BackupRetentionPeriod [IntegerOptional] <p>The number of days for which automated backups are retained. You must specify a minimum value of 1.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 1 to 35</p> </li> </ul>
-- * Port [IntegerOptional] <p>The port number on which the DB cluster accepts connections.</p> <p>Constraints: Value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB cluster.</p>
-- * OptionGroupName [String] <p>A value that indicates that the DB cluster should be associated with the specified option group. Changing this parameter does not result in an outage except in the following case, and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. If the parameter change results in an option group that enables OEM, this change can cause a brief (sub-second) period during which new connections are rejected but existing connections are not interrupted. </p> <p>Permanent options cannot be removed from an option group. The option group cannot be removed from a DB cluster once it is associated with a DB cluster.</p>
-- Required key: DBClusterIdentifier
-- @return ModifyDBClusterMessage structure as a key-value pair table
function M.ModifyDBClusterMessage(args)
	assert(args, "You must provide an argument table when creating ModifyDBClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
		["EnableIAMDatabaseAuthentication"] = args["EnableIAMDatabaseAuthentication"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["NewDBClusterIdentifier"] = args["NewDBClusterIdentifier"],
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["ApplyImmediately"] = args["ApplyImmediately"],
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["MasterUserPassword"] = args["MasterUserPassword"],
		["BackupRetentionPeriod"] = args["BackupRetentionPeriod"],
		["Port"] = args["Port"],
		["OptionGroupName"] = args["OptionGroupName"],
	}
	asserts.AssertModifyDBClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBClusterSnapshotAttributeResult = { ["DBClusterSnapshotAttributesResult"] = true, nil }

function asserts.AssertModifyDBClusterSnapshotAttributeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBClusterSnapshotAttributeResult to be of type 'table'")
	if struct["DBClusterSnapshotAttributesResult"] then asserts.AssertDBClusterSnapshotAttributesResult(struct["DBClusterSnapshotAttributesResult"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBClusterSnapshotAttributeResult[k], "ModifyDBClusterSnapshotAttributeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBClusterSnapshotAttributeResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshotAttributesResult [DBClusterSnapshotAttributesResult] 
-- @return ModifyDBClusterSnapshotAttributeResult structure as a key-value pair table
function M.ModifyDBClusterSnapshotAttributeResult(args)
	assert(args, "You must provide an argument table when creating ModifyDBClusterSnapshotAttributeResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshotAttributesResult"] = args["DBClusterSnapshotAttributesResult"],
	}
	asserts.AssertModifyDBClusterSnapshotAttributeResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplyPendingMaintenanceActionMessage = { ["ApplyAction"] = true, ["OptInType"] = true, ["ResourceIdentifier"] = true, nil }

function asserts.AssertApplyPendingMaintenanceActionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplyPendingMaintenanceActionMessage to be of type 'table'")
	assert(struct["ResourceIdentifier"], "Expected key ResourceIdentifier to exist in table")
	assert(struct["ApplyAction"], "Expected key ApplyAction to exist in table")
	assert(struct["OptInType"], "Expected key OptInType to exist in table")
	if struct["ApplyAction"] then asserts.AssertString(struct["ApplyAction"]) end
	if struct["OptInType"] then asserts.AssertString(struct["OptInType"]) end
	if struct["ResourceIdentifier"] then asserts.AssertString(struct["ResourceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplyPendingMaintenanceActionMessage[k], "ApplyPendingMaintenanceActionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplyPendingMaintenanceActionMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplyAction [String] <p>The pending maintenance action to apply to this resource.</p> <p>Valid values: <code>system-update</code>, <code>db-upgrade</code> </p>
-- * OptInType [String] <p>A value that specifies the type of opt-in request, or undoes an opt-in request. An opt-in request of type <code>immediate</code> cannot be undone.</p> <p>Valid values:</p> <ul> <li> <p> <code>immediate</code> - Apply the maintenance action immediately.</p> </li> <li> <p> <code>next-maintenance</code> - Apply the maintenance action during the next maintenance window for the resource.</p> </li> <li> <p> <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code> opt-in requests.</p> </li> </ul>
-- * ResourceIdentifier [String] <p>The RDS Amazon Resource Name (ARN) of the resource that the pending maintenance action applies to. For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>.</p>
-- Required key: ResourceIdentifier
-- Required key: ApplyAction
-- Required key: OptInType
-- @return ApplyPendingMaintenanceActionMessage structure as a key-value pair table
function M.ApplyPendingMaintenanceActionMessage(args)
	assert(args, "You must provide an argument table when creating ApplyPendingMaintenanceActionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplyAction"] = args["ApplyAction"],
		["OptInType"] = args["OptInType"],
		["ResourceIdentifier"] = args["ResourceIdentifier"],
	}
	asserts.AssertApplyPendingMaintenanceActionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AuthorizationNotFoundFault = { nil }

function asserts.AssertAuthorizationNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizationNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AuthorizationNotFoundFault[k], "AuthorizationNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizationNotFoundFault
-- <p>Specified CIDRIP or EC2 security group is not authorized for the specified DB security group.</p> <p>RDS may not also be authorized via IAM to perform necessary actions on your behalf.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AuthorizationNotFoundFault structure as a key-value pair table
function M.AuthorizationNotFoundFault(args)
	assert(args, "You must provide an argument table when creating AuthorizationNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAuthorizationNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBParameterGroupMessage = { ["DBParameterGroupName"] = true, ["DBParameterGroupFamily"] = true, ["Description"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateDBParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBParameterGroupMessage to be of type 'table'")
	assert(struct["DBParameterGroupName"], "Expected key DBParameterGroupName to exist in table")
	assert(struct["DBParameterGroupFamily"], "Expected key DBParameterGroupFamily to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBParameterGroupMessage[k], "CreateDBParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupName [String] <p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <note> <p>This value is stored as a lowercase string.</p> </note>
-- * DBParameterGroupFamily [String] <p>The DB parameter group family name. A DB parameter group can be associated with one and only one DB parameter group family, and can be applied only to a DB instance running a database engine and engine version compatible with that DB parameter group family.</p>
-- * Description [String] <p>The description for the DB parameter group.</p>
-- * Tags [TagList] 
-- Required key: DBParameterGroupName
-- Required key: DBParameterGroupFamily
-- Required key: Description
-- @return CreateDBParameterGroupMessage structure as a key-value pair table
function M.CreateDBParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating CreateDBParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["Description"] = args["Description"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateDBParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PendingModifiedValues = { ["MultiAZ"] = true, ["StorageType"] = true, ["CACertificateIdentifier"] = true, ["LicenseModel"] = true, ["MasterUserPassword"] = true, ["Port"] = true, ["Iops"] = true, ["AllocatedStorage"] = true, ["EngineVersion"] = true, ["DBInstanceClass"] = true, ["DBSubnetGroupName"] = true, ["BackupRetentionPeriod"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertPendingModifiedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingModifiedValues to be of type 'table'")
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["CACertificateIdentifier"] then asserts.AssertString(struct["CACertificateIdentifier"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["MasterUserPassword"] then asserts.AssertString(struct["MasterUserPassword"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["Iops"] then asserts.AssertIntegerOptional(struct["Iops"]) end
	if struct["AllocatedStorage"] then asserts.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.PendingModifiedValues[k], "PendingModifiedValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingModifiedValues
-- <p> This data type is used as a response element in the <a>ModifyDBInstance</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MultiAZ [BooleanOptional] <p>Indicates that the Single-AZ DB instance is to change to a Multi-AZ deployment.</p>
-- * StorageType [String] <p>Specifies the storage type to be associated with the DB instance.</p>
-- * CACertificateIdentifier [String] <p>Specifies the identifier of the CA certificate for the DB instance.</p>
-- * LicenseModel [String] <p>The license model for the DB instance.</p> <p>Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- * MasterUserPassword [String] <p>Contains the pending or in-progress change of the master credentials for the DB instance.</p>
-- * Port [IntegerOptional] <p>Specifies the pending port for the DB instance.</p>
-- * Iops [IntegerOptional] <p>Specifies the new Provisioned IOPS value for the DB instance that will be applied or is being applied.</p>
-- * AllocatedStorage [IntegerOptional] <p> Contains the new <code>AllocatedStorage</code> size for the DB instance that will be applied or is in progress. </p>
-- * EngineVersion [String] <p>Indicates the database engine version.</p>
-- * DBInstanceClass [String] <p> Contains the new <code>DBInstanceClass</code> for the DB instance that will be applied or is in progress. </p>
-- * DBSubnetGroupName [String] <p>The new DB subnet group for the DB instance. </p>
-- * BackupRetentionPeriod [IntegerOptional] <p>Specifies the pending number of days for which automated backups are retained.</p>
-- * DBInstanceIdentifier [String] <p> Contains the new <code>DBInstanceIdentifier</code> for the DB instance that will be applied or is in progress. </p>
-- @return PendingModifiedValues structure as a key-value pair table
function M.PendingModifiedValues(args)
	assert(args, "You must provide an argument table when creating PendingModifiedValues")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MultiAZ"] = args["MultiAZ"],
		["StorageType"] = args["StorageType"],
		["CACertificateIdentifier"] = args["CACertificateIdentifier"],
		["LicenseModel"] = args["LicenseModel"],
		["MasterUserPassword"] = args["MasterUserPassword"],
		["Port"] = args["Port"],
		["Iops"] = args["Iops"],
		["AllocatedStorage"] = args["AllocatedStorage"],
		["EngineVersion"] = args["EngineVersion"],
		["DBInstanceClass"] = args["DBInstanceClass"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["BackupRetentionPeriod"] = args["BackupRetentionPeriod"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertPendingModifiedValues(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBParameterGroupsMessage = { ["Marker"] = true, ["DBParameterGroupName"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeDBParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBParameterGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBParameterGroupsMessage[k], "DescribeDBParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBParameterGroupsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBParameterGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBParameterGroupName [String] <p>The name of a specific DB parameter group to return details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @return DescribeDBParameterGroupsMessage structure as a key-value pair table
function M.DescribeDBParameterGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBParameterGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeDBParameterGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBInstanceMessage = { ["DBParameterGroupName"] = true, ["PubliclyAccessible"] = true, ["DomainIAMRoleName"] = true, ["MasterUsername"] = true, ["MonitoringInterval"] = true, ["LicenseModel"] = true, ["VpcSecurityGroupIds"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["CopyTagsToSnapshot"] = true, ["Engine"] = true, ["MultiAZ"] = true, ["DBSecurityGroups"] = true, ["Tags"] = true, ["AutoMinorVersionUpgrade"] = true, ["PreferredBackupWindow"] = true, ["PromotionTier"] = true, ["TdeCredentialArn"] = true, ["AllocatedStorage"] = true, ["DBSubnetGroupName"] = true, ["DBName"] = true, ["PreferredMaintenanceWindow"] = true, ["TdeCredentialPassword"] = true, ["Domain"] = true, ["EngineVersion"] = true, ["BackupRetentionPeriod"] = true, ["OptionGroupName"] = true, ["CharacterSetName"] = true, ["AvailabilityZone"] = true, ["MonitoringRoleArn"] = true, ["DBClusterIdentifier"] = true, ["StorageType"] = true, ["MasterUserPassword"] = true, ["Iops"] = true, ["StorageEncrypted"] = true, ["KmsKeyId"] = true, ["Timezone"] = true, ["DBInstanceClass"] = true, ["Port"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertCreateDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	assert(struct["DBInstanceClass"], "Expected key DBInstanceClass to exist in table")
	assert(struct["Engine"], "Expected key Engine to exist in table")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["PubliclyAccessible"] then asserts.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["DomainIAMRoleName"] then asserts.AssertString(struct["DomainIAMRoleName"]) end
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["MonitoringInterval"] then asserts.AssertIntegerOptional(struct["MonitoringInterval"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["CopyTagsToSnapshot"] then asserts.AssertBooleanOptional(struct["CopyTagsToSnapshot"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["DBSecurityGroups"] then asserts.AssertDBSecurityGroupNameList(struct["DBSecurityGroups"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["PreferredBackupWindow"] then asserts.AssertString(struct["PreferredBackupWindow"]) end
	if struct["PromotionTier"] then asserts.AssertIntegerOptional(struct["PromotionTier"]) end
	if struct["TdeCredentialArn"] then asserts.AssertString(struct["TdeCredentialArn"]) end
	if struct["AllocatedStorage"] then asserts.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["DBName"] then asserts.AssertString(struct["DBName"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["TdeCredentialPassword"] then asserts.AssertString(struct["TdeCredentialPassword"]) end
	if struct["Domain"] then asserts.AssertString(struct["Domain"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["CharacterSetName"] then asserts.AssertString(struct["CharacterSetName"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["MonitoringRoleArn"] then asserts.AssertString(struct["MonitoringRoleArn"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["MasterUserPassword"] then asserts.AssertString(struct["MasterUserPassword"]) end
	if struct["Iops"] then asserts.AssertIntegerOptional(struct["Iops"]) end
	if struct["StorageEncrypted"] then asserts.AssertBooleanOptional(struct["StorageEncrypted"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["Timezone"] then asserts.AssertString(struct["Timezone"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBInstanceMessage[k], "CreateDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBInstanceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupName [String] <p>The name of the DB parameter group to associate with this DB instance. If this argument is omitted, the default DBParameterGroup for the specified engine will be used.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * PubliclyAccessible [BooleanOptional] <p>Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.</p> <p>Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.</p> <ul> <li> <p> <b>Default VPC:</b> true</p> </li> <li> <p> <b>VPC:</b> false</p> </li> </ul> <p>If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be private.</p>
-- * DomainIAMRoleName [String] <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
-- * MasterUsername [String] <p>The name for the master database user.</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. You specify the name for the master database user when you create your DB cluster. </p> <p> <b>MariaDB</b> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 16 alphanumeric characters.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul> <p> <b>Microsoft SQL Server</b> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 128 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul> <p> <b>MySQL</b> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 16 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul> <p> <b>Oracle</b> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 30 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul> <p> <b>PostgreSQL</b> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 63 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul>
-- * MonitoringInterval [IntegerOptional] <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p> <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code> to a value other than 0.</p> <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code> </p>
-- * LicenseModel [String] <p>License model information for this DB instance.</p> <p> Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of EC2 VPC security groups to associate with this DB instance.</p> <p>Default: The default EC2 VPC security group for the DB subnet group's VPC.</p>
-- * EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts; otherwise false. </p> <p> You can enable IAM database authentication for the following database engines:</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> </ul> <p>Default: <code>false</code> </p>
-- * CopyTagsToSnapshot [BooleanOptional] <p>True to copy all tags from the DB instance to snapshots of the DB instance; otherwise false. The default is false.</p>
-- * Engine [String] <p>The name of the database engine to be used for this instance. </p> <p>Not every database engine is available for every AWS region. </p> <p>Valid Values: </p> <ul> <li> <p> <code>aurora</code> </p> </li> <li> <p> <code>mariadb</code> </p> </li> <li> <p> <code>mysql</code> </p> </li> <li> <p> <code>oracle-ee</code> </p> </li> <li> <p> <code>oracle-se2</code> </p> </li> <li> <p> <code>oracle-se1</code> </p> </li> <li> <p> <code>oracle-se</code> </p> </li> <li> <p> <code>postgres</code> </p> </li> <li> <p> <code>sqlserver-ee</code> </p> </li> <li> <p> <code>sqlserver-se</code> </p> </li> <li> <p> <code>sqlserver-ex</code> </p> </li> <li> <p> <code>sqlserver-web</code> </p> </li> </ul>
-- * MultiAZ [BooleanOptional] <p>Specifies if the DB instance is a Multi-AZ deployment. You cannot set the AvailabilityZone parameter if the MultiAZ parameter is set to true.</p>
-- * DBSecurityGroups [DBSecurityGroupNameList] <p>A list of DB security groups to associate with this DB instance.</p> <p>Default: The default DB security group for the database engine.</p>
-- * Tags [TagList] 
-- * AutoMinorVersionUpgrade [BooleanOptional] <p>Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window.</p> <p>Default: <code>true</code> </p>
-- * PreferredBackupWindow [String] <p> The daily time range during which automated backups are created if automated backups are enabled, using the <code>BackupRetentionPeriod</code> parameter. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.BackingUpAndRestoringAmazonRDSInstances.html">DB Instance Backups</a>. </p> <p> Default: A 30-minute window selected at random from an 8-hour block of time per region. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow"> Adjusting the Preferred DB Instance Maintenance Window</a>. </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Times should be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- * PromotionTier [IntegerOptional] <p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance"> Fault Tolerance for an Aurora DB Cluster</a>. </p> <p>Default: 1</p> <p>Valid Values: 0 - 15</p>
-- * TdeCredentialArn [String] <p>The ARN from the Key Store with which to associate the instance for TDE encryption.</p>
-- * AllocatedStorage [IntegerOptional] <p>The amount of storage (in gigabytes) to be initially allocated for the database instance.</p> <p>Type: Integer</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. Aurora cluster volumes automatically grow as the amount of data in your database increases, though you are only charged for the space that you use in an Aurora cluster volume.</p> <p> <b>MySQL</b> </p> <p>Constraints: Must be an integer from 5 to 6144.</p> <p> <b>MariaDB</b> </p> <p>Constraints: Must be an integer from 5 to 6144.</p> <p> <b>PostgreSQL</b> </p> <p>Constraints: Must be an integer from 5 to 6144.</p> <p> <b>Oracle</b> </p> <p>Constraints: Must be an integer from 10 to 6144.</p> <p> <b>SQL Server</b> </p> <p>Constraints: Must be an integer from 200 to 4096 (Standard Edition and Enterprise Edition) or from 20 to 4096 (Express Edition and Web Edition)</p>
-- * DBSubnetGroupName [String] <p>A DB subnet group to associate with this DB instance.</p> <p>If there is no DB subnet group, then it is a non-VPC DB instance.</p>
-- * DBName [String] <p>The meaning of this parameter differs according to the database engine you use.</p> <p>Type: String</p> <p> <b>MySQL</b> </p> <p>The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 64 alphanumeric characters</p> </li> <li> <p>Cannot be a word reserved by the specified database engine</p> </li> </ul> <p> <b>MariaDB</b> </p> <p>The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 64 alphanumeric characters</p> </li> <li> <p>Cannot be a word reserved by the specified database engine</p> </li> </ul> <p> <b>PostgreSQL</b> </p> <p>The name of the database to create when the DB instance is created. If this parameter is not specified, the default "postgres" database is created in the DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 63 alphanumeric characters</p> </li> <li> <p>Must begin with a letter or an underscore. Subsequent characters can be letters, underscores, or digits (0-9).</p> </li> <li> <p>Cannot be a word reserved by the specified database engine</p> </li> </ul> <p> <b>Oracle</b> </p> <p>The Oracle System ID (SID) of the created DB instance. If you specify <code>null</code>, the default value <code>ORCL</code> is used. You can't specify the string NULL, or any other reserved word, for <code>DBName</code>. </p> <p>Default: <code>ORCL</code> </p> <p>Constraints:</p> <ul> <li> <p>Cannot be longer than 8 characters</p> </li> </ul> <p> <b>SQL Server</b> </p> <p>Not applicable. Must be null.</p> <p> <b>Amazon Aurora</b> </p> <p>The name of the database to create when the primary instance of the DB cluster is created. If this parameter is not specified, no database is created in the DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 64 alphanumeric characters</p> </li> <li> <p>Cannot be a word reserved by the specified database engine</p> </li> </ul>
-- * PreferredMaintenanceWindow [String] <p> The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC). For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBMaintenance.html">DB Instance Maintenance</a>. </p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p> Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- * TdeCredentialPassword [String] <p>The password for the given ARN from the Key Store in order to access the device.</p>
-- * Domain [String] <p>Specify the Active Directory Domain to create the instance in.</p>
-- * EngineVersion [String] <p>The version number of the database engine to use.</p> <p>The following are the database engines and major and minor versions that are available with Amazon RDS. Not every database engine is available for every AWS region.</p> <p> <b>Amazon Aurora</b> </p> <ul> <li> <p>Version 5.6 (available in these AWS regions: ap-northeast-1, ap-northeast-2, ap-south-1, ap-southeast-2, eu-west-1, us-east-1, us-east-2, us-west-2): <code> 5.6.10a</code> </p> </li> </ul> <p> <b>MariaDB</b> </p> <ul> <li> <p> <code>10.1.19</code> (supported in all AWS regions)</p> </li> <li> <p> <code>10.1.14</code> (supported in all regions except us-east-2)</p> </li> </ul> <p/> <ul> <li> <p> <code>10.0.28</code> (supported in all AWS regions)</p> </li> <li> <p> <code>10.0.24</code> (supported in all AWS regions)</p> </li> <li> <p> <code>10.0.17</code> (supported in all regions except us-east-2, ca-central-1, eu-west-2)</p> </li> </ul> <p> <b>Microsoft SQL Server 2016</b> </p> <ul> <li> <p> <code>13.00.4422.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> <li> <p> <code>13.00.2164.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> </ul> <p> <b>Microsoft SQL Server 2014</b> </p> <ul> <li> <p> <code>12.00.5546.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> <li> <p> <code>12.00.5000.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> <li> <p> <code>12.00.4422.0.v1</code> (supported for all editions except Enterprise Edition, and all AWS regions except ca-central-1 and eu-west-2)</p> </li> </ul> <p> <b>Microsoft SQL Server 2012</b> </p> <ul> <li> <p> <code>11.00.6594.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> <li> <p> <code>11.00.6020.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> <li> <p> <code>11.00.5058.0.v1</code> (supported for all editions, and all AWS regions except us-east-2, ca-central-1, and eu-west-2)</p> </li> <li> <p> <code>11.00.2100.60.v1</code> (supported for all editions, and all AWS regions except us-east-2, ca-central-1, and eu-west-2)</p> </li> </ul> <p> <b>Microsoft SQL Server 2008 R2</b> </p> <ul> <li> <p> <code>10.50.6529.0.v1</code> (supported for all editions, and all AWS regions except us-east-2, ca-central-1, and eu-west-2)</p> </li> <li> <p> <code>10.50.6000.34.v1</code> (supported for all editions, and all AWS regions except us-east-2, ca-central-1, and eu-west-2)</p> </li> <li> <p> <code>10.50.2789.0.v1</code> (supported for all editions, and all AWS regions except us-east-2, ca-central-1, and eu-west-2)</p> </li> </ul> <p> <b>MySQL</b> </p> <ul> <li> <p> <code>5.7.17</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.7.16</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.7.11</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.7.10</code> (supported in all regions except us-east-2, ca-central-1, eu-west-2)</p> </li> </ul> <p/> <ul> <li> <p> <code>5.6.35</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.6.34</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.6.29</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.6.27</code> (supported in all regions except us-east-2, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.23</code> (supported in all regions except us-east-2, ap-south-1, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.22</code> (supported in all regions except us-east-2, ap-south-1, ap-northeast-2, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.21b</code> (supported in all regions except us-east-2, ap-south-1, ap-northeast-2, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.21</code> (supported in all regions except us-east-2, ap-south-1, ap-northeast-2, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.19b</code> (supported in all regions except us-east-2, ap-south-1, ap-northeast-2, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.19a</code> (supported in all regions except us-east-2, ap-south-1, ap-northeast-2, ca-central-1, eu-west-2)</p> </li> </ul> <p/> <ul> <li> <p> <code>5.5.54</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.5.53</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.5.46</code> (supported in all AWS regions)</p> </li> </ul> <p> <b>Oracle 12c</b> </p> <ul> <li> <p> <code>12.1.0.2.v8</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v7</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v6</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v5</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v4</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v3</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v2</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v1</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> </ul> <p> <b>Oracle 11g</b> </p> <ul> <li> <p> <code>11.2.0.4.v12</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v11</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v10</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v9</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v8</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v7</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v6</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v5</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v4</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v3</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v1</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> </ul> <p> <b>PostgreSQL</b> </p> <ul> <li> <p> <b>Version 9.6.x:</b> <code> 9.6.1 | 9.6.2</code> </p> </li> <li> <p> <b>Version 9.5.x:</b> <code>9.5.6 | 9.5.4 | 9.5.2</code> </p> </li> <li> <p> <b>Version 9.4.x:</b> <code>9.4.11 | 9.4.9 | 9.4.7</code> </p> </li> <li> <p> <b>Version 9.3.x:</b> <code>9.3.16 | 9.3.14 | 9.3.12</code> </p> </li> </ul>
-- * BackupRetentionPeriod [IntegerOptional] <p>The number of days for which automated backups are retained. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 0 to 35</p> </li> <li> <p>Cannot be set to 0 if the DB instance is a source to Read Replicas</p> </li> </ul>
-- * OptionGroupName [String] <p>Indicates that the DB instance should be associated with the specified option group.</p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, cannot be removed from an option group, and that option group cannot be removed from a DB instance once it is associated with a DB instance</p>
-- * CharacterSetName [String] <p>For supported engines, indicates that the DB instance should be associated with the specified CharacterSet.</p>
-- * AvailabilityZone [String] <p> The EC2 Availability Zone that the database instance will be created in. For information on regions and Availability Zones, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html">Regions and Availability Zones</a>. </p> <p>Default: A random, system-chosen Availability Zone in the endpoint's region.</p> <p> Example: <code>us-east-1d</code> </p> <p> Constraint: The AvailabilityZone parameter cannot be specified if the MultiAZ parameter is set to <code>true</code>. The specified Availability Zone must be in the same region as the current endpoint. </p>
-- * MonitoringRoleArn [String] <p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role, go to <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling">Setting Up and Enabling Enhanced Monitoring</a>.</p> <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>
-- * DBClusterIdentifier [String] <p>The identifier of the DB cluster that the instance will belong to.</p> <p>For information on creating a DB cluster, see <a>CreateDBCluster</a>.</p> <p>Type: String</p>
-- * StorageType [String] <p>Specifies the storage type to be associated with the DB instance.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified; otherwise <code>standard</code> </p>
-- * MasterUserPassword [String] <p>The password for the master database user. Can be any printable ASCII character except "/", """, or "@".</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. You specify the password for the master database user when you create your DB cluster. </p> <p> <b>MariaDB</b> </p> <p>Constraints: Must contain from 8 to 41 characters.</p> <p> <b>Microsoft SQL Server</b> </p> <p>Constraints: Must contain from 8 to 128 characters.</p> <p> <b>MySQL</b> </p> <p>Constraints: Must contain from 8 to 41 characters.</p> <p> <b>Oracle</b> </p> <p>Constraints: Must contain from 8 to 30 characters.</p> <p> <b>PostgreSQL</b> </p> <p>Constraints: Must contain from 8 to 128 characters.</p>
-- * Iops [IntegerOptional] <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.</p> <p>Constraints: Must be a multiple between 3 and 10 of the storage amount for the DB instance. Must also be an integer multiple of 1000. For example, if the size of your DB instance is 500 GB, then your <code>Iops</code> value can be 2000, 3000, 4000, or 5000. </p>
-- * StorageEncrypted [BooleanOptional] <p>Specifies whether the DB instance is encrypted.</p> <p>Default: false</p>
-- * KmsKeyId [String] <p>The KMS key identifier for an encrypted DB instance.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB instance with the same AWS account that owns the KMS encryption key used to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the KM encryption key.</p> <p>If the <code>StorageEncrypted</code> parameter is true, and you do not specify a value for the <code>KmsKeyId</code> parameter, then Amazon RDS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.</p>
-- * Timezone [String] <p>The time zone of the DB instance. The time zone parameter is currently supported only by <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone">Microsoft SQL Server</a>. </p>
-- * DBInstanceClass [String] <p>The compute and memory capacity of the DB instance. Note that not all instance classes are available in all regions for all DB engines.</p> <p> Valid Values: <code>db.t1.micro | db.m1.small | db.m1.medium | db.m1.large | db.m1.xlarge | db.m2.xlarge |db.m2.2xlarge | db.m2.4xlarge | db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge | db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge | db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small | db.t2.medium | db.t2.large</code> </p>
-- * Port [IntegerOptional] <p>The port number on which the database accepts connections.</p> <p> <b>MySQL</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p>Type: Integer</p> <p> <b>MariaDB</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p>Type: Integer</p> <p> <b>PostgreSQL</b> </p> <p> Default: <code>5432</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p>Type: Integer</p> <p> <b>Oracle</b> </p> <p> Default: <code>1521</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p> <b>SQL Server</b> </p> <p> Default: <code>1433</code> </p> <p> Valid Values: <code>1150-65535</code> except for <code>1434</code>, <code>3389</code>, <code>47001</code>, <code>49152</code>, and <code>49152</code> through <code>49156</code>. </p> <p> <b>Amazon Aurora</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p>Type: Integer</p>
-- * DBInstanceIdentifier [String] <p>The DB instance identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens (1 to 15 for SQL Server).</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>mydbinstance</code> </p>
-- Required key: DBInstanceIdentifier
-- Required key: DBInstanceClass
-- Required key: Engine
-- @return CreateDBInstanceMessage structure as a key-value pair table
function M.CreateDBInstanceMessage(args)
	assert(args, "You must provide an argument table when creating CreateDBInstanceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["DomainIAMRoleName"] = args["DomainIAMRoleName"],
		["MasterUsername"] = args["MasterUsername"],
		["MonitoringInterval"] = args["MonitoringInterval"],
		["LicenseModel"] = args["LicenseModel"],
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["EnableIAMDatabaseAuthentication"] = args["EnableIAMDatabaseAuthentication"],
		["CopyTagsToSnapshot"] = args["CopyTagsToSnapshot"],
		["Engine"] = args["Engine"],
		["MultiAZ"] = args["MultiAZ"],
		["DBSecurityGroups"] = args["DBSecurityGroups"],
		["Tags"] = args["Tags"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["PromotionTier"] = args["PromotionTier"],
		["TdeCredentialArn"] = args["TdeCredentialArn"],
		["AllocatedStorage"] = args["AllocatedStorage"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["DBName"] = args["DBName"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["TdeCredentialPassword"] = args["TdeCredentialPassword"],
		["Domain"] = args["Domain"],
		["EngineVersion"] = args["EngineVersion"],
		["BackupRetentionPeriod"] = args["BackupRetentionPeriod"],
		["OptionGroupName"] = args["OptionGroupName"],
		["CharacterSetName"] = args["CharacterSetName"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["MonitoringRoleArn"] = args["MonitoringRoleArn"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["StorageType"] = args["StorageType"],
		["MasterUserPassword"] = args["MasterUserPassword"],
		["Iops"] = args["Iops"],
		["StorageEncrypted"] = args["StorageEncrypted"],
		["KmsKeyId"] = args["KmsKeyId"],
		["Timezone"] = args["Timezone"],
		["DBInstanceClass"] = args["DBInstanceClass"],
		["Port"] = args["Port"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertCreateDBInstanceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CertificateMessage = { ["Certificates"] = true, ["Marker"] = true, nil }

function asserts.AssertCertificateMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateMessage to be of type 'table'")
	if struct["Certificates"] then asserts.AssertCertificateList(struct["Certificates"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.CertificateMessage[k], "CertificateMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateMessage
-- <p>Data returned by the <b>DescribeCertificates</b> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificates [CertificateList] <p>The list of <a>Certificate</a> objects for the AWS account.</p>
-- * Marker [String] <p> An optional pagination token provided by a previous <a>DescribeCertificates</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- @return CertificateMessage structure as a key-value pair table
function M.CertificateMessage(args)
	assert(args, "You must provide an argument table when creating CertificateMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Certificates"] = args["Certificates"],
		["Marker"] = args["Marker"],
	}
	asserts.AssertCertificateMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OptionGroup = { ["VpcId"] = true, ["MajorEngineVersion"] = true, ["OptionGroupDescription"] = true, ["Options"] = true, ["OptionGroupArn"] = true, ["EngineName"] = true, ["AllowsVpcAndNonVpcInstanceMemberships"] = true, ["OptionGroupName"] = true, nil }

function asserts.AssertOptionGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroup to be of type 'table'")
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["MajorEngineVersion"] then asserts.AssertString(struct["MajorEngineVersion"]) end
	if struct["OptionGroupDescription"] then asserts.AssertString(struct["OptionGroupDescription"]) end
	if struct["Options"] then asserts.AssertOptionsList(struct["Options"]) end
	if struct["OptionGroupArn"] then asserts.AssertString(struct["OptionGroupArn"]) end
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["AllowsVpcAndNonVpcInstanceMemberships"] then asserts.AssertBoolean(struct["AllowsVpcAndNonVpcInstanceMemberships"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionGroup[k], "OptionGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroup
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VpcId [String] <p>If <b>AllowsVpcAndNonVpcInstanceMemberships</b> is <code>false</code>, this field is blank. If <b>AllowsVpcAndNonVpcInstanceMemberships</b> is <code>true</code> and this field is blank, then this option group can be applied to both VPC and non-VPC instances. If this field contains a value, then this option group can only be applied to instances that are in the VPC indicated by this field. </p>
-- * MajorEngineVersion [String] <p>Indicates the major engine version associated with this option group.</p>
-- * OptionGroupDescription [String] <p>Provides a description of the option group.</p>
-- * Options [OptionsList] <p>Indicates what options are available in the option group.</p>
-- * OptionGroupArn [String] <p>The Amazon Resource Name (ARN) for the option group.</p>
-- * EngineName [String] <p>Indicates the name of the engine that this option group can be applied to.</p>
-- * AllowsVpcAndNonVpcInstanceMemberships [Boolean] <p>Indicates whether this option group can be applied to both VPC and non-VPC instances. The value <code>true</code> indicates the option group can be applied to both VPC and non-VPC instances. </p>
-- * OptionGroupName [String] <p>Specifies the name of the option group.</p>
-- @return OptionGroup structure as a key-value pair table
function M.OptionGroup(args)
	assert(args, "You must provide an argument table when creating OptionGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VpcId"] = args["VpcId"],
		["MajorEngineVersion"] = args["MajorEngineVersion"],
		["OptionGroupDescription"] = args["OptionGroupDescription"],
		["Options"] = args["Options"],
		["OptionGroupArn"] = args["OptionGroupArn"],
		["EngineName"] = args["EngineName"],
		["AllowsVpcAndNonVpcInstanceMemberships"] = args["AllowsVpcAndNonVpcInstanceMemberships"],
		["OptionGroupName"] = args["OptionGroupName"],
	}
	asserts.AssertOptionGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDBSubnetGroupStateFault = { nil }

function asserts.AssertInvalidDBSubnetGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBSubnetGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBSubnetGroupStateFault[k], "InvalidDBSubnetGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBSubnetGroupStateFault
-- <p>The DB subnet group cannot be deleted because it is in use.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDBSubnetGroupStateFault structure as a key-value pair table
function M.InvalidDBSubnetGroupStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidDBSubnetGroupStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDBSubnetGroupStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AuthorizeDBSecurityGroupIngressResult = { ["DBSecurityGroup"] = true, nil }

function asserts.AssertAuthorizeDBSecurityGroupIngressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeDBSecurityGroupIngressResult to be of type 'table'")
	if struct["DBSecurityGroup"] then asserts.AssertDBSecurityGroup(struct["DBSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthorizeDBSecurityGroupIngressResult[k], "AuthorizeDBSecurityGroupIngressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeDBSecurityGroupIngressResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSecurityGroup [DBSecurityGroup] 
-- @return AuthorizeDBSecurityGroupIngressResult structure as a key-value pair table
function M.AuthorizeDBSecurityGroupIngressResult(args)
	assert(args, "You must provide an argument table when creating AuthorizeDBSecurityGroupIngressResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSecurityGroup"] = args["DBSecurityGroup"],
	}
	asserts.AssertAuthorizeDBSecurityGroupIngressResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisionedIopsNotAvailableInAZFault = { nil }

function asserts.AssertProvisionedIopsNotAvailableInAZFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedIopsNotAvailableInAZFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ProvisionedIopsNotAvailableInAZFault[k], "ProvisionedIopsNotAvailableInAZFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedIopsNotAvailableInAZFault
-- <p>Provisioned IOPS not available in the specified Availability Zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ProvisionedIopsNotAvailableInAZFault structure as a key-value pair table
function M.ProvisionedIopsNotAvailableInAZFault(args)
	assert(args, "You must provide an argument table when creating ProvisionedIopsNotAvailableInAZFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertProvisionedIopsNotAvailableInAZFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEngineDefaultParametersMessage = { ["Marker"] = true, ["DBParameterGroupFamily"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeEngineDefaultParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEngineDefaultParametersMessage to be of type 'table'")
	assert(struct["DBParameterGroupFamily"], "Expected key DBParameterGroupFamily to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEngineDefaultParametersMessage[k], "DescribeEngineDefaultParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEngineDefaultParametersMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeEngineDefaultParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBParameterGroupFamily [String] <p>The name of the DB parameter group family.</p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>Not currently supported.</p>
-- Required key: DBParameterGroupFamily
-- @return DescribeEngineDefaultParametersMessage structure as a key-value pair table
function M.DescribeEngineDefaultParametersMessage(args)
	assert(args, "You must provide an argument table when creating DescribeEngineDefaultParametersMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeEngineDefaultParametersMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDBSecurityGroupStateFault = { nil }

function asserts.AssertInvalidDBSecurityGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBSecurityGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBSecurityGroupStateFault[k], "InvalidDBSecurityGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBSecurityGroupStateFault
-- <p>The state of the DB security group does not allow deletion.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDBSecurityGroupStateFault structure as a key-value pair table
function M.InvalidDBSecurityGroupStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidDBSecurityGroupStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDBSecurityGroupStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OptionGroupAlreadyExistsFault = { nil }

function asserts.AssertOptionGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.OptionGroupAlreadyExistsFault[k], "OptionGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupAlreadyExistsFault
-- <p>The option group you are trying to create already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return OptionGroupAlreadyExistsFault structure as a key-value pair table
function M.OptionGroupAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating OptionGroupAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertOptionGroupAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InsufficientDBClusterCapacityFault = { nil }

function asserts.AssertInsufficientDBClusterCapacityFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientDBClusterCapacityFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InsufficientDBClusterCapacityFault[k], "InsufficientDBClusterCapacityFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientDBClusterCapacityFault
-- <p>The DB cluster does not have enough capacity for the current operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InsufficientDBClusterCapacityFault structure as a key-value pair table
function M.InsufficientDBClusterCapacityFault(args)
	assert(args, "You must provide an argument table when creating InsufficientDBClusterCapacityFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInsufficientDBClusterCapacityFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBLogFilesResponse = { ["DescribeDBLogFiles"] = true, ["Marker"] = true, nil }

function asserts.AssertDescribeDBLogFilesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBLogFilesResponse to be of type 'table'")
	if struct["DescribeDBLogFiles"] then asserts.AssertDescribeDBLogFilesList(struct["DescribeDBLogFiles"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBLogFilesResponse[k], "DescribeDBLogFilesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBLogFilesResponse
-- <p> The response from a call to <a>DescribeDBLogFiles</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DescribeDBLogFiles [DescribeDBLogFilesList] <p>The DB log files returned.</p>
-- * Marker [String] <p>A pagination token that can be used in a subsequent DescribeDBLogFiles request.</p>
-- @return DescribeDBLogFilesResponse structure as a key-value pair table
function M.DescribeDBLogFilesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeDBLogFilesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DescribeDBLogFiles"] = args["DescribeDBLogFiles"],
		["Marker"] = args["Marker"],
	}
	asserts.AssertDescribeDBLogFilesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SharedSnapshotQuotaExceededFault = { nil }

function asserts.AssertSharedSnapshotQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SharedSnapshotQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SharedSnapshotQuotaExceededFault[k], "SharedSnapshotQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SharedSnapshotQuotaExceededFault
-- <p>You have exceeded the maximum number of accounts that you can share a manual DB snapshot with.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SharedSnapshotQuotaExceededFault structure as a key-value pair table
function M.SharedSnapshotQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating SharedSnapshotQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSharedSnapshotQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyOptionGroupResult = { ["OptionGroup"] = true, nil }

function asserts.AssertCopyOptionGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyOptionGroupResult to be of type 'table'")
	if struct["OptionGroup"] then asserts.AssertOptionGroup(struct["OptionGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyOptionGroupResult[k], "CopyOptionGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyOptionGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OptionGroup [OptionGroup] 
-- @return CopyOptionGroupResult structure as a key-value pair table
function M.CopyOptionGroupResult(args)
	assert(args, "You must provide an argument table when creating CopyOptionGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OptionGroup"] = args["OptionGroup"],
	}
	asserts.AssertCopyOptionGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyEventSubscriptionResult = { ["EventSubscription"] = true, nil }

function asserts.AssertModifyEventSubscriptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyEventSubscriptionResult to be of type 'table'")
	if struct["EventSubscription"] then asserts.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyEventSubscriptionResult[k], "ModifyEventSubscriptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyEventSubscriptionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventSubscription [EventSubscription] 
-- @return ModifyEventSubscriptionResult structure as a key-value pair table
function M.ModifyEventSubscriptionResult(args)
	assert(args, "You must provide an argument table when creating ModifyEventSubscriptionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventSubscription"] = args["EventSubscription"],
	}
	asserts.AssertModifyEventSubscriptionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveRoleFromDBClusterMessage = { ["RoleArn"] = true, ["DBClusterIdentifier"] = true, nil }

function asserts.AssertRemoveRoleFromDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveRoleFromDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	if struct["RoleArn"] then asserts.AssertString(struct["RoleArn"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveRoleFromDBClusterMessage[k], "RemoveRoleFromDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveRoleFromDBClusterMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role to disassociate from the Aurora DB cluster, for example <code>arn:aws:iam::123456789012:role/AuroraAccessRole</code>.</p>
-- * DBClusterIdentifier [String] <p>The name of the DB cluster to disassociate the IAM role from.</p>
-- Required key: DBClusterIdentifier
-- Required key: RoleArn
-- @return RemoveRoleFromDBClusterMessage structure as a key-value pair table
function M.RemoveRoleFromDBClusterMessage(args)
	assert(args, "You must provide an argument table when creating RemoveRoleFromDBClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleArn"] = args["RoleArn"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
	}
	asserts.AssertRemoveRoleFromDBClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSecurityGroup = { ["VpcId"] = true, ["DBSecurityGroupDescription"] = true, ["IPRanges"] = true, ["OwnerId"] = true, ["DBSecurityGroupArn"] = true, ["EC2SecurityGroups"] = true, ["DBSecurityGroupName"] = true, nil }

function asserts.AssertDBSecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroup to be of type 'table'")
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["DBSecurityGroupDescription"] then asserts.AssertString(struct["DBSecurityGroupDescription"]) end
	if struct["IPRanges"] then asserts.AssertIPRangeList(struct["IPRanges"]) end
	if struct["OwnerId"] then asserts.AssertString(struct["OwnerId"]) end
	if struct["DBSecurityGroupArn"] then asserts.AssertString(struct["DBSecurityGroupArn"]) end
	if struct["EC2SecurityGroups"] then asserts.AssertEC2SecurityGroupList(struct["EC2SecurityGroups"]) end
	if struct["DBSecurityGroupName"] then asserts.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSecurityGroup[k], "DBSecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroup
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>DescribeDBSecurityGroups</a> </p> </li> <li> <p> <a>AuthorizeDBSecurityGroupIngress</a> </p> </li> <li> <p> <a>CreateDBSecurityGroup</a> </p> </li> <li> <p> <a>RevokeDBSecurityGroupIngress</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBSecurityGroups</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VpcId [String] <p>Provides the VpcId of the DB security group.</p>
-- * DBSecurityGroupDescription [String] <p>Provides the description of the DB security group.</p>
-- * IPRanges [IPRangeList] <p> Contains a list of <a>IPRange</a> elements. </p>
-- * OwnerId [String] <p>Provides the AWS ID of the owner of a specific DB security group.</p>
-- * DBSecurityGroupArn [String] <p>The Amazon Resource Name (ARN) for the DB security group.</p>
-- * EC2SecurityGroups [EC2SecurityGroupList] <p> Contains a list of <a>EC2SecurityGroup</a> elements. </p>
-- * DBSecurityGroupName [String] <p>Specifies the name of the DB security group.</p>
-- @return DBSecurityGroup structure as a key-value pair table
function M.DBSecurityGroup(args)
	assert(args, "You must provide an argument table when creating DBSecurityGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VpcId"] = args["VpcId"],
		["DBSecurityGroupDescription"] = args["DBSecurityGroupDescription"],
		["IPRanges"] = args["IPRanges"],
		["OwnerId"] = args["OwnerId"],
		["DBSecurityGroupArn"] = args["DBSecurityGroupArn"],
		["EC2SecurityGroups"] = args["EC2SecurityGroups"],
		["DBSecurityGroupName"] = args["DBSecurityGroupName"],
	}
	asserts.AssertDBSecurityGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EC2SecurityGroup = { ["Status"] = true, ["EC2SecurityGroupName"] = true, ["EC2SecurityGroupOwnerId"] = true, ["EC2SecurityGroupId"] = true, nil }

function asserts.AssertEC2SecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2SecurityGroup to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["EC2SecurityGroupName"] then asserts.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then asserts.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	if struct["EC2SecurityGroupId"] then asserts.AssertString(struct["EC2SecurityGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.EC2SecurityGroup[k], "EC2SecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2SecurityGroup
-- <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>AuthorizeDBSecurityGroupIngress</a> </p> </li> <li> <p> <a>DescribeDBSecurityGroups</a> </p> </li> <li> <p> <a>RevokeDBSecurityGroupIngress</a> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>Provides the status of the EC2 security group. Status can be "authorizing", "authorized", "revoking", and "revoked".</p>
-- * EC2SecurityGroupName [String] <p>Specifies the name of the EC2 security group.</p>
-- * EC2SecurityGroupOwnerId [String] <p> Specifies the AWS ID of the owner of the EC2 security group specified in the <code>EC2SecurityGroupName</code> field. </p>
-- * EC2SecurityGroupId [String] <p>Specifies the id of the EC2 security group.</p>
-- @return EC2SecurityGroup structure as a key-value pair table
function M.EC2SecurityGroup(args)
	assert(args, "You must provide an argument table when creating EC2SecurityGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["EC2SecurityGroupName"] = args["EC2SecurityGroupName"],
		["EC2SecurityGroupOwnerId"] = args["EC2SecurityGroupOwnerId"],
		["EC2SecurityGroupId"] = args["EC2SecurityGroupId"],
	}
	asserts.AssertEC2SecurityGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeOptionGroupOptionsMessage = { ["Marker"] = true, ["EngineName"] = true, ["MaxRecords"] = true, ["MajorEngineVersion"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeOptionGroupOptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOptionGroupOptionsMessage to be of type 'table'")
	assert(struct["EngineName"], "Expected key EngineName to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["MajorEngineVersion"] then asserts.AssertString(struct["MajorEngineVersion"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOptionGroupOptionsMessage[k], "DescribeOptionGroupOptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOptionGroupOptionsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- * EngineName [String] <p>A required parameter. Options available for the given engine name will be described.</p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * MajorEngineVersion [String] <p>If specified, filters the results to include only options for the specified major engine version.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- Required key: EngineName
-- @return DescribeOptionGroupOptionsMessage structure as a key-value pair table
function M.DescribeOptionGroupOptionsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeOptionGroupOptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["EngineName"] = args["EngineName"],
		["MaxRecords"] = args["MaxRecords"],
		["MajorEngineVersion"] = args["MajorEngineVersion"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeOptionGroupOptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AuthorizationAlreadyExistsFault = { nil }

function asserts.AssertAuthorizationAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizationAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AuthorizationAlreadyExistsFault[k], "AuthorizationAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizationAlreadyExistsFault
-- <p>The specified CIDRIP or EC2 security group is already authorized for the specified DB security group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AuthorizationAlreadyExistsFault structure as a key-value pair table
function M.AuthorizationAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating AuthorizationAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAuthorizationAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBParameterGroupsMessage = { ["Marker"] = true, ["DBParameterGroups"] = true, nil }

function asserts.AssertDBParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBParameterGroups"] then asserts.AssertDBParameterGroupList(struct["DBParameterGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBParameterGroupsMessage[k], "DBParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupsMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBParameterGroups</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBParameterGroups [DBParameterGroupList] <p> A list of <a>DBParameterGroup</a> instances. </p>
-- @return DBParameterGroupsMessage structure as a key-value pair table
function M.DBParameterGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DBParameterGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBParameterGroups"] = args["DBParameterGroups"],
	}
	asserts.AssertDBParameterGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OptionGroupNotFoundFault = { nil }

function asserts.AssertOptionGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.OptionGroupNotFoundFault[k], "OptionGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupNotFoundFault
-- <p>The specified option group could not be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return OptionGroupNotFoundFault structure as a key-value pair table
function M.OptionGroupNotFoundFault(args)
	assert(args, "You must provide an argument table when creating OptionGroupNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertOptionGroupNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSnapshot = { ["MasterUsername"] = true, ["LicenseModel"] = true, ["InstanceCreateTime"] = true, ["Engine"] = true, ["VpcId"] = true, ["SourceRegion"] = true, ["AllocatedStorage"] = true, ["Status"] = true, ["PercentProgress"] = true, ["SourceDBSnapshotIdentifier"] = true, ["DBSnapshotIdentifier"] = true, ["DBSnapshotArn"] = true, ["EngineVersion"] = true, ["TdeCredentialArn"] = true, ["OptionGroupName"] = true, ["SnapshotCreateTime"] = true, ["AvailabilityZone"] = true, ["StorageType"] = true, ["Encrypted"] = true, ["IAMDatabaseAuthenticationEnabled"] = true, ["Iops"] = true, ["KmsKeyId"] = true, ["SnapshotType"] = true, ["Timezone"] = true, ["Port"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertDBSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshot to be of type 'table'")
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["InstanceCreateTime"] then asserts.AssertTStamp(struct["InstanceCreateTime"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["SourceRegion"] then asserts.AssertString(struct["SourceRegion"]) end
	if struct["AllocatedStorage"] then asserts.AssertInteger(struct["AllocatedStorage"]) end
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["PercentProgress"] then asserts.AssertInteger(struct["PercentProgress"]) end
	if struct["SourceDBSnapshotIdentifier"] then asserts.AssertString(struct["SourceDBSnapshotIdentifier"]) end
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["DBSnapshotArn"] then asserts.AssertString(struct["DBSnapshotArn"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["TdeCredentialArn"] then asserts.AssertString(struct["TdeCredentialArn"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["SnapshotCreateTime"] then asserts.AssertTStamp(struct["SnapshotCreateTime"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["Encrypted"] then asserts.AssertBoolean(struct["Encrypted"]) end
	if struct["IAMDatabaseAuthenticationEnabled"] then asserts.AssertBoolean(struct["IAMDatabaseAuthenticationEnabled"]) end
	if struct["Iops"] then asserts.AssertIntegerOptional(struct["Iops"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["SnapshotType"] then asserts.AssertString(struct["SnapshotType"]) end
	if struct["Timezone"] then asserts.AssertString(struct["Timezone"]) end
	if struct["Port"] then asserts.AssertInteger(struct["Port"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSnapshot[k], "DBSnapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshot
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBSnapshot</a> </p> </li> <li> <p> <a>DeleteDBSnapshot</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBSnapshots</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MasterUsername [String] <p>Provides the master username for the DB snapshot.</p>
-- * LicenseModel [String] <p>License model information for the restored DB instance.</p>
-- * InstanceCreateTime [TStamp] <p>Specifies the time when the snapshot was taken, in Universal Coordinated Time (UTC).</p>
-- * Engine [String] <p>Specifies the name of the database engine.</p>
-- * VpcId [String] <p>Provides the VPC ID associated with the DB snapshot.</p>
-- * SourceRegion [String] <p>The region that the DB snapshot was created in or copied from.</p>
-- * AllocatedStorage [Integer] <p>Specifies the allocated storage size in gigabytes (GB).</p>
-- * Status [String] <p>Specifies the status of this DB snapshot.</p>
-- * PercentProgress [Integer] <p>The percentage of the estimated data that has been transferred.</p>
-- * SourceDBSnapshotIdentifier [String] <p>The DB snapshot Arn that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy.</p>
-- * DBSnapshotIdentifier [String] <p>Specifies the identifier for the DB snapshot.</p>
-- * DBSnapshotArn [String] <p>The Amazon Resource Name (ARN) for the DB snapshot.</p>
-- * EngineVersion [String] <p>Specifies the version of the database engine.</p>
-- * TdeCredentialArn [String] <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
-- * OptionGroupName [String] <p>Provides the option group name for the DB snapshot.</p>
-- * SnapshotCreateTime [TStamp] <p>Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC).</p>
-- * AvailabilityZone [String] <p>Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.</p>
-- * StorageType [String] <p>Specifies the storage type associated with DB snapshot.</p>
-- * Encrypted [Boolean] <p>Specifies whether the DB snapshot is encrypted.</p>
-- * IAMDatabaseAuthenticationEnabled [Boolean] <p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled; otherwise false.</p>
-- * Iops [IntegerOptional] <p>Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.</p>
-- * KmsKeyId [String] <p> If <code>Encrypted</code> is true, the KMS key identifier for the encrypted DB snapshot. </p>
-- * SnapshotType [String] <p>Provides the type of the DB snapshot.</p>
-- * Timezone [String] <p>The time zone of the DB snapshot. In most cases, the <code>Timezone</code> element is empty. <code>Timezone</code> content appears only for snapshots taken from Microsoft SQL Server DB instances that were created with a time zone specified. </p>
-- * Port [Integer] <p>Specifies the port that the database engine was listening on at the time of the snapshot.</p>
-- * DBInstanceIdentifier [String] <p>Specifies the DB instance identifier of the DB instance this DB snapshot was created from.</p>
-- @return DBSnapshot structure as a key-value pair table
function M.DBSnapshot(args)
	assert(args, "You must provide an argument table when creating DBSnapshot")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MasterUsername"] = args["MasterUsername"],
		["LicenseModel"] = args["LicenseModel"],
		["InstanceCreateTime"] = args["InstanceCreateTime"],
		["Engine"] = args["Engine"],
		["VpcId"] = args["VpcId"],
		["SourceRegion"] = args["SourceRegion"],
		["AllocatedStorage"] = args["AllocatedStorage"],
		["Status"] = args["Status"],
		["PercentProgress"] = args["PercentProgress"],
		["SourceDBSnapshotIdentifier"] = args["SourceDBSnapshotIdentifier"],
		["DBSnapshotIdentifier"] = args["DBSnapshotIdentifier"],
		["DBSnapshotArn"] = args["DBSnapshotArn"],
		["EngineVersion"] = args["EngineVersion"],
		["TdeCredentialArn"] = args["TdeCredentialArn"],
		["OptionGroupName"] = args["OptionGroupName"],
		["SnapshotCreateTime"] = args["SnapshotCreateTime"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["StorageType"] = args["StorageType"],
		["Encrypted"] = args["Encrypted"],
		["IAMDatabaseAuthenticationEnabled"] = args["IAMDatabaseAuthenticationEnabled"],
		["Iops"] = args["Iops"],
		["KmsKeyId"] = args["KmsKeyId"],
		["SnapshotType"] = args["SnapshotType"],
		["Timezone"] = args["Timezone"],
		["Port"] = args["Port"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertDBSnapshot(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterRoleQuotaExceededFault = { nil }

function asserts.AssertDBClusterRoleQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterRoleQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterRoleQuotaExceededFault[k], "DBClusterRoleQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterRoleQuotaExceededFault
-- <p>You have exceeded the maximum number of IAM roles that can be associated with the specified DB cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterRoleQuotaExceededFault structure as a key-value pair table
function M.DBClusterRoleQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating DBClusterRoleQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterRoleQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InsufficientStorageClusterCapacityFault = { nil }

function asserts.AssertInsufficientStorageClusterCapacityFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientStorageClusterCapacityFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InsufficientStorageClusterCapacityFault[k], "InsufficientStorageClusterCapacityFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientStorageClusterCapacityFault
-- <p>There is insufficient storage available for the current action. You may be able to resolve this error by updating your subnet group to use different Availability Zones that have more storage available.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InsufficientStorageClusterCapacityFault structure as a key-value pair table
function M.InsufficientStorageClusterCapacityFault(args)
	assert(args, "You must provide an argument table when creating InsufficientStorageClusterCapacityFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInsufficientStorageClusterCapacityFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEngineDefaultClusterParametersMessage = { ["Marker"] = true, ["DBParameterGroupFamily"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeEngineDefaultClusterParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEngineDefaultClusterParametersMessage to be of type 'table'")
	assert(struct["DBParameterGroupFamily"], "Expected key DBParameterGroupFamily to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEngineDefaultClusterParametersMessage[k], "DescribeEngineDefaultClusterParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEngineDefaultClusterParametersMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeEngineDefaultClusterParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBParameterGroupFamily [String] <p>The name of the DB cluster parameter group family to return engine parameter information for.</p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- Required key: DBParameterGroupFamily
-- @return DescribeEngineDefaultClusterParametersMessage structure as a key-value pair table
function M.DescribeEngineDefaultClusterParametersMessage(args)
	assert(args, "You must provide an argument table when creating DescribeEngineDefaultClusterParametersMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeEngineDefaultClusterParametersMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBSnapshotMessage = { ["DBSnapshotIdentifier"] = true, ["EngineVersion"] = true, nil }

function asserts.AssertModifyDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSnapshotMessage to be of type 'table'")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBSnapshotMessage[k], "ModifyDBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSnapshotMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSnapshotIdentifier [String] <p>The identifier of the DB snapshot to modify.</p>
-- * EngineVersion [String] <p>The engine version to update the DB snapshot to. </p>
-- Required key: DBSnapshotIdentifier
-- @return ModifyDBSnapshotMessage structure as a key-value pair table
function M.ModifyDBSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating ModifyDBSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSnapshotIdentifier"] = args["DBSnapshotIdentifier"],
		["EngineVersion"] = args["EngineVersion"],
	}
	asserts.AssertModifyDBSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InsufficientDBInstanceCapacityFault = { nil }

function asserts.AssertInsufficientDBInstanceCapacityFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientDBInstanceCapacityFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InsufficientDBInstanceCapacityFault[k], "InsufficientDBInstanceCapacityFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientDBInstanceCapacityFault
-- <p>Specified DB instance class is not available in the specified Availability Zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InsufficientDBInstanceCapacityFault structure as a key-value pair table
function M.InsufficientDBInstanceCapacityFault(args)
	assert(args, "You must provide an argument table when creating InsufficientDBInstanceCapacityFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInsufficientDBInstanceCapacityFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBClusterParameterGroupMessage = { ["DBClusterParameterGroupName"] = true, ["DBParameterGroupFamily"] = true, ["Description"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateDBClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterParameterGroupMessage to be of type 'table'")
	assert(struct["DBClusterParameterGroupName"], "Expected key DBClusterParameterGroupName to exist in table")
	assert(struct["DBParameterGroupFamily"], "Expected key DBParameterGroupFamily to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBClusterParameterGroupMessage[k], "CreateDBClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <note> <p>This value is stored as a lowercase string.</p> </note>
-- * DBParameterGroupFamily [String] <p>The DB cluster parameter group family name. A DB cluster parameter group can be associated with one and only one DB cluster parameter group family, and can be applied only to a DB cluster running a database engine and engine version compatible with that DB cluster parameter group family.</p>
-- * Description [String] <p>The description for the DB cluster parameter group.</p>
-- * Tags [TagList] 
-- Required key: DBClusterParameterGroupName
-- Required key: DBParameterGroupFamily
-- Required key: Description
-- @return CreateDBClusterParameterGroupMessage structure as a key-value pair table
function M.CreateDBClusterParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating CreateDBClusterParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["Description"] = args["Description"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateDBClusterParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterMessage = { ["Marker"] = true, ["DBClusters"] = true, nil }

function asserts.AssertDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBClusters"] then asserts.AssertDBClusterList(struct["DBClusters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterMessage[k], "DBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterMessage
-- <p>Contains the result of a successful invocation of the <a>DescribeDBClusters</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A pagination token that can be used in a subsequent DescribeDBClusters request.</p>
-- * DBClusters [DBClusterList] <p>Contains a list of DB clusters for the user.</p>
-- @return DBClusterMessage structure as a key-value pair table
function M.DBClusterMessage(args)
	assert(args, "You must provide an argument table when creating DBClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBClusters"] = args["DBClusters"],
	}
	asserts.AssertDBClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventCategoriesMap = { ["EventCategories"] = true, ["SourceType"] = true, nil }

function asserts.AssertEventCategoriesMap(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventCategoriesMap to be of type 'table'")
	if struct["EventCategories"] then asserts.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then asserts.AssertString(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventCategoriesMap[k], "EventCategoriesMap contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventCategoriesMap
-- <p>Contains the results of a successful invocation of the <a>DescribeEventCategories</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventCategories [EventCategoriesList] <p>The event categories for the specified source type</p>
-- * SourceType [String] <p>The source type that the returned categories belong to</p>
-- @return EventCategoriesMap structure as a key-value pair table
function M.EventCategoriesMap(args)
	assert(args, "You must provide an argument table when creating EventCategoriesMap")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventCategories"] = args["EventCategories"],
		["SourceType"] = args["SourceType"],
	}
	asserts.AssertEventCategoriesMap(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OrderableDBInstanceOptionsMessage = { ["Marker"] = true, ["OrderableDBInstanceOptions"] = true, nil }

function asserts.AssertOrderableDBInstanceOptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrderableDBInstanceOptionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["OrderableDBInstanceOptions"] then asserts.AssertOrderableDBInstanceOptionsList(struct["OrderableDBInstanceOptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrderableDBInstanceOptionsMessage[k], "OrderableDBInstanceOptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrderableDBInstanceOptionsMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeOrderableDBInstanceOptions</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous OrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- * OrderableDBInstanceOptions [OrderableDBInstanceOptionsList] <p>An <a>OrderableDBInstanceOption</a> structure containing information about orderable options for the DB instance.</p>
-- @return OrderableDBInstanceOptionsMessage structure as a key-value pair table
function M.OrderableDBInstanceOptionsMessage(args)
	assert(args, "You must provide an argument table when creating OrderableDBInstanceOptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["OrderableDBInstanceOptions"] = args["OrderableDBInstanceOptions"],
	}
	asserts.AssertOrderableDBInstanceOptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBSnapshotAttributesResult = { ["DBSnapshotAttributesResult"] = true, nil }

function asserts.AssertDescribeDBSnapshotAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBSnapshotAttributesResult to be of type 'table'")
	if struct["DBSnapshotAttributesResult"] then asserts.AssertDBSnapshotAttributesResult(struct["DBSnapshotAttributesResult"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBSnapshotAttributesResult[k], "DescribeDBSnapshotAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBSnapshotAttributesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSnapshotAttributesResult [DBSnapshotAttributesResult] 
-- @return DescribeDBSnapshotAttributesResult structure as a key-value pair table
function M.DescribeDBSnapshotAttributesResult(args)
	assert(args, "You must provide an argument table when creating DescribeDBSnapshotAttributesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSnapshotAttributesResult"] = args["DBSnapshotAttributesResult"],
	}
	asserts.AssertDescribeDBSnapshotAttributesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccountQuota = { ["Max"] = true, ["AccountQuotaName"] = true, ["Used"] = true, nil }

function asserts.AssertAccountQuota(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountQuota to be of type 'table'")
	if struct["Max"] then asserts.AssertLong(struct["Max"]) end
	if struct["AccountQuotaName"] then asserts.AssertString(struct["AccountQuotaName"]) end
	if struct["Used"] then asserts.AssertLong(struct["Used"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountQuota[k], "AccountQuota contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountQuota
-- <p>Describes a quota for an AWS account, for example, the number of DB instances allowed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Max [Long] <p>The maximum allowed value for the quota.</p>
-- * AccountQuotaName [String] <p>The name of the Amazon RDS quota for this AWS account.</p>
-- * Used [Long] <p>The amount currently used toward the quota maximum.</p>
-- @return AccountQuota structure as a key-value pair table
function M.AccountQuota(args)
	assert(args, "You must provide an argument table when creating AccountQuota")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Max"] = args["Max"],
		["AccountQuotaName"] = args["AccountQuotaName"],
		["Used"] = args["Used"],
	}
	asserts.AssertAccountQuota(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBClusterParametersMessage = { ["DBClusterParameterGroupName"] = true, ["Source"] = true, ["MaxRecords"] = true, ["Marker"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeDBClusterParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClusterParametersMessage to be of type 'table'")
	assert(struct["DBClusterParameterGroupName"], "Expected key DBClusterParameterGroupName to exist in table")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["Source"] then asserts.AssertString(struct["Source"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBClusterParametersMessage[k], "DescribeDBClusterParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClusterParametersMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>The name of a specific DB cluster parameter group to return parameter details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * Source [String] <p> A value that indicates to return only parameters for a specific source. Parameter sources can be <code>engine</code>, <code>service</code>, or <code>customer</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBClusterParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- Required key: DBClusterParameterGroupName
-- @return DescribeDBClusterParametersMessage structure as a key-value pair table
function M.DescribeDBClusterParametersMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBClusterParametersMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
		["Source"] = args["Source"],
		["MaxRecords"] = args["MaxRecords"],
		["Marker"] = args["Marker"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeDBClusterParametersMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBSubnetGroupMessage = { ["DBSubnetGroupName"] = true, ["DBSubnetGroupDescription"] = true, ["SubnetIds"] = true, nil }

function asserts.AssertModifyDBSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSubnetGroupMessage to be of type 'table'")
	assert(struct["DBSubnetGroupName"], "Expected key DBSubnetGroupName to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["DBSubnetGroupDescription"] then asserts.AssertString(struct["DBSubnetGroupDescription"]) end
	if struct["SubnetIds"] then asserts.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBSubnetGroupMessage[k], "ModifyDBSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSubnetGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSubnetGroupName [String] <p>The name for the DB subnet group. This value is stored as a lowercase string.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- * DBSubnetGroupDescription [String] <p>The description for the DB subnet group.</p>
-- * SubnetIds [SubnetIdentifierList] <p>The EC2 subnet IDs for the DB subnet group.</p>
-- Required key: DBSubnetGroupName
-- Required key: SubnetIds
-- @return ModifyDBSubnetGroupMessage structure as a key-value pair table
function M.ModifyDBSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating ModifyDBSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["DBSubnetGroupDescription"] = args["DBSubnetGroupDescription"],
		["SubnetIds"] = args["SubnetIds"],
	}
	asserts.AssertModifyDBSubnetGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DownloadDBLogFilePortionMessage = { ["Marker"] = true, ["NumberOfLines"] = true, ["LogFileName"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertDownloadDBLogFilePortionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DownloadDBLogFilePortionMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	assert(struct["LogFileName"], "Expected key LogFileName to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["NumberOfLines"] then asserts.AssertInteger(struct["NumberOfLines"]) end
	if struct["LogFileName"] then asserts.AssertString(struct["LogFileName"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DownloadDBLogFilePortionMessage[k], "DownloadDBLogFilePortionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DownloadDBLogFilePortionMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>The pagination token provided in the previous request or "0". If the Marker parameter is specified the response includes only records beyond the marker until the end of the file or up to NumberOfLines.</p>
-- * NumberOfLines [Integer] <p>The number of lines to download. If the number of lines specified results in a file over 1 MB in size, the file will be truncated at 1 MB in size.</p> <p>If the NumberOfLines parameter is specified, then the block of lines returned can be from the beginning or the end of the log file, depending on the value of the Marker parameter.</p> <ul> <li> <p>If neither Marker or NumberOfLines are specified, the entire log file is returned up to a maximum of 10000 lines, starting with the most recent log entries first.</p> </li> <li> <p>If NumberOfLines is specified and Marker is not specified, then the most recent lines from the end of the log file are returned.</p> </li> <li> <p>If Marker is specified as "0", then the specified number of lines from the beginning of the log file are returned.</p> </li> <li> <p>You can download the log file in blocks of lines by specifying the size of the block using the NumberOfLines parameter, and by specifying a value of "0" for the Marker parameter in your first request. Include the Marker value returned in the response as the Marker value for the next request, continuing until the AdditionalDataPending response element returns false.</p> </li> </ul>
-- * LogFileName [String] <p>The name of the log file to be downloaded.</p>
-- * DBInstanceIdentifier [String] <p>The customer-assigned name of the DB instance that contains the log files you want to list.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required key: DBInstanceIdentifier
-- Required key: LogFileName
-- @return DownloadDBLogFilePortionMessage structure as a key-value pair table
function M.DownloadDBLogFilePortionMessage(args)
	assert(args, "You must provide an argument table when creating DownloadDBLogFilePortionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["NumberOfLines"] = args["NumberOfLines"],
		["LogFileName"] = args["LogFileName"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertDownloadDBLogFilePortionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBSnapshotAttributeResult = { ["DBSnapshotAttributesResult"] = true, nil }

function asserts.AssertModifyDBSnapshotAttributeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSnapshotAttributeResult to be of type 'table'")
	if struct["DBSnapshotAttributesResult"] then asserts.AssertDBSnapshotAttributesResult(struct["DBSnapshotAttributesResult"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBSnapshotAttributeResult[k], "ModifyDBSnapshotAttributeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSnapshotAttributeResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSnapshotAttributesResult [DBSnapshotAttributesResult] 
-- @return ModifyDBSnapshotAttributeResult structure as a key-value pair table
function M.ModifyDBSnapshotAttributeResult(args)
	assert(args, "You must provide an argument table when creating ModifyDBSnapshotAttributeResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSnapshotAttributesResult"] = args["DBSnapshotAttributesResult"],
	}
	asserts.AssertModifyDBSnapshotAttributeResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyDBClusterSnapshotResult = { ["DBClusterSnapshot"] = true, nil }

function asserts.AssertCopyDBClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBClusterSnapshotResult to be of type 'table'")
	if struct["DBClusterSnapshot"] then asserts.AssertDBClusterSnapshot(struct["DBClusterSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyDBClusterSnapshotResult[k], "CopyDBClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBClusterSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshot [DBClusterSnapshot] 
-- @return CopyDBClusterSnapshotResult structure as a key-value pair table
function M.CopyDBClusterSnapshotResult(args)
	assert(args, "You must provide an argument table when creating CopyDBClusterSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshot"] = args["DBClusterSnapshot"],
	}
	asserts.AssertCopyDBClusterSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyDBParameterGroupMessage = { ["SourceDBParameterGroupIdentifier"] = true, ["TargetDBParameterGroupDescription"] = true, ["TargetDBParameterGroupIdentifier"] = true, ["Tags"] = true, nil }

function asserts.AssertCopyDBParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBParameterGroupMessage to be of type 'table'")
	assert(struct["SourceDBParameterGroupIdentifier"], "Expected key SourceDBParameterGroupIdentifier to exist in table")
	assert(struct["TargetDBParameterGroupIdentifier"], "Expected key TargetDBParameterGroupIdentifier to exist in table")
	assert(struct["TargetDBParameterGroupDescription"], "Expected key TargetDBParameterGroupDescription to exist in table")
	if struct["SourceDBParameterGroupIdentifier"] then asserts.AssertString(struct["SourceDBParameterGroupIdentifier"]) end
	if struct["TargetDBParameterGroupDescription"] then asserts.AssertString(struct["TargetDBParameterGroupDescription"]) end
	if struct["TargetDBParameterGroupIdentifier"] then asserts.AssertString(struct["TargetDBParameterGroupIdentifier"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyDBParameterGroupMessage[k], "CopyDBParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceDBParameterGroupIdentifier [String] <p> The identifier or ARN for the source DB parameter group. For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid DB parameter group.</p> </li> <li> <p> Must specify a valid DB parameter group identifier, for example <code>my-db-param-group</code>, or a valid ARN.</p> </li> </ul>
-- * TargetDBParameterGroupDescription [String] <p>A description for the copied DB parameter group.</p>
-- * TargetDBParameterGroupIdentifier [String] <p>The identifier for the copied DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-db-parameter-group</code> </p>
-- * Tags [TagList] 
-- Required key: SourceDBParameterGroupIdentifier
-- Required key: TargetDBParameterGroupIdentifier
-- Required key: TargetDBParameterGroupDescription
-- @return CopyDBParameterGroupMessage structure as a key-value pair table
function M.CopyDBParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating CopyDBParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceDBParameterGroupIdentifier"] = args["SourceDBParameterGroupIdentifier"],
		["TargetDBParameterGroupDescription"] = args["TargetDBParameterGroupDescription"],
		["TargetDBParameterGroupIdentifier"] = args["TargetDBParameterGroupIdentifier"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCopyDBParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventsMessage = { ["Marker"] = true, ["Events"] = true, nil }

function asserts.AssertEventsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Events"] then asserts.AssertEventList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventsMessage[k], "EventsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventsMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeEvents</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous Events request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- * Events [EventList] <p> A list of <a>Event</a> instances. </p>
-- @return EventsMessage structure as a key-value pair table
function M.EventsMessage(args)
	assert(args, "You must provide an argument table when creating EventsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Events"] = args["Events"],
	}
	asserts.AssertEventsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBSnapshotMessage = { ["DBSnapshotIdentifier"] = true, nil }

function asserts.AssertDeleteDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBSnapshotMessage to be of type 'table'")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBSnapshotMessage[k], "DeleteDBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBSnapshotMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSnapshotIdentifier [String] <p>The DBSnapshot identifier.</p> <p>Constraints: Must be the name of an existing DB snapshot in the <code>available</code> state.</p>
-- Required key: DBSnapshotIdentifier
-- @return DeleteDBSnapshotMessage structure as a key-value pair table
function M.DeleteDBSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating DeleteDBSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSnapshotIdentifier"] = args["DBSnapshotIdentifier"],
	}
	asserts.AssertDeleteDBSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservedDBInstancesOffering = { ["MultiAZ"] = true, ["OfferingType"] = true, ["FixedPrice"] = true, ["UsagePrice"] = true, ["ReservedDBInstancesOfferingId"] = true, ["RecurringCharges"] = true, ["ProductDescription"] = true, ["Duration"] = true, ["DBInstanceClass"] = true, ["CurrencyCode"] = true, nil }

function asserts.AssertReservedDBInstancesOffering(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstancesOffering to be of type 'table'")
	if struct["MultiAZ"] then asserts.AssertBoolean(struct["MultiAZ"]) end
	if struct["OfferingType"] then asserts.AssertString(struct["OfferingType"]) end
	if struct["FixedPrice"] then asserts.AssertDouble(struct["FixedPrice"]) end
	if struct["UsagePrice"] then asserts.AssertDouble(struct["UsagePrice"]) end
	if struct["ReservedDBInstancesOfferingId"] then asserts.AssertString(struct["ReservedDBInstancesOfferingId"]) end
	if struct["RecurringCharges"] then asserts.AssertRecurringChargeList(struct["RecurringCharges"]) end
	if struct["ProductDescription"] then asserts.AssertString(struct["ProductDescription"]) end
	if struct["Duration"] then asserts.AssertInteger(struct["Duration"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["CurrencyCode"] then asserts.AssertString(struct["CurrencyCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedDBInstancesOffering[k], "ReservedDBInstancesOffering contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstancesOffering
-- <p> This data type is used as a response element in the <a>DescribeReservedDBInstancesOfferings</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MultiAZ [Boolean] <p>Indicates if the offering applies to Multi-AZ deployments.</p>
-- * OfferingType [String] <p>The offering type.</p>
-- * FixedPrice [Double] <p>The fixed price charged for this offering.</p>
-- * UsagePrice [Double] <p>The hourly price charged for this offering.</p>
-- * ReservedDBInstancesOfferingId [String] <p>The offering identifier.</p>
-- * RecurringCharges [RecurringChargeList] <p>The recurring price charged to run this reserved DB instance.</p>
-- * ProductDescription [String] <p>The database engine used by the offering.</p>
-- * Duration [Integer] <p>The duration of the offering in seconds.</p>
-- * DBInstanceClass [String] <p>The DB instance class for the reserved DB instance.</p>
-- * CurrencyCode [String] <p>The currency code for the reserved DB instance offering.</p>
-- @return ReservedDBInstancesOffering structure as a key-value pair table
function M.ReservedDBInstancesOffering(args)
	assert(args, "You must provide an argument table when creating ReservedDBInstancesOffering")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MultiAZ"] = args["MultiAZ"],
		["OfferingType"] = args["OfferingType"],
		["FixedPrice"] = args["FixedPrice"],
		["UsagePrice"] = args["UsagePrice"],
		["ReservedDBInstancesOfferingId"] = args["ReservedDBInstancesOfferingId"],
		["RecurringCharges"] = args["RecurringCharges"],
		["ProductDescription"] = args["ProductDescription"],
		["Duration"] = args["Duration"],
		["DBInstanceClass"] = args["DBInstanceClass"],
		["CurrencyCode"] = args["CurrencyCode"],
	}
	asserts.AssertReservedDBInstancesOffering(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OptionGroupQuotaExceededFault = { nil }

function asserts.AssertOptionGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.OptionGroupQuotaExceededFault[k], "OptionGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupQuotaExceededFault
-- <p>The quota of 20 option groups was exceeded for this AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return OptionGroupQuotaExceededFault structure as a key-value pair table
function M.OptionGroupQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating OptionGroupQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertOptionGroupQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddTagsToResourceMessage = { ["ResourceName"] = true, ["Tags"] = true, nil }

function asserts.AssertAddTagsToResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceMessage to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceName"] then asserts.AssertString(struct["ResourceName"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsToResourceMessage[k], "AddTagsToResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceName [String] <p>The Amazon RDS resource the tags will be added to. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>.</p>
-- * Tags [TagList] <p>The tags to be assigned to the Amazon RDS resource.</p>
-- Required key: ResourceName
-- Required key: Tags
-- @return AddTagsToResourceMessage structure as a key-value pair table
function M.AddTagsToResourceMessage(args)
	assert(args, "You must provide an argument table when creating AddTagsToResourceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceName"] = args["ResourceName"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertAddTagsToResourceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IPRange = { ["Status"] = true, ["CIDRIP"] = true, nil }

function asserts.AssertIPRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IPRange to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["CIDRIP"] then asserts.AssertString(struct["CIDRIP"]) end
	for k,_ in pairs(struct) do
		assert(keys.IPRange[k], "IPRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IPRange
-- <p> This data type is used as a response element in the <a>DescribeDBSecurityGroups</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>Specifies the status of the IP range. Status can be "authorizing", "authorized", "revoking", and "revoked".</p>
-- * CIDRIP [String] <p>Specifies the IP range.</p>
-- @return IPRange structure as a key-value pair table
function M.IPRange(args)
	assert(args, "You must provide an argument table when creating IPRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["CIDRIP"] = args["CIDRIP"],
	}
	asserts.AssertIPRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservedDBInstanceQuotaExceededFault = { nil }

function asserts.AssertReservedDBInstanceQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstanceQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ReservedDBInstanceQuotaExceededFault[k], "ReservedDBInstanceQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstanceQuotaExceededFault
-- <p>Request would exceed the user's DB Instance quota.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ReservedDBInstanceQuotaExceededFault structure as a key-value pair table
function M.ReservedDBInstanceQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating ReservedDBInstanceQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertReservedDBInstanceQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidSubnet = { nil }

function asserts.AssertInvalidSubnet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSubnet to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidSubnet[k], "InvalidSubnet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSubnet
-- <p>The requested subnet is invalid, or multiple subnets were requested that are not all in a common VPC.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidSubnet structure as a key-value pair table
function M.InvalidSubnet(args)
	assert(args, "You must provide an argument table when creating InvalidSubnet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidSubnet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterParameterGroupNotFoundFault = { nil }

function asserts.AssertDBClusterParameterGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterParameterGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterParameterGroupNotFoundFault[k], "DBClusterParameterGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterParameterGroupNotFoundFault
-- <p> <i>DBClusterParameterGroupName</i> does not refer to an existing DB Cluster parameter group. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterParameterGroupNotFoundFault structure as a key-value pair table
function M.DBClusterParameterGroupNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBClusterParameterGroupNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterParameterGroupNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FailoverDBClusterMessage = { ["DBClusterIdentifier"] = true, ["TargetDBInstanceIdentifier"] = true, nil }

function asserts.AssertFailoverDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailoverDBClusterMessage to be of type 'table'")
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["TargetDBInstanceIdentifier"] then asserts.AssertString(struct["TargetDBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailoverDBClusterMessage[k], "FailoverDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailoverDBClusterMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterIdentifier [String] <p>A DB cluster identifier to force a failover for. This parameter is not case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * TargetDBInstanceIdentifier [String] <p>The name of the instance to promote to the primary instance.</p> <p>You must specify the instance identifier for an Aurora Replica in the DB cluster. For example, <code>mydbcluster-replica1</code>.</p>
-- @return FailoverDBClusterMessage structure as a key-value pair table
function M.FailoverDBClusterMessage(args)
	assert(args, "You must provide an argument table when creating FailoverDBClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["TargetDBInstanceIdentifier"] = args["TargetDBInstanceIdentifier"],
	}
	asserts.AssertFailoverDBClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyOptionGroupResult = { ["OptionGroup"] = true, nil }

function asserts.AssertModifyOptionGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyOptionGroupResult to be of type 'table'")
	if struct["OptionGroup"] then asserts.AssertOptionGroup(struct["OptionGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyOptionGroupResult[k], "ModifyOptionGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyOptionGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OptionGroup [OptionGroup] 
-- @return ModifyOptionGroupResult structure as a key-value pair table
function M.ModifyOptionGroupResult(args)
	assert(args, "You must provide an argument table when creating ModifyOptionGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OptionGroup"] = args["OptionGroup"],
	}
	asserts.AssertModifyOptionGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBParameterGroupNameMessage = { ["DBParameterGroupName"] = true, nil }

function asserts.AssertDBParameterGroupNameMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupNameMessage to be of type 'table'")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBParameterGroupNameMessage[k], "DBParameterGroupNameMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupNameMessage
-- <p> Contains the result of a successful invocation of the <a>ModifyDBParameterGroup</a> or <a>ResetDBParameterGroup</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupName [String] <p>Provides the name of the DB parameter group.</p>
-- @return DBParameterGroupNameMessage structure as a key-value pair table
function M.DBParameterGroupNameMessage(args)
	assert(args, "You must provide an argument table when creating DBParameterGroupNameMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupName"] = args["DBParameterGroupName"],
	}
	asserts.AssertDBParameterGroupNameMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SNSTopicArnNotFoundFault = { nil }

function asserts.AssertSNSTopicArnNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SNSTopicArnNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SNSTopicArnNotFoundFault[k], "SNSTopicArnNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SNSTopicArnNotFoundFault
-- <p>The SNS topic ARN does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SNSTopicArnNotFoundFault structure as a key-value pair table
function M.SNSTopicArnNotFoundFault(args)
	assert(args, "You must provide an argument table when creating SNSTopicArnNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSNSTopicArnNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Option = { ["DBSecurityGroupMemberships"] = true, ["OptionName"] = true, ["Persistent"] = true, ["VpcSecurityGroupMemberships"] = true, ["OptionSettings"] = true, ["Permanent"] = true, ["OptionVersion"] = true, ["Port"] = true, ["OptionDescription"] = true, nil }

function asserts.AssertOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Option to be of type 'table'")
	if struct["DBSecurityGroupMemberships"] then asserts.AssertDBSecurityGroupMembershipList(struct["DBSecurityGroupMemberships"]) end
	if struct["OptionName"] then asserts.AssertString(struct["OptionName"]) end
	if struct["Persistent"] then asserts.AssertBoolean(struct["Persistent"]) end
	if struct["VpcSecurityGroupMemberships"] then asserts.AssertVpcSecurityGroupMembershipList(struct["VpcSecurityGroupMemberships"]) end
	if struct["OptionSettings"] then asserts.AssertOptionSettingConfigurationList(struct["OptionSettings"]) end
	if struct["Permanent"] then asserts.AssertBoolean(struct["Permanent"]) end
	if struct["OptionVersion"] then asserts.AssertString(struct["OptionVersion"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["OptionDescription"] then asserts.AssertString(struct["OptionDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.Option[k], "Option contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Option
-- <p>Option details.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSecurityGroupMemberships [DBSecurityGroupMembershipList] <p>If the option requires access to a port, then this DB security group allows access to the port.</p>
-- * OptionName [String] <p>The name of the option.</p>
-- * Persistent [Boolean] <p>Indicate if this option is persistent.</p>
-- * VpcSecurityGroupMemberships [VpcSecurityGroupMembershipList] <p>If the option requires access to a port, then this VPC security group allows access to the port.</p>
-- * OptionSettings [OptionSettingConfigurationList] <p>The option settings for this option.</p>
-- * Permanent [Boolean] <p>Indicate if this option is permanent.</p>
-- * OptionVersion [String] <p>The version of the option.</p>
-- * Port [IntegerOptional] <p>If required, the port configured for this option to use.</p>
-- * OptionDescription [String] <p>The description of the option.</p>
-- @return Option structure as a key-value pair table
function M.Option(args)
	assert(args, "You must provide an argument table when creating Option")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSecurityGroupMemberships"] = args["DBSecurityGroupMemberships"],
		["OptionName"] = args["OptionName"],
		["Persistent"] = args["Persistent"],
		["VpcSecurityGroupMemberships"] = args["VpcSecurityGroupMemberships"],
		["OptionSettings"] = args["OptionSettings"],
		["Permanent"] = args["Permanent"],
		["OptionVersion"] = args["OptionVersion"],
		["Port"] = args["Port"],
		["OptionDescription"] = args["OptionDescription"],
	}
	asserts.AssertOption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBLogFilesDetails = { ["LastWritten"] = true, ["LogFileName"] = true, ["Size"] = true, nil }

function asserts.AssertDescribeDBLogFilesDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBLogFilesDetails to be of type 'table'")
	if struct["LastWritten"] then asserts.AssertLong(struct["LastWritten"]) end
	if struct["LogFileName"] then asserts.AssertString(struct["LogFileName"]) end
	if struct["Size"] then asserts.AssertLong(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBLogFilesDetails[k], "DescribeDBLogFilesDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBLogFilesDetails
-- <p>This data type is used as a response element to <a>DescribeDBLogFiles</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastWritten [Long] <p>A POSIX timestamp when the last log entry was written.</p>
-- * LogFileName [String] <p>The name of the log file for the specified DB instance.</p>
-- * Size [Long] <p>The size, in bytes, of the log file for the specified DB instance.</p>
-- @return DescribeDBLogFilesDetails structure as a key-value pair table
function M.DescribeDBLogFilesDetails(args)
	assert(args, "You must provide an argument table when creating DescribeDBLogFilesDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastWritten"] = args["LastWritten"],
		["LogFileName"] = args["LogFileName"],
		["Size"] = args["Size"],
	}
	asserts.AssertDescribeDBLogFilesDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventSubscriptionQuotaExceededFault = { nil }

function asserts.AssertEventSubscriptionQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSubscriptionQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EventSubscriptionQuotaExceededFault[k], "EventSubscriptionQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSubscriptionQuotaExceededFault
-- <p>You have reached the maximum number of event subscriptions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EventSubscriptionQuotaExceededFault structure as a key-value pair table
function M.EventSubscriptionQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating EventSubscriptionQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertEventSubscriptionQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OptionConfiguration = { ["DBSecurityGroupMemberships"] = true, ["OptionName"] = true, ["VpcSecurityGroupMemberships"] = true, ["OptionSettings"] = true, ["OptionVersion"] = true, ["Port"] = true, nil }

function asserts.AssertOptionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionConfiguration to be of type 'table'")
	assert(struct["OptionName"], "Expected key OptionName to exist in table")
	if struct["DBSecurityGroupMemberships"] then asserts.AssertDBSecurityGroupNameList(struct["DBSecurityGroupMemberships"]) end
	if struct["OptionName"] then asserts.AssertString(struct["OptionName"]) end
	if struct["VpcSecurityGroupMemberships"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupMemberships"]) end
	if struct["OptionSettings"] then asserts.AssertOptionSettingsList(struct["OptionSettings"]) end
	if struct["OptionVersion"] then asserts.AssertString(struct["OptionVersion"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionConfiguration[k], "OptionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionConfiguration
-- <p>A list of all available options</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSecurityGroupMemberships [DBSecurityGroupNameList] <p>A list of DBSecurityGroupMemebrship name strings used for this option.</p>
-- * OptionName [String] <p>The configuration of options to include in a group.</p>
-- * VpcSecurityGroupMemberships [VpcSecurityGroupIdList] <p>A list of VpcSecurityGroupMemebrship name strings used for this option.</p>
-- * OptionSettings [OptionSettingsList] <p>The option settings to include in an option group.</p>
-- * OptionVersion [String] <p>The version for the option.</p>
-- * Port [IntegerOptional] <p>The optional port for the option.</p>
-- Required key: OptionName
-- @return OptionConfiguration structure as a key-value pair table
function M.OptionConfiguration(args)
	assert(args, "You must provide an argument table when creating OptionConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSecurityGroupMemberships"] = args["DBSecurityGroupMemberships"],
		["OptionName"] = args["OptionName"],
		["VpcSecurityGroupMemberships"] = args["VpcSecurityGroupMemberships"],
		["OptionSettings"] = args["OptionSettings"],
		["OptionVersion"] = args["OptionVersion"],
		["Port"] = args["Port"],
	}
	asserts.AssertOptionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEngineDefaultParametersResult = { ["EngineDefaults"] = true, nil }

function asserts.AssertDescribeEngineDefaultParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEngineDefaultParametersResult to be of type 'table'")
	if struct["EngineDefaults"] then asserts.AssertEngineDefaults(struct["EngineDefaults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEngineDefaultParametersResult[k], "DescribeEngineDefaultParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEngineDefaultParametersResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EngineDefaults [EngineDefaults] 
-- @return DescribeEngineDefaultParametersResult structure as a key-value pair table
function M.DescribeEngineDefaultParametersResult(args)
	assert(args, "You must provide an argument table when creating DescribeEngineDefaultParametersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EngineDefaults"] = args["EngineDefaults"],
	}
	asserts.AssertDescribeEngineDefaultParametersResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBInstanceStatusInfo = { ["Status"] = true, ["Message"] = true, ["StatusType"] = true, ["Normal"] = true, nil }

function asserts.AssertDBInstanceStatusInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBInstanceStatusInfo to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["StatusType"] then asserts.AssertString(struct["StatusType"]) end
	if struct["Normal"] then asserts.AssertBoolean(struct["Normal"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBInstanceStatusInfo[k], "DBInstanceStatusInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBInstanceStatusInfo
-- <p>Provides a list of status information for a DB instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>Status of the DB instance. For a StatusType of read replica, the values can be replicating, error, stopped, or terminated.</p>
-- * Message [String] <p>Details of the error if there is an error for the instance. If the instance is not in an error state, this value is blank.</p>
-- * StatusType [String] <p>This value is currently "read replication."</p>
-- * Normal [Boolean] <p>Boolean value that is true if the instance is operating normally, or false if the instance is in an error state.</p>
-- @return DBInstanceStatusInfo structure as a key-value pair table
function M.DBInstanceStatusInfo(args)
	assert(args, "You must provide an argument table when creating DBInstanceStatusInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Message"] = args["Message"],
		["StatusType"] = args["StatusType"],
		["Normal"] = args["Normal"],
	}
	asserts.AssertDBInstanceStatusInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterSnapshotAlreadyExistsFault = { nil }

function asserts.AssertDBClusterSnapshotAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshotAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterSnapshotAlreadyExistsFault[k], "DBClusterSnapshotAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshotAlreadyExistsFault
-- <p>User already has a DB cluster snapshot with the given identifier.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterSnapshotAlreadyExistsFault structure as a key-value pair table
function M.DBClusterSnapshotAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating DBClusterSnapshotAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterSnapshotAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveTagsFromResourceMessage = { ["ResourceName"] = true, ["TagKeys"] = true, nil }

function asserts.AssertRemoveTagsFromResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceMessage to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceName"] then asserts.AssertString(struct["ResourceName"]) end
	if struct["TagKeys"] then asserts.AssertKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsFromResourceMessage[k], "RemoveTagsFromResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceName [String] <p>The Amazon RDS resource the tags will be removed from. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>.</p>
-- * TagKeys [KeyList] <p>The tag key (name) of the tag to be removed.</p>
-- Required key: ResourceName
-- Required key: TagKeys
-- @return RemoveTagsFromResourceMessage structure as a key-value pair table
function M.RemoveTagsFromResourceMessage(args)
	assert(args, "You must provide an argument table when creating RemoveTagsFromResourceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceName"] = args["ResourceName"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertRemoveTagsFromResourceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RevokeDBSecurityGroupIngressResult = { ["DBSecurityGroup"] = true, nil }

function asserts.AssertRevokeDBSecurityGroupIngressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeDBSecurityGroupIngressResult to be of type 'table'")
	if struct["DBSecurityGroup"] then asserts.AssertDBSecurityGroup(struct["DBSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevokeDBSecurityGroupIngressResult[k], "RevokeDBSecurityGroupIngressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeDBSecurityGroupIngressResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSecurityGroup [DBSecurityGroup] 
-- @return RevokeDBSecurityGroupIngressResult structure as a key-value pair table
function M.RevokeDBSecurityGroupIngressResult(args)
	assert(args, "You must provide an argument table when creating RevokeDBSecurityGroupIngressResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSecurityGroup"] = args["DBSecurityGroup"],
	}
	asserts.AssertRevokeDBSecurityGroupIngressResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidEventSubscriptionStateFault = { nil }

function asserts.AssertInvalidEventSubscriptionStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidEventSubscriptionStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidEventSubscriptionStateFault[k], "InvalidEventSubscriptionStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidEventSubscriptionStateFault
-- <p>This error can occur if someone else is modifying a subscription. You should retry the action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidEventSubscriptionStateFault structure as a key-value pair table
function M.InvalidEventSubscriptionStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidEventSubscriptionStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidEventSubscriptionStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreDBClusterFromS3Result = { ["DBCluster"] = true, nil }

function asserts.AssertRestoreDBClusterFromS3Result(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBClusterFromS3Result to be of type 'table'")
	if struct["DBCluster"] then asserts.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBClusterFromS3Result[k], "RestoreDBClusterFromS3Result contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterFromS3Result
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBCluster [DBCluster] 
-- @return RestoreDBClusterFromS3Result structure as a key-value pair table
function M.RestoreDBClusterFromS3Result(args)
	assert(args, "You must provide an argument table when creating RestoreDBClusterFromS3Result")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBCluster"] = args["DBCluster"],
	}
	asserts.AssertRestoreDBClusterFromS3Result(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SourceRegionMessage = { ["Marker"] = true, ["SourceRegions"] = true, nil }

function asserts.AssertSourceRegionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceRegionMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["SourceRegions"] then asserts.AssertSourceRegionList(struct["SourceRegions"]) end
	for k,_ in pairs(struct) do
		assert(keys.SourceRegionMessage[k], "SourceRegionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceRegionMessage
-- <p>Contains the result of a successful invocation of the <a>DescribeSourceRegions</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * SourceRegions [SourceRegionList] <p>A list of SourceRegion instances that contains each source AWS Region that the current region can get a Read Replica or a DB snapshot from.</p>
-- @return SourceRegionMessage structure as a key-value pair table
function M.SourceRegionMessage(args)
	assert(args, "You must provide an argument table when creating SourceRegionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["SourceRegions"] = args["SourceRegions"],
	}
	asserts.AssertSourceRegionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Timezone = { ["TimezoneName"] = true, nil }

function asserts.AssertTimezone(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Timezone to be of type 'table'")
	if struct["TimezoneName"] then asserts.AssertString(struct["TimezoneName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Timezone[k], "Timezone contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Timezone
-- <p>A time zone associated with a <a>DBInstance</a> or a <a>DBSnapshot</a>. This data type is an element in the response to the <a>DescribeDBInstances</a>, the <a>DescribeDBSnapshots</a>, and the <a>DescribeDBEngineVersions</a> actions. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimezoneName [String] <p>The name of the time zone.</p>
-- @return Timezone structure as a key-value pair table
function M.Timezone(args)
	assert(args, "You must provide an argument table when creating Timezone")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimezoneName"] = args["TimezoneName"],
	}
	asserts.AssertTimezone(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Subnet = { ["SubnetStatus"] = true, ["SubnetIdentifier"] = true, ["SubnetAvailabilityZone"] = true, nil }

function asserts.AssertSubnet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subnet to be of type 'table'")
	if struct["SubnetStatus"] then asserts.AssertString(struct["SubnetStatus"]) end
	if struct["SubnetIdentifier"] then asserts.AssertString(struct["SubnetIdentifier"]) end
	if struct["SubnetAvailabilityZone"] then asserts.AssertAvailabilityZone(struct["SubnetAvailabilityZone"]) end
	for k,_ in pairs(struct) do
		assert(keys.Subnet[k], "Subnet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subnet
-- <p> This data type is used as a response element in the <a>DescribeDBSubnetGroups</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetStatus [String] <p>Specifies the status of the subnet.</p>
-- * SubnetIdentifier [String] <p>Specifies the identifier of the subnet.</p>
-- * SubnetAvailabilityZone [AvailabilityZone] 
-- @return Subnet structure as a key-value pair table
function M.Subnet(args)
	assert(args, "You must provide an argument table when creating Subnet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetStatus"] = args["SubnetStatus"],
		["SubnetIdentifier"] = args["SubnetIdentifier"],
		["SubnetAvailabilityZone"] = args["SubnetAvailabilityZone"],
	}
	asserts.AssertSubnet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSourceRegionsMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["RegionName"] = true, nil }

function asserts.AssertDescribeSourceRegionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSourceRegionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["RegionName"] then asserts.AssertString(struct["RegionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSourceRegionsMessage[k], "DescribeSourceRegionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSourceRegionsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <a>DescribeSourceRegions</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- * RegionName [String] <p>The source region name. For example, <code>us-east-1</code>.</p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid AWS Region name.</p> </li> </ul>
-- @return DescribeSourceRegionsMessage structure as a key-value pair table
function M.DescribeSourceRegionsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeSourceRegionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["RegionName"] = args["RegionName"],
	}
	asserts.AssertDescribeSourceRegionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservedDBInstancesOfferingMessage = { ["Marker"] = true, ["ReservedDBInstancesOfferings"] = true, nil }

function asserts.AssertReservedDBInstancesOfferingMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstancesOfferingMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ReservedDBInstancesOfferings"] then asserts.AssertReservedDBInstancesOfferingList(struct["ReservedDBInstancesOfferings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedDBInstancesOfferingMessage[k], "ReservedDBInstancesOfferingMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstancesOfferingMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeReservedDBInstancesOfferings</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * ReservedDBInstancesOfferings [ReservedDBInstancesOfferingList] <p>A list of reserved DB instance offerings.</p>
-- @return ReservedDBInstancesOfferingMessage structure as a key-value pair table
function M.ReservedDBInstancesOfferingMessage(args)
	assert(args, "You must provide an argument table when creating ReservedDBInstancesOfferingMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ReservedDBInstancesOfferings"] = args["ReservedDBInstancesOfferings"],
	}
	asserts.AssertReservedDBInstancesOfferingMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBLogFilesMessage = { ["FileLastWritten"] = true, ["Marker"] = true, ["MaxRecords"] = true, ["FileSize"] = true, ["Filters"] = true, ["FilenameContains"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertDescribeDBLogFilesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBLogFilesMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["FileLastWritten"] then asserts.AssertLong(struct["FileLastWritten"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["FileSize"] then asserts.AssertLong(struct["FileSize"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["FilenameContains"] then asserts.AssertString(struct["FilenameContains"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBLogFilesMessage[k], "DescribeDBLogFilesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBLogFilesMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileLastWritten [Long] <p>Filters the available log files for files written since the specified date, in POSIX timestamp format with milliseconds.</p>
-- * Marker [String] <p>The pagination token provided in the previous request. If this parameter is specified the response includes only records beyond the marker, up to MaxRecords.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.</p>
-- * FileSize [Long] <p>Filters the available log files for files larger than the specified size.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- * FilenameContains [String] <p>Filters the available log files for log file names that contain the specified string.</p>
-- * DBInstanceIdentifier [String] <p>The customer-assigned name of the DB instance that contains the log files you want to list.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required key: DBInstanceIdentifier
-- @return DescribeDBLogFilesMessage structure as a key-value pair table
function M.DescribeDBLogFilesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBLogFilesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileLastWritten"] = args["FileLastWritten"],
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["FileSize"] = args["FileSize"],
		["Filters"] = args["Filters"],
		["FilenameContains"] = args["FilenameContains"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertDescribeDBLogFilesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBClusterSnapshotAttributesMessage = { ["DBClusterSnapshotIdentifier"] = true, nil }

function asserts.AssertDescribeDBClusterSnapshotAttributesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClusterSnapshotAttributesMessage to be of type 'table'")
	assert(struct["DBClusterSnapshotIdentifier"], "Expected key DBClusterSnapshotIdentifier to exist in table")
	if struct["DBClusterSnapshotIdentifier"] then asserts.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBClusterSnapshotAttributesMessage[k], "DescribeDBClusterSnapshotAttributesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClusterSnapshotAttributesMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshotIdentifier [String] <p>The identifier for the DB cluster snapshot to describe the attributes for.</p>
-- Required key: DBClusterSnapshotIdentifier
-- @return DescribeDBClusterSnapshotAttributesMessage structure as a key-value pair table
function M.DescribeDBClusterSnapshotAttributesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBClusterSnapshotAttributesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshotIdentifier"] = args["DBClusterSnapshotIdentifier"],
	}
	asserts.AssertDescribeDBClusterSnapshotAttributesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SnapshotQuotaExceededFault = { nil }

function asserts.AssertSnapshotQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SnapshotQuotaExceededFault[k], "SnapshotQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotQuotaExceededFault
-- <p>Request would result in user exceeding the allowed number of DB snapshots.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SnapshotQuotaExceededFault structure as a key-value pair table
function M.SnapshotQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating SnapshotQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSnapshotQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartDBInstanceMessage = { ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertStartDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartDBInstanceMessage[k], "StartDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartDBInstanceMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBInstanceIdentifier [String] <p> The user-supplied instance identifier. </p>
-- Required key: DBInstanceIdentifier
-- @return StartDBInstanceMessage structure as a key-value pair table
function M.StartDBInstanceMessage(args)
	assert(args, "You must provide an argument table when creating StartDBInstanceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertStartDBInstanceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBParameterGroupMessage = { ["DBParameterGroupName"] = true, ["Parameters"] = true, nil }

function asserts.AssertModifyDBParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBParameterGroupMessage to be of type 'table'")
	assert(struct["DBParameterGroupName"], "Expected key DBParameterGroupName to exist in table")
	assert(struct["Parameters"], "Expected key Parameters to exist in table")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBParameterGroupMessage[k], "ModifyDBParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupName [String] <p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be the name of an existing DB parameter group</p> </li> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * Parameters [ParametersList] <p>An array of parameter names, values, and the apply method for the parameter update. At least one parameter name, value, and apply method must be supplied; subsequent arguments are optional. A maximum of 20 parameters can be modified in a single request.</p> <p>Valid Values (for the application method): <code>immediate | pending-reboot</code> </p> <note> <p>You can use the immediate value with dynamic parameters only. You can use the pending-reboot value for both dynamic and static parameters, and changes are applied when you reboot the DB instance without failover.</p> </note>
-- Required key: DBParameterGroupName
-- Required key: Parameters
-- @return ModifyDBParameterGroupMessage structure as a key-value pair table
function M.ModifyDBParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating ModifyDBParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertModifyDBParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBSecurityGroupMessage = { ["DBSecurityGroupName"] = true, nil }

function asserts.AssertDeleteDBSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBSecurityGroupMessage to be of type 'table'")
	assert(struct["DBSecurityGroupName"], "Expected key DBSecurityGroupName to exist in table")
	if struct["DBSecurityGroupName"] then asserts.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBSecurityGroupMessage[k], "DeleteDBSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBSecurityGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSecurityGroupName [String] <p>The name of the DB security group to delete.</p> <note> <p>You cannot delete the default DB security group.</p> </note> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> <li> <p>Must not be "Default"</p> </li> </ul>
-- Required key: DBSecurityGroupName
-- @return DeleteDBSecurityGroupMessage structure as a key-value pair table
function M.DeleteDBSecurityGroupMessage(args)
	assert(args, "You must provide an argument table when creating DeleteDBSecurityGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSecurityGroupName"] = args["DBSecurityGroupName"],
	}
	asserts.AssertDeleteDBSecurityGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBSubnetGroupsMessage = { ["Marker"] = true, ["DBSubnetGroupName"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeDBSubnetGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBSubnetGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBSubnetGroupsMessage[k], "DescribeDBSubnetGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBSubnetGroupsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous DescribeDBSubnetGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBSubnetGroupName [String] <p>The name of the DB subnet group to return details for.</p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @return DescribeDBSubnetGroupsMessage structure as a key-value pair table
function M.DescribeDBSubnetGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBSubnetGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeDBSubnetGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBInstanceResult = { ["DBInstance"] = true, nil }

function asserts.AssertDeleteDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBInstanceResult[k], "DeleteDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBInstanceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBInstance [DBInstance] 
-- @return DeleteDBInstanceResult structure as a key-value pair table
function M.DeleteDBInstanceResult(args)
	assert(args, "You must provide an argument table when creating DeleteDBInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBInstance"] = args["DBInstance"],
	}
	asserts.AssertDeleteDBInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterSnapshotNotFoundFault = { nil }

function asserts.AssertDBClusterSnapshotNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshotNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterSnapshotNotFoundFault[k], "DBClusterSnapshotNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshotNotFoundFault
-- <p> <i>DBClusterSnapshotIdentifier</i> does not refer to an existing DB cluster snapshot. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterSnapshotNotFoundFault structure as a key-value pair table
function M.DBClusterSnapshotNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBClusterSnapshotNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterSnapshotNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartDBInstanceResult = { ["DBInstance"] = true, nil }

function asserts.AssertStartDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartDBInstanceResult[k], "StartDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartDBInstanceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBInstance [DBInstance] 
-- @return StartDBInstanceResult structure as a key-value pair table
function M.StartDBInstanceResult(args)
	assert(args, "You must provide an argument table when creating StartDBInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBInstance"] = args["DBInstance"],
	}
	asserts.AssertStartDBInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBInstanceMessage = { ["Marker"] = true, ["DBInstances"] = true, nil }

function asserts.AssertDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBInstanceMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBInstances"] then asserts.AssertDBInstanceList(struct["DBInstances"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBInstanceMessage[k], "DBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBInstanceMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBInstances</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- * DBInstances [DBInstanceList] <p> A list of <a>DBInstance</a> instances. </p>
-- @return DBInstanceMessage structure as a key-value pair table
function M.DBInstanceMessage(args)
	assert(args, "You must provide an argument table when creating DBInstanceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBInstances"] = args["DBInstances"],
	}
	asserts.AssertDBInstanceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Filter = { ["Values"] = true, ["Name"] = true, nil }

function asserts.AssertFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Filter to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then asserts.AssertFilterValueList(struct["Values"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Filter[k], "Filter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Filter
-- <p>This type is not currently supported.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [FilterValueList] <p>This parameter is not currently supported.</p>
-- * Name [String] <p>This parameter is not currently supported.</p>
-- Required key: Name
-- Required key: Values
-- @return Filter structure as a key-value pair table
function M.Filter(args)
	assert(args, "You must provide an argument table when creating Filter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["Name"] = args["Name"],
	}
	asserts.AssertFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreDBInstanceToPointInTimeMessage = { ["PubliclyAccessible"] = true, ["DomainIAMRoleName"] = true, ["LicenseModel"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["CopyTagsToSnapshot"] = true, ["Engine"] = true, ["MultiAZ"] = true, ["Tags"] = true, ["AutoMinorVersionUpgrade"] = true, ["TdeCredentialArn"] = true, ["DBSubnetGroupName"] = true, ["DBName"] = true, ["TdeCredentialPassword"] = true, ["UseLatestRestorableTime"] = true, ["RestoreTime"] = true, ["SourceDBInstanceIdentifier"] = true, ["OptionGroupName"] = true, ["Domain"] = true, ["AvailabilityZone"] = true, ["StorageType"] = true, ["Iops"] = true, ["DBInstanceClass"] = true, ["Port"] = true, ["TargetDBInstanceIdentifier"] = true, nil }

function asserts.AssertRestoreDBInstanceToPointInTimeMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBInstanceToPointInTimeMessage to be of type 'table'")
	assert(struct["SourceDBInstanceIdentifier"], "Expected key SourceDBInstanceIdentifier to exist in table")
	assert(struct["TargetDBInstanceIdentifier"], "Expected key TargetDBInstanceIdentifier to exist in table")
	if struct["PubliclyAccessible"] then asserts.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["DomainIAMRoleName"] then asserts.AssertString(struct["DomainIAMRoleName"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["CopyTagsToSnapshot"] then asserts.AssertBooleanOptional(struct["CopyTagsToSnapshot"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["TdeCredentialArn"] then asserts.AssertString(struct["TdeCredentialArn"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["DBName"] then asserts.AssertString(struct["DBName"]) end
	if struct["TdeCredentialPassword"] then asserts.AssertString(struct["TdeCredentialPassword"]) end
	if struct["UseLatestRestorableTime"] then asserts.AssertBoolean(struct["UseLatestRestorableTime"]) end
	if struct["RestoreTime"] then asserts.AssertTStamp(struct["RestoreTime"]) end
	if struct["SourceDBInstanceIdentifier"] then asserts.AssertString(struct["SourceDBInstanceIdentifier"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["Domain"] then asserts.AssertString(struct["Domain"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["Iops"] then asserts.AssertIntegerOptional(struct["Iops"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["TargetDBInstanceIdentifier"] then asserts.AssertString(struct["TargetDBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBInstanceToPointInTimeMessage[k], "RestoreDBInstanceToPointInTimeMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBInstanceToPointInTimeMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PubliclyAccessible [BooleanOptional] <p>Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.</p> <p>Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.</p> <ul> <li> <p> <b>Default VPC:</b>true</p> </li> <li> <p> <b>VPC:</b>false</p> </li> </ul> <p>If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be private.</p>
-- * DomainIAMRoleName [String] <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
-- * LicenseModel [String] <p>License model information for the restored DB instance.</p> <p>Default: Same as source.</p> <p> Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- * EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts; otherwise false.</p> <p> You can enable IAM database authentication for the following database engines</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> <li> <p>Aurora 5.6 or higher.</p> </li> </ul> <p>Default: <code>false</code> </p>
-- * CopyTagsToSnapshot [BooleanOptional] <p>True to copy all tags from the restored DB instance to snapshots of the DB instance; otherwise false. The default is false.</p>
-- * Engine [String] <p>The database engine to use for the new instance.</p> <p>Default: The same as source</p> <p>Constraint: Must be compatible with the engine of the source</p> <p> Valid Values: <code>MySQL</code> | <code>mariadb</code> | <code>oracle-se1</code> | <code>oracle-se</code> | <code>oracle-ee</code> | <code>sqlserver-ee</code> | <code>sqlserver-se</code> | <code>sqlserver-ex</code> | <code>sqlserver-web</code> | <code>postgres</code> | <code>aurora</code> </p>
-- * MultiAZ [BooleanOptional] <p>Specifies if the DB instance is a Multi-AZ deployment.</p> <p>Constraint: You cannot specify the AvailabilityZone parameter if the MultiAZ parameter is set to <code>true</code>.</p>
-- * Tags [TagList] 
-- * AutoMinorVersionUpgrade [BooleanOptional] <p>Indicates that minor version upgrades will be applied automatically to the DB instance during the maintenance window.</p>
-- * TdeCredentialArn [String] <p>The ARN from the Key Store with which to associate the instance for TDE encryption.</p>
-- * DBSubnetGroupName [String] <p>The DB subnet group name to use for the new instance.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- * DBName [String] <p>The database name for the restored DB instance.</p> <note> <p>This parameter is not used for the MySQL or MariaDB engines.</p> </note>
-- * TdeCredentialPassword [String] <p>The password for the given ARN from the Key Store in order to access the device.</p>
-- * UseLatestRestorableTime [Boolean] <p> Specifies whether (<code>true</code>) or not (<code>false</code>) the DB instance is restored from the latest backup time. </p> <p>Default: <code>false</code> </p> <p>Constraints: Cannot be specified if RestoreTime parameter is provided.</p>
-- * RestoreTime [TStamp] <p>The date and time to restore from.</p> <p>Valid Values: Value must be a time in Universal Coordinated Time (UTC) format</p> <p>Constraints:</p> <ul> <li> <p>Must be before the latest restorable time for the DB instance</p> </li> <li> <p>Cannot be specified if UseLatestRestorableTime parameter is true</p> </li> </ul> <p>Example: <code>2009-09-07T23:45:00Z</code> </p>
-- * SourceDBInstanceIdentifier [String] <p>The identifier of the source DB instance from which to restore.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier of an existing database instance</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * OptionGroupName [String] <p>The name of the option group to be used for the restored DB instance.</p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, cannot be removed from an option group, and that option group cannot be removed from a DB instance once it is associated with a DB instance</p>
-- * Domain [String] <p>Specify the Active Directory Domain to restore the instance in.</p>
-- * AvailabilityZone [String] <p>The EC2 Availability Zone that the database instance will be created in.</p> <p>Default: A random, system-chosen Availability Zone.</p> <p>Constraint: You cannot specify the AvailabilityZone parameter if the MultiAZ parameter is set to true.</p> <p>Example: <code>us-east-1a</code> </p>
-- * StorageType [String] <p>Specifies the storage type to be associated with the DB instance.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified; otherwise <code>standard</code> </p>
-- * Iops [IntegerOptional] <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.</p> <p>Constraints: Must be an integer greater than 1000.</p> <p> <b>SQL Server</b> </p> <p>Setting the IOPS value for the SQL Server database engine is not supported.</p>
-- * DBInstanceClass [String] <p>The compute and memory capacity of the Amazon RDS DB instance.</p> <p>Valid Values: <code>db.t1.micro | db.m1.small | db.m1.medium | db.m1.large | db.m1.xlarge | db.m2.2xlarge | db.m2.4xlarge | db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge | db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge | db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small | db.t2.medium | db.t2.large</code> </p> <p>Default: The same DBInstanceClass as the original DB instance.</p>
-- * Port [IntegerOptional] <p>The port number on which the database accepts connections.</p> <p>Constraints: Value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB instance.</p>
-- * TargetDBInstanceIdentifier [String] <p>The name of the new database instance to be created.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required key: SourceDBInstanceIdentifier
-- Required key: TargetDBInstanceIdentifier
-- @return RestoreDBInstanceToPointInTimeMessage structure as a key-value pair table
function M.RestoreDBInstanceToPointInTimeMessage(args)
	assert(args, "You must provide an argument table when creating RestoreDBInstanceToPointInTimeMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["DomainIAMRoleName"] = args["DomainIAMRoleName"],
		["LicenseModel"] = args["LicenseModel"],
		["EnableIAMDatabaseAuthentication"] = args["EnableIAMDatabaseAuthentication"],
		["CopyTagsToSnapshot"] = args["CopyTagsToSnapshot"],
		["Engine"] = args["Engine"],
		["MultiAZ"] = args["MultiAZ"],
		["Tags"] = args["Tags"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["TdeCredentialArn"] = args["TdeCredentialArn"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["DBName"] = args["DBName"],
		["TdeCredentialPassword"] = args["TdeCredentialPassword"],
		["UseLatestRestorableTime"] = args["UseLatestRestorableTime"],
		["RestoreTime"] = args["RestoreTime"],
		["SourceDBInstanceIdentifier"] = args["SourceDBInstanceIdentifier"],
		["OptionGroupName"] = args["OptionGroupName"],
		["Domain"] = args["Domain"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["StorageType"] = args["StorageType"],
		["Iops"] = args["Iops"],
		["DBInstanceClass"] = args["DBInstanceClass"],
		["Port"] = args["Port"],
		["TargetDBInstanceIdentifier"] = args["TargetDBInstanceIdentifier"],
	}
	asserts.AssertRestoreDBInstanceToPointInTimeMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PendingMaintenanceActionsMessage = { ["Marker"] = true, ["PendingMaintenanceActions"] = true, nil }

function asserts.AssertPendingMaintenanceActionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingMaintenanceActionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["PendingMaintenanceActions"] then asserts.AssertPendingMaintenanceActions(struct["PendingMaintenanceActions"]) end
	for k,_ in pairs(struct) do
		assert(keys.PendingMaintenanceActionsMessage[k], "PendingMaintenanceActionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingMaintenanceActionsMessage
-- <p>Data returned from the <b>DescribePendingMaintenanceActions</b> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribePendingMaintenanceActions</code> request. If this parameter is specified, the response includes only records beyond the marker, up to a number of records specified by <code>MaxRecords</code>. </p>
-- * PendingMaintenanceActions [PendingMaintenanceActions] <p>A list of the pending maintenance actions for the resource.</p>
-- @return PendingMaintenanceActionsMessage structure as a key-value pair table
function M.PendingMaintenanceActionsMessage(args)
	assert(args, "You must provide an argument table when creating PendingMaintenanceActionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["PendingMaintenanceActions"] = args["PendingMaintenanceActions"],
	}
	asserts.AssertPendingMaintenanceActionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DomainNotFoundFault = { nil }

function asserts.AssertDomainNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DomainNotFoundFault[k], "DomainNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainNotFoundFault
-- <p> <i>Domain</i> does not refer to an existing Active Directory Domain. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DomainNotFoundFault structure as a key-value pair table
function M.DomainNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DomainNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDomainNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EngineDefaults = { ["Marker"] = true, ["DBParameterGroupFamily"] = true, ["Parameters"] = true, nil }

function asserts.AssertEngineDefaults(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EngineDefaults to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.EngineDefaults[k], "EngineDefaults contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EngineDefaults
-- <p> Contains the result of a successful invocation of the <a>DescribeEngineDefaultParameters</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous EngineDefaults request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- * DBParameterGroupFamily [String] <p>Specifies the name of the DB parameter group family that the engine default parameters apply to.</p>
-- * Parameters [ParametersList] <p>Contains a list of engine default parameters.</p>
-- @return EngineDefaults structure as a key-value pair table
function M.EngineDefaults(args)
	assert(args, "You must provide an argument table when creating EngineDefaults")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertEngineDefaults(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBParameterGroupQuotaExceededFault = { nil }

function asserts.AssertDBParameterGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBParameterGroupQuotaExceededFault[k], "DBParameterGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupQuotaExceededFault
-- <p>Request would result in user exceeding the allowed number of DB parameter groups.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBParameterGroupQuotaExceededFault structure as a key-value pair table
function M.DBParameterGroupQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating DBParameterGroupQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBParameterGroupQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DomainMembership = { ["Status"] = true, ["IAMRoleName"] = true, ["Domain"] = true, ["FQDN"] = true, nil }

function asserts.AssertDomainMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainMembership to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["IAMRoleName"] then asserts.AssertString(struct["IAMRoleName"]) end
	if struct["Domain"] then asserts.AssertString(struct["Domain"]) end
	if struct["FQDN"] then asserts.AssertString(struct["FQDN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainMembership[k], "DomainMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainMembership
-- <p>An Active Directory Domain membership record associated with the DB instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the DB instance's Active Directory Domain membership, such as joined, pending-join, failed etc).</p>
-- * IAMRoleName [String] <p>The name of the IAM role to be used when making API calls to the Directory Service.</p>
-- * Domain [String] <p>The identifier of the Active Directory Domain.</p>
-- * FQDN [String] <p>The fully qualified domain name of the Active Directory Domain.</p>
-- @return DomainMembership structure as a key-value pair table
function M.DomainMembership(args)
	assert(args, "You must provide an argument table when creating DomainMembership")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["IAMRoleName"] = args["IAMRoleName"],
		["Domain"] = args["Domain"],
		["FQDN"] = args["FQDN"],
	}
	asserts.AssertDomainMembership(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterRoleAlreadyExistsFault = { nil }

function asserts.AssertDBClusterRoleAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterRoleAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterRoleAlreadyExistsFault[k], "DBClusterRoleAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterRoleAlreadyExistsFault
-- <p>The specified IAM role Amazon Resource Name (ARN) is already associated with the specified DB cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterRoleAlreadyExistsFault structure as a key-value pair table
function M.DBClusterRoleAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating DBClusterRoleAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterRoleAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservedDBInstanceMessage = { ["Marker"] = true, ["ReservedDBInstances"] = true, nil }

function asserts.AssertReservedDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstanceMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ReservedDBInstances"] then asserts.AssertReservedDBInstanceList(struct["ReservedDBInstances"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedDBInstanceMessage[k], "ReservedDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstanceMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeReservedDBInstances</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * ReservedDBInstances [ReservedDBInstanceList] <p>A list of reserved DB instances.</p>
-- @return ReservedDBInstanceMessage structure as a key-value pair table
function M.ReservedDBInstanceMessage(args)
	assert(args, "You must provide an argument table when creating ReservedDBInstanceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ReservedDBInstances"] = args["ReservedDBInstances"],
	}
	asserts.AssertReservedDBInstanceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBParameterGroupStatus = { ["DBParameterGroupName"] = true, ["ParameterApplyStatus"] = true, nil }

function asserts.AssertDBParameterGroupStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupStatus to be of type 'table'")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["ParameterApplyStatus"] then asserts.AssertString(struct["ParameterApplyStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBParameterGroupStatus[k], "DBParameterGroupStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupStatus
-- <p>The status of the DB parameter group.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateDBInstance</a> </p> </li> <li> <p> <a>CreateDBInstanceReadReplica</a> </p> </li> <li> <p> <a>DeleteDBInstance</a> </p> </li> <li> <p> <a>ModifyDBInstance</a> </p> </li> <li> <p> <a>RebootDBInstance</a> </p> </li> <li> <p> <a>RestoreDBInstanceFromDBSnapshot</a> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupName [String] <p>The name of the DP parameter group.</p>
-- * ParameterApplyStatus [String] <p>The status of parameter updates.</p>
-- @return DBParameterGroupStatus structure as a key-value pair table
function M.DBParameterGroupStatus(args)
	assert(args, "You must provide an argument table when creating DBParameterGroupStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["ParameterApplyStatus"] = args["ParameterApplyStatus"],
	}
	asserts.AssertDBParameterGroupStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterSnapshotAttributesResult = { ["DBClusterSnapshotAttributes"] = true, ["DBClusterSnapshotIdentifier"] = true, nil }

function asserts.AssertDBClusterSnapshotAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshotAttributesResult to be of type 'table'")
	if struct["DBClusterSnapshotAttributes"] then asserts.AssertDBClusterSnapshotAttributeList(struct["DBClusterSnapshotAttributes"]) end
	if struct["DBClusterSnapshotIdentifier"] then asserts.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterSnapshotAttributesResult[k], "DBClusterSnapshotAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshotAttributesResult
-- <p>Contains the results of a successful call to the <a>DescribeDBClusterSnapshotAttributes</a> API action.</p> <p>Manual DB cluster snapshot attributes are used to authorize other AWS accounts to copy or restore a manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshotAttributes [DBClusterSnapshotAttributeList] <p>The list of attributes and values for the manual DB cluster snapshot.</p>
-- * DBClusterSnapshotIdentifier [String] <p>The identifier of the manual DB cluster snapshot that the attributes apply to.</p>
-- @return DBClusterSnapshotAttributesResult structure as a key-value pair table
function M.DBClusterSnapshotAttributesResult(args)
	assert(args, "You must provide an argument table when creating DBClusterSnapshotAttributesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshotAttributes"] = args["DBClusterSnapshotAttributes"],
		["DBClusterSnapshotIdentifier"] = args["DBClusterSnapshotIdentifier"],
	}
	asserts.AssertDBClusterSnapshotAttributesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Endpoint = { ["HostedZoneId"] = true, ["Port"] = true, ["Address"] = true, nil }

function asserts.AssertEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Endpoint to be of type 'table'")
	if struct["HostedZoneId"] then asserts.AssertString(struct["HostedZoneId"]) end
	if struct["Port"] then asserts.AssertInteger(struct["Port"]) end
	if struct["Address"] then asserts.AssertString(struct["Address"]) end
	for k,_ in pairs(struct) do
		assert(keys.Endpoint[k], "Endpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Endpoint
-- <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateDBInstance</a> </p> </li> <li> <p> <a>DescribeDBInstances</a> </p> </li> <li> <p> <a>DeleteDBInstance</a> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneId [String] <p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>
-- * Port [Integer] <p>Specifies the port that the database engine is listening on.</p>
-- * Address [String] <p>Specifies the DNS address of the DB instance.</p>
-- @return Endpoint structure as a key-value pair table
function M.Endpoint(args)
	assert(args, "You must provide an argument table when creating Endpoint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HostedZoneId"] = args["HostedZoneId"],
		["Port"] = args["Port"],
		["Address"] = args["Address"],
	}
	asserts.AssertEndpoint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidS3BucketFault = { nil }

function asserts.AssertInvalidS3BucketFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidS3BucketFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidS3BucketFault[k], "InvalidS3BucketFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidS3BucketFault
-- <p>The specified Amazon S3 bucket name could not be found or Amazon RDS is not authorized to access the specified Amazon S3 bucket. Verify the <b>SourceS3BucketName</b> and <b>S3IngestionRoleArn</b> values and try again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidS3BucketFault structure as a key-value pair table
function M.InvalidS3BucketFault(args)
	assert(args, "You must provide an argument table when creating InvalidS3BucketFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidS3BucketFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OptionGroupOptionSetting = { ["SettingDescription"] = true, ["DefaultValue"] = true, ["AllowedValues"] = true, ["IsModifiable"] = true, ["SettingName"] = true, ["ApplyType"] = true, nil }

function asserts.AssertOptionGroupOptionSetting(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupOptionSetting to be of type 'table'")
	if struct["SettingDescription"] then asserts.AssertString(struct["SettingDescription"]) end
	if struct["DefaultValue"] then asserts.AssertString(struct["DefaultValue"]) end
	if struct["AllowedValues"] then asserts.AssertString(struct["AllowedValues"]) end
	if struct["IsModifiable"] then asserts.AssertBoolean(struct["IsModifiable"]) end
	if struct["SettingName"] then asserts.AssertString(struct["SettingName"]) end
	if struct["ApplyType"] then asserts.AssertString(struct["ApplyType"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionGroupOptionSetting[k], "OptionGroupOptionSetting contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupOptionSetting
-- <p>Option group option settings are used to display settings available for each option with their default values and other information. These values are used with the DescribeOptionGroupOptions action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SettingDescription [String] <p>The description of the option group option.</p>
-- * DefaultValue [String] <p>The default value for the option group option.</p>
-- * AllowedValues [String] <p>Indicates the acceptable values for the option group option.</p>
-- * IsModifiable [Boolean] <p>Boolean value where true indicates that this option group option can be changed from the default value.</p>
-- * SettingName [String] <p>The name of the option group option.</p>
-- * ApplyType [String] <p>The DB engine specific parameter type for the option group option.</p>
-- @return OptionGroupOptionSetting structure as a key-value pair table
function M.OptionGroupOptionSetting(args)
	assert(args, "You must provide an argument table when creating OptionGroupOptionSetting")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SettingDescription"] = args["SettingDescription"],
		["DefaultValue"] = args["DefaultValue"],
		["AllowedValues"] = args["AllowedValues"],
		["IsModifiable"] = args["IsModifiable"],
		["SettingName"] = args["SettingName"],
		["ApplyType"] = args["ApplyType"],
	}
	asserts.AssertOptionGroupOptionSetting(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterRoleNotFoundFault = { nil }

function asserts.AssertDBClusterRoleNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterRoleNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterRoleNotFoundFault[k], "DBClusterRoleNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterRoleNotFoundFault
-- <p>The specified IAM role Amazon Resource Name (ARN) is not associated with the specified DB cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterRoleNotFoundFault structure as a key-value pair table
function M.DBClusterRoleNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBClusterRoleNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterRoleNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSnapshotAttributesResult = { ["DBSnapshotIdentifier"] = true, ["DBSnapshotAttributes"] = true, nil }

function asserts.AssertDBSnapshotAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshotAttributesResult to be of type 'table'")
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["DBSnapshotAttributes"] then asserts.AssertDBSnapshotAttributeList(struct["DBSnapshotAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSnapshotAttributesResult[k], "DBSnapshotAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshotAttributesResult
-- <p>Contains the results of a successful call to the <a>DescribeDBSnapshotAttributes</a> API action.</p> <p>Manual DB snapshot attributes are used to authorize other AWS accounts to copy or restore a manual DB snapshot. For more information, see the <a>ModifyDBSnapshotAttribute</a> API action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSnapshotIdentifier [String] <p>The identifier of the manual DB snapshot that the attributes apply to.</p>
-- * DBSnapshotAttributes [DBSnapshotAttributeList] <p>The list of attributes and values for the manual DB snapshot.</p>
-- @return DBSnapshotAttributesResult structure as a key-value pair table
function M.DBSnapshotAttributesResult(args)
	assert(args, "You must provide an argument table when creating DBSnapshotAttributesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSnapshotIdentifier"] = args["DBSnapshotIdentifier"],
		["DBSnapshotAttributes"] = args["DBSnapshotAttributes"],
	}
	asserts.AssertDBSnapshotAttributesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventSubscription = { ["Status"] = true, ["SubscriptionCreationTime"] = true, ["SourceType"] = true, ["EventCategoriesList"] = true, ["EventSubscriptionArn"] = true, ["SourceIdsList"] = true, ["CustSubscriptionId"] = true, ["Enabled"] = true, ["SnsTopicArn"] = true, ["CustomerAwsId"] = true, nil }

function asserts.AssertEventSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSubscription to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["SubscriptionCreationTime"] then asserts.AssertString(struct["SubscriptionCreationTime"]) end
	if struct["SourceType"] then asserts.AssertString(struct["SourceType"]) end
	if struct["EventCategoriesList"] then asserts.AssertEventCategoriesList(struct["EventCategoriesList"]) end
	if struct["EventSubscriptionArn"] then asserts.AssertString(struct["EventSubscriptionArn"]) end
	if struct["SourceIdsList"] then asserts.AssertSourceIdsList(struct["SourceIdsList"]) end
	if struct["CustSubscriptionId"] then asserts.AssertString(struct["CustSubscriptionId"]) end
	if struct["Enabled"] then asserts.AssertBoolean(struct["Enabled"]) end
	if struct["SnsTopicArn"] then asserts.AssertString(struct["SnsTopicArn"]) end
	if struct["CustomerAwsId"] then asserts.AssertString(struct["CustomerAwsId"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventSubscription[k], "EventSubscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSubscription
-- <p>Contains the results of a successful invocation of the <a>DescribeEventSubscriptions</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the RDS event notification subscription.</p> <p>Constraints:</p> <p>Can be one of the following: creating | modifying | deleting | active | no-permission | topic-not-exist</p> <p>The status "no-permission" indicates that RDS no longer has permission to post to the SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the subscription was created.</p>
-- * SubscriptionCreationTime [String] <p>The time the RDS event notification subscription was created.</p>
-- * SourceType [String] <p>The source type for the RDS event notification subscription.</p>
-- * EventCategoriesList [EventCategoriesList] <p>A list of event categories for the RDS event notification subscription.</p>
-- * EventSubscriptionArn [String] <p>The Amazon Resource Name (ARN) for the event subscription.</p>
-- * SourceIdsList [SourceIdsList] <p>A list of source IDs for the RDS event notification subscription.</p>
-- * CustSubscriptionId [String] <p>The RDS event notification subscription Id.</p>
-- * Enabled [Boolean] <p>A Boolean value indicating if the subscription is enabled. True indicates the subscription is enabled.</p>
-- * SnsTopicArn [String] <p>The topic ARN of the RDS event notification subscription.</p>
-- * CustomerAwsId [String] <p>The AWS customer account associated with the RDS event notification subscription.</p>
-- @return EventSubscription structure as a key-value pair table
function M.EventSubscription(args)
	assert(args, "You must provide an argument table when creating EventSubscription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["SubscriptionCreationTime"] = args["SubscriptionCreationTime"],
		["SourceType"] = args["SourceType"],
		["EventCategoriesList"] = args["EventCategoriesList"],
		["EventSubscriptionArn"] = args["EventSubscriptionArn"],
		["SourceIdsList"] = args["SourceIdsList"],
		["CustSubscriptionId"] = args["CustSubscriptionId"],
		["Enabled"] = args["Enabled"],
		["SnsTopicArn"] = args["SnsTopicArn"],
		["CustomerAwsId"] = args["CustomerAwsId"],
	}
	asserts.AssertEventSubscription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBInstanceMessage = { ["DBParameterGroupName"] = true, ["AllowMajorVersionUpgrade"] = true, ["DomainIAMRoleName"] = true, ["MonitoringInterval"] = true, ["LicenseModel"] = true, ["VpcSecurityGroupIds"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["CopyTagsToSnapshot"] = true, ["NewDBInstanceIdentifier"] = true, ["MultiAZ"] = true, ["DBSecurityGroups"] = true, ["PubliclyAccessible"] = true, ["AutoMinorVersionUpgrade"] = true, ["PreferredBackupWindow"] = true, ["PromotionTier"] = true, ["TdeCredentialArn"] = true, ["AllocatedStorage"] = true, ["DBSubnetGroupName"] = true, ["PreferredMaintenanceWindow"] = true, ["TdeCredentialPassword"] = true, ["DBPortNumber"] = true, ["ApplyImmediately"] = true, ["EngineVersion"] = true, ["BackupRetentionPeriod"] = true, ["OptionGroupName"] = true, ["Domain"] = true, ["MonitoringRoleArn"] = true, ["StorageType"] = true, ["CACertificateIdentifier"] = true, ["MasterUserPassword"] = true, ["Iops"] = true, ["DBInstanceClass"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertModifyDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["AllowMajorVersionUpgrade"] then asserts.AssertBoolean(struct["AllowMajorVersionUpgrade"]) end
	if struct["DomainIAMRoleName"] then asserts.AssertString(struct["DomainIAMRoleName"]) end
	if struct["MonitoringInterval"] then asserts.AssertIntegerOptional(struct["MonitoringInterval"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["CopyTagsToSnapshot"] then asserts.AssertBooleanOptional(struct["CopyTagsToSnapshot"]) end
	if struct["NewDBInstanceIdentifier"] then asserts.AssertString(struct["NewDBInstanceIdentifier"]) end
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["DBSecurityGroups"] then asserts.AssertDBSecurityGroupNameList(struct["DBSecurityGroups"]) end
	if struct["PubliclyAccessible"] then asserts.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["PreferredBackupWindow"] then asserts.AssertString(struct["PreferredBackupWindow"]) end
	if struct["PromotionTier"] then asserts.AssertIntegerOptional(struct["PromotionTier"]) end
	if struct["TdeCredentialArn"] then asserts.AssertString(struct["TdeCredentialArn"]) end
	if struct["AllocatedStorage"] then asserts.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["TdeCredentialPassword"] then asserts.AssertString(struct["TdeCredentialPassword"]) end
	if struct["DBPortNumber"] then asserts.AssertIntegerOptional(struct["DBPortNumber"]) end
	if struct["ApplyImmediately"] then asserts.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["Domain"] then asserts.AssertString(struct["Domain"]) end
	if struct["MonitoringRoleArn"] then asserts.AssertString(struct["MonitoringRoleArn"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["CACertificateIdentifier"] then asserts.AssertString(struct["CACertificateIdentifier"]) end
	if struct["MasterUserPassword"] then asserts.AssertString(struct["MasterUserPassword"]) end
	if struct["Iops"] then asserts.AssertIntegerOptional(struct["Iops"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBInstanceMessage[k], "ModifyDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBInstanceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupName [String] <p>The name of the DB parameter group to apply to the DB instance. Changing this setting does not result in an outage. The parameter group name itself is changed immediately, but the actual parameter changes are not applied until you reboot the instance without failover. The db instance will NOT be rebooted automatically and the parameter changes will NOT be applied during the next maintenance window.</p> <p>Default: Uses existing setting</p> <p>Constraints: The DB parameter group must be in the same DB parameter group family as this DB instance.</p>
-- * AllowMajorVersionUpgrade [Boolean] <p>Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible.</p> <p>Constraints: This parameter must be set to true when specifying a value for the EngineVersion parameter that is a different major version than the DB instance's current version.</p>
-- * DomainIAMRoleName [String] <p>The name of the IAM role to use when making API calls to the Directory Service.</p>
-- * MonitoringInterval [IntegerOptional] <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p> <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code> to a value other than 0.</p> <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code> </p>
-- * LicenseModel [String] <p>The license model for the DB instance.</p> <p>Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of EC2 VPC security groups to authorize on this DB instance. This change is asynchronously applied as soon as possible.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts; otherwise false.</p> <p> You can enable IAM database authentication for the following database engines</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> </ul> <p>Default: <code>false</code> </p>
-- * CopyTagsToSnapshot [BooleanOptional] <p>True to copy all tags from the DB instance to snapshots of the DB instance; otherwise false. The default is false.</p>
-- * NewDBInstanceIdentifier [String] <p> The new DB instance identifier for the DB instance when renaming a DB instance. When you change the DB instance identifier, an instance reboot will occur immediately if you set <code>Apply Immediately</code> to true, or will occur during the next maintenance window if <code>Apply Immediately</code> to false. This value is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * MultiAZ [BooleanOptional] <p> Specifies if the DB instance is a Multi-AZ deployment. Changing this parameter does not result in an outage and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. </p> <p>Constraints: Cannot be specified if the DB instance is a Read Replica.</p>
-- * DBSecurityGroups [DBSecurityGroupNameList] <p>A list of DB security groups to authorize on this DB instance. Changing this setting does not result in an outage and the change is asynchronously applied as soon as possible.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * PubliclyAccessible [BooleanOptional] <p>Boolean value that indicates if the DB instance has a publicly resolvable DNS name. Set to <code>True</code> to make the DB instance Internet-facing with a publicly resolvable DNS name, which resolves to a public IP address. Set to <code>False</code> to make the DB instance internal with a DNS name that resolves to a private IP address. </p> <p> <code>PubliclyAccessible</code> only applies to DB instances in a VPC. The DB instance must be part of a public subnet and <code>PubliclyAccessible</code> must be true in order for it to be publicly accessible. </p> <p>Changes to the <code>PubliclyAccessible</code> parameter are applied immediately regardless of the value of the <code>ApplyImmediately</code> parameter.</p> <p>Default: false</p>
-- * AutoMinorVersionUpgrade [BooleanOptional] <p> Indicates that minor version upgrades will be applied automatically to the DB instance during the maintenance window. Changing this parameter does not result in an outage except in the following case and the change is asynchronously applied as soon as possible. An outage will result if this parameter is set to <code>true</code> during the maintenance window, and a newer minor version is available, and RDS has enabled auto patching for that engine version. </p>
-- * PreferredBackupWindow [String] <p> The daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code> parameter. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible. </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format hh24:mi-hh24:mi</p> </li> <li> <p>Times should be in Universal Time Coordinated (UTC)</p> </li> <li> <p>Must not conflict with the preferred maintenance window</p> </li> <li> <p>Must be at least 30 minutes</p> </li> </ul>
-- * PromotionTier [IntegerOptional] <p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance"> Fault Tolerance for an Aurora DB Cluster</a>. </p> <p>Default: 1</p> <p>Valid Values: 0 - 15</p>
-- * TdeCredentialArn [String] <p>The ARN from the Key Store with which to associate the instance for TDE encryption.</p>
-- * AllocatedStorage [IntegerOptional] <p> The new storage capacity of the RDS instance. Changing this setting does not result in an outage and the change is applied during the next maintenance window unless <code>ApplyImmediately</code> is set to <code>true</code> for this request. </p> <p> <b>MySQL</b> </p> <p>Default: Uses existing setting</p> <p>Valid Values: 5-6144</p> <p>Constraints: Value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value.</p> <p>Type: Integer</p> <p> <b>MariaDB</b> </p> <p>Default: Uses existing setting</p> <p>Valid Values: 5-6144</p> <p>Constraints: Value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value.</p> <p>Type: Integer</p> <p> <b>PostgreSQL</b> </p> <p>Default: Uses existing setting</p> <p>Valid Values: 5-6144</p> <p>Constraints: Value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value.</p> <p>Type: Integer</p> <p> <b>Oracle</b> </p> <p>Default: Uses existing setting</p> <p>Valid Values: 10-6144</p> <p>Constraints: Value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value.</p> <p> <b>SQL Server</b> </p> <p>Cannot be modified.</p> <p>If you choose to migrate your DB instance from using standard storage to using Provisioned IOPS, or from using Provisioned IOPS to using standard storage, the process can take time. The duration of the migration depends on several factors such as database load, storage size, storage type (standard or Provisioned IOPS), amount of IOPS provisioned (if any), and the number of prior scale storage operations. Typical migration times are under 24 hours, but the process can take up to several days in some cases. During the migration, the DB instance will be available for use, but might experience performance degradation. While the migration takes place, nightly backups for the instance will be suspended. No other Amazon RDS operations can take place for the instance, including modifying the instance, rebooting the instance, deleting the instance, creating a Read Replica for the instance, and creating a DB snapshot of the instance.</p>
-- * DBSubnetGroupName [String] <p>The new DB subnet group for the DB instance. You can use this parameter to move your DB instance to a different VPC. If your DB instance is not in a VPC, you can also use this parameter to move your DB instance into a VPC. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html#USER_VPC.Non-VPC2VPC">Updating the VPC for a DB Instance</a>. </p> <p>Changing the subnet group causes an outage during the change. The change is applied during the next maintenance window, unless you specify <code>true</code> for the <code>ApplyImmediately</code> parameter. </p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens.</p> <p>Example: <code>mySubnetGroup</code> </p>
-- * PreferredMaintenanceWindow [String] <p>The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter does not result in an outage, except in the following situation, and the change is asynchronously applied as soon as possible. If there are pending actions that cause a reboot, and the maintenance window is changed to include the current time, then changing this parameter will cause a reboot of the DB instance. If moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure pending changes are applied.</p> <p>Default: Uses existing setting</p> <p>Format: ddd:hh24:mi-ddd:hh24:mi</p> <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p> <p>Constraints: Must be at least 30 minutes</p>
-- * TdeCredentialPassword [String] <p>The password for the given ARN from the Key Store in order to access the device.</p>
-- * DBPortNumber [IntegerOptional] <p>The port number on which the database accepts connections.</p> <p>The value of the <code>DBPortNumber</code> parameter must not match any of the port values specified for options in the option group for the DB instance.</p> <p>Your database will restart when you change the <code>DBPortNumber</code> value regardless of the value of the <code>ApplyImmediately</code> parameter.</p> <p> <b>MySQL</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p> <b>MariaDB</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p> <b>PostgreSQL</b> </p> <p> Default: <code>5432</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p>Type: Integer</p> <p> <b>Oracle</b> </p> <p> Default: <code>1521</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p> <b>SQL Server</b> </p> <p> Default: <code>1433</code> </p> <p> Valid Values: <code>1150-65535</code> except for <code>1434</code>, <code>3389</code>, <code>47001</code>, <code>49152</code>, and <code>49152</code> through <code>49156</code>. </p> <p> <b>Amazon Aurora</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p>
-- * ApplyImmediately [Boolean] <p>Specifies whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the <code>PreferredMaintenanceWindow</code> setting for the DB instance. </p> <p> If this parameter is set to <code>false</code>, changes to the DB instance are applied during the next maintenance window. Some parameter changes can cause an outage and will be applied on the next call to <a>RebootDBInstance</a>, or the next failure reboot. Review the table of parameters in <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html">Modifying a DB Instance and Using the Apply Immediately Parameter</a> to see the impact that setting <code>ApplyImmediately</code> to <code>true</code> or <code>false</code> has for each modified parameter and to determine when the changes will be applied. </p> <p>Default: <code>false</code> </p>
-- * EngineVersion [String] <p> The version number of the database engine to upgrade to. Changing this parameter results in an outage and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. </p> <p>For major version upgrades, if a non-default DB parameter group is currently in use, a new DB parameter group in the DB parameter group family for the new engine version must be specified. The new DB parameter group can be the default for that DB parameter group family.</p> <p>For a list of valid engine versions, see <a>CreateDBInstance</a>.</p>
-- * BackupRetentionPeriod [IntegerOptional] <p>The number of days to retain automated backups. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p> <p>Changing this parameter can result in an outage if you change from 0 to a non-zero value or from a non-zero value to 0. These changes are applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. If you change the parameter from one non-zero value to another non-zero value, the change is asynchronously applied as soon as possible.</p> <p>Default: Uses existing setting</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 0 to 35</p> </li> <li> <p>Can be specified for a MySQL Read Replica only if the source is running MySQL 5.6</p> </li> <li> <p>Can be specified for a PostgreSQL Read Replica only if the source is running PostgreSQL 9.3.5</p> </li> <li> <p>Cannot be set to 0 if the DB instance is a source to Read Replicas</p> </li> </ul>
-- * OptionGroupName [String] <p> Indicates that the DB instance should be associated with the specified option group. Changing this parameter does not result in an outage except in the following case and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. If the parameter change results in an option group that enables OEM, this change can cause a brief (sub-second) period during which new connections are rejected but existing connections are not interrupted. </p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, cannot be removed from an option group, and that option group cannot be removed from a DB instance once it is associated with a DB instance</p>
-- * Domain [String] <p>The Active Directory Domain to move the instance to. Specify <code>none</code> to remove the instance from its current domain. The domain must be created prior to this operation. Currently only a Microsoft SQL Server instance can be created in a Active Directory Domain. </p>
-- * MonitoringRoleArn [String] <p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role, go to <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole">To create an IAM role for Amazon RDS Enhanced Monitoring</a>.</p> <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>
-- * StorageType [String] <p>Specifies the storage type to be associated with the DB instance.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified; otherwise <code>standard</code> </p>
-- * CACertificateIdentifier [String] <p>Indicates the certificate that needs to be associated with the instance.</p>
-- * MasterUserPassword [String] <p>The new password for the DB instance master user. Can be any printable ASCII character except "/", """, or "@".</p> <p> Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible. Between the time of the request and the completion of the request, the <code>MasterUserPassword</code> element exists in the <code>PendingModifiedValues</code> element of the operation response. </p> <p>Default: Uses existing setting</p> <p>Constraints: Must be 8 to 41 alphanumeric characters (MySQL, MariaDB, and Amazon Aurora), 8 to 30 alphanumeric characters (Oracle), or 8 to 128 alphanumeric characters (SQL Server).</p> <note> <p>Amazon RDS API actions never return the password, so this action provides a way to regain access to a primary instance user if the password is lost. This includes restoring privileges that might have been accidentally revoked.</p> </note>
-- * Iops [IntegerOptional] <p> The new Provisioned IOPS (I/O operations per second) value for the RDS instance. Changing this setting does not result in an outage and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. </p> <p>Default: Uses existing setting</p> <p>Constraints: Value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value. If you are migrating from Provisioned IOPS to standard storage, set this value to 0. The DB instance will require a reboot for the change in storage type to take effect.</p> <p> <b>SQL Server</b> </p> <p>Setting the IOPS value for the SQL Server database engine is not supported.</p> <p>Type: Integer</p> <p>If you choose to migrate your DB instance from using standard storage to using Provisioned IOPS, or from using Provisioned IOPS to using standard storage, the process can take time. The duration of the migration depends on several factors such as database load, storage size, storage type (standard or Provisioned IOPS), amount of IOPS provisioned (if any), and the number of prior scale storage operations. Typical migration times are under 24 hours, but the process can take up to several days in some cases. During the migration, the DB instance will be available for use, but might experience performance degradation. While the migration takes place, nightly backups for the instance will be suspended. No other Amazon RDS operations can take place for the instance, including modifying the instance, rebooting the instance, deleting the instance, creating a Read Replica for the instance, and creating a DB snapshot of the instance.</p>
-- * DBInstanceClass [String] <p> The new compute and memory capacity of the DB instance. To determine the instance classes that are available for a particular DB engine, use the <a>DescribeOrderableDBInstanceOptions</a> action. Note that not all instance classes are available in all regions for all DB engines. </p> <p> Passing a value for this setting causes an outage during the change and is applied during the next maintenance window, unless <code>ApplyImmediately</code> is specified as <code>true</code> for this request. </p> <p>Default: Uses existing setting</p> <p>Valid Values: <code>db.t1.micro | db.m1.small | db.m1.medium | db.m1.large | db.m1.xlarge | db.m2.xlarge | db.m2.2xlarge | db.m2.4xlarge | db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge | db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge | db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small | db.t2.medium | db.t2.large</code> </p>
-- * DBInstanceIdentifier [String] <p>The DB instance identifier. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier for an existing DB instance</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required key: DBInstanceIdentifier
-- @return ModifyDBInstanceMessage structure as a key-value pair table
function M.ModifyDBInstanceMessage(args)
	assert(args, "You must provide an argument table when creating ModifyDBInstanceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["AllowMajorVersionUpgrade"] = args["AllowMajorVersionUpgrade"],
		["DomainIAMRoleName"] = args["DomainIAMRoleName"],
		["MonitoringInterval"] = args["MonitoringInterval"],
		["LicenseModel"] = args["LicenseModel"],
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["EnableIAMDatabaseAuthentication"] = args["EnableIAMDatabaseAuthentication"],
		["CopyTagsToSnapshot"] = args["CopyTagsToSnapshot"],
		["NewDBInstanceIdentifier"] = args["NewDBInstanceIdentifier"],
		["MultiAZ"] = args["MultiAZ"],
		["DBSecurityGroups"] = args["DBSecurityGroups"],
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["PromotionTier"] = args["PromotionTier"],
		["TdeCredentialArn"] = args["TdeCredentialArn"],
		["AllocatedStorage"] = args["AllocatedStorage"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["TdeCredentialPassword"] = args["TdeCredentialPassword"],
		["DBPortNumber"] = args["DBPortNumber"],
		["ApplyImmediately"] = args["ApplyImmediately"],
		["EngineVersion"] = args["EngineVersion"],
		["BackupRetentionPeriod"] = args["BackupRetentionPeriod"],
		["OptionGroupName"] = args["OptionGroupName"],
		["Domain"] = args["Domain"],
		["MonitoringRoleArn"] = args["MonitoringRoleArn"],
		["StorageType"] = args["StorageType"],
		["CACertificateIdentifier"] = args["CACertificateIdentifier"],
		["MasterUserPassword"] = args["MasterUserPassword"],
		["Iops"] = args["Iops"],
		["DBInstanceClass"] = args["DBInstanceClass"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertModifyDBInstanceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubnetAlreadyInUse = { nil }

function asserts.AssertSubnetAlreadyInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetAlreadyInUse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubnetAlreadyInUse[k], "SubnetAlreadyInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetAlreadyInUse
-- <p>The DB subnet is already in use in the Availability Zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SubnetAlreadyInUse structure as a key-value pair table
function M.SubnetAlreadyInUse(args)
	assert(args, "You must provide an argument table when creating SubnetAlreadyInUse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSubnetAlreadyInUse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertSourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected SourceType to be of type 'string'")
end

--  
function M.SourceType(str)
	asserts.AssertSourceType(str)
	return str
end

function asserts.AssertApplyMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplyMethod to be of type 'string'")
end

--  
function M.ApplyMethod(str)
	asserts.AssertApplyMethod(str)
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

function asserts.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	asserts.AssertDouble(double)
	return double
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

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
end

function asserts.AssertIntegerOptional(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IntegerOptional to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.IntegerOptional(integer)
	asserts.AssertIntegerOptional(integer)
	return integer
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertBooleanOptional(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanOptional to be of type 'boolean'")
end

function M.BooleanOptional(boolean)
	asserts.AssertBooleanOptional(boolean)
	return boolean
end

function asserts.AssertTStamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TStamp to be of type 'string'")
end

function M.TStamp(timestamp)
	asserts.AssertTStamp(timestamp)
	return timestamp
end

function asserts.AssertOptionGroupMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionGroupMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOptionGroupMembership(v)
	end
end

--  
-- List of OptionGroupMembership objects
function M.OptionGroupMembershipList(list)
	asserts.AssertOptionGroupMembershipList(list)
	return list
end

function asserts.AssertParametersList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParametersList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameter(v)
	end
end

--  
-- List of Parameter objects
function M.ParametersList(list)
	asserts.AssertParametersList(list)
	return list
end

function asserts.AssertOptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOption(v)
	end
end

--  
-- List of Option objects
function M.OptionsList(list)
	asserts.AssertOptionsList(list)
	return list
end

function asserts.AssertDBSnapshotAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSnapshotAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBSnapshotAttribute(v)
	end
end

--  
-- List of DBSnapshotAttribute objects
function M.DBSnapshotAttributeList(list)
	asserts.AssertDBSnapshotAttributeList(list)
	return list
end

function asserts.AssertDBSecurityGroupMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSecurityGroupMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBSecurityGroupMembership(v)
	end
end

--  
-- List of DBSecurityGroupMembership objects
function M.DBSecurityGroupMembershipList(list)
	asserts.AssertDBSecurityGroupMembershipList(list)
	return list
end

function asserts.AssertEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEvent(v)
	end
end

--  
-- List of Event objects
function M.EventList(list)
	asserts.AssertEventList(list)
	return list
end

function asserts.AssertRecurringChargeList(list)
	assert(list)
	assert(type(list) == "table", "Expected RecurringChargeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRecurringCharge(v)
	end
end

--  
-- List of RecurringCharge objects
function M.RecurringChargeList(list)
	asserts.AssertRecurringChargeList(list)
	return list
end

function asserts.AssertDBSnapshotList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSnapshotList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBSnapshot(v)
	end
end

--  
-- List of DBSnapshot objects
function M.DBSnapshotList(list)
	asserts.AssertDBSnapshotList(list)
	return list
end

function asserts.AssertValidUpgradeTargetList(list)
	assert(list)
	assert(type(list) == "table", "Expected ValidUpgradeTargetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUpgradeTarget(v)
	end
end

--  
-- List of UpgradeTarget objects
function M.ValidUpgradeTargetList(list)
	asserts.AssertValidUpgradeTargetList(list)
	return list
end

function asserts.AssertSourceRegionList(list)
	assert(list)
	assert(type(list) == "table", "Expected SourceRegionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSourceRegion(v)
	end
end

--  
-- List of SourceRegion objects
function M.SourceRegionList(list)
	asserts.AssertSourceRegionList(list)
	return list
end

function asserts.AssertReadReplicaDBInstanceIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReadReplicaDBInstanceIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ReadReplicaDBInstanceIdentifierList(list)
	asserts.AssertReadReplicaDBInstanceIdentifierList(list)
	return list
end

function asserts.AssertDBParameterGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBParameterGroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBParameterGroup(v)
	end
end

--  
-- List of DBParameterGroup objects
function M.DBParameterGroupList(list)
	asserts.AssertDBParameterGroupList(list)
	return list
end

function asserts.AssertFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFilter(v)
	end
end

--  
-- List of Filter objects
function M.FilterList(list)
	asserts.AssertFilterList(list)
	return list
end

function asserts.AssertOptionGroupOptionSettingsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionGroupOptionSettingsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOptionGroupOptionSetting(v)
	end
end

--  
-- List of OptionGroupOptionSetting objects
function M.OptionGroupOptionSettingsList(list)
	asserts.AssertOptionGroupOptionSettingsList(list)
	return list
end

function asserts.AssertReadReplicaIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReadReplicaIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ReadReplicaIdentifierList(list)
	asserts.AssertReadReplicaIdentifierList(list)
	return list
end

function asserts.AssertPendingMaintenanceActions(list)
	assert(list)
	assert(type(list) == "table", "Expected PendingMaintenanceActions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourcePendingMaintenanceActions(v)
	end
end

--  
-- List of ResourcePendingMaintenanceActions objects
function M.PendingMaintenanceActions(list)
	asserts.AssertPendingMaintenanceActions(list)
	return list
end

function asserts.AssertVpcSecurityGroupMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected VpcSecurityGroupMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVpcSecurityGroupMembership(v)
	end
end

--  
-- List of VpcSecurityGroupMembership objects
function M.VpcSecurityGroupMembershipList(list)
	asserts.AssertVpcSecurityGroupMembershipList(list)
	return list
end

function asserts.AssertOptionSettingsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionSettingsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOptionSetting(v)
	end
end

--  
-- List of OptionSetting objects
function M.OptionSettingsList(list)
	asserts.AssertOptionSettingsList(list)
	return list
end

function asserts.AssertOptionGroupOptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionGroupOptionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOptionGroupOption(v)
	end
end

-- <p>List of available option group options.</p>
-- List of OptionGroupOption objects
function M.OptionGroupOptionsList(list)
	asserts.AssertOptionGroupOptionsList(list)
	return list
end

function asserts.AssertEC2SecurityGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected EC2SecurityGroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEC2SecurityGroup(v)
	end
end

--  
-- List of EC2SecurityGroup objects
function M.EC2SecurityGroupList(list)
	asserts.AssertEC2SecurityGroupList(list)
	return list
end

function asserts.AssertFilterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterValueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.FilterValueList(list)
	asserts.AssertFilterValueList(list)
	return list
end

function asserts.AssertDBParameterGroupStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBParameterGroupStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBParameterGroupStatus(v)
	end
end

--  
-- List of DBParameterGroupStatus objects
function M.DBParameterGroupStatusList(list)
	asserts.AssertDBParameterGroupStatusList(list)
	return list
end

function asserts.AssertSubnetIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.SubnetIdentifierList(list)
	asserts.AssertSubnetIdentifierList(list)
	return list
end

function asserts.AssertDBClusterList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBCluster(v)
	end
end

--  
-- List of DBCluster objects
function M.DBClusterList(list)
	asserts.AssertDBClusterList(list)
	return list
end

function asserts.AssertSourceIdsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SourceIdsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.SourceIdsList(list)
	asserts.AssertSourceIdsList(list)
	return list
end

function asserts.AssertDBEngineVersionList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBEngineVersionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBEngineVersion(v)
	end
end

--  
-- List of DBEngineVersion objects
function M.DBEngineVersionList(list)
	asserts.AssertDBEngineVersionList(list)
	return list
end

function asserts.AssertDBInstanceStatusInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBInstanceStatusInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBInstanceStatusInfo(v)
	end
end

--  
-- List of DBInstanceStatusInfo objects
function M.DBInstanceStatusInfoList(list)
	asserts.AssertDBInstanceStatusInfoList(list)
	return list
end

function asserts.AssertOptionGroupsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionGroupsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOptionGroup(v)
	end
end

--  
-- List of OptionGroup objects
function M.OptionGroupsList(list)
	asserts.AssertOptionGroupsList(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

-- <p>A list of tags.</p>
-- List of Tag objects
function M.TagList(list)
	asserts.AssertTagList(list)
	return list
end

function asserts.AssertDBSecurityGroupNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSecurityGroupNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.DBSecurityGroupNameList(list)
	asserts.AssertDBSecurityGroupNameList(list)
	return list
end

function asserts.AssertDBSubnetGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSubnetGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBSubnetGroup(v)
	end
end

--  
-- List of DBSubnetGroup objects
function M.DBSubnetGroups(list)
	asserts.AssertDBSubnetGroups(list)
	return list
end

function asserts.AssertSupportedTimezonesList(list)
	assert(list)
	assert(type(list) == "table", "Expected SupportedTimezonesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTimezone(v)
	end
end

--  
-- List of Timezone objects
function M.SupportedTimezonesList(list)
	asserts.AssertSupportedTimezonesList(list)
	return list
end

function asserts.AssertEventCategoriesList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventCategoriesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.EventCategoriesList(list)
	asserts.AssertEventCategoriesList(list)
	return list
end

function asserts.AssertOrderableDBInstanceOptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OrderableDBInstanceOptionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOrderableDBInstanceOption(v)
	end
end

--  
-- List of OrderableDBInstanceOption objects
function M.OrderableDBInstanceOptionsList(list)
	asserts.AssertOrderableDBInstanceOptionsList(list)
	return list
end

function asserts.AssertDomainMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDomainMembership(v)
	end
end

-- <p>List of Active Directory Domain membership records associated with a DB instance.</p>
-- List of DomainMembership objects
function M.DomainMembershipList(list)
	asserts.AssertDomainMembershipList(list)
	return list
end

function asserts.AssertPendingMaintenanceActionDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected PendingMaintenanceActionDetails to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPendingMaintenanceAction(v)
	end
end

--  
-- List of PendingMaintenanceAction objects
function M.PendingMaintenanceActionDetails(list)
	asserts.AssertPendingMaintenanceActionDetails(list)
	return list
end

function asserts.AssertDescribeDBLogFilesList(list)
	assert(list)
	assert(type(list) == "table", "Expected DescribeDBLogFilesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDescribeDBLogFilesDetails(v)
	end
end

--  
-- List of DescribeDBLogFilesDetails objects
function M.DescribeDBLogFilesList(list)
	asserts.AssertDescribeDBLogFilesList(list)
	return list
end

function asserts.AssertOptionsDependedOn(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionsDependedOn to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.OptionsDependedOn(list)
	asserts.AssertOptionsDependedOn(list)
	return list
end

function asserts.AssertIPRangeList(list)
	assert(list)
	assert(type(list) == "table", "Expected IPRangeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIPRange(v)
	end
end

--  
-- List of IPRange objects
function M.IPRangeList(list)
	asserts.AssertIPRangeList(list)
	return list
end

function asserts.AssertOptionNamesList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionNamesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.OptionNamesList(list)
	asserts.AssertOptionNamesList(list)
	return list
end

function asserts.AssertDBClusterSnapshotAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterSnapshotAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBClusterSnapshotAttribute(v)
	end
end

--  
-- List of DBClusterSnapshotAttribute objects
function M.DBClusterSnapshotAttributeList(list)
	asserts.AssertDBClusterSnapshotAttributeList(list)
	return list
end

function asserts.AssertEventSubscriptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventSubscriptionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventSubscription(v)
	end
end

--  
-- List of EventSubscription objects
function M.EventSubscriptionsList(list)
	asserts.AssertEventSubscriptionsList(list)
	return list
end

function asserts.AssertDBInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBInstanceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBInstance(v)
	end
end

--  
-- List of DBInstance objects
function M.DBInstanceList(list)
	asserts.AssertDBInstanceList(list)
	return list
end

function asserts.AssertOptionsConflictsWith(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionsConflictsWith to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.OptionsConflictsWith(list)
	asserts.AssertOptionsConflictsWith(list)
	return list
end

function asserts.AssertAvailabilityZones(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZones to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.AvailabilityZones(list)
	asserts.AssertAvailabilityZones(list)
	return list
end

function asserts.AssertOptionGroupOptionVersionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionGroupOptionVersionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOptionVersion(v)
	end
end

--  
-- List of OptionVersion objects
function M.OptionGroupOptionVersionsList(list)
	asserts.AssertOptionGroupOptionVersionsList(list)
	return list
end

function asserts.AssertSupportedCharacterSetsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SupportedCharacterSetsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCharacterSet(v)
	end
end

--  
-- List of CharacterSet objects
function M.SupportedCharacterSetsList(list)
	asserts.AssertSupportedCharacterSetsList(list)
	return list
end

function asserts.AssertDBClusterSnapshotList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterSnapshotList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBClusterSnapshot(v)
	end
end

--  
-- List of DBClusterSnapshot objects
function M.DBClusterSnapshotList(list)
	asserts.AssertDBClusterSnapshotList(list)
	return list
end

function asserts.AssertReservedDBInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservedDBInstanceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReservedDBInstance(v)
	end
end

--  
-- List of ReservedDBInstance objects
function M.ReservedDBInstanceList(list)
	asserts.AssertReservedDBInstanceList(list)
	return list
end

function asserts.AssertDBSecurityGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSecurityGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBSecurityGroup(v)
	end
end

--  
-- List of DBSecurityGroup objects
function M.DBSecurityGroups(list)
	asserts.AssertDBSecurityGroups(list)
	return list
end

function asserts.AssertVpcSecurityGroupIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected VpcSecurityGroupIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.VpcSecurityGroupIdList(list)
	asserts.AssertVpcSecurityGroupIdList(list)
	return list
end

function asserts.AssertDBClusterOptionGroupMemberships(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterOptionGroupMemberships to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBClusterOptionGroupStatus(v)
	end
end

--  
-- List of DBClusterOptionGroupStatus objects
function M.DBClusterOptionGroupMemberships(list)
	asserts.AssertDBClusterOptionGroupMemberships(list)
	return list
end

function asserts.AssertDBClusterMemberList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterMemberList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBClusterMember(v)
	end
end

--  
-- List of DBClusterMember objects
function M.DBClusterMemberList(list)
	asserts.AssertDBClusterMemberList(list)
	return list
end

function asserts.AssertReadReplicaDBClusterIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReadReplicaDBClusterIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ReadReplicaDBClusterIdentifierList(list)
	asserts.AssertReadReplicaDBClusterIdentifierList(list)
	return list
end

function asserts.AssertEventCategoriesMapList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventCategoriesMapList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventCategoriesMap(v)
	end
end

--  
-- List of EventCategoriesMap objects
function M.EventCategoriesMapList(list)
	asserts.AssertEventCategoriesMapList(list)
	return list
end

function asserts.AssertOptionConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOptionConfiguration(v)
	end
end

--  
-- List of OptionConfiguration objects
function M.OptionConfigurationList(list)
	asserts.AssertOptionConfigurationList(list)
	return list
end

function asserts.AssertSubnetList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSubnet(v)
	end
end

--  
-- List of Subnet objects
function M.SubnetList(list)
	asserts.AssertSubnetList(list)
	return list
end

function asserts.AssertAttributeValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeValueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.AttributeValueList(list)
	asserts.AssertAttributeValueList(list)
	return list
end

function asserts.AssertDBClusterRoles(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterRoles to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBClusterRole(v)
	end
end

--  
-- List of DBClusterRole objects
function M.DBClusterRoles(list)
	asserts.AssertDBClusterRoles(list)
	return list
end

function asserts.AssertOptionSettingConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionSettingConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOptionSetting(v)
	end
end

--  
-- List of OptionSetting objects
function M.OptionSettingConfigurationList(list)
	asserts.AssertOptionSettingConfigurationList(list)
	return list
end

function asserts.AssertAccountQuotaList(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountQuotaList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAccountQuota(v)
	end
end

--  
-- List of AccountQuota objects
function M.AccountQuotaList(list)
	asserts.AssertAccountQuotaList(list)
	return list
end

function asserts.AssertReservedDBInstancesOfferingList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservedDBInstancesOfferingList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReservedDBInstancesOffering(v)
	end
end

--  
-- List of ReservedDBInstancesOffering objects
function M.ReservedDBInstancesOfferingList(list)
	asserts.AssertReservedDBInstancesOfferingList(list)
	return list
end

function asserts.AssertKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.KeyList(list)
	asserts.AssertKeyList(list)
	return list
end

function asserts.AssertCertificateList(list)
	assert(list)
	assert(type(list) == "table", "Expected CertificateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCertificate(v)
	end
end

--  
-- List of Certificate objects
function M.CertificateList(list)
	asserts.AssertCertificateList(list)
	return list
end

function asserts.AssertDBClusterParameterGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterParameterGroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBClusterParameterGroup(v)
	end
end

--  
-- List of DBClusterParameterGroup objects
function M.DBClusterParameterGroupList(list)
	asserts.AssertDBClusterParameterGroupList(list)
	return list
end

function asserts.AssertAvailabilityZoneList(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZoneList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAvailabilityZone(v)
	end
end

--  
-- List of AvailabilityZone objects
function M.AvailabilityZoneList(list)
	asserts.AssertAvailabilityZoneList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "rds.amazonaws.com"
		end
	end
	local ss = { "rds" }
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
--- Call DescribeCertificates asynchronously, invoking a callback when done
-- @param DescribeCertificatesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCertificatesAsync(DescribeCertificatesMessage, cb)
	assert(DescribeCertificatesMessage, "You must provide a DescribeCertificatesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeCertificates",
	}
	for header,value in pairs(DescribeCertificatesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCertificatesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCertificates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCertificatesMessage
-- @return response
-- @return error_message
function M.DescribeCertificatesSync(DescribeCertificatesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCertificatesAsync(DescribeCertificatesMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreDBClusterToPointInTime asynchronously, invoking a callback when done
-- @param RestoreDBClusterToPointInTimeMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreDBClusterToPointInTimeAsync(RestoreDBClusterToPointInTimeMessage, cb)
	assert(RestoreDBClusterToPointInTimeMessage, "You must provide a RestoreDBClusterToPointInTimeMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreDBClusterToPointInTime",
	}
	for header,value in pairs(RestoreDBClusterToPointInTimeMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreDBClusterToPointInTimeMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreDBClusterToPointInTime synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreDBClusterToPointInTimeMessage
-- @return response
-- @return error_message
function M.RestoreDBClusterToPointInTimeSync(RestoreDBClusterToPointInTimeMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreDBClusterToPointInTimeAsync(RestoreDBClusterToPointInTimeMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEngineDefaultParameters asynchronously, invoking a callback when done
-- @param DescribeEngineDefaultParametersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEngineDefaultParametersAsync(DescribeEngineDefaultParametersMessage, cb)
	assert(DescribeEngineDefaultParametersMessage, "You must provide a DescribeEngineDefaultParametersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEngineDefaultParameters",
	}
	for header,value in pairs(DescribeEngineDefaultParametersMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEngineDefaultParametersMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEngineDefaultParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEngineDefaultParametersMessage
-- @return response
-- @return error_message
function M.DescribeEngineDefaultParametersSync(DescribeEngineDefaultParametersMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEngineDefaultParametersAsync(DescribeEngineDefaultParametersMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBClusterSnapshot asynchronously, invoking a callback when done
-- @param DeleteDBClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBClusterSnapshotAsync(DeleteDBClusterSnapshotMessage, cb)
	assert(DeleteDBClusterSnapshotMessage, "You must provide a DeleteDBClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBClusterSnapshot",
	}
	for header,value in pairs(DeleteDBClusterSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDBClusterSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDBClusterSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDBClusterSnapshotMessage
-- @return response
-- @return error_message
function M.DeleteDBClusterSnapshotSync(DeleteDBClusterSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBClusterSnapshotAsync(DeleteDBClusterSnapshotMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBParameterGroup asynchronously, invoking a callback when done
-- @param CreateDBParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBParameterGroupAsync(CreateDBParameterGroupMessage, cb)
	assert(CreateDBParameterGroupMessage, "You must provide a CreateDBParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBParameterGroup",
	}
	for header,value in pairs(CreateDBParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBParameterGroupMessage
-- @return response
-- @return error_message
function M.CreateDBParameterGroupSync(CreateDBParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBParameterGroupAsync(CreateDBParameterGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AuthorizeDBSecurityGroupIngress asynchronously, invoking a callback when done
-- @param AuthorizeDBSecurityGroupIngressMessage
-- @param cb Callback function accepting two args: response, error_message
function M.AuthorizeDBSecurityGroupIngressAsync(AuthorizeDBSecurityGroupIngressMessage, cb)
	assert(AuthorizeDBSecurityGroupIngressMessage, "You must provide a AuthorizeDBSecurityGroupIngressMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AuthorizeDBSecurityGroupIngress",
	}
	for header,value in pairs(AuthorizeDBSecurityGroupIngressMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AuthorizeDBSecurityGroupIngressMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AuthorizeDBSecurityGroupIngress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AuthorizeDBSecurityGroupIngressMessage
-- @return response
-- @return error_message
function M.AuthorizeDBSecurityGroupIngressSync(AuthorizeDBSecurityGroupIngressMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AuthorizeDBSecurityGroupIngressAsync(AuthorizeDBSecurityGroupIngressMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBSubnetGroups asynchronously, invoking a callback when done
-- @param DescribeDBSubnetGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBSubnetGroupsAsync(DescribeDBSubnetGroupsMessage, cb)
	assert(DescribeDBSubnetGroupsMessage, "You must provide a DescribeDBSubnetGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBSubnetGroups",
	}
	for header,value in pairs(DescribeDBSubnetGroupsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBSubnetGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBSubnetGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBSubnetGroupsMessage
-- @return response
-- @return error_message
function M.DescribeDBSubnetGroupsSync(DescribeDBSubnetGroupsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBSubnetGroupsAsync(DescribeDBSubnetGroupsMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBEngineVersions asynchronously, invoking a callback when done
-- @param DescribeDBEngineVersionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBEngineVersionsAsync(DescribeDBEngineVersionsMessage, cb)
	assert(DescribeDBEngineVersionsMessage, "You must provide a DescribeDBEngineVersionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBEngineVersions",
	}
	for header,value in pairs(DescribeDBEngineVersionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBEngineVersionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBEngineVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBEngineVersionsMessage
-- @return response
-- @return error_message
function M.DescribeDBEngineVersionsSync(DescribeDBEngineVersionsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBEngineVersionsAsync(DescribeDBEngineVersionsMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CopyDBSnapshot asynchronously, invoking a callback when done
-- @param CopyDBSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopyDBSnapshotAsync(CopyDBSnapshotMessage, cb)
	assert(CopyDBSnapshotMessage, "You must provide a CopyDBSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopyDBSnapshot",
	}
	for header,value in pairs(CopyDBSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CopyDBSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CopyDBSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CopyDBSnapshotMessage
-- @return response
-- @return error_message
function M.CopyDBSnapshotSync(CopyDBSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyDBSnapshotAsync(CopyDBSnapshotMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StopDBInstance asynchronously, invoking a callback when done
-- @param StopDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.StopDBInstanceAsync(StopDBInstanceMessage, cb)
	assert(StopDBInstanceMessage, "You must provide a StopDBInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".StopDBInstance",
	}
	for header,value in pairs(StopDBInstanceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopDBInstanceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopDBInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopDBInstanceMessage
-- @return response
-- @return error_message
function M.StopDBInstanceSync(StopDBInstanceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopDBInstanceAsync(StopDBInstanceMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEventSubscription asynchronously, invoking a callback when done
-- @param DeleteEventSubscriptionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteEventSubscriptionAsync(DeleteEventSubscriptionMessage, cb)
	assert(DeleteEventSubscriptionMessage, "You must provide a DeleteEventSubscriptionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteEventSubscription",
	}
	for header,value in pairs(DeleteEventSubscriptionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteEventSubscriptionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteEventSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEventSubscriptionMessage
-- @return response
-- @return error_message
function M.DeleteEventSubscriptionSync(DeleteEventSubscriptionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEventSubscriptionAsync(DeleteEventSubscriptionMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBInstanceReadReplica asynchronously, invoking a callback when done
-- @param CreateDBInstanceReadReplicaMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBInstanceReadReplicaAsync(CreateDBInstanceReadReplicaMessage, cb)
	assert(CreateDBInstanceReadReplicaMessage, "You must provide a CreateDBInstanceReadReplicaMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBInstanceReadReplica",
	}
	for header,value in pairs(CreateDBInstanceReadReplicaMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBInstanceReadReplicaMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBInstanceReadReplica synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBInstanceReadReplicaMessage
-- @return response
-- @return error_message
function M.CreateDBInstanceReadReplicaSync(CreateDBInstanceReadReplicaMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBInstanceReadReplicaAsync(CreateDBInstanceReadReplicaMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBClusterSnapshot asynchronously, invoking a callback when done
-- @param CreateDBClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBClusterSnapshotAsync(CreateDBClusterSnapshotMessage, cb)
	assert(CreateDBClusterSnapshotMessage, "You must provide a CreateDBClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBClusterSnapshot",
	}
	for header,value in pairs(CreateDBClusterSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBClusterSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBClusterSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBClusterSnapshotMessage
-- @return response
-- @return error_message
function M.CreateDBClusterSnapshotSync(CreateDBClusterSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBClusterSnapshotAsync(CreateDBClusterSnapshotMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReservedDBInstancesOfferings asynchronously, invoking a callback when done
-- @param DescribeReservedDBInstancesOfferingsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReservedDBInstancesOfferingsAsync(DescribeReservedDBInstancesOfferingsMessage, cb)
	assert(DescribeReservedDBInstancesOfferingsMessage, "You must provide a DescribeReservedDBInstancesOfferingsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeReservedDBInstancesOfferings",
	}
	for header,value in pairs(DescribeReservedDBInstancesOfferingsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeReservedDBInstancesOfferingsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReservedDBInstancesOfferings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReservedDBInstancesOfferingsMessage
-- @return response
-- @return error_message
function M.DescribeReservedDBInstancesOfferingsSync(DescribeReservedDBInstancesOfferingsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReservedDBInstancesOfferingsAsync(DescribeReservedDBInstancesOfferingsMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBCluster asynchronously, invoking a callback when done
-- @param DeleteDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBClusterAsync(DeleteDBClusterMessage, cb)
	assert(DeleteDBClusterMessage, "You must provide a DeleteDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBCluster",
	}
	for header,value in pairs(DeleteDBClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDBClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDBCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDBClusterMessage
-- @return response
-- @return error_message
function M.DeleteDBClusterSync(DeleteDBClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBClusterAsync(DeleteDBClusterMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ResetDBClusterParameterGroup asynchronously, invoking a callback when done
-- @param ResetDBClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ResetDBClusterParameterGroupAsync(ResetDBClusterParameterGroupMessage, cb)
	assert(ResetDBClusterParameterGroupMessage, "You must provide a ResetDBClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ResetDBClusterParameterGroup",
	}
	for header,value in pairs(ResetDBClusterParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ResetDBClusterParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResetDBClusterParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResetDBClusterParameterGroupMessage
-- @return response
-- @return error_message
function M.ResetDBClusterParameterGroupSync(ResetDBClusterParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResetDBClusterParameterGroupAsync(ResetDBClusterParameterGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource asynchronously, invoking a callback when done
-- @param ListTagsForResourceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceMessage, cb)
	assert(ListTagsForResourceMessage, "You must provide a ListTagsForResourceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTagsForResource",
	}
	for header,value in pairs(ListTagsForResourceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsForResourceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForResourceMessage
-- @return response
-- @return error_message
function M.ListTagsForResourceSync(ListTagsForResourceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourceAsync(ListTagsForResourceMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBSnapshot asynchronously, invoking a callback when done
-- @param ModifyDBSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBSnapshotAsync(ModifyDBSnapshotMessage, cb)
	assert(ModifyDBSnapshotMessage, "You must provide a ModifyDBSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBSnapshot",
	}
	for header,value in pairs(ModifyDBSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyDBSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyDBSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyDBSnapshotMessage
-- @return response
-- @return error_message
function M.ModifyDBSnapshotSync(ModifyDBSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBSnapshotAsync(ModifyDBSnapshotMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBSubnetGroup asynchronously, invoking a callback when done
-- @param DeleteDBSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBSubnetGroupAsync(DeleteDBSubnetGroupMessage, cb)
	assert(DeleteDBSubnetGroupMessage, "You must provide a DeleteDBSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBSubnetGroup",
	}
	for header,value in pairs(DeleteDBSubnetGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDBSubnetGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDBSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDBSubnetGroupMessage
-- @return response
-- @return error_message
function M.DeleteDBSubnetGroupSync(DeleteDBSubnetGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBSubnetGroupAsync(DeleteDBSubnetGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreDBInstanceFromDBSnapshot asynchronously, invoking a callback when done
-- @param RestoreDBInstanceFromDBSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreDBInstanceFromDBSnapshotAsync(RestoreDBInstanceFromDBSnapshotMessage, cb)
	assert(RestoreDBInstanceFromDBSnapshotMessage, "You must provide a RestoreDBInstanceFromDBSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreDBInstanceFromDBSnapshot",
	}
	for header,value in pairs(RestoreDBInstanceFromDBSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreDBInstanceFromDBSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreDBInstanceFromDBSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreDBInstanceFromDBSnapshotMessage
-- @return response
-- @return error_message
function M.RestoreDBInstanceFromDBSnapshotSync(RestoreDBInstanceFromDBSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreDBInstanceFromDBSnapshotAsync(RestoreDBInstanceFromDBSnapshotMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeOptionGroups asynchronously, invoking a callback when done
-- @param DescribeOptionGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeOptionGroupsAsync(DescribeOptionGroupsMessage, cb)
	assert(DescribeOptionGroupsMessage, "You must provide a DescribeOptionGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeOptionGroups",
	}
	for header,value in pairs(DescribeOptionGroupsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeOptionGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeOptionGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeOptionGroupsMessage
-- @return response
-- @return error_message
function M.DescribeOptionGroupsSync(DescribeOptionGroupsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeOptionGroupsAsync(DescribeOptionGroupsMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreDBClusterFromS3 asynchronously, invoking a callback when done
-- @param RestoreDBClusterFromS3Message
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreDBClusterFromS3Async(RestoreDBClusterFromS3Message, cb)
	assert(RestoreDBClusterFromS3Message, "You must provide a RestoreDBClusterFromS3Message")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreDBClusterFromS3",
	}
	for header,value in pairs(RestoreDBClusterFromS3Message.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreDBClusterFromS3Message, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreDBClusterFromS3 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreDBClusterFromS3Message
-- @return response
-- @return error_message
function M.RestoreDBClusterFromS3Sync(RestoreDBClusterFromS3Message, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreDBClusterFromS3Async(RestoreDBClusterFromS3Message, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBInstance asynchronously, invoking a callback when done
-- @param DeleteDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBInstanceAsync(DeleteDBInstanceMessage, cb)
	assert(DeleteDBInstanceMessage, "You must provide a DeleteDBInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBInstance",
	}
	for header,value in pairs(DeleteDBInstanceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDBInstanceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDBInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDBInstanceMessage
-- @return response
-- @return error_message
function M.DeleteDBInstanceSync(DeleteDBInstanceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBInstanceAsync(DeleteDBInstanceMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBClusterParameterGroup asynchronously, invoking a callback when done
-- @param CreateDBClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBClusterParameterGroupAsync(CreateDBClusterParameterGroupMessage, cb)
	assert(CreateDBClusterParameterGroupMessage, "You must provide a CreateDBClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBClusterParameterGroup",
	}
	for header,value in pairs(CreateDBClusterParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBClusterParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBClusterParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBClusterParameterGroupMessage
-- @return response
-- @return error_message
function M.CreateDBClusterParameterGroupSync(CreateDBClusterParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBClusterParameterGroupAsync(CreateDBClusterParameterGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBParameterGroup asynchronously, invoking a callback when done
-- @param DeleteDBParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBParameterGroupAsync(DeleteDBParameterGroupMessage, cb)
	assert(DeleteDBParameterGroupMessage, "You must provide a DeleteDBParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBParameterGroup",
	}
	for header,value in pairs(DeleteDBParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDBParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDBParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDBParameterGroupMessage
-- @return response
-- @return error_message
function M.DeleteDBParameterGroupSync(DeleteDBParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBParameterGroupAsync(DeleteDBParameterGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEventCategories asynchronously, invoking a callback when done
-- @param DescribeEventCategoriesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventCategoriesAsync(DescribeEventCategoriesMessage, cb)
	assert(DescribeEventCategoriesMessage, "You must provide a DescribeEventCategoriesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEventCategories",
	}
	for header,value in pairs(DescribeEventCategoriesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEventCategoriesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEventCategories synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEventCategoriesMessage
-- @return response
-- @return error_message
function M.DescribeEventCategoriesSync(DescribeEventCategoriesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventCategoriesAsync(DescribeEventCategoriesMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTagsToResource asynchronously, invoking a callback when done
-- @param AddTagsToResourceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsToResourceAsync(AddTagsToResourceMessage, cb)
	assert(AddTagsToResourceMessage, "You must provide a AddTagsToResourceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddTagsToResource",
	}
	for header,value in pairs(AddTagsToResourceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddTagsToResourceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddTagsToResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsToResourceMessage
-- @return response
-- @return error_message
function M.AddTagsToResourceSync(AddTagsToResourceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsToResourceAsync(AddTagsToResourceMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyOptionGroup asynchronously, invoking a callback when done
-- @param ModifyOptionGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyOptionGroupAsync(ModifyOptionGroupMessage, cb)
	assert(ModifyOptionGroupMessage, "You must provide a ModifyOptionGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyOptionGroup",
	}
	for header,value in pairs(ModifyOptionGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyOptionGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyOptionGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyOptionGroupMessage
-- @return response
-- @return error_message
function M.ModifyOptionGroupSync(ModifyOptionGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyOptionGroupAsync(ModifyOptionGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBLogFiles asynchronously, invoking a callback when done
-- @param DescribeDBLogFilesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBLogFilesAsync(DescribeDBLogFilesMessage, cb)
	assert(DescribeDBLogFilesMessage, "You must provide a DescribeDBLogFilesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBLogFiles",
	}
	for header,value in pairs(DescribeDBLogFilesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBLogFilesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBLogFiles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBLogFilesMessage
-- @return response
-- @return error_message
function M.DescribeDBLogFilesSync(DescribeDBLogFilesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBLogFilesAsync(DescribeDBLogFilesMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveTagsFromResource asynchronously, invoking a callback when done
-- @param RemoveTagsFromResourceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceMessage, cb)
	assert(RemoveTagsFromResourceMessage, "You must provide a RemoveTagsFromResourceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveTagsFromResource",
	}
	for header,value in pairs(RemoveTagsFromResourceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveTagsFromResourceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveTagsFromResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTagsFromResourceMessage
-- @return response
-- @return error_message
function M.RemoveTagsFromResourceSync(RemoveTagsFromResourceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReservedDBInstances asynchronously, invoking a callback when done
-- @param DescribeReservedDBInstancesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReservedDBInstancesAsync(DescribeReservedDBInstancesMessage, cb)
	assert(DescribeReservedDBInstancesMessage, "You must provide a DescribeReservedDBInstancesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeReservedDBInstances",
	}
	for header,value in pairs(DescribeReservedDBInstancesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeReservedDBInstancesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReservedDBInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReservedDBInstancesMessage
-- @return response
-- @return error_message
function M.DescribeReservedDBInstancesSync(DescribeReservedDBInstancesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReservedDBInstancesAsync(DescribeReservedDBInstancesMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CopyOptionGroup asynchronously, invoking a callback when done
-- @param CopyOptionGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopyOptionGroupAsync(CopyOptionGroupMessage, cb)
	assert(CopyOptionGroupMessage, "You must provide a CopyOptionGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopyOptionGroup",
	}
	for header,value in pairs(CopyOptionGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CopyOptionGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CopyOptionGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CopyOptionGroupMessage
-- @return response
-- @return error_message
function M.CopyOptionGroupSync(CopyOptionGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyOptionGroupAsync(CopyOptionGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBInstance asynchronously, invoking a callback when done
-- @param CreateDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBInstanceAsync(CreateDBInstanceMessage, cb)
	assert(CreateDBInstanceMessage, "You must provide a CreateDBInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBInstance",
	}
	for header,value in pairs(CreateDBInstanceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBInstanceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBInstanceMessage
-- @return response
-- @return error_message
function M.CreateDBInstanceSync(CreateDBInstanceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBInstanceAsync(CreateDBInstanceMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyEventSubscription asynchronously, invoking a callback when done
-- @param ModifyEventSubscriptionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyEventSubscriptionAsync(ModifyEventSubscriptionMessage, cb)
	assert(ModifyEventSubscriptionMessage, "You must provide a ModifyEventSubscriptionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyEventSubscription",
	}
	for header,value in pairs(ModifyEventSubscriptionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyEventSubscriptionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyEventSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyEventSubscriptionMessage
-- @return response
-- @return error_message
function M.ModifyEventSubscriptionSync(ModifyEventSubscriptionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyEventSubscriptionAsync(ModifyEventSubscriptionMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBSubnetGroup asynchronously, invoking a callback when done
-- @param ModifyDBSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBSubnetGroupAsync(ModifyDBSubnetGroupMessage, cb)
	assert(ModifyDBSubnetGroupMessage, "You must provide a ModifyDBSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBSubnetGroup",
	}
	for header,value in pairs(ModifyDBSubnetGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyDBSubnetGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyDBSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyDBSubnetGroupMessage
-- @return response
-- @return error_message
function M.ModifyDBSubnetGroupSync(ModifyDBSubnetGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBSubnetGroupAsync(ModifyDBSubnetGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBSecurityGroup asynchronously, invoking a callback when done
-- @param DeleteDBSecurityGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBSecurityGroupAsync(DeleteDBSecurityGroupMessage, cb)
	assert(DeleteDBSecurityGroupMessage, "You must provide a DeleteDBSecurityGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBSecurityGroup",
	}
	for header,value in pairs(DeleteDBSecurityGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDBSecurityGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDBSecurityGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDBSecurityGroupMessage
-- @return response
-- @return error_message
function M.DeleteDBSecurityGroupSync(DeleteDBSecurityGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBSecurityGroupAsync(DeleteDBSecurityGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreDBInstanceToPointInTime asynchronously, invoking a callback when done
-- @param RestoreDBInstanceToPointInTimeMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreDBInstanceToPointInTimeAsync(RestoreDBInstanceToPointInTimeMessage, cb)
	assert(RestoreDBInstanceToPointInTimeMessage, "You must provide a RestoreDBInstanceToPointInTimeMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreDBInstanceToPointInTime",
	}
	for header,value in pairs(RestoreDBInstanceToPointInTimeMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreDBInstanceToPointInTimeMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreDBInstanceToPointInTime synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreDBInstanceToPointInTimeMessage
-- @return response
-- @return error_message
function M.RestoreDBInstanceToPointInTimeSync(RestoreDBInstanceToPointInTimeMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreDBInstanceToPointInTimeAsync(RestoreDBInstanceToPointInTimeMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddSourceIdentifierToSubscription asynchronously, invoking a callback when done
-- @param AddSourceIdentifierToSubscriptionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.AddSourceIdentifierToSubscriptionAsync(AddSourceIdentifierToSubscriptionMessage, cb)
	assert(AddSourceIdentifierToSubscriptionMessage, "You must provide a AddSourceIdentifierToSubscriptionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddSourceIdentifierToSubscription",
	}
	for header,value in pairs(AddSourceIdentifierToSubscriptionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddSourceIdentifierToSubscriptionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddSourceIdentifierToSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddSourceIdentifierToSubscriptionMessage
-- @return response
-- @return error_message
function M.AddSourceIdentifierToSubscriptionSync(AddSourceIdentifierToSubscriptionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddSourceIdentifierToSubscriptionAsync(AddSourceIdentifierToSubscriptionMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CopyDBClusterParameterGroup asynchronously, invoking a callback when done
-- @param CopyDBClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopyDBClusterParameterGroupAsync(CopyDBClusterParameterGroupMessage, cb)
	assert(CopyDBClusterParameterGroupMessage, "You must provide a CopyDBClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopyDBClusterParameterGroup",
	}
	for header,value in pairs(CopyDBClusterParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CopyDBClusterParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CopyDBClusterParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CopyDBClusterParameterGroupMessage
-- @return response
-- @return error_message
function M.CopyDBClusterParameterGroupSync(CopyDBClusterParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyDBClusterParameterGroupAsync(CopyDBClusterParameterGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartDBInstance asynchronously, invoking a callback when done
-- @param StartDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.StartDBInstanceAsync(StartDBInstanceMessage, cb)
	assert(StartDBInstanceMessage, "You must provide a StartDBInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".StartDBInstance",
	}
	for header,value in pairs(StartDBInstanceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartDBInstanceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartDBInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartDBInstanceMessage
-- @return response
-- @return error_message
function M.StartDBInstanceSync(StartDBInstanceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartDBInstanceAsync(StartDBInstanceMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBClusterSnapshotAttributes asynchronously, invoking a callback when done
-- @param DescribeDBClusterSnapshotAttributesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBClusterSnapshotAttributesAsync(DescribeDBClusterSnapshotAttributesMessage, cb)
	assert(DescribeDBClusterSnapshotAttributesMessage, "You must provide a DescribeDBClusterSnapshotAttributesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBClusterSnapshotAttributes",
	}
	for header,value in pairs(DescribeDBClusterSnapshotAttributesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBClusterSnapshotAttributesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBClusterSnapshotAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBClusterSnapshotAttributesMessage
-- @return response
-- @return error_message
function M.DescribeDBClusterSnapshotAttributesSync(DescribeDBClusterSnapshotAttributesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBClusterSnapshotAttributesAsync(DescribeDBClusterSnapshotAttributesMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreDBClusterFromSnapshot asynchronously, invoking a callback when done
-- @param RestoreDBClusterFromSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreDBClusterFromSnapshotAsync(RestoreDBClusterFromSnapshotMessage, cb)
	assert(RestoreDBClusterFromSnapshotMessage, "You must provide a RestoreDBClusterFromSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreDBClusterFromSnapshot",
	}
	for header,value in pairs(RestoreDBClusterFromSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreDBClusterFromSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreDBClusterFromSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreDBClusterFromSnapshotMessage
-- @return response
-- @return error_message
function M.RestoreDBClusterFromSnapshotSync(RestoreDBClusterFromSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreDBClusterFromSnapshotAsync(RestoreDBClusterFromSnapshotMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBParameters asynchronously, invoking a callback when done
-- @param DescribeDBParametersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBParametersAsync(DescribeDBParametersMessage, cb)
	assert(DescribeDBParametersMessage, "You must provide a DescribeDBParametersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBParameters",
	}
	for header,value in pairs(DescribeDBParametersMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBParametersMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBParametersMessage
-- @return response
-- @return error_message
function M.DescribeDBParametersSync(DescribeDBParametersMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBParametersAsync(DescribeDBParametersMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PromoteReadReplicaDBCluster asynchronously, invoking a callback when done
-- @param PromoteReadReplicaDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.PromoteReadReplicaDBClusterAsync(PromoteReadReplicaDBClusterMessage, cb)
	assert(PromoteReadReplicaDBClusterMessage, "You must provide a PromoteReadReplicaDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PromoteReadReplicaDBCluster",
	}
	for header,value in pairs(PromoteReadReplicaDBClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PromoteReadReplicaDBClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PromoteReadReplicaDBCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PromoteReadReplicaDBClusterMessage
-- @return response
-- @return error_message
function M.PromoteReadReplicaDBClusterSync(PromoteReadReplicaDBClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PromoteReadReplicaDBClusterAsync(PromoteReadReplicaDBClusterMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBClusterParameters asynchronously, invoking a callback when done
-- @param DescribeDBClusterParametersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBClusterParametersAsync(DescribeDBClusterParametersMessage, cb)
	assert(DescribeDBClusterParametersMessage, "You must provide a DescribeDBClusterParametersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBClusterParameters",
	}
	for header,value in pairs(DescribeDBClusterParametersMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBClusterParametersMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBClusterParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBClusterParametersMessage
-- @return response
-- @return error_message
function M.DescribeDBClusterParametersSync(DescribeDBClusterParametersMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBClusterParametersAsync(DescribeDBClusterParametersMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBSnapshot asynchronously, invoking a callback when done
-- @param DeleteDBSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBSnapshotAsync(DeleteDBSnapshotMessage, cb)
	assert(DeleteDBSnapshotMessage, "You must provide a DeleteDBSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBSnapshot",
	}
	for header,value in pairs(DeleteDBSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDBSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDBSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDBSnapshotMessage
-- @return response
-- @return error_message
function M.DeleteDBSnapshotSync(DeleteDBSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBSnapshotAsync(DeleteDBSnapshotMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEvents asynchronously, invoking a callback when done
-- @param DescribeEventsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventsAsync(DescribeEventsMessage, cb)
	assert(DescribeEventsMessage, "You must provide a DescribeEventsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEvents",
	}
	for header,value in pairs(DescribeEventsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEventsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEventsMessage
-- @return response
-- @return error_message
function M.DescribeEventsSync(DescribeEventsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventsAsync(DescribeEventsMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEventSubscriptions asynchronously, invoking a callback when done
-- @param DescribeEventSubscriptionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventSubscriptionsAsync(DescribeEventSubscriptionsMessage, cb)
	assert(DescribeEventSubscriptionsMessage, "You must provide a DescribeEventSubscriptionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEventSubscriptions",
	}
	for header,value in pairs(DescribeEventSubscriptionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEventSubscriptionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEventSubscriptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEventSubscriptionsMessage
-- @return response
-- @return error_message
function M.DescribeEventSubscriptionsSync(DescribeEventSubscriptionsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventSubscriptionsAsync(DescribeEventSubscriptionsMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteOptionGroup asynchronously, invoking a callback when done
-- @param DeleteOptionGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteOptionGroupAsync(DeleteOptionGroupMessage, cb)
	assert(DeleteOptionGroupMessage, "You must provide a DeleteOptionGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteOptionGroup",
	}
	for header,value in pairs(DeleteOptionGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteOptionGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteOptionGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteOptionGroupMessage
-- @return response
-- @return error_message
function M.DeleteOptionGroupSync(DeleteOptionGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteOptionGroupAsync(DeleteOptionGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PromoteReadReplica asynchronously, invoking a callback when done
-- @param PromoteReadReplicaMessage
-- @param cb Callback function accepting two args: response, error_message
function M.PromoteReadReplicaAsync(PromoteReadReplicaMessage, cb)
	assert(PromoteReadReplicaMessage, "You must provide a PromoteReadReplicaMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PromoteReadReplica",
	}
	for header,value in pairs(PromoteReadReplicaMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PromoteReadReplicaMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PromoteReadReplica synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PromoteReadReplicaMessage
-- @return response
-- @return error_message
function M.PromoteReadReplicaSync(PromoteReadReplicaMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PromoteReadReplicaAsync(PromoteReadReplicaMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddRoleToDBCluster asynchronously, invoking a callback when done
-- @param AddRoleToDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.AddRoleToDBClusterAsync(AddRoleToDBClusterMessage, cb)
	assert(AddRoleToDBClusterMessage, "You must provide a AddRoleToDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddRoleToDBCluster",
	}
	for header,value in pairs(AddRoleToDBClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddRoleToDBClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddRoleToDBCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddRoleToDBClusterMessage
-- @return response
-- @return error_message
function M.AddRoleToDBClusterSync(AddRoleToDBClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddRoleToDBClusterAsync(AddRoleToDBClusterMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBSnapshotAttribute asynchronously, invoking a callback when done
-- @param ModifyDBSnapshotAttributeMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBSnapshotAttributeAsync(ModifyDBSnapshotAttributeMessage, cb)
	assert(ModifyDBSnapshotAttributeMessage, "You must provide a ModifyDBSnapshotAttributeMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBSnapshotAttribute",
	}
	for header,value in pairs(ModifyDBSnapshotAttributeMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyDBSnapshotAttributeMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyDBSnapshotAttribute synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyDBSnapshotAttributeMessage
-- @return response
-- @return error_message
function M.ModifyDBSnapshotAttributeSync(ModifyDBSnapshotAttributeMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBSnapshotAttributeAsync(ModifyDBSnapshotAttributeMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBParameterGroups asynchronously, invoking a callback when done
-- @param DescribeDBParameterGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBParameterGroupsAsync(DescribeDBParameterGroupsMessage, cb)
	assert(DescribeDBParameterGroupsMessage, "You must provide a DescribeDBParameterGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBParameterGroups",
	}
	for header,value in pairs(DescribeDBParameterGroupsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBParameterGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBParameterGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBParameterGroupsMessage
-- @return response
-- @return error_message
function M.DescribeDBParameterGroupsSync(DescribeDBParameterGroupsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBParameterGroupsAsync(DescribeDBParameterGroupsMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBClusterParameterGroup asynchronously, invoking a callback when done
-- @param ModifyDBClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBClusterParameterGroupAsync(ModifyDBClusterParameterGroupMessage, cb)
	assert(ModifyDBClusterParameterGroupMessage, "You must provide a ModifyDBClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBClusterParameterGroup",
	}
	for header,value in pairs(ModifyDBClusterParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyDBClusterParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyDBClusterParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyDBClusterParameterGroupMessage
-- @return response
-- @return error_message
function M.ModifyDBClusterParameterGroupSync(ModifyDBClusterParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBClusterParameterGroupAsync(ModifyDBClusterParameterGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call FailoverDBCluster asynchronously, invoking a callback when done
-- @param FailoverDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.FailoverDBClusterAsync(FailoverDBClusterMessage, cb)
	assert(FailoverDBClusterMessage, "You must provide a FailoverDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".FailoverDBCluster",
	}
	for header,value in pairs(FailoverDBClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", FailoverDBClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call FailoverDBCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param FailoverDBClusterMessage
-- @return response
-- @return error_message
function M.FailoverDBClusterSync(FailoverDBClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.FailoverDBClusterAsync(FailoverDBClusterMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ApplyPendingMaintenanceAction asynchronously, invoking a callback when done
-- @param ApplyPendingMaintenanceActionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ApplyPendingMaintenanceActionAsync(ApplyPendingMaintenanceActionMessage, cb)
	assert(ApplyPendingMaintenanceActionMessage, "You must provide a ApplyPendingMaintenanceActionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ApplyPendingMaintenanceAction",
	}
	for header,value in pairs(ApplyPendingMaintenanceActionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ApplyPendingMaintenanceActionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ApplyPendingMaintenanceAction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ApplyPendingMaintenanceActionMessage
-- @return response
-- @return error_message
function M.ApplyPendingMaintenanceActionSync(ApplyPendingMaintenanceActionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ApplyPendingMaintenanceActionAsync(ApplyPendingMaintenanceActionMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBInstances asynchronously, invoking a callback when done
-- @param DescribeDBInstancesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBInstancesAsync(DescribeDBInstancesMessage, cb)
	assert(DescribeDBInstancesMessage, "You must provide a DescribeDBInstancesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBInstances",
	}
	for header,value in pairs(DescribeDBInstancesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBInstancesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBInstancesMessage
-- @return response
-- @return error_message
function M.DescribeDBInstancesSync(DescribeDBInstancesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBInstancesAsync(DescribeDBInstancesMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PurchaseReservedDBInstancesOffering asynchronously, invoking a callback when done
-- @param PurchaseReservedDBInstancesOfferingMessage
-- @param cb Callback function accepting two args: response, error_message
function M.PurchaseReservedDBInstancesOfferingAsync(PurchaseReservedDBInstancesOfferingMessage, cb)
	assert(PurchaseReservedDBInstancesOfferingMessage, "You must provide a PurchaseReservedDBInstancesOfferingMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PurchaseReservedDBInstancesOffering",
	}
	for header,value in pairs(PurchaseReservedDBInstancesOfferingMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PurchaseReservedDBInstancesOfferingMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PurchaseReservedDBInstancesOffering synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PurchaseReservedDBInstancesOfferingMessage
-- @return response
-- @return error_message
function M.PurchaseReservedDBInstancesOfferingSync(PurchaseReservedDBInstancesOfferingMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PurchaseReservedDBInstancesOfferingAsync(PurchaseReservedDBInstancesOfferingMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeOrderableDBInstanceOptions asynchronously, invoking a callback when done
-- @param DescribeOrderableDBInstanceOptionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeOrderableDBInstanceOptionsAsync(DescribeOrderableDBInstanceOptionsMessage, cb)
	assert(DescribeOrderableDBInstanceOptionsMessage, "You must provide a DescribeOrderableDBInstanceOptionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeOrderableDBInstanceOptions",
	}
	for header,value in pairs(DescribeOrderableDBInstanceOptionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeOrderableDBInstanceOptionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeOrderableDBInstanceOptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeOrderableDBInstanceOptionsMessage
-- @return response
-- @return error_message
function M.DescribeOrderableDBInstanceOptionsSync(DescribeOrderableDBInstanceOptionsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeOrderableDBInstanceOptionsAsync(DescribeOrderableDBInstanceOptionsMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateOptionGroup asynchronously, invoking a callback when done
-- @param CreateOptionGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateOptionGroupAsync(CreateOptionGroupMessage, cb)
	assert(CreateOptionGroupMessage, "You must provide a CreateOptionGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateOptionGroup",
	}
	for header,value in pairs(CreateOptionGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateOptionGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateOptionGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateOptionGroupMessage
-- @return response
-- @return error_message
function M.CreateOptionGroupSync(CreateOptionGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateOptionGroupAsync(CreateOptionGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeOptionGroupOptions asynchronously, invoking a callback when done
-- @param DescribeOptionGroupOptionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeOptionGroupOptionsAsync(DescribeOptionGroupOptionsMessage, cb)
	assert(DescribeOptionGroupOptionsMessage, "You must provide a DescribeOptionGroupOptionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeOptionGroupOptions",
	}
	for header,value in pairs(DescribeOptionGroupOptionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeOptionGroupOptionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeOptionGroupOptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeOptionGroupOptionsMessage
-- @return response
-- @return error_message
function M.DescribeOptionGroupOptionsSync(DescribeOptionGroupOptionsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeOptionGroupOptionsAsync(DescribeOptionGroupOptionsMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ResetDBParameterGroup asynchronously, invoking a callback when done
-- @param ResetDBParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ResetDBParameterGroupAsync(ResetDBParameterGroupMessage, cb)
	assert(ResetDBParameterGroupMessage, "You must provide a ResetDBParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ResetDBParameterGroup",
	}
	for header,value in pairs(ResetDBParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ResetDBParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResetDBParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResetDBParameterGroupMessage
-- @return response
-- @return error_message
function M.ResetDBParameterGroupSync(ResetDBParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResetDBParameterGroupAsync(ResetDBParameterGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEngineDefaultClusterParameters asynchronously, invoking a callback when done
-- @param DescribeEngineDefaultClusterParametersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEngineDefaultClusterParametersAsync(DescribeEngineDefaultClusterParametersMessage, cb)
	assert(DescribeEngineDefaultClusterParametersMessage, "You must provide a DescribeEngineDefaultClusterParametersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEngineDefaultClusterParameters",
	}
	for header,value in pairs(DescribeEngineDefaultClusterParametersMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEngineDefaultClusterParametersMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEngineDefaultClusterParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEngineDefaultClusterParametersMessage
-- @return response
-- @return error_message
function M.DescribeEngineDefaultClusterParametersSync(DescribeEngineDefaultClusterParametersMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEngineDefaultClusterParametersAsync(DescribeEngineDefaultClusterParametersMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBSnapshot asynchronously, invoking a callback when done
-- @param CreateDBSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBSnapshotAsync(CreateDBSnapshotMessage, cb)
	assert(CreateDBSnapshotMessage, "You must provide a CreateDBSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBSnapshot",
	}
	for header,value in pairs(CreateDBSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBSnapshotMessage
-- @return response
-- @return error_message
function M.CreateDBSnapshotSync(CreateDBSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBSnapshotAsync(CreateDBSnapshotMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBCluster asynchronously, invoking a callback when done
-- @param CreateDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBClusterAsync(CreateDBClusterMessage, cb)
	assert(CreateDBClusterMessage, "You must provide a CreateDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBCluster",
	}
	for header,value in pairs(CreateDBClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBClusterMessage
-- @return response
-- @return error_message
function M.CreateDBClusterSync(CreateDBClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBClusterAsync(CreateDBClusterMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAccountAttributes asynchronously, invoking a callback when done
-- @param DescribeAccountAttributesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAccountAttributesAsync(DescribeAccountAttributesMessage, cb)
	assert(DescribeAccountAttributesMessage, "You must provide a DescribeAccountAttributesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAccountAttributes",
	}
	for header,value in pairs(DescribeAccountAttributesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAccountAttributesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAccountAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAccountAttributesMessage
-- @return response
-- @return error_message
function M.DescribeAccountAttributesSync(DescribeAccountAttributesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAccountAttributesAsync(DescribeAccountAttributesMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBSnapshots asynchronously, invoking a callback when done
-- @param DescribeDBSnapshotsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBSnapshotsAsync(DescribeDBSnapshotsMessage, cb)
	assert(DescribeDBSnapshotsMessage, "You must provide a DescribeDBSnapshotsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBSnapshots",
	}
	for header,value in pairs(DescribeDBSnapshotsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBSnapshotsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBSnapshots synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBSnapshotsMessage
-- @return response
-- @return error_message
function M.DescribeDBSnapshotsSync(DescribeDBSnapshotsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBSnapshotsAsync(DescribeDBSnapshotsMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBClusterSnapshotAttribute asynchronously, invoking a callback when done
-- @param ModifyDBClusterSnapshotAttributeMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBClusterSnapshotAttributeAsync(ModifyDBClusterSnapshotAttributeMessage, cb)
	assert(ModifyDBClusterSnapshotAttributeMessage, "You must provide a ModifyDBClusterSnapshotAttributeMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBClusterSnapshotAttribute",
	}
	for header,value in pairs(ModifyDBClusterSnapshotAttributeMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyDBClusterSnapshotAttributeMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyDBClusterSnapshotAttribute synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyDBClusterSnapshotAttributeMessage
-- @return response
-- @return error_message
function M.ModifyDBClusterSnapshotAttributeSync(ModifyDBClusterSnapshotAttributeMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBClusterSnapshotAttributeAsync(ModifyDBClusterSnapshotAttributeMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBSecurityGroup asynchronously, invoking a callback when done
-- @param CreateDBSecurityGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBSecurityGroupAsync(CreateDBSecurityGroupMessage, cb)
	assert(CreateDBSecurityGroupMessage, "You must provide a CreateDBSecurityGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBSecurityGroup",
	}
	for header,value in pairs(CreateDBSecurityGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBSecurityGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBSecurityGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBSecurityGroupMessage
-- @return response
-- @return error_message
function M.CreateDBSecurityGroupSync(CreateDBSecurityGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBSecurityGroupAsync(CreateDBSecurityGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveRoleFromDBCluster asynchronously, invoking a callback when done
-- @param RemoveRoleFromDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveRoleFromDBClusterAsync(RemoveRoleFromDBClusterMessage, cb)
	assert(RemoveRoleFromDBClusterMessage, "You must provide a RemoveRoleFromDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveRoleFromDBCluster",
	}
	for header,value in pairs(RemoveRoleFromDBClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveRoleFromDBClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveRoleFromDBCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveRoleFromDBClusterMessage
-- @return response
-- @return error_message
function M.RemoveRoleFromDBClusterSync(RemoveRoleFromDBClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveRoleFromDBClusterAsync(RemoveRoleFromDBClusterMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RevokeDBSecurityGroupIngress asynchronously, invoking a callback when done
-- @param RevokeDBSecurityGroupIngressMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RevokeDBSecurityGroupIngressAsync(RevokeDBSecurityGroupIngressMessage, cb)
	assert(RevokeDBSecurityGroupIngressMessage, "You must provide a RevokeDBSecurityGroupIngressMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RevokeDBSecurityGroupIngress",
	}
	for header,value in pairs(RevokeDBSecurityGroupIngressMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RevokeDBSecurityGroupIngressMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RevokeDBSecurityGroupIngress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RevokeDBSecurityGroupIngressMessage
-- @return response
-- @return error_message
function M.RevokeDBSecurityGroupIngressSync(RevokeDBSecurityGroupIngressMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RevokeDBSecurityGroupIngressAsync(RevokeDBSecurityGroupIngressMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateEventSubscription asynchronously, invoking a callback when done
-- @param CreateEventSubscriptionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateEventSubscriptionAsync(CreateEventSubscriptionMessage, cb)
	assert(CreateEventSubscriptionMessage, "You must provide a CreateEventSubscriptionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateEventSubscription",
	}
	for header,value in pairs(CreateEventSubscriptionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateEventSubscriptionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateEventSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateEventSubscriptionMessage
-- @return response
-- @return error_message
function M.CreateEventSubscriptionSync(CreateEventSubscriptionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateEventSubscriptionAsync(CreateEventSubscriptionMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CopyDBParameterGroup asynchronously, invoking a callback when done
-- @param CopyDBParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopyDBParameterGroupAsync(CopyDBParameterGroupMessage, cb)
	assert(CopyDBParameterGroupMessage, "You must provide a CopyDBParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopyDBParameterGroup",
	}
	for header,value in pairs(CopyDBParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CopyDBParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CopyDBParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CopyDBParameterGroupMessage
-- @return response
-- @return error_message
function M.CopyDBParameterGroupSync(CopyDBParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyDBParameterGroupAsync(CopyDBParameterGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RebootDBInstance asynchronously, invoking a callback when done
-- @param RebootDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RebootDBInstanceAsync(RebootDBInstanceMessage, cb)
	assert(RebootDBInstanceMessage, "You must provide a RebootDBInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RebootDBInstance",
	}
	for header,value in pairs(RebootDBInstanceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RebootDBInstanceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RebootDBInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RebootDBInstanceMessage
-- @return response
-- @return error_message
function M.RebootDBInstanceSync(RebootDBInstanceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebootDBInstanceAsync(RebootDBInstanceMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBSubnetGroup asynchronously, invoking a callback when done
-- @param CreateDBSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBSubnetGroupAsync(CreateDBSubnetGroupMessage, cb)
	assert(CreateDBSubnetGroupMessage, "You must provide a CreateDBSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBSubnetGroup",
	}
	for header,value in pairs(CreateDBSubnetGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBSubnetGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBSubnetGroupMessage
-- @return response
-- @return error_message
function M.CreateDBSubnetGroupSync(CreateDBSubnetGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBSubnetGroupAsync(CreateDBSubnetGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBCluster asynchronously, invoking a callback when done
-- @param ModifyDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBClusterAsync(ModifyDBClusterMessage, cb)
	assert(ModifyDBClusterMessage, "You must provide a ModifyDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBCluster",
	}
	for header,value in pairs(ModifyDBClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyDBClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyDBCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyDBClusterMessage
-- @return response
-- @return error_message
function M.ModifyDBClusterSync(ModifyDBClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBClusterAsync(ModifyDBClusterMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBSnapshotAttributes asynchronously, invoking a callback when done
-- @param DescribeDBSnapshotAttributesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBSnapshotAttributesAsync(DescribeDBSnapshotAttributesMessage, cb)
	assert(DescribeDBSnapshotAttributesMessage, "You must provide a DescribeDBSnapshotAttributesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBSnapshotAttributes",
	}
	for header,value in pairs(DescribeDBSnapshotAttributesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBSnapshotAttributesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBSnapshotAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBSnapshotAttributesMessage
-- @return response
-- @return error_message
function M.DescribeDBSnapshotAttributesSync(DescribeDBSnapshotAttributesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBSnapshotAttributesAsync(DescribeDBSnapshotAttributesMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSourceRegions asynchronously, invoking a callback when done
-- @param DescribeSourceRegionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSourceRegionsAsync(DescribeSourceRegionsMessage, cb)
	assert(DescribeSourceRegionsMessage, "You must provide a DescribeSourceRegionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeSourceRegions",
	}
	for header,value in pairs(DescribeSourceRegionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSourceRegionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSourceRegions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSourceRegionsMessage
-- @return response
-- @return error_message
function M.DescribeSourceRegionsSync(DescribeSourceRegionsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSourceRegionsAsync(DescribeSourceRegionsMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DownloadDBLogFilePortion asynchronously, invoking a callback when done
-- @param DownloadDBLogFilePortionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DownloadDBLogFilePortionAsync(DownloadDBLogFilePortionMessage, cb)
	assert(DownloadDBLogFilePortionMessage, "You must provide a DownloadDBLogFilePortionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DownloadDBLogFilePortion",
	}
	for header,value in pairs(DownloadDBLogFilePortionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DownloadDBLogFilePortionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DownloadDBLogFilePortion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DownloadDBLogFilePortionMessage
-- @return response
-- @return error_message
function M.DownloadDBLogFilePortionSync(DownloadDBLogFilePortionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DownloadDBLogFilePortionAsync(DownloadDBLogFilePortionMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBClusters asynchronously, invoking a callback when done
-- @param DescribeDBClustersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBClustersAsync(DescribeDBClustersMessage, cb)
	assert(DescribeDBClustersMessage, "You must provide a DescribeDBClustersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBClusters",
	}
	for header,value in pairs(DescribeDBClustersMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBClustersMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBClusters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBClustersMessage
-- @return response
-- @return error_message
function M.DescribeDBClustersSync(DescribeDBClustersMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBClustersAsync(DescribeDBClustersMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBClusterSnapshots asynchronously, invoking a callback when done
-- @param DescribeDBClusterSnapshotsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBClusterSnapshotsAsync(DescribeDBClusterSnapshotsMessage, cb)
	assert(DescribeDBClusterSnapshotsMessage, "You must provide a DescribeDBClusterSnapshotsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBClusterSnapshots",
	}
	for header,value in pairs(DescribeDBClusterSnapshotsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBClusterSnapshotsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBClusterSnapshots synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBClusterSnapshotsMessage
-- @return response
-- @return error_message
function M.DescribeDBClusterSnapshotsSync(DescribeDBClusterSnapshotsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBClusterSnapshotsAsync(DescribeDBClusterSnapshotsMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBParameterGroup asynchronously, invoking a callback when done
-- @param ModifyDBParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBParameterGroupAsync(ModifyDBParameterGroupMessage, cb)
	assert(ModifyDBParameterGroupMessage, "You must provide a ModifyDBParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBParameterGroup",
	}
	for header,value in pairs(ModifyDBParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyDBParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyDBParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyDBParameterGroupMessage
-- @return response
-- @return error_message
function M.ModifyDBParameterGroupSync(ModifyDBParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBParameterGroupAsync(ModifyDBParameterGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBSecurityGroups asynchronously, invoking a callback when done
-- @param DescribeDBSecurityGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBSecurityGroupsAsync(DescribeDBSecurityGroupsMessage, cb)
	assert(DescribeDBSecurityGroupsMessage, "You must provide a DescribeDBSecurityGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBSecurityGroups",
	}
	for header,value in pairs(DescribeDBSecurityGroupsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBSecurityGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBSecurityGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBSecurityGroupsMessage
-- @return response
-- @return error_message
function M.DescribeDBSecurityGroupsSync(DescribeDBSecurityGroupsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBSecurityGroupsAsync(DescribeDBSecurityGroupsMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBClusterParameterGroup asynchronously, invoking a callback when done
-- @param DeleteDBClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBClusterParameterGroupAsync(DeleteDBClusterParameterGroupMessage, cb)
	assert(DeleteDBClusterParameterGroupMessage, "You must provide a DeleteDBClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBClusterParameterGroup",
	}
	for header,value in pairs(DeleteDBClusterParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDBClusterParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDBClusterParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDBClusterParameterGroupMessage
-- @return response
-- @return error_message
function M.DeleteDBClusterParameterGroupSync(DeleteDBClusterParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBClusterParameterGroupAsync(DeleteDBClusterParameterGroupMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePendingMaintenanceActions asynchronously, invoking a callback when done
-- @param DescribePendingMaintenanceActionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePendingMaintenanceActionsAsync(DescribePendingMaintenanceActionsMessage, cb)
	assert(DescribePendingMaintenanceActionsMessage, "You must provide a DescribePendingMaintenanceActionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribePendingMaintenanceActions",
	}
	for header,value in pairs(DescribePendingMaintenanceActionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribePendingMaintenanceActionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribePendingMaintenanceActions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePendingMaintenanceActionsMessage
-- @return response
-- @return error_message
function M.DescribePendingMaintenanceActionsSync(DescribePendingMaintenanceActionsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePendingMaintenanceActionsAsync(DescribePendingMaintenanceActionsMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBClusterParameterGroups asynchronously, invoking a callback when done
-- @param DescribeDBClusterParameterGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBClusterParameterGroupsAsync(DescribeDBClusterParameterGroupsMessage, cb)
	assert(DescribeDBClusterParameterGroupsMessage, "You must provide a DescribeDBClusterParameterGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBClusterParameterGroups",
	}
	for header,value in pairs(DescribeDBClusterParameterGroupsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBClusterParameterGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBClusterParameterGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBClusterParameterGroupsMessage
-- @return response
-- @return error_message
function M.DescribeDBClusterParameterGroupsSync(DescribeDBClusterParameterGroupsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBClusterParameterGroupsAsync(DescribeDBClusterParameterGroupsMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CopyDBClusterSnapshot asynchronously, invoking a callback when done
-- @param CopyDBClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopyDBClusterSnapshotAsync(CopyDBClusterSnapshotMessage, cb)
	assert(CopyDBClusterSnapshotMessage, "You must provide a CopyDBClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopyDBClusterSnapshot",
	}
	for header,value in pairs(CopyDBClusterSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CopyDBClusterSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CopyDBClusterSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CopyDBClusterSnapshotMessage
-- @return response
-- @return error_message
function M.CopyDBClusterSnapshotSync(CopyDBClusterSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyDBClusterSnapshotAsync(CopyDBClusterSnapshotMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBInstance asynchronously, invoking a callback when done
-- @param ModifyDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBInstanceAsync(ModifyDBInstanceMessage, cb)
	assert(ModifyDBInstanceMessage, "You must provide a ModifyDBInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBInstance",
	}
	for header,value in pairs(ModifyDBInstanceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyDBInstanceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyDBInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyDBInstanceMessage
-- @return response
-- @return error_message
function M.ModifyDBInstanceSync(ModifyDBInstanceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBInstanceAsync(ModifyDBInstanceMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveSourceIdentifierFromSubscription asynchronously, invoking a callback when done
-- @param RemoveSourceIdentifierFromSubscriptionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveSourceIdentifierFromSubscriptionAsync(RemoveSourceIdentifierFromSubscriptionMessage, cb)
	assert(RemoveSourceIdentifierFromSubscriptionMessage, "You must provide a RemoveSourceIdentifierFromSubscriptionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveSourceIdentifierFromSubscription",
	}
	for header,value in pairs(RemoveSourceIdentifierFromSubscriptionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveSourceIdentifierFromSubscriptionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveSourceIdentifierFromSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveSourceIdentifierFromSubscriptionMessage
-- @return response
-- @return error_message
function M.RemoveSourceIdentifierFromSubscriptionSync(RemoveSourceIdentifierFromSubscriptionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveSourceIdentifierFromSubscriptionAsync(RemoveSourceIdentifierFromSubscriptionMessage, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
