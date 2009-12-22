module VRAPIDriver

  require 'VRAPI.rb'

  require 'soap/rpc/driver'

  class VRAPIPortType < ::SOAP::RPC::Driver
    DefaultEndpointUrl = "https://api.verticalresponse.com/1.0/VRAPI"
    MappingRegistry = ::SOAP::Mapping::Registry.new

    MappingRegistry.set(
      VRAPI::AddListMemberArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "addListMemberArgs") }
    )
    MappingRegistry.set(
      VRAPI::ListMember,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "ListMember") }
    )
    MappingRegistry.set(
      VRAPI::NVDictionary,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "NVPair") }
    )
    MappingRegistry.set(
      VRAPI::AppendFileToListArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "appendFileToListArgs") }
    )
    MappingRegistry.set(
      VRAPI::FileSpec,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "FileSpec") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfString,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
    )
    MappingRegistry.set(
      VRAPI::AppendFileToListResult,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "appendFileToListResult") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfRejectedRecordDetail,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "RejectedRecordDetail") }
    )
    MappingRegistry.set(
      VRAPI::AppendTemplateCampaignModuleArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "appendTemplateCampaignModuleArgs") }
    )
    MappingRegistry.set(
      VRAPI::TemplateCampaignModule,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "TemplateCampaignModule") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfFileSpec,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "FileSpec") }
    )
    MappingRegistry.set(
      VRAPI::CalculateCampaignAudienceArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "calculateCampaignAudienceArgs") }
    )
    MappingRegistry.set(
      VRAPI::CalculateCampaignAudienceResult,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "calculateCampaignAudienceResult") }
    )
    MappingRegistry.set(
      VRAPI::CanCallMethodArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "canCallMethodArgs") }
    )
    MappingRegistry.set(
      VRAPI::CompileCampaignRecipientResultsArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "compileCampaignRecipientResultsArgs") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfInteger,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "int") }
    )
    MappingRegistry.set(
      VRAPI::CompileCampaignRecipientResultsResult,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "compileCampaignRecipientResultsResult") }
    )
    MappingRegistry.set(
      VRAPI::CompileSegmentationQueryArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "compileSegmentationQueryArgs") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfSegmentationQueryOutputList,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "SegmentationQueryOutputList") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfList,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "List") }
    )
    MappingRegistry.set(
      VRAPI::CreateEmailCampaignArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "createEmailCampaignArgs") }
    )
    MappingRegistry.set(
      VRAPI::EmailCampaign,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "EmailCampaign") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfEmailCampaignContent,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "EmailCampaignContent") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfTemplateCampaignModule,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "TemplateCampaignModule") }
    )
    MappingRegistry.set(
      VRAPI::CreateFileArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "createFileArgs") }
    )
    MappingRegistry.set(
      VRAPI::CreateListArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "createListArgs") }
    )
    MappingRegistry.set(
      VRAPI::CreateOptinFormArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "createOptinFormArgs") }
    )
    MappingRegistry.set(
      VRAPI::OptinForm,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "OptinForm") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfOptinQuestion,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "OptinQuestion") }
    )
    MappingRegistry.set(
      VRAPI::CreateSegmentationQueryArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "createSegmentationQueryArgs") }
    )
    MappingRegistry.set(
      VRAPI::SegmentationQuery,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "SegmentationQuery") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfSegmentationQueryInput,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "SegmentationQueryInput") }
    )
    MappingRegistry.set(
      VRAPI::CreateSfListArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "createSfListArgs") }
    )
    MappingRegistry.set(
      VRAPI::DeleteCampaignArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "deleteCampaignArgs") }
    )
    MappingRegistry.set(
      VRAPI::DeleteFileArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "deleteFileArgs") }
    )
    MappingRegistry.set(
      VRAPI::DeleteListArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "deleteListArgs") }
    )
    MappingRegistry.set(
      VRAPI::DeleteListMemberArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "deleteListMemberArgs") }
    )
    MappingRegistry.set(
      VRAPI::DeleteSegmentationQueryArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "deleteSegmentationQueryArgs") }
    )
    MappingRegistry.set(
      VRAPI::DeleteTemplateCampaignModuleArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "deleteTemplateCampaignModuleArgs") }
    )
    MappingRegistry.set(
      VRAPI::DownloadCampaignRecipientResultsArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "downloadCampaignRecipientResultsArgs") }
    )
    MappingRegistry.set(
      VRAPI::DownloadCampaignRecipientResultsResult,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "downloadCampaignRecipientResultsResult") }
    )
    MappingRegistry.set(
      VRAPI::DownloadCompanyUnsubscribesAndBouncesArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "downloadCompanyUnsubscribesAndBouncesArgs") }
    )
    MappingRegistry.set(
      VRAPI::DownloadCompanyUnsubscribesAndBouncesResult,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "downloadCompanyUnsubscribesAndBouncesResult") }
    )
    MappingRegistry.set(
      VRAPI::DownloadListArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "downloadListArgs") }
    )
    MappingRegistry.set(
      VRAPI::DownloadListResult,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "downloadListResult") }
    )
    MappingRegistry.set(
      VRAPI::EditCompanyArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "editCompanyArgs") }
    )
    MappingRegistry.set(
      VRAPI::Company,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "Company") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfUser,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "User") }
    )
    MappingRegistry.set(
      VRAPI::EditListAttributeArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "editListAttributeArgs") }
    )
    MappingRegistry.set(
      VRAPI::EditListMemberArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "editListMemberArgs") }
    )
    MappingRegistry.set(
      VRAPI::EditListMembersArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "editListMembersArgs") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfListMember,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "ListMember") }
    )
    MappingRegistry.set(
      VRAPI::EditSegmentationQueryArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "editSegmentationQueryArgs") }
    )
    MappingRegistry.set(
      VRAPI::EditUserArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "editUserArgs") }
    )
    MappingRegistry.set(
      VRAPI::User,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "User") }
    )
    MappingRegistry.set(
      VRAPI::EmptyTrashArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "emptyTrashArgs") }
    )
    MappingRegistry.set(
      VRAPI::EnumerateEmailCampaignsArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "enumerateEmailCampaignsArgs") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfOrderByField,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "OrderByField") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfEmailCampaign,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "EmailCampaign") }
    )
    MappingRegistry.set(
      VRAPI::EnumerateFilesArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "enumerateFilesArgs") }
    )
    MappingRegistry.set(
      VRAPI::EnumerateListsArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "enumerateListsArgs") }
    )
    MappingRegistry.set(
      VRAPI::EnumerateSegmentationQueriesArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "enumerateSegmentationQueriesArgs") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfSegmentationQuery,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "SegmentationQuery") }
    )
    MappingRegistry.set(
      VRAPI::EraseListMembersArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "eraseListMembersArgs") }
    )
    MappingRegistry.set(
      VRAPI::FetchBackgroundResultArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "fetchBackgroundResultArgs") }
    )
    MappingRegistry.set(
      VRAPI::GetBackgroundTaskStatusArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getBackgroundTaskStatusArgs") }
    )
    MappingRegistry.set(
      VRAPI::BackgroundTaskStatus,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "BackgroundTaskStatus") }
    )
    MappingRegistry.set(
      VRAPI::GetCampaignDomainCountArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getCampaignDomainCountArgs") }
    )
    MappingRegistry.set(
      VRAPI::GetCampaignDomainCountResult,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getCampaignDomainCountResult") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfDomainCount,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "DomainCount") }
    )
    MappingRegistry.set(
      VRAPI::GetCompanyArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getCompanyArgs") }
    )
    MappingRegistry.set(
      VRAPI::GetCompanySummaryArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getCompanySummaryArgs") }
    )
    MappingRegistry.set(
      VRAPI::GetEmailCampaignDeclineHistoryArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getEmailCampaignDeclineHistoryArgs") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfEmailCampaignDecline,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "EmailCampaignDecline") }
    )
    MappingRegistry.set(
      VRAPI::GetEmailCampaignResponseHistogramsArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getEmailCampaignResponseHistogramsArgs") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfEmailCampaignResponseHistogram,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "EmailCampaignResponseHistogram") }
    )
    MappingRegistry.set(
      VRAPI::GetEmailCampaignStatsArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getEmailCampaignStatsArgs") }
    )
    MappingRegistry.set(
      VRAPI::EmailCampaignStats,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "EmailCampaignStats") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfEmailCampaignLinkStats,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "EmailCampaignLinkStats") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfEmailCampaignDomainStats,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "EmailCampaignDomainStats") }
    )
    MappingRegistry.set(
      VRAPI::GetEmailCreditBalanceArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getEmailCreditBalanceArgs") }
    )
    MappingRegistry.set(
      VRAPI::GetListDomainCountArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getListDomainCountArgs") }
    )
    MappingRegistry.set(
      VRAPI::GetListDomainCountResult,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getListDomainCountResult") }
    )
    MappingRegistry.set(
      VRAPI::GetListMemberByAddressHashArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getListMemberByAddressHashArgs") }
    )
    MappingRegistry.set(
      VRAPI::GetListMemberByEmailAddressArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getListMemberByEmailAddressArgs") }
    )
    MappingRegistry.set(
      VRAPI::GetListMemberByHashArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getListMemberByHashArgs") }
    )
    MappingRegistry.set(
      VRAPI::GetListMembersArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getListMembersArgs") }
    )
    MappingRegistry.set(
      VRAPI::GetPricingStructureArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getPricingStructureArgs") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfPricingStructureTier,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "PricingStructureTier") }
    )
    MappingRegistry.set(
      VRAPI::GetPurchaseQuotationArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getPurchaseQuotationArgs") }
    )
    MappingRegistry.set(
      VRAPI::GetPurchaseQuotationResult,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getPurchaseQuotationResult") }
    )
    MappingRegistry.set(
      VRAPI::GetUserArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getUserArgs") }
    )
    MappingRegistry.set(
      VRAPI::GetUserByEmailAddressArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "getUserByEmailAddressArgs") }
    )
    MappingRegistry.set(
      VRAPI::LaunchEmailCampaignArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "launchEmailCampaignArgs") }
    )
    MappingRegistry.set(
      VRAPI::LaunchEmailCampaignResult,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "launchEmailCampaignResult") }
    )
    MappingRegistry.set(
      VRAPI::LoginArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "loginArgs") }
    )
    MappingRegistry.set(
      VRAPI::MoveFileArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "moveFileArgs") }
    )
    MappingRegistry.set(
      VRAPI::RefreshArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "refreshArgs") }
    )
    MappingRegistry.set(
      VRAPI::RenderCampaignContentArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "renderCampaignContentArgs") }
    )
    MappingRegistry.set(
      VRAPI::RenderCampaignContentResult,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "renderCampaignContentResult") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfCampaignContentLink,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "CampaignContentLink") }
    )
    MappingRegistry.set(
      VRAPI::RunSegmentationQueryArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "runSegmentationQueryArgs") }
    )
    MappingRegistry.set(
      VRAPI::SearchListMembersArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "searchListMembersArgs") }
    )
    MappingRegistry.set(
      VRAPI::SendEmailCampaignTestArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "sendEmailCampaignTestArgs") }
    )
    MappingRegistry.set(
      VRAPI::ArrayOfNVDictionary,
      ::SOAP::SOAPArray,
      ::SOAP::Mapping::Registry::TypedArrayFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "NVDictionary") }
    )
    MappingRegistry.set(
      VRAPI::SendEmailCampaignTestResult,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "sendEmailCampaignTestResult") }
    )
    MappingRegistry.set(
      VRAPI::SetCampaignListsArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "setCampaignListsArgs") }
    )
    MappingRegistry.set(
      VRAPI::SetCustomListFieldsArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "setCustomListFieldsArgs") }
    )
    MappingRegistry.set(
      VRAPI::SetDisplayedListFieldsArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "setDisplayedListFieldsArgs") }
    )
    MappingRegistry.set(
      VRAPI::SetEmailCampaignAttributeArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "setEmailCampaignAttributeArgs") }
    )
    MappingRegistry.set(
      VRAPI::SetEmailCampaignContentArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "setEmailCampaignContentArgs") }
    )
    MappingRegistry.set(
      VRAPI::EmailCampaignContent,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "EmailCampaignContent") }
    )
    MappingRegistry.set(
      VRAPI::SetIndexedListFieldsArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "setIndexedListFieldsArgs") }
    )
    MappingRegistry.set(
      VRAPI::SetTemplateCampaignModuleArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "setTemplateCampaignModuleArgs") }
    )
    MappingRegistry.set(
      VRAPI::TransferEmailCreditsArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "transferEmailCreditsArgs") }
    )
    MappingRegistry.set(
      VRAPI::UndeleteCampaignArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "undeleteCampaignArgs") }
    )
    MappingRegistry.set(
      VRAPI::UndeleteListArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "undeleteListArgs") }
    )
    MappingRegistry.set(
      VRAPI::UndeleteSegmentationQueryArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "undeleteSegmentationQueryArgs") }
    )
    MappingRegistry.set(
      VRAPI::UnlaunchEmailCampaignArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "unlaunchEmailCampaignArgs") }
    )
    MappingRegistry.set(
      VRAPI::ValidateStreetAddressArgs,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "validateStreetAddressArgs") }
    )
    MappingRegistry.set(
      VRAPI::StreetAddress,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "StreetAddress") }
    )
    MappingRegistry.set(
      VRAPI::ValidateStreetAddressResult,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "validateStreetAddressResult") }
    )
    MappingRegistry.set(
      VRAPI::NVPair,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "NVPair") }
    )
    MappingRegistry.set(
      VRAPI::RejectedRecordDetail,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "RejectedRecordDetail") }
    )
    MappingRegistry.set(
      VRAPI::SegmentationQueryOutputList,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "SegmentationQueryOutputList") }
    )
    MappingRegistry.set(
      VRAPI::List,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "List") }
    )
    MappingRegistry.set(
      VRAPI::OptinQuestion,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "OptinQuestion") }
    )
    MappingRegistry.set(
      VRAPI::SegmentationQueryInput,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "SegmentationQueryInput") }
    )
    MappingRegistry.set(
      VRAPI::OrderByField,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "OrderByField") }
    )
    MappingRegistry.set(
      VRAPI::DomainCount,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "DomainCount") }
    )
    MappingRegistry.set(
      VRAPI::EmailCampaignDecline,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "EmailCampaignDecline") }
    )
    MappingRegistry.set(
      VRAPI::EmailCampaignResponseHistogram,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "EmailCampaignResponseHistogram") }
    )
    MappingRegistry.set(
      VRAPI::EmailCampaignLinkStats,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "EmailCampaignLinkStats") }
    )
    MappingRegistry.set(
      VRAPI::EmailCampaignDomainStats,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "EmailCampaignDomainStats") }
    )
    MappingRegistry.set(
      VRAPI::PricingStructureTier,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "PricingStructureTier") }
    )
    MappingRegistry.set(
      VRAPI::CampaignContentLink,
      ::SOAP::SOAPStruct,
      ::SOAP::Mapping::Registry::TypedStructFactory,
      { :type => XSD::QName.new("http://api.verticalresponse.com/1.0/VRAPI.xsd", "CampaignContentLink") }
    )

    Methods = [
      [ XSD::QName.new("VR/API/1_0", "addListMember"),
        "VR/API/1_0#addListMember",
        "addListMember",
        [ ["in", "args", ["AddListMemberArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "addListMemberArgs"]],
          ["retval", "result", ["ListMember", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "ListMember"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "appendFileToList"),
        "VR/API/1_0#appendFileToList",
        "appendFileToList",
        [ ["in", "args", ["AppendFileToListArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "appendFileToListArgs"]],
          ["retval", "result", ["AppendFileToListResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "appendFileToListResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "appendFileToListBackground"),
        "VR/API/1_0#appendFileToListBackground",
        "appendFileToListBackground",
        [ ["in", "args", ["AppendFileToListArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "appendFileToListArgs"]],
          ["retval", "background_task_id", ["::SOAP::SOAPInt"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "appendTemplateCampaignModule"),
        "VR/API/1_0#appendTemplateCampaignModule",
        "appendTemplateCampaignModule",
        [ ["in", "args", ["AppendTemplateCampaignModuleArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "appendTemplateCampaignModuleArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "calculateCampaignAudience"),
        "VR/API/1_0#calculateCampaignAudience",
        "calculateCampaignAudience",
        [ ["in", "args", ["CalculateCampaignAudienceArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "calculateCampaignAudienceArgs"]],
          ["retval", "result", ["CalculateCampaignAudienceResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "calculateCampaignAudienceResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "canCallMethod"),
        "VR/API/1_0#canCallMethod",
        "canCallMethod",
        [ ["in", "args", ["CanCallMethodArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "canCallMethodArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "compileCampaignRecipientResults"),
        "VR/API/1_0#compileCampaignRecipientResults",
        "compileCampaignRecipientResults",
        [ ["in", "args", ["CompileCampaignRecipientResultsArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "compileCampaignRecipientResultsArgs"]],
          ["retval", "result", ["CompileCampaignRecipientResultsResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "compileCampaignRecipientResultsResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "compileCampaignRecipientResultsBackground"),
        "VR/API/1_0#compileCampaignRecipientResultsBackground",
        "compileCampaignRecipientResultsBackground",
        [ ["in", "args", ["CompileCampaignRecipientResultsArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "compileCampaignRecipientResultsArgs"]],
          ["retval", "background_task_id", ["::SOAP::SOAPInt"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "compileSegmentationQuery"),
        "VR/API/1_0#compileSegmentationQuery",
        "compileSegmentationQuery",
        [ ["in", "args", ["CompileSegmentationQueryArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "compileSegmentationQueryArgs"]],
          ["retval", "result", ["List[]", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "List"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "compileSegmentationQueryBackground"),
        "VR/API/1_0#compileSegmentationQueryBackground",
        "compileSegmentationQueryBackground",
        [ ["in", "args", ["CompileSegmentationQueryArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "compileSegmentationQueryArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "createEmailCampaign"),
        "VR/API/1_0#createEmailCampaign",
        "createEmailCampaign",
        [ ["in", "args", ["CreateEmailCampaignArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "createEmailCampaignArgs"]],
          ["retval", "result", ["::SOAP::SOAPInt"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "createFile"),
        "VR/API/1_0#createFile",
        "createFile",
        [ ["in", "args", ["CreateFileArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "createFileArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "createList"),
        "VR/API/1_0#createList",
        "createList",
        [ ["in", "args", ["CreateListArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "createListArgs"]],
          ["retval", "list_id", ["::SOAP::SOAPInt"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "createOptinForm"),
        "VR/API/1_0#createOptinForm",
        "createOptinForm",
        [ ["in", "args", ["CreateOptinFormArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "createOptinFormArgs"]],
          ["retval", "optin_form_id", ["::SOAP::SOAPInt"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "createSegmentationQuery"),
        "VR/API/1_0#createSegmentationQuery",
        "createSegmentationQuery",
        [ ["in", "args", ["CreateSegmentationQueryArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "createSegmentationQueryArgs"]],
          ["retval", "query_id", ["::SOAP::SOAPInt"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "createSfList"),
        "VR/API/1_0#createSfList",
        "createSfList",
        [ ["in", "args", ["CreateSfListArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "createSfListArgs"]],
          ["retval", "result", ["AppendFileToListResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "appendFileToListResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "deleteCampaign"),
        "VR/API/1_0#deleteCampaign",
        "deleteCampaign",
        [ ["in", "args", ["DeleteCampaignArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "deleteCampaignArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "deleteFile"),
        "VR/API/1_0#deleteFile",
        "deleteFile",
        [ ["in", "args", ["DeleteFileArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "deleteFileArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "deleteList"),
        "VR/API/1_0#deleteList",
        "deleteList",
        [ ["in", "args", ["DeleteListArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "deleteListArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "deleteListMember"),
        "VR/API/1_0#deleteListMember",
        "deleteListMember",
        [ ["in", "args", ["DeleteListMemberArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "deleteListMemberArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "deleteSegmentationQuery"),
        "VR/API/1_0#deleteSegmentationQuery",
        "deleteSegmentationQuery",
        [ ["in", "args", ["DeleteSegmentationQueryArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "deleteSegmentationQueryArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "deleteTemplateCampaignModule"),
        "VR/API/1_0#deleteTemplateCampaignModule",
        "deleteTemplateCampaignModule",
        [ ["in", "args", ["DeleteTemplateCampaignModuleArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "deleteTemplateCampaignModuleArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "downloadCampaignRecipientResults"),
        "VR/API/1_0#downloadCampaignRecipientResults",
        "downloadCampaignRecipientResults",
        [ ["in", "args", ["DownloadCampaignRecipientResultsArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "downloadCampaignRecipientResultsArgs"]],
          ["retval", "result", ["DownloadCampaignRecipientResultsResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "downloadCampaignRecipientResultsResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "downloadCampaignRecipientResultsBackground"),
        "VR/API/1_0#downloadCampaignRecipientResultsBackground",
        "downloadCampaignRecipientResultsBackground",
        [ ["in", "args", ["DownloadCampaignRecipientResultsArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "downloadCampaignRecipientResultsArgs"]],
          ["retval", "background_task_id", ["::SOAP::SOAPInt"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "downloadCompanyUnsubscribesAndBounces"),
        "VR/API/1_0#downloadCompanyUnsubscribesAndBounces",
        "downloadCompanyUnsubscribesAndBounces",
        [ ["in", "args", ["DownloadCompanyUnsubscribesAndBouncesArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "downloadCompanyUnsubscribesAndBouncesArgs"]],
          ["retval", "result", ["DownloadCompanyUnsubscribesAndBouncesResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "downloadCompanyUnsubscribesAndBouncesResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "downloadList"),
        "VR/API/1_0#downloadList",
        "downloadList",
        [ ["in", "args", ["DownloadListArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "downloadListArgs"]],
          ["retval", "result", ["DownloadListResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "downloadListResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "downloadListBackground"),
        "VR/API/1_0#downloadListBackground",
        "downloadListBackground",
        [ ["in", "args", ["DownloadListArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "downloadListArgs"]],
          ["retval", "background_task_id", ["::SOAP::SOAPInt"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "editCompany"),
        "VR/API/1_0#editCompany",
        "editCompany",
        [ ["in", "args", ["EditCompanyArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "editCompanyArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "editListAttribute"),
        "VR/API/1_0#editListAttribute",
        "editListAttribute",
        [ ["in", "args", ["EditListAttributeArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "editListAttributeArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "editListMember"),
        "VR/API/1_0#editListMember",
        "editListMember",
        [ ["in", "args", ["EditListMemberArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "editListMemberArgs"]],
          ["retval", "result", ["ListMember", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "ListMember"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "editListMembers"),
        "VR/API/1_0#editListMembers",
        "editListMembers",
        [ ["in", "args", ["EditListMembersArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "editListMembersArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "editSegmentationQuery"),
        "VR/API/1_0#editSegmentationQuery",
        "editSegmentationQuery",
        [ ["in", "args", ["EditSegmentationQueryArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "editSegmentationQueryArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "editUser"),
        "VR/API/1_0#editUser",
        "editUser",
        [ ["in", "args", ["EditUserArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "editUserArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "emptyTrash"),
        "VR/API/1_0#emptyTrash",
        "emptyTrash",
        [ ["in", "args", ["EmptyTrashArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "emptyTrashArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "enumerateEmailCampaigns"),
        "VR/API/1_0#enumerateEmailCampaigns",
        "enumerateEmailCampaigns",
        [ ["in", "args", ["EnumerateEmailCampaignsArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "enumerateEmailCampaignsArgs"]],
          ["retval", "result", ["EmailCampaign[]", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "EmailCampaign"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "enumerateFiles"),
        "VR/API/1_0#enumerateFiles",
        "enumerateFiles",
        [ ["in", "args", ["EnumerateFilesArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "enumerateFilesArgs"]],
          ["retval", "result", ["FileSpec[]", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "FileSpec"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "enumerateLists"),
        "VR/API/1_0#enumerateLists",
        "enumerateLists",
        [ ["in", "args", ["EnumerateListsArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "enumerateListsArgs"]],
          ["retval", "result", ["List[]", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "List"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "enumerateSegmentationQueries"),
        "VR/API/1_0#enumerateSegmentationQueries",
        "enumerateSegmentationQueries",
        [ ["in", "args", ["EnumerateSegmentationQueriesArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "enumerateSegmentationQueriesArgs"]],
          ["retval", "result", ["SegmentationQuery[]", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "SegmentationQuery"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "eraseListMembers"),
        "VR/API/1_0#eraseListMembers",
        "eraseListMembers",
        [ ["in", "args", ["EraseListMembersArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "eraseListMembersArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "fetchAppendFileToListBackgroundResult"),
        "VR/API/1_0#fetchAppendFileToListBackgroundResult",
        "fetchAppendFileToListBackgroundResult",
        [ ["in", "args", ["FetchBackgroundResultArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "fetchBackgroundResultArgs"]],
          ["retval", "result", ["AppendFileToListResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "appendFileToListResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "fetchCompileCampaignRecipientResultsBackgroundResult"),
        "VR/API/1_0#fetchCompileCampaignRecipientResultsBackgroundResult",
        "fetchCompileCampaignRecipientResultsBackgroundResult",
        [ ["in", "args", ["FetchBackgroundResultArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "fetchBackgroundResultArgs"]],
          ["retval", "result", ["CompileCampaignRecipientResultsResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "compileCampaignRecipientResultsResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "fetchDownloadCampaignRecipientResultsBackgroundResult"),
        "VR/API/1_0#fetchDownloadCampaignRecipientResultsBackgroundResult",
        "fetchDownloadCampaignRecipientResultsBackgroundResult",
        [ ["in", "args", ["FetchBackgroundResultArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "fetchBackgroundResultArgs"]],
          ["retval", "result", ["DownloadCampaignRecipientResultsResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "downloadCampaignRecipientResultsResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "fetchDownloadListBackgroundResult"),
        "VR/API/1_0#fetchDownloadListBackgroundResult",
        "fetchDownloadListBackgroundResult",
        [ ["in", "args", ["FetchBackgroundResultArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "fetchBackgroundResultArgs"]],
          ["retval", "result", ["DownloadListResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "downloadListResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "fetchRunSegmentationQueryBackgroundResult"),
        "VR/API/1_0#fetchRunSegmentationQueryBackgroundResult",
        "fetchRunSegmentationQueryBackgroundResult",
        [ ["in", "args", ["FetchBackgroundResultArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "fetchBackgroundResultArgs"]],
          ["retval", "result_size", ["::SOAP::SOAPInt"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "getBackgroundTaskStatus"),
        "VR/API/1_0#getBackgroundTaskStatus",
        "getBackgroundTaskStatus",
        [ ["in", "args", ["GetBackgroundTaskStatusArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getBackgroundTaskStatusArgs"]],
          ["retval", "result", ["BackgroundTaskStatus", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "BackgroundTaskStatus"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "getCampaignDomainCount"),
        "VR/API/1_0#getCampaignDomainCount",
        "getCampaignDomainCount",
        [ ["in", "args", ["GetCampaignDomainCountArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getCampaignDomainCountArgs"]],
          ["retval", "result", ["GetCampaignDomainCountResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getCampaignDomainCountResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "getCompany"),
        "VR/API/1_0#getCompany",
        "getCompany",
        [ ["in", "args", ["GetCompanyArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getCompanyArgs"]],
          ["retval", "result", ["Company", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "Company"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "getCompanySummary"),
        "VR/API/1_0#getCompanySummary",
        "getCompanySummary",
        [ ["in", "args", ["GetCompanySummaryArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getCompanySummaryArgs"]],
          ["retval", "result", ["NVPair[]", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "NVPair"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "getEmailCampaignDeclineHistory"),
        "VR/API/1_0#getEmailCampaignDeclineHistory",
        "getEmailCampaignDeclineHistory",
        [ ["in", "args", ["GetEmailCampaignDeclineHistoryArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getEmailCampaignDeclineHistoryArgs"]],
          ["retval", "result", ["EmailCampaignDecline[]", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "EmailCampaignDecline"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "getEmailCampaignResponseHistograms"),
        "VR/API/1_0#getEmailCampaignResponseHistograms",
        "getEmailCampaignResponseHistograms",
        [ ["in", "args", ["GetEmailCampaignResponseHistogramsArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getEmailCampaignResponseHistogramsArgs"]],
          ["retval", "result", ["EmailCampaignResponseHistogram[]", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "EmailCampaignResponseHistogram"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "getEmailCampaignStats"),
        "VR/API/1_0#getEmailCampaignStats",
        "getEmailCampaignStats",
        [ ["in", "args", ["GetEmailCampaignStatsArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getEmailCampaignStatsArgs"]],
          ["retval", "result", ["EmailCampaignStats", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "EmailCampaignStats"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "getEmailCreditBalance"),
        "VR/API/1_0#getEmailCreditBalance",
        "getEmailCreditBalance",
        [ ["in", "args", ["GetEmailCreditBalanceArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getEmailCreditBalanceArgs"]],
          ["retval", "result", ["::SOAP::SOAPInt"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "getListDomainCount"),
        "VR/API/1_0#getListDomainCount",
        "getListDomainCount",
        [ ["in", "args", ["GetListDomainCountArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getListDomainCountArgs"]],
          ["retval", "result", ["GetListDomainCountResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getListDomainCountResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "getListMemberByAddressHash"),
        "VR/API/1_0#getListMemberByAddressHash",
        "getListMemberByAddressHash",
        [ ["in", "args", ["GetListMemberByAddressHashArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getListMemberByAddressHashArgs"]],
          ["retval", "result", ["ListMember", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "ListMember"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "getListMemberByEmailAddress"),
        "VR/API/1_0#getListMemberByEmailAddress",
        "getListMemberByEmailAddress",
        [ ["in", "args", ["GetListMemberByEmailAddressArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getListMemberByEmailAddressArgs"]],
          ["retval", "result", ["ListMember", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "ListMember"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "getListMemberByHash"),
        "VR/API/1_0#getListMemberByHash",
        "getListMemberByHash",
        [ ["in", "args", ["GetListMemberByHashArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getListMemberByHashArgs"]],
          ["retval", "result", ["ListMember", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "ListMember"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "getListMembers"),
        "VR/API/1_0#getListMembers",
        "getListMembers",
        [ ["in", "args", ["GetListMembersArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getListMembersArgs"]],
          ["retval", "result", ["ListMember[]", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "ListMember"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "getPricingStructure"),
        "VR/API/1_0#getPricingStructure",
        "getPricingStructure",
        [ ["in", "args", ["GetPricingStructureArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getPricingStructureArgs"]],
          ["retval", "result", ["PricingStructureTier[]", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "PricingStructureTier"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "getPurchaseQuotation"),
        "VR/API/1_0#getPurchaseQuotation",
        "getPurchaseQuotation",
        [ ["in", "args", ["GetPurchaseQuotationArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getPurchaseQuotationArgs"]],
          ["retval", "result", ["GetPurchaseQuotationResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getPurchaseQuotationResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "getUser"),
        "VR/API/1_0#getUser",
        "getUser",
        [ ["in", "args", ["GetUserArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getUserArgs"]],
          ["retval", "result", ["User", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "User"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "getUserByEmailAddress"),
        "VR/API/1_0#getUserByEmailAddress",
        "getUserByEmailAddress",
        [ ["in", "args", ["GetUserByEmailAddressArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "getUserByEmailAddressArgs"]],
          ["retval", "result", ["User", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "User"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "launchEmailCampaign"),
        "VR/API/1_0#launchEmailCampaign",
        "launchEmailCampaign",
        [ ["in", "args", ["LaunchEmailCampaignArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "launchEmailCampaignArgs"]],
          ["retval", "args", ["LaunchEmailCampaignResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "launchEmailCampaignResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "login"),
        "VR/API/1_0#login",
        "login",
        [ ["in", "args", ["LoginArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "loginArgs"]],
          ["retval", "sessionId", ["::SOAP::SOAPString"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "moveFile"),
        "VR/API/1_0#moveFile",
        "moveFile",
        [ ["in", "args", ["MoveFileArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "moveFileArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "refresh"),
        "VR/API/1_0#refresh",
        "refresh",
        [ ["in", "args", ["RefreshArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "refreshArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "renderCampaignContent"),
        "VR/API/1_0#renderCampaignContent",
        "renderCampaignContent",
        [ ["in", "args", ["RenderCampaignContentArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "renderCampaignContentArgs"]],
          ["retval", "result", ["RenderCampaignContentResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "renderCampaignContentResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "runSegmentationQuery"),
        "VR/API/1_0#runSegmentationQuery",
        "runSegmentationQuery",
        [ ["in", "args", ["RunSegmentationQueryArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "runSegmentationQueryArgs"]],
          ["retval", "result_size", ["::SOAP::SOAPInt"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "runSegmentationQueryBackground"),
        "VR/API/1_0#runSegmentationQueryBackground",
        "runSegmentationQueryBackground",
        [ ["in", "args", ["RunSegmentationQueryArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "runSegmentationQueryArgs"]],
          ["retval", "background_task_id", ["::SOAP::SOAPInt"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "searchListMembers"),
        "VR/API/1_0#searchListMembers",
        "searchListMembers",
        [ ["in", "args", ["SearchListMembersArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "searchListMembersArgs"]],
          ["retval", "result", ["ListMember[]", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "ListMember"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "sendEmailCampaignTest"),
        "VR/API/1_0#sendEmailCampaignTest",
        "sendEmailCampaignTest",
        [ ["in", "args", ["SendEmailCampaignTestArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "sendEmailCampaignTestArgs"]],
          ["retval", "args", ["SendEmailCampaignTestResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "sendEmailCampaignTestResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "setCampaignLists"),
        "VR/API/1_0#setCampaignLists",
        "setCampaignLists",
        [ ["in", "args", ["SetCampaignListsArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "setCampaignListsArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "setCustomListFields"),
        "VR/API/1_0#setCustomListFields",
        "setCustomListFields",
        [ ["in", "args", ["SetCustomListFieldsArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "setCustomListFieldsArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "setDisplayedListFields"),
        "VR/API/1_0#setDisplayedListFields",
        "setDisplayedListFields",
        [ ["in", "args", ["SetDisplayedListFieldsArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "setDisplayedListFieldsArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "setEmailCampaignAttribute"),
        "VR/API/1_0#setEmailCampaignAttribute",
        "setEmailCampaignAttribute",
        [ ["in", "args", ["SetEmailCampaignAttributeArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "setEmailCampaignAttributeArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "setEmailCampaignContent"),
        "VR/API/1_0#setEmailCampaignContent",
        "setEmailCampaignContent",
        [ ["in", "args", ["SetEmailCampaignContentArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "setEmailCampaignContentArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "setIndexedListFields"),
        "VR/API/1_0#setIndexedListFields",
        "setIndexedListFields",
        [ ["in", "args", ["SetIndexedListFieldsArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "setIndexedListFieldsArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "setTemplateCampaignModule"),
        "VR/API/1_0#setTemplateCampaignModule",
        "setTemplateCampaignModule",
        [ ["in", "args", ["SetTemplateCampaignModuleArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "setTemplateCampaignModuleArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "transferEmailCredits"),
        "VR/API/1_0#transferEmailCredits",
        "transferEmailCredits",
        [ ["in", "args", ["TransferEmailCreditsArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "transferEmailCreditsArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "undeleteCampaign"),
        "VR/API/1_0#undeleteCampaign",
        "undeleteCampaign",
        [ ["in", "args", ["UndeleteCampaignArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "undeleteCampaignArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "undeleteList"),
        "VR/API/1_0#undeleteList",
        "undeleteList",
        [ ["in", "args", ["UndeleteListArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "undeleteListArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "undeleteSegmentationQuery"),
        "VR/API/1_0#undeleteSegmentationQuery",
        "undeleteSegmentationQuery",
        [ ["in", "args", ["UndeleteSegmentationQueryArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "undeleteSegmentationQueryArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "unlaunchEmailCampaign"),
        "VR/API/1_0#unlaunchEmailCampaign",
        "unlaunchEmailCampaign",
        [ ["in", "args", ["UnlaunchEmailCampaignArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "unlaunchEmailCampaignArgs"]],
          ["retval", "result", ["::SOAP::SOAPBoolean"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ],
      [ XSD::QName.new("VR/API/1_0", "validateStreetAddress"),
        "VR/API/1_0#validateStreetAddress",
        "validateStreetAddress",
        [ ["in", "args", ["ValidateStreetAddressArgs", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "validateStreetAddressArgs"]],
          ["retval", "result", ["ValidateStreetAddressResult", "http://api.verticalresponse.com/1.0/VRAPI.xsd", "validateStreetAddressResult"]] ],
        { :request_style =>  :rpc, :request_use =>  :encoded,
          :response_style => :rpc, :response_use => :encoded }
      ]
    ]

    def initialize(endpoint_url = nil)
      endpoint_url ||= DefaultEndpointUrl
      super(endpoint_url, nil)
      self.mapping_registry = MappingRegistry
      init_methods
    end

  private

    def init_methods
      Methods.each do |definitions|
        opt = definitions.last
        if opt[:request_style] == :document
          add_document_operation(*definitions)
        else
          add_rpc_operation(*definitions)
          qname = definitions[0]
          name = definitions[2]
          if qname.name != name and qname.name.capitalize == name.capitalize
            ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
              __send__(name, *arg)
            end
          end
        end
      end
    end
  end

end
