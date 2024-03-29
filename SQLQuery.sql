USE [master]
GO
/****** Object:  Database [CFADB]    Script Date: 29-07-2023 16:04:21 ******/
CREATE DATABASE [CFADB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CFADB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CFADB.mdf' , SIZE = 1778688KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CFADB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CFADB_log.ldf' , SIZE = 199296KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CFADB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CFADB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CFADB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CFADB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CFADB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CFADB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CFADB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CFADB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CFADB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CFADB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CFADB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CFADB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CFADB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CFADB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CFADB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CFADB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CFADB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CFADB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CFADB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CFADB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CFADB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CFADB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CFADB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CFADB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CFADB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CFADB] SET  MULTI_USER 
GO
ALTER DATABASE [CFADB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CFADB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CFADB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CFADB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CFADB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CFADB]
GO
/****** Object:  User [Rajendra]    Script Date: 29-07-2023 16:04:21 ******/
CREATE USER [Rajendra] FOR LOGIN [Rajendra] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Pratap]    Script Date: 29-07-2023 16:04:21 ******/
CREATE USER [Pratap] FOR LOGIN [Pratap] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Nitesh]    Script Date: 29-07-2023 16:04:21 ******/
CREATE USER [Nitesh] FOR LOGIN [Nitesh] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Nayan]    Script Date: 29-07-2023 16:04:21 ******/
CREATE USER [Nayan] FOR LOGIN [Nayan] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BUILTIN\Administrators]    Script Date: 29-07-2023 16:04:21 ******/
CREATE USER [BUILTIN\Administrators] FOR LOGIN [BUILTIN\Administrators]
GO
/****** Object:  User [Anil]    Script Date: 29-07-2023 16:04:21 ******/
CREATE USER [Anil] FOR LOGIN [Anil] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Amit]    Script Date: 29-07-2023 16:04:21 ******/
CREATE USER [Amit] FOR LOGIN [Amit] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Rajendra]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Rajendra]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Rajendra]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Rajendra]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Rajendra]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Rajendra]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Rajendra]
GO
ALTER ROLE [db_owner] ADD MEMBER [Pratap]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Pratap]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Pratap]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Pratap]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Pratap]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Pratap]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Pratap]
GO
ALTER ROLE [db_owner] ADD MEMBER [Nitesh]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Nitesh]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Nitesh]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Nitesh]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Nitesh]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Nitesh]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Nitesh]
GO
ALTER ROLE [db_owner] ADD MEMBER [Nayan]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Nayan]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Nayan]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Nayan]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Nayan]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Nayan]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Nayan]
GO
ALTER ROLE [db_owner] ADD MEMBER [Anil]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Anil]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Anil]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Anil]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Anil]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Anil]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Anil]
GO
ALTER ROLE [db_owner] ADD MEMBER [Amit]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Amit]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Amit]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Amit]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Amit]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Amit]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Amit]
GO
/****** Object:  Schema [CFA]    Script Date: 29-07-2023 16:04:21 ******/
CREATE SCHEMA [CFA]
GO
/****** Object:  Schema [NIU]    Script Date: 29-07-2023 16:04:21 ******/
CREATE SCHEMA [NIU]
GO
/****** Object:  UserDefinedTableType [CFA].[AcBillSumm]    Script Date: 29-07-2023 16:04:21 ******/
CREATE TYPE [CFA].[AcBillSumm] AS TABLE(
	[pkId] [int] NULL,
	[GatepassId] [int] NULL,
	[TransBillBox] [int] NULL,
	[DtlsStatus] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [CFA].[ImportChqDepoReceipt]    Script Date: 29-07-2023 16:04:21 ******/
CREATE TYPE [CFA].[ImportChqDepoReceipt] AS TABLE(
	[pkId] [int] NULL,
	[StockistName] [nvarchar](200) NULL,
	[StockistCode] [nvarchar](20) NULL,
	[DepositeDate] [nvarchar](50) NULL,
	[BankName] [nvarchar](200) NULL,
	[AccountNo] [nvarchar](50) NULL,
	[ChequeNo] [nvarchar](50) NULL,
	[Amount] [nvarchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [CFA].[ImportCNData]    Script Date: 29-07-2023 16:04:21 ******/
CREATE TYPE [CFA].[ImportCNData] AS TABLE(
	[pkId] [int] NULL,
	[SalesOrderNo] [nvarchar](200) NULL,
	[SalesOrderDate] [datetime] NULL,
	[CrDrNoteNo] [nvarchar](200) NULL,
	[CRDRCreationDate] [datetime] NULL,
	[CrDrAmt] [float] NULL,
	[SoldToCode] [nvarchar](200) NULL,
	[SoldToName] [nvarchar](200) NULL,
	[SoldToCity] [nvarchar](200) NULL,
	[OrderReason] [nvarchar](200) NULL,
	[OrderReasonDescription] [nvarchar](200) NULL,
	[LRNo] [nvarchar](200) NULL,
	[LRDate] [datetime] NULL,
	[CFAGRDate] [datetime] NULL,
	[BasicAmt] [decimal](18, 0) NULL,
	[AddedBy] [int] NULL,
	[AddedOn] [datetime] NULL
)
GO
/****** Object:  UserDefinedTableType [CFA].[ImportInvData]    Script Date: 29-07-2023 16:04:21 ******/
CREATE TYPE [CFA].[ImportInvData] AS TABLE(
	[pkId] [bigint] NULL,
	[InvoiceNo] [nvarchar](50) NULL,
	[InvoiceCreateDate] [datetime] NULL,
	[InvoiceAmount] [nvarchar](50) NULL,
	[SoldToCode] [nvarchar](50) NULL,
	[SoldToName] [nvarchar](200) NULL,
	[SoldToCity] [nvarchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [CFA].[ImportLRData]    Script Date: 29-07-2023 16:04:21 ******/
CREATE TYPE [CFA].[ImportLRData] AS TABLE(
	[pkId] [bigint] NULL,
	[InvoiceNo] [nvarchar](50) NULL,
	[InvoiceDate] [nvarchar](50) NULL,
	[LRNo] [nvarchar](50) NULL,
	[LRDate] [datetime] NULL,
	[LRBox] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [CFA].[ImportOSData]    Script Date: 29-07-2023 16:04:21 ******/
CREATE TYPE [CFA].[ImportOSData] AS TABLE(
	[pkId] [bigint] NULL,
	[Div_Cd] [nvarchar](20) NULL,
	[CustomerCode] [nvarchar](20) NULL,
	[CustomerName] [nvarchar](200) NULL,
	[City] [nvarchar](200) NULL,
	[DocName] [nvarchar](250) NULL,
	[DocDate] [nvarchar](50) NULL,
	[DueDate] [nvarchar](50) NULL,
	[OpenAmt] [nvarchar](50) NULL,
	[ChqNo] [nvarchar](20) NULL,
	[DistrChannel] [nvarchar](250) NULL,
	[DocTypeDesc] [nvarchar](250) NULL,
	[DocType] [nvarchar](50) NULL,
	[OverdueAmt] [nvarchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [CFA].[ImportProductMstNew]    Script Date: 29-07-2023 16:04:22 ******/
CREATE TYPE [CFA].[ImportProductMstNew] AS TABLE(
	[pkId] [int] NULL,
	[Division] [int] NULL,
	[BatchNo] [nvarchar](200) NULL,
	[ProductName] [nvarchar](200) NULL,
	[Code] [nvarchar](200) NULL,
	[ExpiryDate] [datetime] NULL
)
GO
/****** Object:  UserDefinedTableType [CFA].[ImportSRSData]    Script Date: 29-07-2023 16:04:22 ******/
CREATE TYPE [CFA].[ImportSRSData] AS TABLE(
	[pkId] [int] NULL,
	[SalesDocNo] [nvarchar](255) NULL,
	[PONoLRNo] [nvarchar](255) NULL,
	[PONo] [nvarchar](250) NULL,
	[Soldtoparty] [nvarchar](255) NULL,
	[Name1] [nvarchar](255) NULL,
	[Netvalue] [nvarchar](25) NULL,
	[Division] [nvarchar](255) NULL,
	[SalesOrganization] [nvarchar](255) NULL,
	[Plant] [nvarchar](255) NULL
)
GO
/****** Object:  UserDefinedTableType [CFA].[ImportTransitData]    Script Date: 29-07-2023 16:04:22 ******/
CREATE TYPE [CFA].[ImportTransitData] AS TABLE(
	[pkId] [bigint] NULL,
	[DeliveryNo] [nvarchar](20) NULL,
	[ActualGIDate] [datetime] NULL,
	[RecPlant] [nvarchar](20) NULL,
	[RecPlantDesc] [nvarchar](200) NULL,
	[DispPlant] [nvarchar](20) NULL,
	[DispPlantDesc] [nvarchar](200) NULL,
	[InvoiceNo] [nvarchar](20) NULL,
	[InvoiceDate] [datetime] NULL,
	[MaterialNo] [nvarchar](50) NULL,
	[MatDesc] [nvarchar](200) NULL,
	[UOM] [nvarchar](10) NULL,
	[BatchNo] [nvarchar](50) NULL,
	[Quantity] [nvarchar](20) NULL,
	[TransporterCode] [nvarchar](20) NULL,
	[TransporterName] [nvarchar](50) NULL,
	[LrNo] [nvarchar](20) NULL,
	[LrDate] [datetime] NULL,
	[TotalCaseQty] [nvarchar](20) NULL,
	[VehicleNo] [nvarchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [CFA].[ScannedInvData]    Script Date: 29-07-2023 16:04:22 ******/
CREATE TYPE [CFA].[ScannedInvData] AS TABLE(
	[pkId] [int] NULL,
	[InvId] [int] NULL,
	[ScannedBoxes] [nvarchar](100) NULL
)
GO
/****** Object:  UserDefinedTableType [CFA].[StkBankDtls]    Script Date: 29-07-2023 16:04:22 ******/
CREATE TYPE [CFA].[StkBankDtls] AS TABLE(
	[StockistId] [int] NULL,
	[BankId] [bigint] NULL,
	[IFSCCode] [nvarchar](30) NULL,
	[AccountNo] [nvarchar](30) NULL
)
GO
/****** Object:  UserDefinedTableType [CFA].[VehChkListData]    Script Date: 29-07-2023 16:04:22 ******/
CREATE TYPE [CFA].[VehChkListData] AS TABLE(
	[pkId] [int] NULL,
	[CLQueId] [int] NULL,
	[AnsText] [nvarchar](250) NULL
)
GO
/****** Object:  UserDefinedFunction [CFA].[fn_CamelCase]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create FUNCTION [CFA].[fn_CamelCase] (@str as varchar(max))
returns varchar(max)
as
begin
declare @bitval bit, @result varchar(max), @i int, @j char(1);
select @bitval = 1, @i=1, @result = '';
while (@i <= len(@str))
select @j= substring(@str,@i,1),
@result = @result + case when @bitval=1 then UPPER(@j) else LOWER(@j) end,
@bitval = case when @j like ' ' then 1   else 0 end,
@i = @i +1
return @result
end


--print [CFA].[fn_CamelCase]('rajendra G. jay')


GO
/****** Object:  UserDefinedFunction [CFA].[fn_GetCommInvNo]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create FUNCTION [CFA].[fn_GetCommInvNo] (@BranchId int, @InvDate datetime)
returns varchar(20)
as
begin
declare @InvoiceNo nvarchar(20), @Count int,@yrs nvarchar(20)
	if @InvDate is null set @InvDate=getdate()
	if(datepart(mm,@InvDate)>3) set @yrs= convert(nvarchar(2), (datepart(YY,@InvDate))%100) +'-'+convert(nvarchar(2), (datepart(YY,@InvDate)+1)%100)
	if(datepart(mm,@InvDate)<=3) set @yrs= convert(nvarchar(2), (datepart(YY,@InvDate)-1)%100) +'-'+convert(nvarchar(2), (datepart(YY,@InvDate))%100)

	select @Count=convert(int,isnull(substring(InvNo,7,10),0)) from CFA.tblCommssionInv where BranchId=@BranchId 
	
	set @InvoiceNo= @yrs+'-'+ REPLICATE('0',4-LEN(RTRIM(CONVERT(varchar(50),isnull(@Count,0))))) + CONVERT(varchar(50),(isnull(@Count,0)+1))

return @InvoiceNo
end
GO
/****** Object:  UserDefinedFunction [CFA].[fn_StringSplit]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--		select * from CFA.fn_StringSplit('aa,bb,cc,dd,ee,ff',',')

create FUNCTION [CFA].[fn_StringSplit] (
    @string NVARCHAR(MAX),
    @delimiter CHAR(1)
    )
RETURNS @out_put TABLE (
    id INT IDENTITY(1, 1) NOT NULL,
    value NVARCHAR(MAX)
    )
AS
BEGIN
    DECLARE @value NVARCHAR(MAX), @pos INT = 0, @len INT = 0

    SET @string = CASE WHEN RIGHT(@string, 1) != @delimiter THEN @string + @delimiter ELSE @string END

    WHILE CHARINDEX(@delimiter, @string, @pos + 1) > 0
    BEGIN
        SET @len = CHARINDEX(@delimiter, @string, @pos + 1) - @pos
        SET @value = SUBSTRING(@string, @pos, @len)

        INSERT INTO @out_put ([value])
        SELECT LTRIM(RTRIM(@value)) AS [column]

        SET @pos = CHARINDEX(@delimiter, @string, @pos + @len) + 1
    END

    RETURN
END
GO
/****** Object:  Table [CFA].[tbl_VersionDetails]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tbl_VersionDetails](
	[VersionId] [int] IDENTITY(1,1) NOT NULL,
	[VersionNo] [nvarchar](50) NOT NULL,
	[VersionDate] [datetime] NULL,
	[IsActive] [nvarchar](2) NOT NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblActiveUsers]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblActiveUsers](
	[BranchId] [int] NOT NULL,
	[CompanyId] [int] NULL,
	[EmpId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Username] [nvarchar](150) NULL,
	[MobileNo] [nvarchar](20) NULL,
	[RoleId] [int] NULL,
	[VersionNo] [nvarchar](50) NULL,
	[ApplActiveFrom] [datetime] NULL,
	[LastSeen] [datetime] NULL,
	[DeviceId] [nvarchar](max) NULL,
	[ActiveStatus] [char](1) NULL,
	[UninstallStatus] [char](1) NULL,
	[UninstalledDate] [datetime] NULL,
	[ActiveForDrawArea] [nchar](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblAppConfiguration]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblAppConfiguration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](50) NULL,
	[Value] [nvarchar](200) NULL,
	[Info] [nvarchar](500) NULL,
	[LastUpdatedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblAssignTransportMode]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblAssignTransportMode](
	[AssignTransMId] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[TransportModeId] [int] NOT NULL,
	[PersonName] [nvarchar](100) NULL,
	[PersonAddress] [nvarchar](250) NULL,
	[PersonMobNo] [nvarchar](30) NULL,
	[OtherDetails] [nvarchar](250) NULL,
	[CAId] [int] NULL,
	[TransporterId] [int] NULL,
	[CourierId] [int] NULL,
	[Delivery_Remark] [nvarchar](500) NULL,
	[LRNo] [nvarchar](50) NULL,
	[LRDate] [datetime] NULL,
	[LRBox] [int] NULL,
	[LRWeightInKG] [decimal](18, 2) NULL,
	[Addedby] [nvarchar](50) NULL,
	[LastUpdatedDate] [datetime] NULL,
	[AttachedInvId] [bigint] NULL,
	[OCnfCity] [int] NULL,
 CONSTRAINT [PK_tblAssignTransportMode] PRIMARY KEY CLUSTERED 
(
	[AssignTransMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblAuditLog]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblAuditLog](
	[LogID] [numeric](17, 0) IDENTITY(1,1) NOT NULL,
	[ServiceId] [int] NULL,
	[UserId] [int] NULL,
	[LogFor] [nvarchar](150) NULL,
	[LogData] [nvarchar](max) NULL,
	[LogStatus] [nvarchar](500) NULL,
	[LogDatetime] [datetime] NULL,
	[LogException] [nvarchar](max) NULL,
	[UpdatedDatetime] [datetime] NULL,
 CONSTRAINT [PK_tblTraceAppLog] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblAuditorCheck]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblAuditorCheck](
	[AudChkId] [int] IDENTITY(1,1) NOT NULL,
	[SRSId] [int] NOT NULL,
	[IsVerified] [char](1) NULL,
	[IsCorrectionReq] [char](1) NULL,
	[CorrectionReqRemark] [nvarchar](250) NULL,
	[VerifiedBy] [int] NULL,
	[VerifyDate] [datetime] NULL,
 CONSTRAINT [PK_CFA.tblAuditorCheck] PRIMARY KEY CLUSTERED 
(
	[AudChkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblBranchMaster]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblBranchMaster](
	[BranchId] [int] IDENTITY(1,1) NOT NULL,
	[BranchCode] [nvarchar](50) NOT NULL,
	[BranchName] [nvarchar](50) NOT NULL,
	[BranchAddress] [nvarchar](250) NULL,
	[StateCode] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Pin] [nvarchar](10) NULL,
	[ContactNo] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Pan] [nvarchar](15) NULL,
	[GSTNo] [nvarchar](20) NULL,
	[IsActive] [char](1) NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblBranchMaster] PRIMARY KEY CLUSTERED 
(
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblBranchVendorMapping]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblBranchVendorMapping](
	[PkId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[VendorId] [int] NULL,
	[AddedBy] [int] NULL,
	[AddedDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblCartingAgentMaster]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblCartingAgentMaster](
	[CAId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[CAName] [nvarchar](100) NOT NULL,
	[CAMobNo] [nvarchar](30) NOT NULL,
	[CAEmail] [nvarchar](250) NULL,
	[CAPan] [nvarchar](10) NULL,
	[GSTNo] [nvarchar](50) NULL,
	[CAAddress] [nvarchar](250) NULL,
	[StateCode] [nvarchar](20) NULL,
	[DistrictCode] [varchar](max) NULL,
	[CityCode] [nvarchar](20) NULL,
	[IsActive] [char](1) NOT NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblCategory]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblCategory](
	[CatId] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
	[isActive] [char](1) NULL,
 CONSTRAINT [PK_tblCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UC_categoryName] UNIQUE NONCLUSTERED 
(
	[CategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblChequeRegister]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblChequeRegister](
	[ChqRegId] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[ChqReceivedDate] [datetime] NULL,
	[StokistId] [int] NOT NULL,
	[StockistCity] [varchar](10) NULL,
	[BankId] [int] NULL,
	[IFSCCode] [nvarchar](20) NULL,
	[AccountNo] [varchar](30) NULL,
	[ChqNo] [varchar](10) NULL,
	[ChqStatus] [int] NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[BlockedBy] [int] NULL,
	[BlockedDate] [datetime] NULL,
	[DiscardedBy] [int] NULL,
	[DiscardedDate] [datetime] NULL,
	[DiscardedRemark] [nvarchar](250) NULL,
	[ReleasedBy] [int] NULL,
	[ReleasedDate] [datetime] NULL,
	[ReleasedRemark] [nvarchar](250) NULL,
	[PrintedBy] [int] NULL,
	[PrintedDate] [datetime] NULL,
	[ChqAmount] [float] NULL,
	[DepositedBy] [int] NULL,
	[DepositedDate] [datetime] NULL,
	[ReturnedBy] [int] NULL,
	[ReturnedDate] [datetime] NULL,
	[ReturnedReasonId] [int] NULL,
	[ReturnedRemark] [nvarchar](250) NULL,
	[SettledBy] [int] NULL,
	[SettledDate] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
	[BouncedChqAmtRevd] [int] NULL,
	[FirstNoticeDate] [datetime] NULL,
	[LegalNoticeDate] [datetime] NULL,
 CONSTRAINT [PK_tblChequeRegister] PRIMARY KEY CLUSTERED 
(
	[ChqRegId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblChqBlockedforInv]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblChqBlockedforInv](
	[ChqInvId] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[BlockDate] [datetime] NULL,
	[StockistId] [int] NOT NULL,
	[InvId] [bigint] NULL,
	[ChqRegId] [bigint] NULL,
	[ChqNo] [varchar](10) NULL,
	[BlockedBy] [int] NULL,
	[BlockedDate] [datetime] NULL,
	[InvAmt] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblChqDepoReceiptImport]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblChqDepoReceiptImport](
	[pkId] [int] IDENTITY(1,1) NOT NULL,
	[StockistName] [nvarchar](200) NULL,
	[StockistCode] [nvarchar](20) NULL,
	[StockistId] [int] NULL,
	[DepositeDate] [nvarchar](50) NULL,
	[BankName] [nvarchar](200) NULL,
	[AccountNo] [nvarchar](50) NULL,
	[ChequeNo] [nvarchar](50) NULL,
	[ChqRegId] [int] NULL,
	[Amount] [nvarchar](50) NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[AddedBy] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
 CONSTRAINT [PK_tblChqDepoReceiptImport] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblCityMaster]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblCityMaster](
	[CityCode] [varchar](20) NOT NULL,
	[CityName] [varchar](100) NOT NULL,
	[DistrictCode] [varchar](50) NULL,
	[StateCode] [varchar](50) NOT NULL,
	[ActiveFlag] [char](1) NULL,
	[LastUpdateBy] [varchar](20) NULL,
	[LastUpdateTime] [datetime] NULL,
 CONSTRAINT [PK_tblCityMaster] PRIMARY KEY CLUSTERED 
(
	[CityCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblClaimSRSMapping]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblClaimSRSMapping](
	[pkId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[CompId] [int] NULL,
	[SRSId] [nvarchar](50) NULL,
	[LRIdGPId] [int] NULL,
	[AddedBy] [int] NULL,
	[AddedOn] [datetime] NULL,
 CONSTRAINT [PK_tblClaimSRSMapping] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblCNHeader]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblCNHeader](
	[CNId] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[CompId] [int] NULL,
	[CrDrNoteNo] [nvarchar](200) NULL,
	[CRDRCreationDate] [datetime] NULL,
	[StockiestId] [int] NULL,
	[SoldToCode] [nvarchar](50) NULL,
	[SRSId] [bigint] NULL,
	[SalesOrderNo] [nvarchar](200) NULL,
	[SalesOrderDate] [datetime] NULL,
	[CrDrAmt] [float] NULL,
	[OrderReason] [nvarchar](200) NULL,
	[LRNo] [nvarchar](200) NULL,
	[LRDate] [datetime] NULL,
	[CFAGRDate] [datetime] NULL,
	[BasicAmt] [decimal](18, 0) NULL,
	[AddedBy] [int] NULL,
	[LastUpdateDate] [datetime] NULL,
	[DestrCertFile] [nvarchar](250) NULL,
	[DestrCertDate] [datetime] NULL,
	[DestrCertAddedBy] [int] NULL,
 CONSTRAINT [PK__tblCNHea__40A359C34E70C9E1] PRIMARY KEY CLUSTERED 
(
	[CNId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblCNImport]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblCNImport](
	[pkId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[CompId] [int] NULL,
	[SalesOrderNo] [nvarchar](200) NULL,
	[SalesOrderDate] [datetime] NULL,
	[CrDrNoteNo] [nvarchar](200) NULL,
	[CRDRCreationDate] [datetime] NULL,
	[CrDrAmt] [float] NULL,
	[SoldToCode] [nvarchar](200) NULL,
	[SoldToName] [nvarchar](200) NULL,
	[SoldToCity] [nvarchar](200) NULL,
	[OrderReason] [nvarchar](200) NULL,
	[OrderReasonDescription] [nvarchar](200) NULL,
	[LRNo] [nvarchar](200) NULL,
	[LRDate] [datetime] NULL,
	[CFAGRDate] [datetime] NULL,
	[BasicAmt] [decimal](18, 0) NULL,
	[AddedBy] [int] NULL,
	[AddedOn] [datetime] NULL,
 CONSTRAINT [PK__tblCNImp__40A359C37CDE8CBE] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblCommissionInvPaymentDtls]    Script Date: 29-07-2023 16:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblCommissionInvPaymentDtls](
	[ComInvPaymentId] [int] IDENTITY(1,1) NOT NULL,
	[ComInvId] [int] NULL,
	[PaymentDate] [datetime] NULL,
	[TDSAmt] [float] NULL,
	[PaymentAmt] [float] NULL,
	[PaymentModeId] [int] NULL,
	[Remark] [nvarchar](200) NULL,
	[Addedby] [nvarchar](20) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[UTRNo] [int] NULL,
 CONSTRAINT [PK_CFA.tblCommissionInvPaymentDtls] PRIMARY KEY CLUSTERED 
(
	[ComInvPaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblCommssionInv]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblCommssionInv](
	[ComInvId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[CompanyId] [int] NULL,
	[InvNo] [nvarchar](20) NULL,
	[InvDate] [datetime] NULL,
	[InvTypeId] [int] NULL,
	[Discription] [nvarchar](1000) NULL,
	[TaxId] [int] NULL,
	[TaxableAmt] [int] NULL,
	[CGST] [decimal](18, 2) NULL,
	[SGST] [decimal](18, 2) NULL,
	[TotalAmt] [decimal](18, 2) NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_CNF.tblCommssionInv] PRIMARY KEY CLUSTERED 
(
	[ComInvId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblCompanyBranchRelation]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblCompanyBranchRelation](
	[PkId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NULL,
	[BranchId] [int] NULL,
	[AddedBy] [int] NULL,
	[AddedDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tblCompanyBranchRelation] PRIMARY KEY CLUSTERED 
(
	[PkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblCompanyMaster]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblCompanyMaster](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyCode] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[CompanyEmail] [nvarchar](200) NULL,
	[ContactNo] [nvarchar](50) NULL,
	[CompanyAddress] [nvarchar](250) NULL,
	[CompanyCity] [nvarchar](50) NULL,
	[Pin] [varchar](10) NULL,
	[CompanyPAN] [nvarchar](10) NULL,
	[GSTNo] [nvarchar](50) NULL,
	[IsPicklistAvailable] [bit] NULL,
	[IsActive] [char](1) NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblCompanyMaster] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblCompanyVendorMapping]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblCompanyVendorMapping](
	[PkId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NULL,
	[VendorId] [int] NULL,
	[AddedBy] [int] NULL,
	[AddedDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tblCompanyVendorMapping] PRIMARY KEY CLUSTERED 
(
	[PkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblCourierMaster]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblCourierMaster](
	[CourierId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[CourierName] [nvarchar](100) NOT NULL,
	[CourierEmail] [nvarchar](250) NULL,
	[CourierMobNo] [nvarchar](30) NOT NULL,
	[CourierAddress] [nvarchar](250) NULL,
	[CityCode] [nvarchar](20) NULL,
	[StateCode] [nvarchar](20) NULL,
	[DistrictCode] [varchar](max) NULL,
	[IsActive] [char](1) NOT NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
	[RatePerBox] [int] NULL,
 CONSTRAINT [PK_tblCourierMaster] PRIMARY KEY CLUSTERED 
(
	[CourierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblCourierParentMapping]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblCourierParentMapping](
	[pkid] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[CPid] [int] NULL,
	[CourierId] [int] NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblCourierParentMst]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblCourierParentMst](
	[Cpid] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[ParentCourierName] [nvarchar](100) NULL,
	[ParentCourierEmail] [nvarchar](50) NULL,
	[ParentCourierMobNo] [nvarchar](30) NULL,
	[IsTDS] [char](1) NULL,
	[TDSPer] [int] NULL,
	[IsGST] [char](1) NULL,
	[GSTNumber] [nvarchar](30) NULL,
	[IsActive] [char](1) NOT NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblDistrictMaster]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblDistrictMaster](
	[DistrictCode] [varchar](50) NOT NULL,
	[DistrictName] [varchar](100) NOT NULL,
	[StateCode] [varchar](50) NOT NULL,
	[ActiveFlag] [char](1) NULL,
	[LastUpdateBy] [varchar](20) NULL,
	[LastUpdateTime] [datetime] NULL,
 CONSTRAINT [PK_tblDistrictMaster_1] PRIMARY KEY CLUSTERED 
(
	[DistrictCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblDivisionMaster]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblDivisionMaster](
	[DivisionId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[DivisionCode] [nvarchar](10) NULL,
	[DivisionName] [nvarchar](50) NULL,
	[FloorName] [nvarchar](50) NULL,
	[IsColdStorage] [int] NULL,
	[IsActive] [char](1) NULL,
	[AddedBy] [nvarchar](100) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblDivisionMaster] PRIMARY KEY CLUSTERED 
(
	[DivisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblEmailCCPerson]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblEmailCCPerson](
	[EmailCCPersonId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_CFA.tblEmailCCPerson] PRIMARY KEY CLUSTERED 
(
	[EmailCCPersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblEmailConfiguration]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblEmailConfiguration](
	[EmailConfigurationId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[CompanyId] [int] NOT NULL,
	[EmailForId] [int] NULL,
	[EmailCCPersonId] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](250) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tblEmailConfiguration] PRIMARY KEY CLUSTERED 
(
	[EmailConfigurationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblEmailFor]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblEmailFor](
	[EmailForId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Status] [char](1) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tblEmailForStage] PRIMARY KEY CLUSTERED 
(
	[EmailForId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblEmployeeCompanyMapping]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblEmployeeCompanyMapping](
	[EmpCompId] [bigint] IDENTITY(1,1) NOT NULL,
	[EmpId] [int] NOT NULL,
	[CompanyId] [int] NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblEmployeeBranchMapping] PRIMARY KEY CLUSTERED 
(
	[EmpCompId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblEmployeeMaster]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblEmployeeMaster](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[EmpNo] [nvarchar](20) NOT NULL,
	[EmpName] [nvarchar](100) NULL,
	[EmpPAN] [nvarchar](10) NULL,
	[EmpEmail] [nvarchar](250) NOT NULL,
	[EmpMobNo] [nvarchar](30) NULL,
	[EmpAddress] [nvarchar](250) NULL,
	[CityCode] [nvarchar](20) NULL,
	[DesignationId] [int] NULL,
	[BloodGroup] [varchar](5) NULL,
	[AadharNo] [varchar](25) NULL,
	[IsUser] [char](1) NULL,
	[IsActive] [char](1) NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblEmployeeMaster] PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblExpenceRegister_NIU]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblExpenceRegister_NIU](
	[pkId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[InvTypeId] [int] NOT NULL,
	[VendorId] [int] NOT NULL,
	[ExpInvNo] [nvarchar](50) NULL,
	[InvDate] [datetime] NULL,
	[CompId] [int] NULL,
	[ExpHeadId] [int] NULL,
	[NoOfBox] [int] NULL,
	[TaxableAmt] [int] NULL,
	[CGST] [decimal](18, 2) NULL,
	[SGST] [decimal](18, 2) NULL,
	[TotalAmt] [decimal](18, 2) NULL,
	[IsReimbursable] [char](1) NULL,
	[AddedBy] [int] NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblExpenceRegister] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblExpenseRegister]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblExpenseRegister](
	[ExpInvId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[InvTypeId] [int] NOT NULL,
	[VendorId] [int] NULL,
	[TransId] [int] NULL,
	[CourierId] [int] NULL,
	[ExpInvNo] [nvarchar](50) NULL,
	[InvDate] [datetime] NULL,
	[CompId] [int] NULL,
	[ExpHeadId] [int] NULL,
	[NoOfBox] [int] NULL,
	[InvFromDt] [datetime] NULL,
	[InvToDt] [datetime] NULL,
	[IsGSTApply] [char](1) NULL,
	[TaxableAmt] [int] NULL,
	[CGST] [decimal](18, 2) NULL,
	[SGST] [decimal](18, 2) NULL,
	[TaxId] [int] NULL,
	[TotalAmt] [decimal](18, 2) NULL,
	[IsReimbursable] [char](1) NULL,
	[ExpInvStatus] [int] NULL,
	[AddedBy] [int] NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblExpenseRegister] PRIMARY KEY CLUSTERED 
(
	[ExpInvId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblExpenseRegisterDtls]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblExpenseRegisterDtls](
	[ExpInvDtlsId] [int] IDENTITY(1,1) NOT NULL,
	[ExpInvId] [int] NOT NULL,
	[GPDate] [datetime] NULL,
	[GatepassId] [int] NULL,
	[NoOfInv] [int] NULL,
	[GPNoOfBox] [int] NULL,
	[TranspNoOfBox] [int] NULL,
	[CityCode] [int] NULL,
	[Rate] [int] NULL,
	[FreightAmt] [int] NULL,
	[Remark] [nvarchar](500) NULL,
	[DtlsStatus] [int] NULL,
	[ResolveRemark] [nvarchar](500) NULL,
	[AddedBy] [int] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblExpenseRegisterDtls] PRIMARY KEY CLUSTERED 
(
	[ExpInvDtlsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblExpenseRegisterPayment]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblExpenseRegisterPayment](
	[ExpPaymentId] [int] IDENTITY(1,1) NOT NULL,
	[ExpInvId] [int] NOT NULL,
	[PaymentDate] [datetime] NULL,
	[TDS] [decimal](18, 2) NULL,
	[PaymentAmt] [int] NULL,
	[PayMode] [int] NULL,
	[UTRNo] [nvarchar](100) NULL,
	[Remark] [nvarchar](500) NULL,
	[AddedBy] [nvarchar](50) NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblExpenseRegisterPayment] PRIMARY KEY CLUSTERED 
(
	[ExpPaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblGeneralMaster]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblGeneralMaster](
	[pkId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
	[MasterName] [nvarchar](200) NULL,
	[DescriptionText] [nvarchar](250) NULL,
	[IsActive] [char](1) NULL,
 CONSTRAINT [PK_tblGeneralMaster] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblGenerateGatepass]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblGenerateGatepass](
	[GatepassId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[CAId] [int] NOT NULL,
	[GatepassNo] [nvarchar](20) NOT NULL,
	[GatepassDate] [datetime] NULL,
	[VehicleNo] [nvarchar](100) NULL,
	[GuardNameId] [int] NULL,
	[GuardNameText] [nvarchar](50) NULL,
	[DriverName] [nvarchar](100) NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[IsPrinted] [int] NULL,
 CONSTRAINT [PK_tblGenerateGatepass] PRIMARY KEY CLUSTERED 
(
	[GatepassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblGenerateGatepassDetails]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblGenerateGatepassDetails](
	[GatepassDtlsId] [int] IDENTITY(1,1) NOT NULL,
	[GatepassId] [int] NOT NULL,
	[InvId] [bigint] NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
 CONSTRAINT [PK__tblGener__B05851A69858AD59] PRIMARY KEY CLUSTERED 
(
	[GatepassDtlsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblHeadMaster]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblHeadMaster](
	[pkId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[HeadName] [nvarchar](150) NOT NULL,
	[HeadTypeId] [int] NOT NULL,
	[IsActiveStatus] [char](1) NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblInsClaimType]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblInsClaimType](
	[ClaimTypeId] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[CompanyId] [bigint] NOT NULL,
	[ClaimType] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblInsuranceClaim]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblInsuranceClaim](
	[ClaimId] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[LRNo] [nvarchar](50) NULL,
	[InvoiceId] [nvarchar](20) NULL,
	[ClaimNo] [nvarchar](20) NULL,
	[ClaimDate] [datetime] NULL,
	[ClaimAmount] [nvarchar](20) NULL,
	[ClaimTypeId] [bigint] NULL,
	[ClaimType] [nvarchar](20) NULL,
	[DebitNote] [nvarchar](200) NULL,
	[DebitDate] [datetime] NULL,
	[DebitAmount] [nvarchar](20) NULL,
	[ClaimStatus] [nvarchar](50) NULL,
	[Remark] [nvarchar](200) NULL,
	[IsEmail] [bit] NULL,
	[IsEmailSend] [int] NULL,
	[AddedBy] [int] NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
	[EmailSendDate] [datetime] NULL,
	[SANNo] [nvarchar](50) NULL,
	[SANApproveBy] [nvarchar](200) NULL,
	[SANDate] [datetime] NULL,
	[SANRemark] [nvarchar](200) NULL,
	[ClaimApproveBy] [nvarchar](200) NULL,
	[ClaimRemark] [nvarchar](200) NULL,
	[ApproveClaimDate] [datetime] NULL,
	[SANAmount] [nvarchar](50) NULL,
	[TransitId] [bigint] NOT NULL,
 CONSTRAINT [PK_tblInsuranceClaim] PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblInvInLRDetailsForMobile]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblInvInLRDetailsForMobile](
	[pkId] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[InvId] [bigint] NOT NULL,
	[InvoiceDate] [datetime] NOT NULL,
	[LRNo] [nvarchar](20) NOT NULL,
	[LRDate] [datetime] NOT NULL,
	[NoOfCase] [nvarchar](50) NULL,
	[ActualNoOfCase] [nvarchar](50) NULL,
	[Remarks] [nvarchar](200) NULL,
	[AddedBy] [nvarchar](20) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblInvInVehicleChecklistDtls]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblInvInVehicleChecklistDtls](
	[ChkListDtlsId] [bigint] IDENTITY(1,1) NOT NULL,
	[ChkListMstId] [bigint] NULL,
	[CLQueId] [int] NULL,
	[CLQueText] [nvarchar](250) NULL,
	[FieldType] [nvarchar](50) NULL,
	[SortId] [int] NULL,
	[AnsText] [nvarchar](250) NULL,
	[ExpAnsText] [nvarchar](250) NULL,
	[IsApprove] [nvarchar](1) NULL,
	[IsApproveBy] [nvarchar](20) NULL,
	[IsApproveOn] [datetime] NULL,
	[AddedBy] [nvarchar](20) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblInvInVehicleChecklistDtls] PRIMARY KEY CLUSTERED 
(
	[ChkListDtlsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblInvInVehicleChecklistMaster]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblInvInVehicleChecklistMaster](
	[ChecklistTypeId] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[CompId] [int] NULL,
	[ChecklistType] [char](1) NULL,
	[QuestionName] [nvarchar](1000) NULL,
	[ControlType] [nvarchar](100) NULL,
	[SeqNo] [int] NULL,
	[ExpAnsText] [nvarchar](250) NULL,
	[IsActive] [nvarchar](1) NULL,
	[AddedBy] [nvarchar](20) NULL,
	[Section] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblInvInVehicleChecklistMaster_1] PRIMARY KEY CLUSTERED 
(
	[ChecklistTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblInvInVehicleChecklistMst]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblInvInVehicleChecklistMst](
	[ChkListMstId] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[CompId] [int] NULL,
	[LREntryId] [bigint] NULL,
	[Remarks] [nvarchar](200) NULL,
	[SealNumber] [nvarchar](200) NULL,
	[Comments] [nvarchar](50) NULL,
	[Img1] [nvarchar](500) NULL,
	[img2] [nvarchar](500) NULL,
	[Img3] [nvarchar](500) NULL,
	[Img4] [nvarchar](500) NULL,
	[Status] [nvarchar](100) NULL,
	[IsApprove] [nvarchar](1) NULL,
	[IsApproveBy] [nvarchar](20) NULL,
	[IsApproveOn] [datetime] NULL,
	[AddedBy] [nvarchar](20) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
	[TransitId] [bigint] NOT NULL,
 CONSTRAINT [PK_tblInvInVehicleChecklistMst] PRIMARY KEY CLUSTERED 
(
	[ChkListMstId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblInvoiceDataImport]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblInvoiceDataImport](
	[pkId] [bigint] IDENTITY(1,1) NOT NULL,
	[InvoiceNo] [nvarchar](50) NULL,
	[InvoiceCreateDate] [datetime] NULL,
	[InvoiceAmount] [nvarchar](50) NULL,
	[SoldToCode] [nvarchar](50) NULL,
	[SoldToName] [nvarchar](200) NULL,
	[SoldToCity] [nvarchar](50) NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[AddedBy] [int] NULL,
	[AddedOn] [datetime] NULL,
 CONSTRAINT [PK_tblInvoiceDataImport] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblInvoiceHeader]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblInvoiceHeader](
	[InvId] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[InvNo] [nvarchar](20) NOT NULL,
	[InvPostingDate] [datetime] NULL,
	[InvCreatedDate] [datetime] NULL,
	[IsColdStorage] [bit] NOT NULL,
	[SoldTo_StokistId] [int] NOT NULL,
	[SoldTo_City] [varchar](10) NULL,
	[InvAmount] [float] NULL,
	[PONo] [nvarchar](50) NULL,
	[PODate] [datetime] NULL,
	[NoOfItems] [int] NULL,
	[InvStatus] [int] NULL,
	[AcceptedBy] [int] NULL,
	[AcceptedDate] [datetime] NULL,
	[BillDrawnDate] [datetime] NULL,
	[PackedBy] [int] NULL,
	[PackedDate] [datetime] NULL,
	[NoOfBox] [int] NULL,
	[InvWeight] [numeric](6, 2) NULL,
	[IsCourier] [int] NULL,
	[PackingConcernDate] [datetime] NULL,
	[PackingConcernId] [int] NULL,
	[PackingRemark] [nvarchar](250) NULL,
	[ReadyToDispatchBy] [int] NULL,
	[ReadyToDispatchDate] [datetime] NULL,
	[ReadyToDispatchConcernId] [int] NULL,
	[ReadyToDispatchRemark] [nvarchar](250) NULL,
	[CancelBy] [int] NULL,
	[CancelDate] [datetime] NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
	[OnPriority] [int] NULL,
	[PriorityRemark] [nvarchar](250) NULL,
	[PrioritiseBy] [nvarchar](50) NULL,
	[PCnrnResolveRemark] [nvarchar](250) NULL,
	[PCnrnResolveBy] [int] NULL,
	[PCnrnResolveDate] [datetime] NULL,
	[DCnrnResolveRemark] [nvarchar](250) NULL,
	[DCnrnResolveBy] [int] NULL,
	[DCnrnResolveDate] [datetime] NULL,
	[SendToCNFId] [int] NULL,
	[IsStockTransfer] [int] NULL,
 CONSTRAINT [PK_tblInvoiceHeader] PRIMARY KEY CLUSTERED 
(
	[InvId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblInwardGatepass]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblInwardGatepass](
	[LREntryId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[LREntryNo] [nvarchar](10) NOT NULL,
	[LREntryDate] [datetime] NULL,
	[StockistId] [int] NOT NULL,
	[City] [int] NULL,
	[TransporterId] [int] NULL,
	[CourierId] [int] NULL,
	[OtherTrasport] [varchar](256) NULL,
	[LRNo] [nvarchar](50) NULL,
	[LRDate] [datetime] NULL,
	[NoOfBox] [int] NULL,
	[AmountPaid] [int] NULL,
	[CashmemoDate] [datetime] NULL,
	[GoodsReceived] [bit] NOT NULL,
	[ClaimFormAvailable] [int] NOT NULL,
	[GatepassNo] [varchar](20) NULL,
	[ReceiptDate] [datetime] NULL,
	[IsEmailSent] [int] NOT NULL,
	[AddedBy] [int] NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedOn] [datetime] NULL,
	[RecvdAtOP] [bit] NOT NULL,
	[RecvdAtOPDate] [datetime] NULL,
	[RecvdAtOPBy] [int] NULL,
 CONSTRAINT [PK_tblInwardGatepass] PRIMARY KEY CLUSTERED 
(
	[LREntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblMapInwardVehicle]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblMapInwardVehicle](
	[pkId] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[LRNo] [nvarchar](50) NULL,
	[LRDate] [datetime] NULL,
	[InwardDate] [datetime] NULL,
	[TransporterId] [int] NULL,
	[VehicleNo] [nvarchar](50) NOT NULL,
	[DriverName] [nvarchar](50) NULL,
	[MobileNo] [nvarchar](10) NULL,
	[NoOfCasesQty] [int] NULL,
	[ActualNoOfCasesQty] [int] NULL,
	[IsChecklistDone] [int] NULL,
	[IsClaim] [int] NULL,
	[IsSAN] [int] NULL,
	[AddedBy] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
	[ConcernRemark] [nvarchar](50) NULL,
	[ConcernBy] [int] NULL,
	[ConcernUpdatedOn] [datetime] NULL,
	[IsConcern] [int] NULL,
	[IsApproveBy] [nvarchar](20) NULL,
	[IsApproveOn] [datetime] NULL,
	[ResolvedBy] [int] NULL,
	[ResolvedOn] [datetime] NULL,
	[TransitId] [bigint] NOT NULL,
	[ResolveVehicleRemark] [nvarchar](250) NULL,
 CONSTRAINT [PK__tblMapIn__40A359C3A1C98131] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblMenuMaster]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblMenuMaster](
	[MenuId] [int] IDENTITY(1,1) NOT NULL,
	[PageName] [nvarchar](50) NULL,
	[Portal] [nvarchar](5) NULL,
	[IsActive] [int] NULL,
	[Addedby] [int] NULL,
	[LastUpdatedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblMobInvData]    Script Date: 29-07-2023 16:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblMobInvData](
	[InvId] [bigint] NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[InvNo] [nvarchar](20) NOT NULL,
	[InvCreatedDate] [datetime] NULL,
	[StockistNo] [nvarchar](20) NOT NULL,
	[StockistName] [nvarchar](100) NOT NULL,
	[MobNo] [nvarchar](30) NULL,
	[StockistAddress] [nvarchar](250) NULL,
	[CityCode] [nvarchar](20) NULL,
	[CityName] [varchar](100) NULL,
	[PersonName] [nvarchar](100) NULL,
	[PersonAddress] [nvarchar](250) NULL,
	[PersonMobNo] [nvarchar](30) NULL,
	[OtherDetails] [nvarchar](250) NULL,
	[TransporterId] [int] NULL,
	[TransporterNo] [nvarchar](20) NULL,
	[TransporterName] [nvarchar](100) NULL,
	[CourierId] [int] NULL,
	[CourierName] [nvarchar](100) NULL,
	[Delivery_Remark] [nvarchar](500) NULL,
	[SoldTo_StokistId] [int] NOT NULL,
	[InvAmount] [float] NULL,
	[NoOfItems] [int] NULL,
	[InvStatus] [int] NULL,
	[NoOfBox] [int] NULL,
	[InvWeight] [numeric](6, 2) NULL,
	[IsCourier] [int] NULL,
	[OnPriority] [int] NULL,
	[TransportModeId] [int] NULL,
	[TransportModeText] [varchar](10) NOT NULL,
	[AttachedInvId] [int] NULL,
	[BrCityCode] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblOCRTextData]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblOCRTextData](
	[pkId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[CompId] [int] NULL,
	[StockistId] [int] NULL,
	[LR_ClaimNo] [nvarchar](50) NULL,
	[BatchNo] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[Unit] [nvarchar](10) NULL,
	[Code] [nvarchar](50) NULL,
	[ProductName] [nvarchar](150) NULL,
	[ReturnType] [nvarchar](50) NULL,
	[Division] [int] NULL,
	[Plant] [int] NULL,
	[MFG_Date] [nvarchar](20) NULL,
	[EXP_Date] [nvarchar](20) NULL,
	[MRP_Price] [nvarchar](20) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdateOn] [datetime] NULL,
 CONSTRAINT [PK_tblOCRTextData] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblOfficerDetails]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblOfficerDetails](
	[EmployeeNo] [int] NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[MobileNo] [numeric](10, 0) NULL,
	[Email] [nvarchar](100) NULL,
	[AreaCode] [varchar](15) NULL,
	[AreaName] [nvarchar](200) NULL,
	[OfficerRole] [char](5) NOT NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tblOfficerDetails] PRIMARY KEY CLUSTERED 
(
	[EmployeeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblOtherCNFMaster]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblOtherCNFMaster](
	[CNFId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[CompId] [int] NULL,
	[CNFCode] [nvarchar](20) NULL,
	[CNFName] [nvarchar](250) NULL,
	[CityCode] [nvarchar](20) NULL,
	[CNFEmail] [nvarchar](100) NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[ContactNo] [nvarchar](50) NULL,
	[CNFAddress] [nvarchar](250) NULL,
	[IsActive] [char](1) NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblOtherCNFMaster] PRIMARY KEY CLUSTERED 
(
	[CNFId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblPhysicalCheck1]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblPhysicalCheck1](
	[PhyChkId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[LREntryId] [int] NULL,
	[ReturnCatId] [int] NULL,
	[ClaimNo] [nvarchar](50) NULL,
	[ClaimDate] [datetime] NULL,
	[AddedBy] [int] NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedOn] [datetime] NULL,
	[ClaimStatus] [int] NULL,
	[ConcernId] [int] NULL,
	[ConcernRemark] [nvarchar](250) NULL,
	[ConcernDate] [datetime] NULL,
	[ConcernBy] [int] NULL,
	[ResolveConcernBy] [int] NULL,
	[ResolveConcernDate] [datetime] NULL,
	[ResolveRemark] [nvarchar](250) NULL,
 CONSTRAINT [PK_tblPhysicalCheck1] PRIMARY KEY CLUSTERED 
(
	[PhyChkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblPicklistAllotment]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblPicklistAllotment](
	[AllotmentId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[Picklistid] [int] NOT NULL,
	[PicklistDtlsId] [int] NULL,
	[ProductCode] [nvarchar](25) NULL,
	[BatchNo] [nvarchar](25) NULL,
	[PickerId] [int] NOT NULL,
	[AllottedBy] [int] NULL,
	[AllottedDate] [datetime] NULL,
	[AllotmentStatus] [int] NOT NULL,
	[AcceptedDate] [datetime] NULL,
	[ReasonId] [int] NULL,
	[RejectRemark] [nvarchar](500) NULL,
	[PickedDate] [datetime] NULL,
	[PickerConcernId] [int] NULL,
	[PickerConcernRemark] [nvarchar](250) NULL,
	[PickerConcernDate] [datetime] NULL,
	[VerifiedBy] [int] NULL,
	[VerifiedDate] [datetime] NULL,
	[VerifiedConcernId] [int] NULL,
	[VerifiedConcernRemark] [nvarchar](250) NULL,
	[VerifiedConcernDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[PConcernResolveRemark] [nvarchar](250) NULL,
	[PConcernResolveBy] [int] NULL,
	[PConcernResolveDate] [datetime] NULL,
	[VConcernResolveRemark] [nvarchar](250) NULL,
	[VConcernResolveBy] [int] NULL,
	[VConcernResolveDate] [datetime] NULL,
 CONSTRAINT [PK_tblPicklistAllotment] PRIMARY KEY CLUSTERED 
(
	[AllotmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblPickListHeader]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblPickListHeader](
	[Picklistid] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[PicklistNo] [nvarchar](20) NOT NULL,
	[PicklistDate] [datetime] NULL,
	[FromInv] [nvarchar](20) NULL,
	[ToInv] [nvarchar](20) NULL,
	[PicklistStatus] [int] NULL,
	[VerifiedBy] [int] NULL,
	[VerifiedDate] [datetime] NULL,
	[RejectReason] [nvarchar](500) NULL,
	[AllottedBy] [int] NULL,
	[AllottedDate] [datetime] NULL,
	[ReAllottedBy] [int] NULL,
	[ReAllotedDate] [datetime] NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
	[OnPriority] [int] NULL,
	[IsStockTransfer] [int] NULL,
 CONSTRAINT [PK_tblPickListHeader] PRIMARY KEY CLUSTERED 
(
	[Picklistid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblPicklistReAllotment]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblPicklistReAllotment](
	[ReAllotmentId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[Picklistid] [int] NOT NULL,
	[PicklistDtlsId] [int] NULL,
	[ProductCode] [nvarchar](25) NULL,
	[BatchNo] [nvarchar](25) NULL,
	[PickerId] [int] NOT NULL,
	[ReAllottedBy] [int] NULL,
	[ReAllottedDate] [datetime] NULL,
	[ReAllotmentStatus] [int] NOT NULL,
	[AcceptedDate] [datetime] NULL,
	[ReasonId] [int] NULL,
	[RejectRemark] [nvarchar](500) NULL,
	[PickedDate] [datetime] NULL,
	[PickerConcernId] [int] NULL,
	[PickerConcernRemark] [nvarchar](250) NULL,
	[PickerConcernDate] [datetime] NULL,
	[VerifiedBy] [int] NULL,
	[VerifiedDate] [datetime] NULL,
	[VerifyConcernId] [int] NULL,
	[VerifyConcernRemark] [nvarchar](250) NULL,
	[VerifiedConcernId] [int] NULL,
	[VerifiedConcernRemark] [nvarchar](250) NULL,
	[VerifiedConcernDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[PConcernResolveRemark] [nvarchar](250) NULL,
	[PConcernResolveBy] [int] NULL,
	[PConcernResolveDate] [datetime] NULL,
	[VConcernResolveRemark] [nvarchar](250) NULL,
	[VConcernResolveBy] [int] NULL,
	[VConcernResolveDate] [datetime] NULL,
 CONSTRAINT [PK_tblPicklistReAllotment] PRIMARY KEY CLUSTERED 
(
	[ReAllotmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblPrinterDetails]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblPrinterDetails](
	[PrinterId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[PrinterName] [nvarchar](100) NULL,
	[PrinterType] [nvarchar](100) NULL,
	[PrinterIPAddress] [nvarchar](100) NULL,
	[PrinterPortNumber] [int] NULL,
	[AddedBy] [nvarchar](50) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[UtilityNo] [int] NULL,
 CONSTRAINT [PK__tblPrint__D452AAC17FD16BE6] PRIMARY KEY CLUSTERED 
(
	[PrinterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblPrinterLog]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblPrinterLog](
	[PrinterLogID] [numeric](17, 0) IDENTITY(1,1) NOT NULL,
	[PrinterLogFor] [nvarchar](150) NULL,
	[PrinterLogData] [nvarchar](max) NULL,
	[PrinterLogStatus] [nvarchar](50) NULL,
	[PrinterLogDatetime] [datetime] NULL,
	[PrinterLogException] [nvarchar](max) NULL,
	[PrinterUpdatedDatetime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PrinterLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblPrinterPDFData]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblPrinterPDFData](
	[pkId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[InvId] [bigint] NULL,
	[GpId] [int] NULL,
	[Type] [nvarchar](50) NULL,
	[BoxNo] [nvarchar](200) NULL,
	[Flag] [nvarchar](50) NULL,
	[PrintCount] [int] NULL,
	[AddedBy] [nvarchar](50) NULL,
	[LastUpdatedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblProductBatchHeader]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblProductBatchHeader](
	[pkId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[CompId] [int] NULL,
	[Division] [int] NULL,
	[BatchNo] [nvarchar](50) NULL,
	[ProductName] [nvarchar](150) NULL,
	[Code] [nvarchar](50) NULL,
	[EXP_Date] [datetime] NULL,
	[Addedby] [int] NULL,
	[AddedOn] [datetime] NULL,
 CONSTRAINT [PK_tblProductBatchMaster] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblProductBatchImport]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblProductBatchImport](
	[pkId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[CompId] [int] NULL,
	[Division] [int] NULL,
	[BatchNo] [nvarchar](255) NULL,
	[ProductName] [nvarchar](255) NULL,
	[Code] [nvarchar](255) NULL,
	[EXP_Date] [datetime] NULL,
	[Addedby] [int] NULL,
	[AddedOn] [datetime] NULL,
 CONSTRAINT [PK_tblProductBatchImport] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblRefreshToken]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblRefreshToken](
	[TokenId] [int] IDENTITY(1,1) NOT NULL,
	[ClientKey] [nvarchar](max) NOT NULL,
	[RefreshValue] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
	[ExpiryTime] [datetime] NOT NULL,
 CONSTRAINT [PK_tblRefreshToken] PRIMARY KEY CLUSTERED 
(
	[TokenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblReimbursementInv]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblReimbursementInv](
	[ReimId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[CompId] [int] NULL,
	[InvNo] [nvarchar](20) NULL,
	[InvDate] [datetime] NULL,
	[TaxableAmt] [int] NULL,
	[CGST] [float] NULL,
	[SGST] [float] NULL,
	[TotalAmt] [float] NULL,
	[ExpHeadId] [int] NULL,
	[TDS] [int] NULL,
	[Remark] [nvarchar](500) NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_CFA.tblReimbursementInv] PRIMARY KEY CLUSTERED 
(
	[ReimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblReimbursementInvDtls]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblReimbursementInvDtls](
	[ReimDtlsId] [bigint] IDENTITY(1,1) NOT NULL,
	[ReimId] [int] NULL,
	[BranchId] [int] NULL,
	[CompId] [int] NULL,
	[ExpInvId] [int] NULL,
	[TaxableAmt] [int] NULL,
	[CGST] [float] NULL,
	[SGST] [float] NULL,
	[TDS] [int] NULL,
	[TotalAmt] [float] NULL,
	[AddedBy] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK__tblReimb__40A359C3AC223F70] PRIMARY KEY CLUSTERED 
(
	[ReimDtlsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblReimbursementPaymentDtls]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblReimbursementPaymentDtls](
	[ReimPaymentId] [int] IDENTITY(1,1) NOT NULL,
	[ReimId] [int] NULL,
	[PaymentDate] [datetime] NULL,
	[TDS] [float] NULL,
	[PaymentAmt] [float] NULL,
	[PaymentModeId] [int] NULL,
	[Remark] [nvarchar](500) NULL,
	[Addedby] [nvarchar](20) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[UTRNo] [int] NULL,
 CONSTRAINT [PK_CFA.tblReimbursementPaymentDtls] PRIMARY KEY CLUSTERED 
(
	[ReimPaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblRoleMaster]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblRoleMaster](
	[RoleId] [int] NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[ActiveStatus] [char](1) NOT NULL,
 CONSTRAINT [PK_tblUserType] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblScannedInvData]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblScannedInvData](
	[pkId] [int] IDENTITY(1,1) NOT NULL,
	[InvId] [int] NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[ScannedBoxes] [nvarchar](250) NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblSRSDataImport]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblSRSDataImport](
	[pkId] [int] IDENTITY(1,1) NOT NULL,
	[SalesDocNo] [nvarchar](255) NULL,
	[PONoLRNo] [nvarchar](255) NULL,
	[PONo] [nvarchar](250) NULL,
	[LREntryId] [int] NULL,
	[Soldtoparty] [nvarchar](255) NULL,
	[Name1] [nvarchar](255) NULL,
	[Netvalue] [nvarchar](25) NULL,
	[Division] [nvarchar](255) NULL,
	[SalesOrganization] [nvarchar](255) NULL,
	[Plant] [nvarchar](255) NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[AddedBy] [int] NULL,
	[AddedOn] [datetime] NULL,
	[LRNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblSRSDataImport] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblSRSHeader]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblSRSHeader](
	[SRSId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[SalesDocNo] [nvarchar](25) NULL,
	[PONoLRNo] [nvarchar](100) NULL,
	[PONo] [nvarchar](100) NULL,
	[LREntryId] [int] NULL,
	[SoldtoPartyId] [int] NULL,
	[NoOfItems] [int] NULL,
	[Netvalue] [nvarchar](25) NULL,
	[Division] [nvarchar](255) NULL,
	[SalesOrganization] [nvarchar](255) NULL,
	[Plant] [nvarchar](255) NULL,
	[SRSStatus] [int] NULL,
	[AddedBy] [int] NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
	[IsVerified] [char](1) NULL,
	[IsCorrectionReq] [char](1) NULL,
	[CorrectionReqRemark] [nvarchar](250) NULL,
	[VerifyCorrectionBy] [int] NULL,
	[VerifyCorrectionDate] [datetime] NULL,
	[CNDelayReasonId] [int] NULL,
	[CNDelayRemark] [nvarchar](500) NULL,
	[CNReasonAddedBy] [int] NULL,
	[CNReasonUpdatedOn] [datetime] NULL,
	[LRNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblSRSHeader] PRIMARY KEY CLUSTERED 
(
	[SRSId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblStateMaster]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblStateMaster](
	[StateCode] [varchar](50) NOT NULL,
	[StateName] [varchar](50) NOT NULL,
	[ActiveFlag] [char](1) NULL,
	[LastUpdateBy] [varchar](20) NULL,
	[LastUpdateTime] [datetime] NULL,
 CONSTRAINT [PK_tblStateMaster] PRIMARY KEY CLUSTERED 
(
	[StateCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblStatusMaster]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblStatusMaster](
	[id] [int] NULL,
	[StatusText] [nvarchar](30) NULL,
	[StatusFor] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblStkOutStanding]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblStkOutStanding](
	[StkOSId] [bigint] IDENTITY(1,1) NOT NULL,
	[OSDate] [datetime] NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[StockistId] [int] NULL,
	[StockistCode] [nvarchar](20) NULL,
	[CityCode] [nvarchar](20) NULL,
	[DocName] [nvarchar](250) NULL,
	[DocDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[OpenAmt] [decimal](10, 2) NULL,
	[ChqNo] [nvarchar](20) NULL,
	[DocType] [nvarchar](50) NULL,
	[OverdueAmt] [decimal](10, 2) NULL,
	[AddedBy] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[PaymentStatus] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblStockiestBankDetails]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblStockiestBankDetails](
	[StkBankId] [int] IDENTITY(1,1) NOT NULL,
	[StockistId] [int] NOT NULL,
	[BranchId] [int] NULL,
	[CompId] [int] NULL,
	[BankId] [int] NOT NULL,
	[IFSCCode] [nvarchar](20) NULL,
	[AccountNo] [nvarchar](30) NOT NULL,
	[AddedBy] [int] NULL,
	[LastUpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblStockiestBankDetailsTemp]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblStockiestBankDetailsTemp](
	[StkBankId] [int] IDENTITY(1,1) NOT NULL,
	[StockistId] [int] NULL,
	[BranchId] [int] NULL,
	[CompId] [int] NULL,
	[BankId] [nvarchar](400) NULL,
	[IFSCCode] [nvarchar](400) NULL,
	[AccountNo] [nvarchar](300) NULL,
	[AddedBy] [int] NULL,
	[LastUpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblStockiestBranchRelation]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblStockiestBranchRelation](
	[PkId] [int] IDENTITY(1,1) NOT NULL,
	[StockiestId] [int] NOT NULL,
	[BranchId] [int] NOT NULL,
	[AddedBy] [int] NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_CFA.tblStockiestBranchRelation] PRIMARY KEY CLUSTERED 
(
	[PkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblStockiestCompanyRelation]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblStockiestCompanyRelation](
	[PkId] [int] IDENTITY(1,1) NOT NULL,
	[StockiestId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[AddedBy] [int] NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_CFA.tblStockiestCompanyRelation] PRIMARY KEY CLUSTERED 
(
	[PkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblStockistMaster]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblStockistMaster](
	[StockistId] [int] IDENTITY(1,1) NOT NULL,
	[StockistNo] [nvarchar](20) NOT NULL,
	[StockistName] [nvarchar](100) NOT NULL,
	[StockistPAN] [nvarchar](10) NULL,
	[Emailid] [nvarchar](100) NULL,
	[MobNo] [nvarchar](30) NULL,
	[StockistAddress] [nvarchar](250) NULL,
	[CityCode] [nvarchar](20) NULL,
	[GSTNo] [nvarchar](50) NULL,
	[LocationId] [int] NULL,
	[Pincode] [nvarchar](10) NULL,
	[DLNo] [nvarchar](50) NULL,
	[DLExpDate] [datetime] NULL,
	[FoodLicNo] [nvarchar](50) NULL,
	[FoodLicExpDate] [datetime] NULL,
	[BankId] [int] NULL,
	[BankAccountNo] [nvarchar](50) NULL,
	[IFSCCode] [nvarchar](100) NULL,
	[IsActive] [char](1) NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblStockistMaster] PRIMARY KEY CLUSTERED 
(
	[StockistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblStockistMasterImport_03072023]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblStockistMasterImport_03072023](
	[StockistId] [float] NOT NULL,
	[StockistNo] [nvarchar](200) NOT NULL,
	[StockistName] [nvarchar](200) NOT NULL,
	[StockistPAN] [nvarchar](200) NULL,
	[Emailid] [nvarchar](200) NULL,
	[MobNo] [nvarchar](200) NULL,
	[StockistAddress] [nvarchar](200) NULL,
	[CityCode] [nvarchar](200) NULL,
	[GSTNo] [nvarchar](200) NULL,
	[LocationId] [int] NULL,
	[Pincode] [nvarchar](200) NULL,
	[DLNo] [nvarchar](200) NULL,
	[DLExpDate] [nvarchar](200) NULL,
	[FoodLicNo] [nvarchar](200) NULL,
	[FoodLicExpDate] [nvarchar](200) NULL,
	[BankId] [float] NULL,
	[BankAccountNo] [nvarchar](200) NULL,
	[IFSCCode] [nvarchar](200) NULL,
	[IsActive] [char](1) NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblStockistMasterLatest]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblStockistMasterLatest](
	[StockistId] [int] NULL,
	[StockistNo] [nvarchar](500) NULL,
	[StockistName] [nvarchar](500) NULL,
	[StockistPAN] [nvarchar](500) NULL,
	[Emailid] [nvarchar](500) NULL,
	[MobNo] [nvarchar](500) NULL,
	[StockistAddress] [nvarchar](500) NULL,
	[CityCode] [nvarchar](500) NULL,
	[GSTNo] [nvarchar](500) NULL,
	[LocationId] [int] NULL,
	[Pincode] [nvarchar](500) NULL,
	[DLNo] [nvarchar](500) NULL,
	[DLExpDate] [datetime] NULL,
	[FoodLicNo] [nvarchar](500) NULL,
	[FoodLicExpDate] [datetime] NULL,
	[BankId] [int] NULL,
	[BankAccountNo] [nvarchar](500) NULL,
	[IFSCCode] [nvarchar](500) NULL,
	[IsActive] [char](1) NULL,
	[Addedby] [nvarchar](500) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblStockistMasterTemp]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblStockistMasterTemp](
	[StockistId] [int] IDENTITY(1,1) NOT NULL,
	[StockistNo] [nvarchar](500) NOT NULL,
	[StockistName] [nvarchar](500) NOT NULL,
	[StockistPAN] [nvarchar](500) NULL,
	[Emailid] [nvarchar](500) NULL,
	[MobNo] [nvarchar](500) NULL,
	[StockistAddress] [nvarchar](500) NULL,
	[CityCode] [nvarchar](500) NULL,
	[GSTNo] [nvarchar](500) NULL,
	[LocationId] [int] NULL,
	[Pincode] [nvarchar](500) NULL,
	[CityName] [nvarchar](500) NULL,
	[BankName] [nvarchar](500) NULL,
	[DLNo] [nvarchar](500) NULL,
	[DLExpDate] [datetime] NULL,
	[FoodLicNo] [nvarchar](500) NULL,
	[FoodLicExpDate] [datetime] NULL,
	[BankId] [int] NULL,
	[BankAccountNo] [nvarchar](500) NULL,
	[IFSCCode] [nvarchar](500) NULL,
	[IsActive] [char](1) NULL,
	[Addedby] [nvarchar](500) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
	[CompName] [nvarchar](500) NULL,
	[StockistNo1] [nvarchar](500) NULL,
	[MobNo1] [nvarchar](500) NULL,
	[FoodLicNo1] [nvarchar](500) NULL,
	[BankAccountNo1] [nvarchar](500) NULL,
	[Pincode1] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblStockistOSDataImport]    Script Date: 29-07-2023 16:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblStockistOSDataImport](
	[pkId] [bigint] IDENTITY(1,1) NOT NULL,
	[Div_Cd] [nvarchar](20) NULL,
	[CustomerCode] [nvarchar](20) NULL,
	[CustomerName] [nvarchar](250) NULL,
	[City] [nvarchar](250) NULL,
	[DocName] [nvarchar](250) NULL,
	[DocDate] [nvarchar](50) NULL,
	[DueDate] [nvarchar](50) NULL,
	[OpenAmt] [nvarchar](50) NULL,
	[ChqNo] [nvarchar](20) NULL,
	[DistrChannel] [nvarchar](250) NULL,
	[DocTypeDesc] [nvarchar](250) NULL,
	[DocType] [nvarchar](50) NULL,
	[OverdueAmt] [nvarchar](50) NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[AddedBy] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
 CONSTRAINT [PK_tblStockistOSDataImport] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblStokistTransportMapping]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblStokistTransportMapping](
	[Mappingid] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[StockistId] [int] NOT NULL,
	[TransporterId] [int] NOT NULL,
	[TransitDays] [int] NOT NULL,
	[SupplyTypeId] [int] NOT NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
 CONSTRAINT [PK_tblStokistTransportMapping] PRIMARY KEY CLUSTERED 
(
	[Mappingid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblTAXMaster]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblTAXMaster](
	[TaxId] [int] IDENTITY(1,1) NOT NULL,
	[GSTType] [nvarchar](20) NULL,
	[CGST] [int] NULL,
	[SGST] [int] NULL,
	[AddedBy] [nvarchar](50) NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblTAXMaster] PRIMARY KEY CLUSTERED 
(
	[TaxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblThresholdSLAMaster]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblThresholdSLAMaster](
	[PkId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[CompanyId] [int] NULL,
	[ThresholdValue] [int] NULL,
	[RaiseClaimDay] [int] NULL,
	[ClaimSettlementDay] [int] NULL,
	[InStateAmt] [bigint] NULL,
	[OutStateAmt] [bigint] NULL,
	[SaleSettlePeriod] [int] NULL,
	[NonSaleSettlePeriod] [int] NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK__tblThres__A7C03FF8800094CC] PRIMARY KEY CLUSTERED 
(
	[PkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblTransitDataImport]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblTransitDataImport](
	[pkid] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[DeliveryNo] [nvarchar](20) NULL,
	[ActualGIDate] [datetime] NULL,
	[RecPlant] [nvarchar](20) NULL,
	[RecPlantDesc] [nvarchar](200) NULL,
	[DispPlant] [nvarchar](20) NULL,
	[DispPlantDesc] [nvarchar](200) NULL,
	[InvoiceNo] [nvarchar](20) NULL,
	[InvoiceDate] [datetime] NULL,
	[MaterialNo] [nvarchar](50) NULL,
	[MatDesc] [nvarchar](200) NULL,
	[UOM] [nvarchar](10) NULL,
	[BatchNo] [nvarchar](50) NULL,
	[Quantity] [nvarchar](20) NULL,
	[TransporterCode] [nvarchar](50) NULL,
	[TransporterName] [nvarchar](250) NULL,
	[LrNo] [nvarchar](20) NULL,
	[LrDate] [datetime] NULL,
	[TotalCaseQty] [nvarchar](20) NULL,
	[VehicleNo] [nvarchar](50) NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
 CONSTRAINT [PK_tblTransitDataImport] PRIMARY KEY CLUSTERED 
(
	[pkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblTransitDataRaiseConcern]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblTransitDataRaiseConcern](
	[RaieseReqId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[LrNo] [nvarchar](20) NULL,
	[InvoiceNo] [nvarchar](20) NULL,
	[Remark] [varchar](1000) NULL,
	[AddedBy] [int] NULL,
	[AddedOn] [datetime] NULL,
	[ResolvedBy] [int] NULL,
	[ResolvedOn] [datetime] NULL,
 CONSTRAINT [PK_tblTransitDataRaiseConcern] PRIMARY KEY CLUSTERED 
(
	[RaieseReqId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblTransitInvoiceHeader]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblTransitInvoiceHeader](
	[TransitId] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[DeliveryNo] [nvarchar](20) NULL,
	[ActualGIDate] [datetime] NULL,
	[RecPlant] [nvarchar](20) NULL,
	[RecPlantDesc] [nvarchar](200) NULL,
	[DispPlant] [nvarchar](20) NULL,
	[DispPlantDesc] [nvarchar](200) NULL,
	[InvNo] [nvarchar](20) NULL,
	[InvoiceDate] [datetime] NULL,
	[MaterialNo] [nvarchar](50) NULL,
	[MatDesc] [nvarchar](200) NULL,
	[UOM] [nvarchar](10) NULL,
	[BatchNo] [nvarchar](50) NULL,
	[Quantity] [nvarchar](20) NULL,
	[TransporterId] [int] NULL,
	[LrNo] [nvarchar](20) NULL,
	[LrDate] [datetime] NULL,
	[TotalCaseQty] [nvarchar](20) NULL,
	[VehicleNo] [nvarchar](50) NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
	[TransitLRStatus] [int] NULL,
	[IsMapDone] [int] NULL,
	[RaiseConcernId] [int] NULL,
	[RaiseConcernRemarks] [nvarchar](200) NULL,
	[RaiseConcernBy] [nvarchar](50) NULL,
	[RaiseConcernUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblTransitInvoiceHeader] PRIMARY KEY CLUSTERED 
(
	[TransitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblTransporterMaster]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblTransporterMaster](
	[TransporterId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[TransporterNo] [nvarchar](20) NOT NULL,
	[TransporterName] [nvarchar](100) NOT NULL,
	[TransporterEmail] [nvarchar](250) NULL,
	[TransporterMobNo] [nvarchar](30) NULL,
	[TransporterAddress] [nvarchar](250) NULL,
	[CityCode] [nvarchar](20) NULL,
	[StateCode] [nvarchar](20) NULL,
	[DistrictCode] [varchar](max) NULL,
	[RatePerBox] [int] NULL,
	[IsActive] [char](1) NOT NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblTransporterMaster] PRIMARY KEY CLUSTERED 
(
	[TransporterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblTransporterParentMapping]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblTransporterParentMapping](
	[pkid] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[Tpid] [int] NULL,
	[TransporterId] [int] NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblTransporterParentMst]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblTransporterParentMst](
	[Tpid] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[ParentTranspNo] [nvarchar](25) NOT NULL,
	[ParentTranspName] [nvarchar](100) NOT NULL,
	[ParentTranspEmail] [nvarchar](50) NULL,
	[ParentTranspMobNo] [nvarchar](30) NULL,
	[IsTDS] [char](1) NULL,
	[TDSPer] [int] NULL,
	[IsGST] [char](1) NULL,
	[GSTNumber] [nvarchar](30) NULL,
	[IsActive] [char](1) NOT NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblUser]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblUser](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[RoleId] [int] NOT NULL,
	[EmpId] [int] NOT NULL,
	[DisplayName] [nvarchar](100) NULL,
	[UserName] [nvarchar](250) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[EncryptPassword] [nvarchar](1000) NOT NULL,
	[IsActive] [char](1) NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblUserMenuRights]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblUserMenuRights](
	[pkId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[Dashboard] [int] NULL,
	[EmployeeMaster] [int] NULL,
	[StockistMaster] [int] NULL,
	[CartingMaster] [int] NULL,
	[CourierMaster] [int] NULL,
	[BranchMaster] [int] NULL,
	[CompanyMaster] [int] NULL,
	[StockistTransporterMapping] [int] NULL,
	[TransporterMaster] [int] NULL,
	[StockistBranchRelation] [int] NULL,
	[StockistCompanyRelation] [int] NULL,
	[GeneralMaster] [int] NULL,
	[PicklistOperation] [int] NULL,
	[PicklistAdd] [int] NULL,
	[PicklistVerify] [int] NULL,
	[PicklistAllot] [int] NULL,
	[ReAllotPicklist] [int] NULL,
	[ImportInvData] [int] NULL,
	[InvCancelList] [int] NULL,
	[ReadyToDispatch] [int] NULL,
	[AssignTransportMode] [int] NULL,
	[ImportLRData] [int] NULL,
	[PrintSticker] [int] NULL,
	[ChqRegister] [int] NULL,
	[ImportOS] [int] NULL,
	[ImportChqDeposit] [int] NULL,
	[ChqSummRpt] [int] NULL,
	[EmailConfig] [int] NULL,
	[ChqSummMonthlyRpt] [int] NULL,
	[ResolveConcernPL] [int] NULL,
	[ResolveConcernINV] [int] NULL,
	[PriotiseINV] [int] NULL,
	[AssignTransportModeEdit] [int] NULL,
	[AppConfig] [int] NULL,
	[LRReceivedList] [int] NULL,
	[ResolveClaimConcern] [int] NULL,
	[ImportSRS] [int] NULL,
	[CorrectionRequiredList] [int] NULL,
	[SRSPendingCNList] [int] NULL,
	[ImportCreditNote] [int] NULL,
	[UploadDestructionCertificate] [int] NULL,
	[DestructionCertificateList] [int] NULL,
	[ImportTransitReport] [int] NULL,
	[ApproveVehicleIssue] [int] NULL,
	[InsuranceClaim] [int] NULL,
	[ApprovalClaim] [int] NULL,
	[AppConfiguration] [int] NULL,
	[StockTransferAdd] [int] NULL,
	[CityMaster] [int] NULL,
	[ThresholdValueMaster] [int] NULL,
	[ChecklistMaster] [int] NULL,
	[OtherCNFMaster] [int] NULL,
	[ImportDepositedCheque] [int] NULL,
	[ChequeRegisterSummaryReport] [int] NULL,
	[RaisedConcernList] [int] NULL,
	[VersionDetails] [int] NULL,
	[BranchCompanyRelationMaster] [int] NULL,
	[DashBoardOrderReturn] [int] NULL,
	[DashBoardOrderDispatch] [int] NULL,
	[DashBoradChequeAcc] [int] NULL,
	[DashBoardInventoyInward] [int] NULL,
	[DashBoradStockTrans] [int] NULL,
	[DashMiniORPendingSRS] [int] NULL,
	[DashORFOROperator] [int] NULL,
	[DashCheackAccForOprator] [int] NULL,
	[DashOrdDisForOperator] [int] NULL,
	[DashOrdDisForSupervisor] [int] NULL,
	[DashBoardORForSupervisor] [int] NULL,
	[DshBranchDRP] [int] NULL,
	[DshCompanyDRP] [int] NULL,
	[ExpenseRegister] [int] NULL,
	[ReimbursmentInvoice] [int] NULL,
	[ComissionInvoice] [int] NULL,
	[GatepassbillSummary] [int] NULL,
	[CheckInvoice] [int] NULL,
	[TaxMaster] [int] NULL,
	[HeadMaster] [int] NULL,
	[TransportParentMaster] [int] NULL,
	[TransportParentMapping] [int] NULL,
	[CourierParentMaster] [int] NULL,
	[CourierParentMapping] [int] NULL,
	[VendorMaster] [int] NULL,
	[CompanyVendorMapping] [int] NULL,
	[ChequeStatusReport] [int] NULL,
	[VendorBranchMapping] [int] NULL,
	[VehicleChecklistForImg] [int] NULL,
 CONSTRAINT [PK_tblUserMenuRights] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblUserRoleMapping]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblUserRoleMapping](
	[UserRoleId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblUserRoleMapping] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblVendorMaster]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblVendorMaster](
	[VendorId] [int] IDENTITY(1,1) NOT NULL,
	[Branch] [int] NOT NULL,
	[VendorName] [nvarchar](500) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[ContactNumber] [nvarchar](50) NULL,
	[PANNumber] [nvarchar](50) NULL,
	[GSTNumber] [nvarchar](50) NULL,
	[City] [int] NULL,
	[Address] [nvarchar](500) NULL,
	[IsActive] [char](1) NULL,
	[AddedBy] [int] NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
	[IsGST] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aadhyam$]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aadhyam$](
	[Customer Code ] [float] NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Contact No] [nvarchar](255) NULL,
	[PAN] [nvarchar](255) NULL,
	[GST] [nvarchar](255) NULL,
	[CITY] [nvarchar](255) NULL,
	[Pin Code] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[DL no] [nvarchar](255) NULL,
	[DL expiry] [nvarchar](255) NULL,
	[Food Lic No] [float] NULL,
	[Food Lic Expiry] [nvarchar](255) NULL,
	[Bank Name] [nvarchar](255) NULL,
	[Account No] [float] NULL,
	[IFSC Code] [nvarchar](255) NULL,
	[BankID] [nvarchar](255) NULL,
	[CityCode] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[areawithSeqNo]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[areawithSeqNo](
	[Sr No#] [float] NULL,
	[Distributor Code] [nvarchar](255) NULL,
	[Distributor Name] [nvarchar](255) NULL,
	[AreaRefNo] [nvarchar](255) NULL,
	[Area Name] [nvarchar](255) NULL,
	[Total Count] [nvarchar](255) NULL,
	[Massage Send Sequence] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChqReg08Apr]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChqReg08Apr](
	[ChqReceivedDate] [datetime] NULL,
	[StockiestNo] [float] NOT NULL,
	[StockiestName] [nvarchar](255) NULL,
	[BankName] [nvarchar](255) NULL,
	[IFSC Code] [nvarchar](255) NULL,
	[AccountNo] [nvarchar](255) NOT NULL,
	[ChqNo] [nvarchar](255) NULL,
	[AccNo] [nvarchar](255) NULL,
	[stkNo] [nvarchar](255) NULL,
	[AchqNo] [nvarchar](255) NULL,
	[aa] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chqRegister]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chqRegister](
	[CompanyName] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[StockistNo] [float] NULL,
	[ StockistCity] [nvarchar](255) NULL,
	[BankName] [nvarchar](255) NULL,
	[AccountNo] [float] NULL,
	[IFSCCode] [nvarchar](255) NULL,
	[ ChequeNo] [nvarchar](255) NULL,
	[ ChequeReceivedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chqRegisterNew]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chqRegisterNew](
	[CompanyName] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[StockistNo] [float] NULL,
	[ StockistCity] [nvarchar](255) NULL,
	[BankName] [nvarchar](255) NULL,
	[AccountNo] [float] NULL,
	[IFSCCode] [nvarchar](255) NULL,
	[ ChequeNo] [nvarchar](255) NULL,
	[ ChequeReceivedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[impbankdata]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[impbankdata](
	[CustomerCode] [float] NULL,
	[BankName] [nvarchar](255) NULL,
	[AccountNo] [nvarchar](255) NULL,
	[IFSCCode] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImpMstStockiest]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImpMstStockiest](
	[Customer Code ] [float] NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Contact No] [nvarchar](255) NULL,
	[PAN] [nvarchar](255) NULL,
	[GST] [nvarchar](255) NULL,
	[CITY] [nvarchar](255) NULL,
	[Pin Code] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[DL no] [nvarchar](255) NULL,
	[DL expiry] [nvarchar](255) NULL,
	[Food Lic No] [nvarchar](255) NULL,
	[Food Lic Expiry] [nvarchar](255) NULL,
	[Bank Name] [nvarchar](255) NULL,
	[Account No] [nvarchar](255) NULL,
	[IFSC Code] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewSRS_23Aug22]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewSRS_23Aug22](
	[Sales Document] [nvarchar](255) NULL,
	[Item (SD)] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[Sales Document Type] [nvarchar](255) NULL,
	[Document Date] [datetime] NULL,
	[Confirmed Quantity] [float] NULL,
	[Purchase order no#/LR No] [nvarchar](255) NULL,
	[Purchase order number] [nvarchar](255) NULL,
	[Batch] [nvarchar](255) NULL,
	[Delivery Date] [datetime] NULL,
	[Created by] [nvarchar](255) NULL,
	[Sold-to party] [nvarchar](255) NULL,
	[Exchange Rate] [nvarchar](255) NULL,
	[Order Quantity] [float] NULL,
	[Material] [nvarchar](255) NULL,
	[Base Unit of Measure] [nvarchar](255) NULL,
	[Name 1] [nvarchar](255) NULL,
	[Cust# expected price] [float] NULL,
	[Net price] [float] NULL,
	[Pricing unit] [float] NULL,
	[Unit of measure] [nvarchar](255) NULL,
	[Net value] [float] NULL,
	[Net Value1] [float] NULL,
	[Division] [nvarchar](255) NULL,
	[Status] [nvarchar](255) NULL,
	[Status1] [nvarchar](255) NULL,
	[Sales Organization] [nvarchar](255) NULL,
	[Sales unit] [nvarchar](255) NULL,
	[Shipping Point/Receiving Pt] [nvarchar](255) NULL,
	[Distribution Channel] [nvarchar](255) NULL,
	[Goods Issue Date] [datetime] NULL,
	[Document Currency] [nvarchar](255) NULL,
	[Plant] [nvarchar](255) NULL,
	[Order quantity1] [float] NULL,
	[Description1] [nvarchar](255) NULL,
	[Order reason] [nvarchar](255) NULL,
	[Probability] [nvarchar](255) NULL,
	[Sold-to address] [nvarchar](255) NULL,
	[Created on] [datetime] NULL,
	[Time] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[Div_Cd] [nvarchar](50) NULL,
	[BranchId] [int] NULL,
	[CompId] [int] NULL,
	[City] [nvarchar](50) NULL,
	[StockistCode] [nvarchar](50) NULL,
	[StockistName] [nvarchar](250) NULL,
	[DocName] [nvarchar](50) NULL,
	[DocDate] [nvarchar](50) NULL,
	[DueDate] [nvarchar](50) NULL,
	[OpenAmt] [nvarchar](50) NULL,
	[ChqNo] [nvarchar](50) NULL,
	[DistrChannel] [nvarchar](50) NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[AB] [float] NULL,
	[CD] [float] NULL,
	[CC] [float] NULL,
	[DG] [float] NULL,
	[DR] [float] NULL,
	[DZ] [float] NULL,
	[Column1] [float] NULL,
	[Column2] [float] NULL,
	[Column3] [float] NULL,
	[Column4] [float] NULL,
	[Column5] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sheet1$]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sheet1$](
	[Sr no ] [float] NULL,
	[Comp] [nvarchar](255) NULL,
	[Customer Code ] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Contact No] [float] NULL,
	[PAN] [nvarchar](255) NULL,
	[GST] [nvarchar](255) NULL,
	[CITY] [nvarchar](255) NULL,
	[Pin Code] [float] NULL,
	[Address] [nvarchar](255) NULL,
	[DL no] [nvarchar](255) NULL,
	[DL expiry] [datetime] NULL,
	[Food Lic No] [float] NULL,
	[Food Lic Expiry] [datetime] NULL,
	[Bank Name] [nvarchar](255) NULL,
	[Account No] [float] NULL,
	[IFSC Code] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SRS]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SRS](
	[Sales Document] [nvarchar](255) NULL,
	[Item (SD)] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[Sales Document Type] [nvarchar](255) NULL,
	[Document Date] [datetime] NULL,
	[Confirmed Quantity] [float] NULL,
	[Purchase order no#] [nvarchar](255) NULL,
	[Purchase order number] [nvarchar](255) NULL,
	[Batch] [nvarchar](255) NULL,
	[Delivery Date] [datetime] NULL,
	[Created by] [nvarchar](255) NULL,
	[Sold-to party] [nvarchar](255) NULL,
	[Exchange Rate] [nvarchar](255) NULL,
	[Order Quantity] [float] NULL,
	[Material] [nvarchar](255) NULL,
	[Base Unit of Measure] [nvarchar](255) NULL,
	[Name 1] [nvarchar](255) NULL,
	[Cust# expected price] [float] NULL,
	[Net price] [float] NULL,
	[Pricing unit] [float] NULL,
	[Unit of measure] [nvarchar](255) NULL,
	[Net value] [float] NULL,
	[Net Value1] [float] NULL,
	[Division] [nvarchar](255) NULL,
	[Status] [nvarchar](255) NULL,
	[Status1] [nvarchar](255) NULL,
	[Sales Organization] [nvarchar](255) NULL,
	[Sales unit] [nvarchar](255) NULL,
	[Shipping Point/Receiving Pt] [nvarchar](255) NULL,
	[Distribution Channel] [nvarchar](255) NULL,
	[Goods Issue Date] [datetime] NULL,
	[Document Currency] [nvarchar](255) NULL,
	[Plant] [nvarchar](255) NULL,
	[Order quantity1] [float] NULL,
	[Order reason] [nvarchar](255) NULL,
	[Probability] [nvarchar](255) NULL,
	[Sold-to address] [nvarchar](255) NULL,
	[Pricing date] [datetime] NULL,
	[Created on] [datetime] NULL,
	[Time] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StkData7Comp27Apr]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StkData7Comp27Apr](
	[Comp] [nvarchar](255) NULL,
	[Customer Code ] [float] NULL,
	[Customer Code 1] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Contact No] [nvarchar](255) NULL,
	[Contact No1] [nvarchar](255) NULL,
	[PAN] [nvarchar](255) NULL,
	[GST] [nvarchar](255) NULL,
	[CITY] [nvarchar](255) NULL,
	[Pin Code] [nvarchar](255) NULL,
	[Pin Code1] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[DL no] [nvarchar](255) NULL,
	[DL expiry] [datetime] NULL,
	[Food Lic No] [nvarchar](255) NULL,
	[Food Lic No1] [nvarchar](255) NULL,
	[Food Lic Expiry] [nvarchar](255) NULL,
	[Bank Name] [nvarchar](255) NULL,
	[Account No] [float] NULL,
	[Account No1] [nvarchar](255) NULL,
	[IFSC Code] [nvarchar](255) NULL,
	[F23] [nvarchar](255) NULL,
	[F24] [nvarchar](255) NULL,
	[F25] [nvarchar](255) NULL,
	[F26] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StkDataImport]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StkDataImport](
	[Customer No#] [float] NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Email ID] [nvarchar](255) NULL,
	[Tel#Number] [nvarchar](255) NULL,
	[Mobile Number] [nvarchar](255) NULL,
	[PAN Number] [nvarchar](255) NULL,
	[GST Number] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[Pin Code] [nvarchar](255) NULL,
	[Street 2] [nvarchar](255) NULL,
	[Street 3] [nvarchar](255) NULL,
	[Drug License 20B No#] [nvarchar](255) NULL,
	[DL-20B-Oblig# From] [nvarchar](255) NULL,
	[Drug License 20B Expiry] [nvarchar](255) NULL,
	[Drug License 21B No#] [nvarchar](255) NULL,
	[DL-21B-Oblig# From] [nvarchar](255) NULL,
	[Drug License 21B Expiry] [nvarchar](255) NULL,
	[FoodLicense FD No] [nvarchar](255) NULL,
	[FD-Oblig# From] [nvarchar](255) NULL,
	[Food License  Expiry] [nvarchar](255) NULL,
	[Bank] [nvarchar](255) NULL,
	[Account No] [float] NULL,
	[IFSC Code] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stkimport240723]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stkimport240723](
	[StockistId] [nvarchar](255) NULL,
	[StockistNo] [nvarchar](255) NULL,
	[StockistName] [nvarchar](255) NULL,
	[StockistPAN] [nvarchar](255) NULL,
	[Emailid] [nvarchar](255) NULL,
	[MobNo] [nvarchar](255) NULL,
	[StockistAddress] [nvarchar](255) NULL,
	[CityCode] [nvarchar](255) NULL,
	[GSTNo] [nvarchar](255) NULL,
	[LocationId] [nvarchar](255) NULL,
	[Pincode] [nvarchar](255) NULL,
	[DLNo] [nvarchar](255) NULL,
	[DLExpDate] [datetime] NULL,
	[FoodLicNo] [nvarchar](255) NULL,
	[FoodLicExpDate] [datetime] NULL,
	[BankId] [nvarchar](255) NULL,
	[BankAccountNo] [nvarchar](255) NULL,
	[IFSCCode] [nvarchar](255) NULL,
	[IsActive] [nvarchar](255) NULL,
	[Addedby] [nvarchar](255) NULL,
	[AddedOn] [nvarchar](255) NULL,
	[LastUpdatedOn] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stockiestAIL]    Script Date: 29-07-2023 16:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stockiestAIL](
	[Customer Code ] [float] NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Contact No] [nvarchar](255) NULL,
	[PAN] [nvarchar](255) NULL,
	[GST] [nvarchar](255) NULL,
	[CITY] [nvarchar](255) NULL,
	[Pin Code] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[DL no] [nvarchar](255) NULL,
	[DL expiry] [nvarchar](255) NULL,
	[Food Lic No] [nvarchar](255) NULL,
	[Food Lic Expiry] [nvarchar](255) NULL,
	[Bank Name] [nvarchar](255) NULL,
	[Account No] [nvarchar](255) NULL,
	[IFSC Code] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockiestAIL2]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockiestAIL2](
	[Customer Code ] [float] NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Contact No] [nvarchar](255) NULL,
	[PAN] [nvarchar](255) NULL,
	[GST] [nvarchar](255) NULL,
	[CITY] [nvarchar](255) NULL,
	[Pin Code] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[DL no] [nvarchar](255) NULL,
	[DL expiry] [nvarchar](255) NULL,
	[Food Lic No] [nvarchar](255) NULL,
	[Food Lic Expiry] [nvarchar](255) NULL,
	[Bank Name] [nvarchar](255) NULL,
	[Account No] [nvarchar](255) NULL,
	[IFSC Code] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblstk240723]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblstk240723](
	[StockistId] [float] NULL,
	[StockistNo] [nvarchar](255) NULL,
	[StockistName] [nvarchar](255) NULL,
	[StockistPAN] [nvarchar](255) NULL,
	[Emailid] [nvarchar](255) NULL,
	[MobNo] [nvarchar](100) NULL,
	[StockistAddress] [nvarchar](255) NULL,
	[CityCode] [float] NULL,
	[GSTNo] [nvarchar](255) NULL,
	[LocationId] [nvarchar](255) NULL,
	[Pincode] [float] NULL,
	[DLNo] [nvarchar](255) NULL,
	[DLExpDate] [datetime] NULL,
	[FoodLicNo] [float] NULL,
	[FoodLicExpDate] [datetime] NULL,
	[BankId] [float] NULL,
	[BankAccountNo] [float] NULL,
	[IFSCCode] [nvarchar](255) NULL,
	[IsActive] [nvarchar](255) NULL,
	[Addedby] [float] NULL,
	[AddedOn] [nvarchar](255) NULL,
	[LastUpdatedOn] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yourtable]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yourtable](
	[id] [int] NULL,
	[Value1] [nvarchar](20) NULL,
	[ColumnName] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [NIU].[tblCreditNoteMaster]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NIU].[tblCreditNoteMaster](
	[pkId] [int] IDENTITY(1,1) NOT NULL,
	[CNId] [int] NOT NULL,
	[CNNo] [float] NULL,
	[CNDate] [datetime] NULL,
	[BranchId] [int] NULL,
	[CompId] [int] NULL,
	[StockiestId] [int] NULL,
	[DestrCertFile] [varchar](500) NULL,
	[DestrCertDate] [datetime] NULL,
	[AddedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblCreditNoteMaster] PRIMARY KEY CLUSTERED 
(
	[pkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [NIU].[tblInvoiceAllotment]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NIU].[tblInvoiceAllotment](
	[AllotmentId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[Invid] [int] NOT NULL,
	[InvDtlsId] [int] NULL,
	[ProductCode] [nvarchar](25) NULL,
	[BatchNo] [nvarchar](25) NULL,
	[BillDrawerId] [int] NOT NULL,
	[AllottedBy] [int] NULL,
	[AllottedDate] [datetime] NULL,
	[AllotmentStatus] [int] NOT NULL,
	[RejectRemark] [nvarchar](500) NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tblInvoiceAllotment] PRIMARY KEY CLUSTERED 
(
	[AllotmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [NIU].[tblInvoiceDetails]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NIU].[tblInvoiceDetails](
	[InvDtlsId] [int] IDENTITY(1,1) NOT NULL,
	[InvId] [int] NOT NULL,
	[DivisionId] [int] NOT NULL,
	[ProdCode] [nvarchar](50) NULL,
	[BatchNo] [nvarchar](50) NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblInvoiceDetails] PRIMARY KEY CLUSTERED 
(
	[InvDtlsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [NIU].[tblInvoiceReAllotment]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NIU].[tblInvoiceReAllotment](
	[ReAllotmentId] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[Invid] [int] NOT NULL,
	[InvDtlsId] [int] NULL,
	[ProductCode] [nvarchar](25) NULL,
	[BatchNo] [nvarchar](25) NULL,
	[BillDrawerId] [int] NOT NULL,
	[ReAllottedBy] [int] NULL,
	[ReAllottedDate] [datetime] NULL,
	[ReAllotmentStatus] [int] NOT NULL,
	[RejectRemark] [nvarchar](500) NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tblInvoiceReAllotment] PRIMARY KEY CLUSTERED 
(
	[ReAllotmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [NIU].[tblPickListDetails]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NIU].[tblPickListDetails](
	[PicklistDtlsId] [int] IDENTITY(1,1) NOT NULL,
	[PicklistId] [int] NOT NULL,
	[DivisionId] [int] NOT NULL,
	[ProdCode] [nvarchar](50) NULL,
	[BatchNo] [nvarchar](50) NULL,
	[Addedby] [nvarchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblPickListDetails] PRIMARY KEY CLUSTERED 
(
	[PicklistDtlsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_ChqRegisterSummaryReport]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ChqRegisterSummaryReport]
AS
SELECT        cq.StokistId, st.StockistNo, st.StockistName, b.MasterName AS BankName, cq.BankId, cq.IFSCCode, cq.AccountNo, COUNT(cq.ChqRegId) AS TotalChqCount, SUM(CASE WHEN cq.ChqStatus = 0 THEN 1 ELSE 0 END) 
                         AS BlankChqs, SUM(CASE WHEN cq.ChqStatus = 1 THEN 1 ELSE 0 END) AS UtilisedChqs, SUM(CASE WHEN cq.ChqStatus = 2 THEN 1 ELSE 0 END) AS PrepareChqs, SUM(CASE WHEN cq.ChqStatus = 3 THEN 1 ELSE 0 END) 
                         AS DiscardedChqs, SUM(CASE WHEN cq.ChqStatus = 4 THEN 1 ELSE 0 END) AS DepositedChqs, SUM(CASE WHEN cq.ChqStatus = 5 THEN 1 ELSE 0 END) AS ReturnedChqs, 
                         SUM(CASE WHEN cq.ChqStatus = 6 THEN 1 ELSE 0 END) AS SettledChqs
FROM            CFA.tblChequeRegister AS cq INNER JOIN
                         CFA.tblStatusMaster AS s ON cq.ChqStatus = s.id AND s.StatusFor = 'CHQ' LEFT OUTER JOIN
                         CFA.tblStockistMaster AS st ON cq.StokistId = st.StockistId LEFT OUTER JOIN
                         CFA.tblStockiestBankDetails AS sb ON st.StockistId = sb.StockistId LEFT OUTER JOIN
                         CFA.tblGeneralMaster AS b ON sb.BankId = b.pkId
WHERE        (cq.BranchId = 1) AND (cq.CompId = 1)
GROUP BY cq.StokistId, st.StockistNo, st.StockistName, b.MasterName, cq.BankId, cq.IFSCCode, cq.AccountNo
GO
/****** Object:  View [dbo].[vw_GetGatepassDtlsForPDF]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_GetGatepassDtlsForPDF]
AS
SELECT        gp.GatepassId, gp.BranchId, gp.CompId, gp.GatepassNo, gp.GatepassDate, gp.VehicleNo, gp.GuardNameId, g.EmpName, g.EmpNo, gp.DriverName, gp.Addedby, gp.AddedOn, gp.UpdatedBy, gp.LastUpdatedOn, gp.IsPrinted, 
                         gpd.GatepassDtlsId, gpd.InvId, atm.AssignTransMId, atm.TransportModeId, tm.MasterName AS TrasportModeText, atm.TransporterId, t.TransporterNo, t.TransporterName, atm.CourierId, c.CourierName, atm.Delivery_Remark, 
                         atm.LRNo, atm.InvoiceId, i.InvNo, i.InvCreatedDate, i.IsColdStorage, i.SoldTo_StokistId, sk.StockistNo, sk.StockistName, sk.MobNo, sk.Emailid, i.SoldTo_City, ct.CityName, i.InvAmount, i.SONo, i.SODate, i.NoOfItems, i.InvStatus, 
                         i.NoOfBox, i.InvWeight, i.IsCourier, i.ReadyToDispatchBy, i.CancelBy, br.BranchCode, br.BranchName, br.BranchAddress, br.City, bct.CityName AS Expr1, br.Pin, br.ContactNo, br.Email, br.GSTNo, cp.CompanyCode, 
                         cp.CompanyName, cp.CompanyEmail, cp.ContactNo AS Expr2, cp.CompanyAddress, cp.CompanyCity, cp.Pin AS Expr3
FROM            CFA.tblGeneralMaster AS tm RIGHT OUTER JOIN
                         CFA.tblCityMaster AS ct RIGHT OUTER JOIN
                         CFA.tblStockistMaster AS sk RIGHT OUTER JOIN
                         CFA.tblEmployeeMaster AS g RIGHT OUTER JOIN
                         CFA.tblAssignTransportMode AS atm INNER JOIN
                         CFA.tblInvoiceHeader AS i ON atm.InvoiceId = i.InvId INNER JOIN
                         CFA.tblGenerateGatepass AS gp INNER JOIN
                         CFA.tblGenerateGatepassDetails AS gpd ON gp.GatepassId = gpd.GatepassId ON atm.InvoiceId = gpd.InvId INNER JOIN
                         CFA.tblCompanyMaster AS cp ON gp.CompId = cp.CompanyId INNER JOIN
                         CFA.tblBranchMaster AS br ON gp.BranchId = br.BranchId ON g.EmpId = gp.GuardNameId ON sk.StockistId = i.SoldTo_StokistId ON ct.CityCode = i.SoldTo_City LEFT OUTER JOIN
                         CFA.tblCityMaster AS bct ON br.City = bct.CityCode ON tm.pkId = atm.TransportModeId LEFT OUTER JOIN
                         CFA.tblCourierMaster AS c ON atm.CourierId = c.CourierId LEFT OUTER JOIN
                         CFA.tblTransporterMaster AS t ON atm.TransporterId = t.TransporterId
GO
ALTER TABLE [CFA].[tblAssignTransportMode] ADD  CONSTRAINT [DF_tblAssignTransportMode_OCnfCity]  DEFAULT ((0)) FOR [OCnfCity]
GO
ALTER TABLE [CFA].[tblBranchMaster] ADD  CONSTRAINT [DF_tblBranchMaster_State]  DEFAULT ((0)) FOR [StateCode]
GO
ALTER TABLE [CFA].[tblDivisionMaster] ADD  CONSTRAINT [DF_tblDivisionMaster_BranchId]  DEFAULT ((0)) FOR [BranchId]
GO
ALTER TABLE [CFA].[tblDivisionMaster] ADD  CONSTRAINT [DF_tblDivisionMaster_CompanyId]  DEFAULT ((0)) FOR [CompanyId]
GO
ALTER TABLE [CFA].[tblInvoiceHeader] ADD  CONSTRAINT [DF_tblInvoiceHeader_OnPriority]  DEFAULT ((0)) FOR [OnPriority]
GO
ALTER TABLE [CFA].[tblInvoiceHeader] ADD  CONSTRAINT [DF_tblInvoiceHeader_IsStockTransfer]  DEFAULT ((0)) FOR [IsStockTransfer]
GO
ALTER TABLE [CFA].[tblInwardGatepass] ADD  CONSTRAINT [DF_tblInwardGatepass_GoodsReceived]  DEFAULT ((0)) FOR [GoodsReceived]
GO
ALTER TABLE [CFA].[tblInwardGatepass] ADD  CONSTRAINT [DF_tblInwardGatepass_ClaimFormAvailable]  DEFAULT ((0)) FOR [ClaimFormAvailable]
GO
ALTER TABLE [CFA].[tblInwardGatepass] ADD  CONSTRAINT [DF_tblInwardGatepass_RecivedAtOperator]  DEFAULT ((0)) FOR [RecvdAtOP]
GO
ALTER TABLE [CFA].[tblMapInwardVehicle] ADD  CONSTRAINT [DF_tblMapInwardVehicle_IsClaim]  DEFAULT ((0)) FOR [IsClaim]
GO
ALTER TABLE [CFA].[tblPhysicalCheck1] ADD  CONSTRAINT [DF_tblPhysicalCheck1_ClaimStatus]  DEFAULT ((0)) FOR [ClaimStatus]
GO
ALTER TABLE [CFA].[tblPrinterDetails] ADD  CONSTRAINT [DF_tblPrinterDetails_UtilityNo]  DEFAULT ((0)) FOR [UtilityNo]
GO
ALTER TABLE [CFA].[tblSRSHeader] ADD  CONSTRAINT [DF_tblSRSHeader_SRSStatus]  DEFAULT ((0)) FOR [SRSStatus]
GO
ALTER TABLE [CFA].[tblTransitInvoiceHeader] ADD  CONSTRAINT [DF_tblTransitInvoiceHeader_TransitLRStatus]  DEFAULT ((0)) FOR [TransitLRStatus]
GO
ALTER TABLE [CFA].[tblTransporterMaster] ADD  CONSTRAINT [DF_tblTransporterMaster_RatePerBox]  DEFAULT ((0)) FOR [RatePerBox]
GO
ALTER TABLE [CFA].[tblTransporterParentMst] ADD  CONSTRAINT [DF_tblTransporterParentMst_TDSPer]  DEFAULT ((0)) FOR [TDSPer]
GO
ALTER TABLE [CFA].[tblTransporterParentMst] ADD  CONSTRAINT [DF_tblTransporterParentMst_IsGST]  DEFAULT ((0)) FOR [IsGST]
GO
ALTER TABLE [CFA].[tblUserMenuRights] ADD  CONSTRAINT [DF_tblUserMenuRights_CityMaster]  DEFAULT ((0)) FOR [CityMaster]
GO
ALTER TABLE [CFA].[tblUserMenuRights] ADD  CONSTRAINT [DF_tblUserMenuRights_ThresholdValueMaster]  DEFAULT ((0)) FOR [ThresholdValueMaster]
GO
ALTER TABLE [CFA].[tblUserMenuRights] ADD  CONSTRAINT [DF_tblUserMenuRights_ChecklistMaster]  DEFAULT ((0)) FOR [ChecklistMaster]
GO
ALTER TABLE [CFA].[tblUserMenuRights] ADD  CONSTRAINT [DF_tblUserMenuRights_OtherCNFMaster]  DEFAULT ((0)) FOR [OtherCNFMaster]
GO
ALTER TABLE [CFA].[tblUserMenuRights] ADD  CONSTRAINT [DF_tblUserMenuRights_ImportDepositedCheque]  DEFAULT ((0)) FOR [ImportDepositedCheque]
GO
ALTER TABLE [CFA].[tblUserMenuRights] ADD  CONSTRAINT [DF_tblUserMenuRights_ChequeRegisterSummaryReport]  DEFAULT ((0)) FOR [ChequeRegisterSummaryReport]
GO
ALTER TABLE [CFA].[tblUserMenuRights] ADD  CONSTRAINT [DF_tblUserMenuRights_RaisedConcernList]  DEFAULT ((0)) FOR [RaisedConcernList]
GO
ALTER TABLE [CFA].[tblUserMenuRights] ADD  CONSTRAINT [DF_tblUserMenuRights_VersionDetails]  DEFAULT ((0)) FOR [VersionDetails]
GO
ALTER TABLE [CFA].[tblUserMenuRights] ADD  CONSTRAINT [DF_tblUserMenuRights_BranchCompanyRelationMaster]  DEFAULT ((0)) FOR [BranchCompanyRelationMaster]
GO
ALTER TABLE [CFA].[tblCityMaster]  WITH CHECK ADD  CONSTRAINT [FK1_tblCityMaster_tblStateMaster] FOREIGN KEY([StateCode])
REFERENCES [CFA].[tblStateMaster] ([StateCode])
GO
ALTER TABLE [CFA].[tblCityMaster] CHECK CONSTRAINT [FK1_tblCityMaster_tblStateMaster]
GO
/****** Object:  StoredProcedure [CFA].[MOB_GateSupervisorDashCounts]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [CFA].[MOB_GateSupervisorDashCounts]

as

select BranchId,CompId, count(InvId) TotalInv,
sum(case when i.InvStatus < 5 then 1 else 0 End) BillDrawerCnt, 
sum(case when i.InvStatus = 5 then 1 else 0 End) PendingForGPCnt, 
sum(case when i.InvStatus < 5 and i.OnPriority=1 then 1 else 0 End) BillDrawerPrio, 
sum(case when i.InvStatus = 5 and i.OnPriority=1 then 1 else 0 End) PendingForGPPrio, 
sum(case when i.InvStatus = 5 and (isnull(i.AttachedInvId,0)=0 or AttachedInvId=InvId) then NoOfBox else 0 End) BoxForGP,
(select count(distinct SoldTo_StokistId) from CFA.tblMobInvData where InvStatus=5) NoOfStockist,
sum(case when i.InvStatus = 5 and i.TransportModeId=1 then 1 else 0 End) LocalCnt, 
sum(case when i.InvStatus = 5 and i.TransportModeId=2 then 1 else 0 End) OtherCityCnt, 
sum(case when i.InvStatus = 5 and i.TransportModeId=3 then 1 else 0 End) ByHandCnt,
sum(case when i.InvStatus < 5 and i.BrCityCode=CityCode then 1 else 0 End) BDLocalCnt, 
sum(case when i.InvStatus < 5 and i.BrCityCode<>CityCode then 1 else 0 End) BDOtherCityCnt

from CFA.tblMobInvData i left outer join CFA.tblStatusMaster st on i.InvStatus=st.id and st.StatusFor='INV'

group by BranchId,CompId
GO
/****** Object:  StoredProcedure [CFA].[ups_GetClaimSRSDetailsById]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
     
CREATE PROC [CFA].[ups_GetClaimSRSDetailsById]      
@BranchId int,      
@CompId int      
AS      
BEGIN      
 SELECT p.PhyChkId, p.BranchId, p.CompId, p.LREntryId, p.ReturnCatId, rc.MasterName AS ReturnCategory,     
  p.ClaimNo, p.ClaimDate, p.ClaimStatus, gp.GatepassNo, gp.LRNo, isnull(cs.LREntryId,0) PhyChkId    
 FROM CFA.tblPhysicalCheck1 AS p INNER JOIN    
  CFA.tblInwardGatepass AS gp ON gp.LREntryId = p.LREntryId LEFT OUTER JOIN    
  CFA.tblGeneralMaster AS rc ON p.ReturnCatId = rc.pkId LEFT OUTER JOIN    
  CFA.tblSRSHeader AS cs ON p.LREntryId = cs.LREntryId    
 where p.BranchId=@BranchId AND p.CompId=@CompId     
      
END
GO
/****** Object:  StoredProcedure [CFA].[ups_GetSRSHeaderListForClaimMapping_NIU]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROC [CFA].[ups_GetSRSHeaderListForClaimMapping_NIU]-- 1,1,2    
@BranchId int,      
@CompId int,    
@LRIdGPId int    
      
AS      
      
BEGIN      
  SELECT srs.SRSId,srs.CompId,srs.BranchId,srs.SalesDocNo, srs.SoldtoPartyId,srs.Netvalue,srs.Division,srs.PONoLRNo,srs.Netvalue,
 stk.StockistId, stk.StockistName,stk.StockistNo,stk.CityCode,ph.LREntryId     
  FROM [CFA].[tblSRSHeader] AS srs LEFT OUTER JOIN CFA.tblStockistMaster AS stk ON srs.SRSId = stk.StockistId       
 left outer join CFA.tblPhysicalCheck1 ph on srs.LREntryId=ph.LREntryId    
  where srs.BranchId=@BranchId AND srs.CompId=@CompId and (ph.LREntryId is null or ph.LREntryId =@LRIdGPId)    
  order by ph.LREntryId desc    
END    
GO
/****** Object:  StoredProcedure [CFA].[usp_AddActiveUser]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_AddActiveUser]
@BranchId	int,
@CompanyId	int,
@UserId	int,
@EmpId int,
@Username	nvarchar(50),
@MobileNo	nvarchar(50),
@RoleId	int,
@VersionNo	nvarchar(50),
@DeviceId	varchar(max),
@RetVal int output
AS
BEGIN

	set @RetVal = 0;
	IF NOT EXISTS (SELECT UserId FROM CFA.tblActiveUsers WITH(NOLOCK) WHERE BranchId=@BranchId and UserId=@UserId AND EmpId=@EmpId)
	BEGIN
		INSERT INTO CFA.tblActiveUsers(BranchId,CompanyId,UserId,EmpId,Username,MobileNo,RoleId,VersionNo,ApplActiveFrom,LastSeen,DeviceId,ActiveStatus,UninstallStatus,UninstalledDate)
		values(@BranchId,@CompanyId,@UserId,@EmpId,@Username,@MobileNo,@RoleId,@VersionNo,getdate(),getdate(),@DeviceId,'Y','N',NULL)
		set @RetVal = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE CFA.tblActiveUsers SET VersionNo=@VersionNo,LastSeen=GETDATE(),DeviceId=@DeviceId
		WHERE BranchId=@BranchId and UserId=@UserId AND EmpId=@EmpId
		set @RetVal = SCOPE_IDENTITY()
	END
END
GO
/****** Object:  StoredProcedure [CFA].[usp_AddSendEmailFlag]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_AddSendEmailFlag]  
--DECLARE  
@BranchId int,  
@CompId int,  
@LREntryId int,  
@Flag int,  
@RetValue int output  
  
--SET @BranchId = 1; SET @CompId =1;  SET @LREntryId =5;  SET @Flag=1  
AS  
BEGIN  
 set @RetValue=0    
 Begin   
  Update CFA.tblInwardGatePass  
  set IsEmailSent =@Flag  
  where LREntryId=@LREntryId    
  set @RetValue=SCOPE_IDENTITY()  
 end  
END
GO
/****** Object:  StoredProcedure [CFA].[usp_AddStockTransfer]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [CFA].[usp_AddStockTransfer]
--DECLARE
@InvId INT,
@BranchId INT,
@CompId INT,
@StkTransInvNo NVARCHAR(20),
@InvDate DATETIME,
@SendToCNFId INT,
@IsStockTransfer INT,
@AddedBy NVARCHAR(50),
@Action NVARCHAR(10),
@RetVal INT OUTPUT
--SET @InvId=507; SET @BranchId=1; SET @CompId=1; SET @StkTransInvNo='9645555'; SET @InvDate='2023-04-13'; SET @SendToCNFId=4; SET @IsStockTransfer=1; SET @Action='DELETE'
AS
BEGIN
	
	SET @RetVal=0
	
	IF (UPPER(LTRIM(RTRIM(@Action))) = 'ADD')
	BEGIN
		IF NOT EXISTS(SELECT InvNo FROM CFA.tblInvoiceHeader WHERE InvNo=@StkTransInvNo)
		BEGIN
			INSERT INTO CFA.tblInvoiceHeader(BranchId,CompId,InvNo,InvCreatedDate,IsColdStorage,SoldTo_StokistId,SendToCNFId,IsStockTransfer,Addedby,AddedOn,InvStatus,LastUpdatedOn)
			SELECT @BranchId,@CompId,@StkTransInvNo,@InvDate,0,0,@SendToCNFId,@IsStockTransfer,@AddedBy,GETDATE(),0,GETDATE()
			SET @RetVal=SCOPE_IDENTITY()
		END
		ELSE
		BEGIN
			SET @RetVal=-1 -- Alerady InvNo Exists
		END
	END
	ELSE IF (UPPER(LTRIM(RTRIM(@Action))) = 'EDIT')
		BEGIN
			UPDATE CFA.tblInvoiceHeader
			SET InvNo=@StkTransInvNo,
				InvCreatedDate=@InvDate,
				SendToCNFId=@SendToCNFId,
				Addedby=@AddedBy,
				LastUpdatedOn=GETDATE()
			WHERE InvId=@InvId
			SET @RetVal=@InvId
		END
	ELSE IF(UPPER(LTRIM(RTRIM(@Action))) = 'DELETE')
		BEGIN
			DELETE FROM CFA.tblInvoiceHeader WHERE InvId=@InvId
		SET @RetVal=@InvId
		END
		--RETURN @RetVal
END

GO
/****** Object:  StoredProcedure [CFA].[usp_AddVersionDetails]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [CFA].[usp_AddVersionDetails]
--DECLARE
@VersionNo NVARCHAR(50),
@VersionDate DATETIME,
@RetVal NVARCHAR(10) OUTPUT
-- SET @VersionNo='1.1.0'; SET @VersionDate=GETDATE(); SET @RetVal=0;
AS
BEGIN
		SET @RetVal=0

		INSERT INTO CFA.tbl_VersionDetails(VersionNo,VersionDate,IsActive,AddedOn,LastUpdatedDate)
		VALUES(@VersionNo,@VersionDate,'Y',GETDATE(),GETDATE())
		SET @RetVal=@VersionNo

		SELECT @RetVal AS RetVal
END
GO
/****** Object:  StoredProcedure [CFA].[usp_AppConfigurationAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [CFA].[usp_AppConfigurationAddEdit]
--DECLARE
@Id	int,
@Key nvarchar(50),
@Value nvarchar(200),
@Info nvarchar(500),
@Action nvarchar(10),
@RetValue int output

AS
 --   SET @Id = 1
	--SET @Key = '5463'
	--SET @Value = 'PRANITA'
	--SET @Info  = 'GHODE'
	--SET @Action ='EDIT'

BEGIN
	set @RetValue=0
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin
		if not exists(select [Key] from CFA.tblAppConfiguration where [Key]=@Key)
		Begin
			insert into CFA.tblAppConfiguration([Key],[Value],Info,LastUpdatedOn)
				 values(@Key,@Value,@Info,GETDATE())
					set @RetValue=SCOPE_IDENTITY()
		End
		else
		Begin
			set @RetValue=-1	
		End
	End
	else if (upper(ltrim(rtrim(@Action)))='EDIT')
	Begin
		if not exists(select [Key] from CFA.tblAppConfiguration where [Value]=@Value and [Key]=@Key and Id<>@Id)
		Begin
			update CFA.tblAppConfiguration set [Value]=@Value, Info=@Info where Id=@Id
			set @RetValue=@Id
		End
		else 
		Begin
			set @RetValue=-1	
		End
	End
END
GO
/****** Object:  StoredProcedure [CFA].[usp_AppConfigurationList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [CFA].[usp_AppConfigurationList]

as
BEGIN
	SELECT Id, cfa.fn_CamelCase([Key]) [Key],cfa.fn_CamelCase([Value])[Value], cfa.fn_CamelCase(Info)Info ,LastUpdatedOn
	FROM cfa.tblAppConfiguration 
END

--exec [CFA].[usp_AppConfigurationList]
GO
/****** Object:  StoredProcedure [CFA].[usp_AssignTransportMode]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROC [CFA].[usp_AssignTransportMode]
@InvoiceId varchar (max),
@TransportModeId int,
@PersonName nvarchar(100),
@PersonAddress nvarchar(250),
@PersonMobNo nvarchar(30),
@OtherDetails nvarchar(250),
@TransporterId int,
@Delivery_Remark nvarchar(500),
@CAId int,
@CourierId int,
@Addedby nvarchar(50),
@AttachedInvId bigint,
@Action nvarchar(20),
@RetValue	int output

AS

BEGIN
SET @RetValue=0
	if (UPPER(@Action)='ADD')
	Begin
		IF not exists(select InvoiceId from CFA.tblAssignTransportMode where InvoiceId in (select [value] from CFA.fn_StringSplit(@InvoiceId,',')))
		Begin
			insert into CFA.tblAssignTransportMode(InvoiceId,TransportModeId,PersonName,PersonAddress,PersonMobNo,OtherDetails,CAId,
				TransporterId,CourierId,Delivery_Remark,Addedby,LastUpdatedDate,AttachedInvId)
			select distinct [value],@TransportModeId,@PersonName,@PersonAddress,@PersonMobNo,@OtherDetails,@CAId,  
				@TransporterId,@CourierId,@Delivery_Remark,@Addedby,getdate(),@AttachedInvId
			   from CFA.fn_StringSplit(@InvoiceId,',')

			set @RetValue=SCOPE_IDENTITY()
		End
	ELSE
		SET @RetValue=-1
	End
	if (UPPER(@Action)='DELETE')
	Begin
		delete from CFA.tblAssignTransportMode where InvoiceId in (select [value] from CFA.fn_StringSplit(@InvoiceId,','))
		SET @RetValue=1
	End
	else
		SET @RetValue=-2
END
GO
/****** Object:  StoredProcedure [CFA].[usp_AssignTransportModeEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_AssignTransportModeEdit]  
--declare
@AssignTransMId int,  
@InvoiceId nvarchar(max),  
@TransportModeId int,  
@PersonName nvarchar(100),  
@PersonAddress nvarchar(250),  
@PersonMobNo nvarchar(30),  
@OtherDetails nvarchar(250),  
@TransporterId int,  
@Delivery_Remark nvarchar(500),  
@CourierId int, 
@Addedby nvarchar(50),  
@OCnfCity int,  
@NoOfBox int,  
@InvWeight numeric,  
@IsCourier int,  
@RetValue int output  

AS  
  
BEGIN  
	SET @RetValue=0  
  
	IF exists(select AssignTransMId from CFA.tblAssignTransportMode where AssignTransMId=@AssignTransMId and InvoiceId=@InvoiceId)  
	Begin  
		update CFA.tblAssignTransportMode  
		set TransportModeId=@TransportModeId,  
			PersonName=@PersonName,  
			PersonAddress=@PersonAddress,  
			PersonMobNo=@PersonMobNo,  
			OtherDetails=@OtherDetails,  
			TransporterId=@TransporterId,  
			CourierId=@CourierId,  
			Delivery_Remark=@Delivery_Remark,  
			LastUpdatedDate=getdate(),  
			OCnfCity=@OCnfCity    
		where (AssignTransMId=@AssignTransMId or InvoiceId=@InvoiceId or AttachedInvId=@InvoiceId)

		update CFA.tblInvoiceHeader  set NoOfBox=@NoOfBox, InvWeight=@InvWeight ,IsCourier=@IsCourier 
		where InvId in (select InvoiceId from CFA.tblAssignTransportMode where 
			(AssignTransMId=@AssignTransMId or InvoiceId=@InvoiceId or AttachedInvId=@InvoiceId)) 
    
		set @RetValue=@AssignTransMId  
	End  
	ELSE  
		SET @RetValue=-1  
END  
GO
/****** Object:  StoredProcedure [CFA].[usp_AssignTransportModeStkTransfer]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_AssignTransportModeStkTransfer]
--declare
@InvoiceId varchar (max),
@TransportModeId int,
@TransporterId int,
@OCnfCity int,
@Addedby nvarchar(50),
@AttachedInvId bigint,
@Action nvarchar(20),
@RetValue	int output
--set @InvoiceId ='4';set @TransportModeId=3;SET @TransporterId=2;SET @OCnfCity=4;SET @Addedby=2;SET @AttachedInvId=1;SET @Action='ADD'
AS

BEGIN
SET @RetValue=0
	if (UPPER(@Action)='ADD')
	Begin
		IF not exists(select InvoiceId from CFA.tblAssignTransportMode where InvoiceId in (select [value] from CFA.fn_StringSplit(@InvoiceId,',')))
		Begin
			insert into CFA.tblAssignTransportMode(InvoiceId,TransportModeId,TransporterId,OCnfCity,Addedby,LastUpdatedDate,AttachedInvId)
			select [value],@TransportModeId,@TransporterId,@OCnfCity,@Addedby,getdate(),@AttachedInvId
			from CFA.fn_StringSplit(@InvoiceId,',')

			set @RetValue=SCOPE_IDENTITY()
		End
	ELSE
		SET @RetValue=-1
	End
	if (UPPER(@Action)='DELETE')
	Begin
		delete from CFA.tblAssignTransportMode where InvoiceId in (select [value] from CFA.fn_StringSplit(@InvoiceId,','))
		SET @RetValue=1
	End
	else
		SET @RetValue=-2
END
GO
/****** Object:  StoredProcedure [CFA].[usp_AuditLogAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/**************************************************************											
--	Stored Procedure Name	: usp_AddEditAuditLog
--	Description		:	To Insert log in database
--	Author			:	Rajendra
--	Date Modified		Modified By	     Modifications
--	30-MArch-2022		Rajendra			Created
**************************************************************/
CREATE PROCEDURE [CFA].[usp_AuditLogAddEdit]
@LogID numeric(17,0),
@ServiceId int,
@UserId int,
@LogFor nvarchar(150),
@LogData nvarchar(max),
@LogStatus nvarchar(500),
@LogDatetime datetime,
@LogException nvarchar(max)
AS
BEGIN
	DECLARE @IdentityId numeric(17,0)
	IF(@LogID = 0)
	BEGIN		
		INSERT INTO CFA.tblAuditLog(ServiceId,UserId,LogFor,LogData,LogStatus,LogDatetime,LogException,UpdatedDatetime)
		VALUES(@ServiceId,@UserId,@LogFor,@LogData,@LogStatus,@LogDatetime,@LogException,GETDATE())	
		SET @IdentityId = @@IDENTITY
	END
	IF(@LogID > 0)
	BEGIN
		IF(@UserId > 0)
			UPDATE CFA.tblAuditLog SET UserId=@UserId,LogStatus=@LogStatus,LogException=@LogException,UpdatedDatetime=GETDATE() WHERE LogID=@LogID
		ELSE
			UPDATE CFA.tblAuditLog SET LogStatus=@LogStatus,LogException=@LogException,UpdatedDatetime=GETDATE() WHERE LogID=@LogID
	END
	SELECT @IdentityId AS IdentityId
END



GO
/****** Object:  StoredProcedure [CFA].[usp_AuditorCheckUpdate]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [CFA].[usp_AuditorCheckUpdate]
--DECLARE
@BranchId INT,
@CompId INT,
@SRSId INT,
@Action NVARCHAR(20),
@ActionBy INT,
@ActionDate DATETIME,
@CorrectionReqRemark NVARCHAR(250),
@RetValue NVARCHAR(50) OUTPUT
--SET @BranchId=1; SET @CompId=1; SET @SRSId=1;SET @Action='CORRECTION';SET @ActionBy=1; SET @ActionDate='2022-08-10'; 
--SET @CorrectionReqRemark='Testing'; SET @RetValue=0;
AS
BEGIN
	SET @RetValue=0;
	IF (UPPER(LTRIM(RTRIM(@Action)))='VERIFY')
	BEGIN
		update CFA.tblSRSHeader set IsVerified='Y',VerifyCorrectionBy=@ActionBy,VerifyCorrectionDate=@ActionDate
		where BranchId=@BranchId and CompId=@CompId and SRSId=@SRSId
		SET @RetValue=@SRSId
	END
	ELSE IF (UPPER(LTRIM(RTRIM(@Action)))='CORRECTION')
	BEGIN
		update CFA.tblSRSHeader set IsCorrectionReq='Y',
			CorrectionReqRemark=@CorrectionReqRemark,
			VerifyCorrectionBy=@ActionBy,
			VerifyCorrectionDate=@ActionDate
		where BranchId=@BranchId and CompId=@CompId and SRSId=@SRSId
		SET @RetValue=@SRSId
	END
	ELSE
	BEGIN
		SET @RetValue=-2
	END
END
GO
/****** Object:  StoredProcedure [CFA].[usp_BranchMasterAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [CFA].[usp_BranchMasterAddEdit]
@BranchId	int,
@BranchCode	nvarchar(50),
@BranchName	nvarchar(50),
@BranchAddress	nvarchar(250),
@City	nvarchar(50),
@Pin	nvarchar(10),
@ContactNo	nvarchar(50),
@Email	nvarchar(100),
@Pan	nvarchar(15),
@GSTNo	nvarchar(20),
@StateCode nvarchar(50),
@IsActive	char(1),
@Addedby	nvarchar(50),
@Action	nvarchar(10),
@RetValue	int output

AS
BEGIN
	set @RetValue=0
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin
		if not exists(select branchid from CFA.tblBranchMaster where BranchCode=@BranchCode or BranchName=@BranchName)
		Begin
			insert into CFA.tblBranchMaster(BranchCode, BranchName, BranchAddress, City, Pin, ContactNo, Email, Pan, GSTNo,StateCode, 
				IsActive, Addedby, AddedOn, LastUpdatedOn)
				values(@BranchCode, @BranchName, @BranchAddress, @City, @Pin, @ContactNo, @Email, @Pan, @GSTNo, @StateCode,
				'Y', @Addedby, getdate(), getdate())
				set @RetValue=SCOPE_IDENTITY()
		End
		else 
		Begin
			set @RetValue=-1	-- Branch with samecode or name exists
		End
	End
	else if (upper(ltrim(rtrim(@Action)))='EDIT')
	Begin
		if not exists(select branchid from CFA.tblBranchMaster where (BranchCode=@BranchCode or BranchName=@BranchName) and BranchId<>@BranchId)
		Begin
			update CFA.tblBranchMaster
			set BranchCode=@BranchCode,
				BranchName=@BranchName,
				BranchAddress=@BranchAddress,
				City=@City,
				Pin=@Pin,
				ContactNo=@ContactNo,
				Email=@Email,
				Pan=@Pan,
				GSTNo=@GSTNo,
				StateCode=@StateCode,
				Addedby=@Addedby,
				LastUpdatedOn=getdate()
			where BranchId=@BranchId
			
			set @RetValue=@BranchId
		End
		else 
		Begin
			set @RetValue=-1	-- Branch with samecode or name exists
		End
	End
	else if (upper(ltrim(rtrim(@Action)))='STATUS')
	Begin
		update CFA.tblBranchMaster set IsActive=@IsActive, Addedby=@Addedby, LastUpdatedOn=getdate() where BranchId=@BranchId
		set @RetValue=@BranchId
	End
	else
	Begin
		set @RetValue=-2
	End	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_BranchMasterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[CFA].[usp_BranchMasterList]'ALL'
CREATE PROCEDURE [CFA].[usp_BranchMasterList]
@Status	nvarchar(10)

AS
BEGIN

	SELECT b.BranchId, b.BranchCode, cfa.fn_CamelCase(b.BranchName) BranchName, cfa.fn_CamelCase(b.BranchAddress) BranchAddress, 
	b.City, b.Pin, b.ContactNo, b.Email, upper(b.Pan) Pan, upper(b.GSTNo) GSTNo, b.IsActive, cfa.fn_CamelCase(ct.CityName) CityName,
	cfa.fn_CamelCase(s.StateName)StateName,b.Addedby, b.AddedOn, b.LastUpdatedOn
	FROM CFA.tblBranchMaster AS b LEFT OUTER JOIN CFA.tblCityMaster AS ct ON b.City = ct.CityCode
	LEFT OUTER JOIN CFA.tblStateMaster As s  ON b.StateCode=s.StateCode
	where (upper(IsActive)=upper(@Status) or upper(@Status)='ALL')
	order by BranchId desc
		
END
GO
/****** Object:  StoredProcedure [CFA].[usp_BranchVendorRelationAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_BranchVendorRelationAddEdit]
--DECLARE
@VendorId varchar(max),
@BranchId int,
@AddedBy int,
@RetValue int output
--SET  @VendorId='1,2,3,4' set  @BranchId=2 set @AddedBy='1' 
AS
BEGIN
	set @RetValue=0
	-- Delete unticked first
	delete from CFA.tblBranchVendorMapping
	where BranchId=@BranchId and VendorId not in (select [value] from CFA.fn_StringSplit(@VendorId,','))

	-- Insert new ticked old ticked are already added
	if exists(SELECT [value] from CFA.fn_StringSplit(@VendorId,',') a
		left outer join CFA.tblBranchVendorMapping br on a.[value]=br.VendorId and br.BranchId=@BranchId
		where br.VendorId is null)
	begin
		insert into CFA.tblBranchVendorMapping(BranchId,VendorId,AddedBy,AddedDate,LastUpdatedDate)
		select @BranchId,[value],@AddedBy,getdate(),getdate()from CFA.fn_StringSplit(@VendorId,',') a
		left outer join CFA.tblBranchVendorMapping br on a.[value]=br.VendorId and br.BranchId=@BranchId
		where br.VendorId is null
		set @RetValue = SCOPE_IDENTITY()
	end
	else
	begin
		set @RetValue=1
	end

	select @RetValue as RetValue, @BranchId as BranchId
END



GO
/****** Object:  StoredProcedure [CFA].[usp_CartingAgentMasterAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [CFA].[usp_CartingAgentMasterAddEdit]
@CAId	int,
@BranchId	int,
@CAName	nvarchar(100),
@CAMobNo	nvarchar(30),
@CAEmail	nvarchar(250),
@CAPan	nvarchar(10),
@GSTNo	nvarchar(50),
@CAAddress	nvarchar(250),
@StateCode	nvarchar(20),
@DistrictCode	varchar(MAX),
@CityCode	nvarchar(20),
@IsActive	char(1),
@Addedby	nvarchar(50),
@Action	nvarchar(10),
@RetValue	int output

AS

BEGIN
	set @RetValue=0
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin
		if not exists(select CAId from CFA.tblCartingAgentMaster where ltrim(rtrim(CAName))=ltrim(rtrim(@CAName)))
		Begin
			insert into CFA.tblCartingAgentMaster(BranchId, CAName, CAMobNo, CAEmail, CAPan, GSTNo, CAAddress, StateCode, 
			DistrictCode, CityCode, IsActive, Addedby, AddedOn, LastUpdatedOn)
			values(@BranchId, @CAName, @CAMobNo, @CAEmail, @CAPan, @GSTNo, @CAAddress, @StateCode,
			@DistrictCode, @CityCode, 'Y', @Addedby, getdate(), getdate())
				
			set @RetValue=SCOPE_IDENTITY()
		End
		else 
			set @RetValue=-1	-- -- Carting Agent with name exists
	End
	else if (upper(ltrim(rtrim(@Action)))='EDIT')
	Begin
		if not exists(select CAId from CFA.tblCartingAgentMaster where ltrim(rtrim(CAName))=ltrim(rtrim(@CAName)) and CAId<>@CAId)
		Begin
			update CFA.tblCartingAgentMaster
			set BranchId=@BranchId,
				CAName=@CAName,
				CAMobNo=@CAMobNo,
				CAEmail=@CAEmail,
				CAPan=@CAPan,
				GSTNo=@GSTNo,
				CAAddress=@CAAddress,
				StateCode=@StateCode,
				DistrictCode=@DistrictCode,
				CityCode=@CityCode,
				Addedby=@Addedby,
				LastUpdatedOn=getdate()
			where CAId=@CAId
			
			set @RetValue=@CAId
		End
		else 
		Begin
			set @RetValue=-1	-- Carting Agent with name exists
		End
	End
	else if (upper(ltrim(rtrim(@Action)))='STATUS')
	Begin
		update CFA.tblCartingAgentMaster set IsActive=@IsActive, LastUpdatedOn=getdate() where CAId=@CAId
		set @RetValue=@CAId
	End
	else
	Begin
		set @RetValue=-2
	End	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_CartingAgentMasterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [CFA].[usp_CartingAgentMasterList] --'ALL',0
@Status	nvarchar(10)='ALL',
@BranchId int

AS

BEGIN
	SELECT ca.CAId, ca.BranchId,br.BranchName, cfa.fn_CamelCase(ca.CAName) CAName, ca.CAMobNo, ca.CAEmail, upper(ca.CAPan) CAPan, upper(ca.GSTNo) GSTNo, 
		cfa.fn_CamelCase(ca.CAAddress) CAAddress, ca.StateCode, cfa.fn_CamelCase(st.StateName) StateName, 
		ca.DistrictCode,cfa.fn_CamelCase(dm.DistrictName) DistrictName, ca.CityCode,cfa.fn_CamelCase(ct.CityName) CityName, 
		ca.IsActive, ca.Addedby, ca.AddedOn, ca.LastUpdatedOn
	FROM CFA.tblCartingAgentMaster AS ca LEFT OUTER JOIN
		CFA.tblStateMaster AS st ON ca.StateCode = st.StateCode LEFT OUTER JOIN
		CFA.tblCityMaster AS ct ON ca.CityCode = ct.CityCode LEFT OUTER JOIN
		CFA.tblDistrictMaster AS dm ON ca.DistrictCode = dm.DistrictCode LEFT OUTER JOIN
		[CFA].[tblBranchMaster] AS br ON ca.BranchId = br.BranchId
	WHERE (ca.BranchId=@BranchId or @BranchId=0) and (UPPER(ca.IsActive)=UPPER(@Status) OR UPPER(@Status)='ALL') 
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ChangePassword]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--		Change Password
CREATE PROCEDURE [CFA].[usp_ChangePassword] 	
@unm nvarchar(50),
@EmpId int,
@upwd nvarchar(50),
@Encryptpwd nvarchar(1000),
@AddedBy int,
@Rtnval int output
	
AS

BEGIN
	IF EXISTS (SELECT DisplayName FROM CFA.tbluser WHERE UserName = @unm and EmpId =@EmpId)	
	BEGIN 
		UPDATE CFA.tbluser SET Password =@upwd,EncryptPassword = @Encryptpwd, AddedBy=@AddedBy ,LastUpdatedOn = GETDATE() 
		WHERE UserName = @unm and EmpId =@EmpId
	
		if(@@ERROR=0) set @Rtnval=@EmpId
		else set @Rtnval=-1
	END
END



GO
/****** Object:  StoredProcedure [CFA].[usp_checkCAName]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_checkCAName]

@CAName NVARCHAR(100)
AS
BEGIN
	if exists(SELECT CAId FROM CFA.tblCartingAgentMaster WHERE LOWER(LTRIM(RTRIM(CAName)))=LOWER(LTRIM(RTRIM(@CAName))))
		SELECT -1 as Flag, CAId,CAName FROM CFA.tblCartingAgentMaster WHERE LOWER(LTRIM(RTRIM(CAName)))=LOWER(LTRIM(RTRIM(@CAName)))
	else
		SELECT 1 as Flag, CAId,CAName FROM CFA.tblCartingAgentMaster WHERE 1=2
END
	
GO
/****** Object:  StoredProcedure [CFA].[usp_checkCourierName]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [CFA].[usp_checkCourierName]
@CourierName NVARCHAR(100) 
As
	Begin
	if exists (SELECT CourierId FROM CFA.tblCourierMaster WHERE LOWER(LTRIM(RTRIM(CourierName)))=LOWER(LTRIM(RTRIM(@CourierName))))
		SELECT -1 as Flag, CourierId,CourierName FROM CFA.tblCourierMaster WHERE LOWER(LTRIM(RTRIM(CourierName)))=LOWER(LTRIM(RTRIM(@CourierName)))
	else
		SELECT 1 as Flag, CourierId,CourierName FROM CFA.tblCourierMaster WHERE 1=2
END	 
GO
/****** Object:  StoredProcedure [CFA].[usp_checkEmpNo]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_checkEmpNo]
--DECLARE
@EmpId int,
@EmpNo NVARCHAR(20),
@EmpEmail NVARCHAR(250),
@EmpMobNo NVARCHAR(30)
--SET @EmpNo='E00001'; SET @EmpEmail=''; SET @EmpMobNo='';
AS
BEGIN
	if(isnull(@EmpId,0)>0)
	Begin
		if exists(SELECT Empid FROM CFA.tblEmployeeMaster WHERE LOWER(LTRIM(RTRIM(EmpNo)))=LOWER(LTRIM(RTRIM(@EmpNo))) and EmpId<>@EmpId)
			SELECT -1 as Flag, Empid,EmpNo,EmpName FROM CFA.tblEmployeeMaster WHERE LOWER(LTRIM(RTRIM(EmpNo)))=LOWER(LTRIM(RTRIM(@EmpNo))) and EmpId<>@EmpId
		else if exists(SELECT Empid FROM CFA.tblEmployeeMaster WHERE LOWER(LTRIM(RTRIM(EmpEmail)))=LOWER(LTRIM(RTRIM(@EmpEmail))) and EmpId<>@EmpId) 
			SELECT -2 as Flag, Empid,EmpNo,EmpName FROM CFA.tblEmployeeMaster WHERE LOWER(LTRIM(RTRIM(EmpEmail)))=LOWER(LTRIM(RTRIM(@EmpEmail)))  and EmpId<>@EmpId
		else if exists(SELECT Empid FROM CFA.tblEmployeeMaster WHERE LOWER(LTRIM(RTRIM(EmpMobNo)))=LOWER(LTRIM(RTRIM(@EmpMobNo))) and EmpId<>@EmpId)
			SELECT -3 as Flag, Empid,EmpNo,EmpName FROM CFA.tblEmployeeMaster WHERE LOWER(LTRIM(RTRIM(EmpMobNo)))=LOWER(LTRIM(RTRIM(@EmpMobNo)))  and EmpId<>@EmpId
		else
			SELECT 1 as Flag, Empid,EmpNo,EmpName FROM CFA.tblEmployeeMaster WHERE 1=2
	End
	else
	Begin
		if exists(SELECT Empid FROM CFA.tblEmployeeMaster WHERE LOWER(LTRIM(RTRIM(EmpNo)))=LOWER(LTRIM(RTRIM(@EmpNo))))
			SELECT -1 as Flag, Empid,EmpNo,EmpName FROM CFA.tblEmployeeMaster WHERE LOWER(LTRIM(RTRIM(EmpNo)))=LOWER(LTRIM(RTRIM(@EmpNo)))
		else if exists(SELECT Empid FROM CFA.tblEmployeeMaster WHERE LOWER(LTRIM(RTRIM(EmpEmail)))=LOWER(LTRIM(RTRIM(@EmpEmail)))) 
			SELECT -2 as Flag, Empid,EmpNo,EmpName FROM CFA.tblEmployeeMaster WHERE LOWER(LTRIM(RTRIM(EmpEmail)))=LOWER(LTRIM(RTRIM(@EmpEmail))) 
		else if exists(SELECT Empid FROM CFA.tblEmployeeMaster WHERE LOWER(LTRIM(RTRIM(EmpMobNo)))=LOWER(LTRIM(RTRIM(@EmpMobNo))))
			SELECT -3 as Flag, Empid,EmpNo,EmpName FROM CFA.tblEmployeeMaster WHERE LOWER(LTRIM(RTRIM(EmpMobNo)))=LOWER(LTRIM(RTRIM(@EmpMobNo))) 
		else
			SELECT 1 as Flag, Empid,EmpNo,EmpName FROM CFA.tblEmployeeMaster WHERE 1=2
	End
END
GO
/****** Object:  StoredProcedure [CFA].[usp_CheckInvNo]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_CheckInvNo]
--DECLARE
@BranchId INT,
@CompId INT,
@InvId INT,
@RetVal INT OUTPUT
--SET @BranchId=1; SET @CompId=1; SET @InvId='129';
AS
BEGIN
	
	SET @RetVal=0
	BEGIN
		IF  EXISTS(SELECT InvStatus FROM CFA.tblInvoiceHeader WHERE InvId =@InvId )
		BEGIN
			SET @RetVal=(SELECT InvStatus FROM CFA.tblInvoiceHeader WHERE InvId =@InvId)
		END
		ELSE
			SET @RetVal=-1
	END
	select @RetVal RetVal 
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ChecklistMastersAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_ChecklistMastersAddEdit]  
--DECLARE 
@ChecklistTypeId bigint,
@BranchId int,
@CompId int,
@QuestionName nvarchar(1000),
@ControlType nvarchar(50),
@SeqNo int,
@Addedby nvarchar(50),
@Action nvarchar(10),
@IsActive nvarchar(1),
@RetValue int output 
--SET @ChecklistTypeId=4; SET @BranchId=1; SET @CompId= 1; SET @QuestionName = 'Que12345?'; SET @ControlType = 'Check Box'; 
--SET @SeqNo =5; SET @Addedby = 2; SET @Action = 'EDIT'; SET @IsActive ='Y'; 
As
BEGIN
	set @RetValue = 0; 
	if (upper(ltrim(rtrim(@Action)))='ADD')  
	Begin
		if not exists(select ChecklistTypeId from CFA.tblInvInVehicleChecklistMaster where ChecklistTypeId=@ChecklistTypeId)  
		Begin
			if exists(select seqno from CFA.tblInvInVehicleChecklistMaster where CompId=@CompId and BranchId=@BranchId and SeqNo=@SeqNo)
			Begin
				update CFA.tblInvInVehicleChecklistMaster set SeqNo=SeqNo+1  where CompId=@CompId and BranchId=@BranchId and SeqNo>=@SeqNo

				--declare @maxSqNo int, @c int=0
				--set @maxSqNo=0; set @c=@SeqNo;
				--select @maxSqNo=max(seqno) from CFA.tblInvInVehicleChecklistMaster where CompId=@CompId and BranchId=@BranchId
				--while(@c<=@maxSqNo)
				--Begin
				--	select @c
				--	if exists(select seqno from CFA.tblInvInVehicleChecklistMaster where CompId=@CompId and BranchId=@BranchId and SeqNo=@c)
				--	Begin
				--		select * from CFA.tblInvInVehicleChecklistMaster where CompId=@CompId and BranchId=@BranchId and SeqNo=@c
				--		update CFA.tblInvInVehicleChecklistMaster set SeqNo=SeqNo+1  where CompId=@CompId and BranchId=@BranchId and SeqNo=@c
				--		set @c=@c+1
				--	End
				--	else
				--		set @c=@c+@maxSqNo
				--End
			End	
			insert into CFA.tblInvInVehicleChecklistMaster(BranchId,CompId,QuestionName,ControlType,SeqNo, Addedby, IsActive,AddedOn) 
			values(@BranchId,@CompId,@QuestionName, @ControlType,@SeqNo,@Addedby,@IsActive, getdate())  
			set @RetValue=SCOPE_IDENTITY()  
		End
		else   
		Begin  
			set @RetValue=-1  -- already exist
		End
	End  
	else if (upper(ltrim(rtrim(@Action)))='EDIT')  
	Begin  
		if exists(select ChecklistTypeId from CFA.tblInvInVehicleChecklistMaster where ChecklistTypeId=@ChecklistTypeId)
		Begin
			if exists(select seqno from CFA.tblInvInVehicleChecklistMaster where CompId=@CompId and BranchId=@BranchId and SeqNo=@SeqNo)
			Begin
				update CFA.tblInvInVehicleChecklistMaster set SeqNo=SeqNo+1  where CompId=@CompId and BranchId=@BranchId 
				and SeqNo>=@SeqNo --or SeqNo<(select SeqNo from CFA.tblInvInVehicleChecklistMaster where ChecklistTypeId=@ChecklistTypeId)
			End	

			update CFA.tblInvInVehicleChecklistMaster
			set QuestionName=@QuestionName,
			ControlType=@ControlType,
			SeqNo=@SeqNo,
			Addedby=@Addedby,
			AddedOn=getdate()
			where BranchId= @BranchId  and ChecklistTypeId = @ChecklistTypeId
			set @RetValue=@ChecklistTypeId
		End
		else 
		Begin
			set @RetValue=-2 -- Not Updated	
		End
	End
	else if (upper(ltrim(rtrim(@Action)))='STATUS')
		Begin
		if exists (select ChecklistTypeId from CFA.tblInvInVehicleChecklistMaster where ChecklistTypeId=@ChecklistTypeId)
		Begin
			update CFA.tblInvInVehicleChecklistMaster set IsActive=@IsActive,LastUpdatedOn=getdate() 
			where ChecklistTypeId = @ChecklistTypeId
			set @RetValue=@ChecklistTypeId
		End  
		else  
		Begin  
			set @RetValue=-2 -- Not chnaged  
		End   
	End
	else if (upper(ltrim(rtrim(@Action)))='DELETE')
		Begin   
		delete from CFA.tblInvInVehicleChecklistMaster where ChecklistTypeId = @ChecklistTypeId
	End

	return @RetValue

End
GO
/****** Object:  StoredProcedure [CFA].[usp_checkSequenceNo]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_checkSequenceNo] 
--DECLARE  
@SeqNo int,
@BranchId int,
@CompId int 
  
AS  
BEGIN  
	
 if exists(SELECT SeqNo FROM CFA.tblInvInVehicleChecklistMaster WHERE LOWER(LTRIM(RTRIM(SeqNo)))=LOWER(LTRIM(RTRIM(@SeqNo))))  
  SELECT -1 as Flag, SeqNo,QuestionName FROM CFA.tblInvInVehicleChecklistMaster 
  WHERE BranchId=@BranchId and CompId=@CompId and LOWER(LTRIM(RTRIM(SeqNo)))=LOWER(LTRIM(RTRIM(@SeqNo)))   
  else
  SELECT 1 as Flag, SeqNo,QuestionName FROM CFA.tblInvInVehicleChecklistMaster WHERE 1=2
END  
  
  

GO
/****** Object:  StoredProcedure [CFA].[usp_checkStkTransferINVNo]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- CFA.usp_checkStkTransferINVNo 1,1,'20220216'
CREATE PROC [CFA].[usp_checkStkTransferINVNo]
--DECLARE
@BranchId INT,
@CompId INT,
@InvNo NVARCHAR(20)
AS  
BEGIN  
	
  IF EXISTS(SELECT InvNo FROM CFA.tblInvoiceHeader WHERE BranchId=@BranchId AND CompId=@CompId AND LOWER(LTRIM(RTRIM(InvNo)))=LOWER(LTRIM(RTRIM(@InvNo))))  
  SELECT -1 as Flag,BranchId,CompId,InvNo FROM CFA.tblInvoiceHeader WHERE BranchId=@BranchId AND CompId=@CompId AND LOWER(LTRIM(RTRIM(InvNo)))=LOWER(LTRIM(RTRIM(@InvNo)))   
  ELSE
  SELECT 1 as Flag,BranchId,CompId,InvNo FROM CFA.tblInvoiceHeader WHERE 1=2

END  
  
  
GO
/****** Object:  StoredProcedure [CFA].[usp_checkStockistNo]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_checkStockistNo] --'10050094'
--DECLARE  
@StockistNo NVARCHAR(20)  
  
AS  
BEGIN  
	
 if exists(SELECT StockistNo FROM CFA.tblStockistMaster WHERE LOWER(LTRIM(RTRIM(StockistNo)))=LOWER(LTRIM(RTRIM(@StockistNo))))  
  SELECT -1 as Flag, StockistNo,StockistName FROM CFA.tblStockistMaster WHERE LOWER(LTRIM(RTRIM(StockistNo)))=LOWER(LTRIM(RTRIM(@StockistNo)))   
  else
  SELECT 1 as Flag, StockistNo,StockistName FROM CFA.tblStockistMaster WHERE 1=2
END  
  
  
GO
/****** Object:  StoredProcedure [CFA].[usp_checkTransporterMaster]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_checkTransporterMaster]
--DECLARE
@TransporterNo NVARCHAR(20)

AS
BEGIN
	
	if exists(SELECT TransporterNo FROM CFA.tblTransporterMaster WHERE LOWER(LTRIM(RTRIM(TransporterNo)))=LOWER(LTRIM(RTRIM(@TransporterNo))))
		SELECT -1 as Flag, TransporterNo,TransporterName FROM CFA.tblTransporterMaster WHERE LOWER(LTRIM(RTRIM(TransporterNo)))=LOWER(LTRIM(RTRIM(@TransporterNo)))
	else
		SELECT 1 as Flag, TransporterNo,TransporterName FROM CFA.tblTransporterMaster WHERE 1=2
END

GO
/****** Object:  StoredProcedure [CFA].[usp_CheckUser]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_CheckUser]
--declare
@EmailId varchar(50),
@RetValue int output

AS
--set @EmailId ='rajendra@aadyamconsultant.com';
BEGIN
	IF EXISTS (SELECT e.EmpId FROM CFA.tblEmployeeMaster as e inner join CFA.tblUser as u on e.EmpId = u.EmpId WHERE EmpEmail = @EmailId)	
	Begin
		UPDATE CFA.tbluser SET Password ='cnf@1234',EncryptPassword = 'OQoAB28As7GZtwvzkV5jSg==',LastUpdatedOn = GETDATE() 
		WHERE UserId = (SELECT top 1 u.UserId FROM CFA.tblEmployeeMaster as e inner join CFA.tblUser as u on e.EmpId=u.EmpId WHERE EmpEmail = @EmailId) 
		set @RetValue= 1
	End
	else  
	Begin
		set @RetValue = -1
	End
END
GO
/****** Object:  StoredProcedure [CFA].[usp_checkUsernameAvailable]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [CFA].[usp_checkUsernameAvailable]
@username nvarchar(25)

as

BEGIN

	select * from CFA.tblUser where lower(ltrim(rtrim(UserName)))=lower(ltrim(rtrim(@username)))

END
GO
/****** Object:  StoredProcedure [CFA].[usp_checkVersionNo]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_checkVersionNo]
--DECLARE
@VersionNo NVARCHAR(20)
AS  
BEGIN  
	
  IF EXISTS(SELECT VersionNo FROM CFA.tbl_VersionDetails WHERE LOWER(LTRIM(RTRIM(VersionNo)))=LOWER(LTRIM(RTRIM(@VersionNo))))  
  SELECT -1 as Flag,VersionNo FROM CFA.tbl_VersionDetails WHERE LOWER(LTRIM(RTRIM(VersionNo)))=LOWER(LTRIM(RTRIM(@VersionNo)))   
  ELSE
  SELECT 1 as Flag,VersionNo FROM CFA.tbl_VersionDetails WHERE 1=2

END
GO
/****** Object:  StoredProcedure [CFA].[usp_ChequeStatusReport]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------ [CFA].[usp_ChequeStatusReport] 1,1,'2023-01-01','2023-06-08'
CREATE PROCEDURE [CFA].[usp_ChequeStatusReport]
--DECLARE
@BranchId INT,
@CompId INT,
@FromDate DATETIME,
@ToDate DATETIME
--SET @BranchId=1; SET @CompId=1; SET @FromDate='2022-01-01'; SET @ToDate='2023-06-21';
AS
BEGIN

	select DISTINCT c.ChqRegId, c.BranchId,c.CompId, Format(c.ChqReceivedDate,'MMM/yyyy') MonthStr, c.ChqReceivedDate,
	s.StockistId,s.StockistNo,s.StockistName,CFA.fn_CamelCase(ct.CityName) AS CityName,CFA.fn_CamelCase(bk.MasterName) AS BankName, 
	c.AccountNo,c.ChqNo, c.ChqAmount, c.ChqStatus, i.InvNo,'' InvCreatedDate,'' AS ChqRemark	
	from CFA.tblChequeRegister as c WITH(NOLOCK)
	LEFT OUTER JOIN CFA.tblStockistMaster AS s WITH(NOLOCK) ON c.StokistId=s.StockistId
	LEFT OUTER JOIN CFA.tblCityMaster as ct WITH(NOLOCK) on s.CityCode=ct.CityCode	
	LEFT OUTER JOIN CFA.tblGeneralMaster AS bk WITH(NOLOCK) ON c.BankId=bk.pkId
	LEFT outer join CFA.tblChqBlockedforInv im with (nolock) on c.ChqRegId=im.ChqRegId
	LEFT outer join CFA.tblInvoiceHeader i with (nolock) on im.InvId=i.InvId
	where (c.BranchId=@BranchId OR @BranchId=0) AND (c.CompId=@CompId OR @CompId=0)
	AND CAST(c.ChqReceivedDate AS DATE) >= CAST(@FromDate AS DATE) AND CAST(c.ChqReceivedDate AS DATE)<=CAST(@ToDate AS DATE)
	order by c.ChqReceivedDate,StockistName,ChqNo,InvNo
--	select DISTINCT c.ChqRegId, c.BranchId,c.CompId, c.ChqReceivedDate,s.StockistId,s.StockistNo,s.StockistName,
--	CFA.fn_CamelCase(ct.CityName) AS CityName,CFA.fn_CamelCase(bk.MasterName) AS BankName, c.AccountNo,c.ChqNo, 
--	c.ChqAmount, c.ChqStatus,
--	(	(select min(InvNo) from CFA.tblInvoiceHeader i1 inner join CFA.tblChqBlockedforInv im1 with (nolock) on i1.InvId=im1.InvId 
--		where im1.ChqRegId= c.ChqRegId) +' '+ 
--		(select STUFF((select ' / ' + convert(nvarchar(50), a.StrInv) from ( select distinct substring(i2.invno,len(i2.invno)-2,3) StrInv 
--		from CFA.tblInvoiceHeader i2 inner join CFA.tblChqBlockedforInv im2 with (nolock) on i2.InvId=im2.InvId where im2.ChqRegId= c.ChqRegId 
--		and i2.InvNo<>(select min(InvNo) from CFA.tblInvoiceHeader i1 inner join CFA.tblChqBlockedforInv im1 with (nolock) on i1.InvId=im1.InvId 
--		where im1.ChqRegId= c.ChqRegId)
--	) a order by a.StrInv FOR XML PATH('')),1,1,''))) InvNo,
--	(select min(InvCreatedDate) from CFA.tblInvoiceHeader i1 inner join CFA.tblChqBlockedforInv im1 with (nolock) on i1.InvId=im1.InvId 
--	where im1.ChqRegId= c.ChqRegId) as InvCreatedDate,
--		(isnull(nullif(ltrim(rtrim(c.ReturnedRemark)),'') + ', ','')
--	+ isnull(nullif(ltrim(rtrim(c.DiscardedRemark)),'')+ ', ','')+ isnull(nullif(ltrim(rtrim(c.ReleasedRemark)),''),'')) AS ChqRemark	
--	from CFA.tblChequeRegister as c WITH(NOLOCK)
--	LEFT OUTER JOIN CFA.tblStockistMaster AS s WITH(NOLOCK) ON c.StokistId=s.StockistId
--	LEFT OUTER JOIN CFA.tblCityMaster as ct WITH(NOLOCK) on s.CityCode=ct.CityCode	
--	LEFT OUTER JOIN CFA.tblGeneralMaster AS bk WITH(NOLOCK) ON c.BankId=bk.pkId
--	LEFT outer join CFA.tblChqBlockedforInv im with (nolock) on c.ChqRegId=im.ChqRegId
--	where (c.BranchId=@BranchId OR @BranchId=0) AND (c.CompId=@CompId OR @CompId=0)
--	AND CAST(c.ChqReceivedDate AS DATE) >= CAST(@FromDate AS DATE) AND CAST(c.ChqReceivedDate AS DATE)<=CAST(@ToDate AS DATE)

END
GO
/****** Object:  StoredProcedure [CFA].[usp_ChequeStatusUpdate]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [CFA].[usp_ChequeStatusUpdate]  
--DECLARE  
@ChqRegId INT,  
@BranchId INT,  
@CompId INT, 
@ChqNo nvarchar(10),
@StockistId int, 
@ChqStatus INT,
@InvData varchar(Max), 
@Remark nvarchar(250),
@ReturnedReasonId int,
@Addedby NVARCHAR(20), 
@ReturnDate DATETIME,
@BlockedDate DATETIME, 
@RetVal INT OUTPUT 


AS  
BEGIN  
SET @RetVal=0	
--0	Blank and Released,		1	Block/Utilised		2	Prepare		3	Deposited		4	Discarded		5	Returned	6 First Notice 	8	Settled  9 MapInvoice

if(isnull(@ChqStatus,0)=1)		-- Block/Utilised
Begin
	UPDATE CFA.tblChequeRegister SET ChqStatus=@ChqStatus,BlockedBy=@Addedby, BlockedDate=@BlockedDate,LastUpdatedOn=GetDate() WHERE ChqRegId=@ChqRegId 
 
	SET @RetVal=@ChqRegId
End
else if (isnull (@ChqStatus,0)=9) -- Map Invoice
Begin
	UPDATE CFA.tblChequeRegister SET ChqStatus=@ChqStatus,BlockedBy=@Addedby,LastUpdatedOn=GetDate() WHERE ChqRegId=@ChqRegId 
	insert into CFA.tblChqBlockedforInv(BranchId, CompId, BlockDate, StockistId, InvId, ChqRegId, ChqNo, BlockedBy, BlockedDate, InvAmt)
	select @BranchId, @CompId, GetDate(), @StockistId,  [value], @ChqRegId, @ChqNo, @Addedby, GetDate(), 0 from CFA.fn_StringSplit(@InvData,',') 
End
else if(isnull(@ChqStatus,0)=0)			---   Released
Begin
	if exists(select 1 from CFA.tblChequeRegister where ChqRegId=@ChqRegId and isnull(ChqStatus,0) in(0,1,9,3))
	Begin
		UPDATE CFA.tblChequeRegister SET ChqStatus=@ChqStatus, ReleasedRemark=@Remark, ReleasedBy=@Addedby,ReleasedDate=GetDate(),LastUpdatedOn=GetDate()  
		WHERE ChqRegId=@ChqRegId  
	
		delete from CFA.tblChqBlockedforInv where ChqRegId=@ChqRegId and BranchId=@BranchId and CompId=@CompId
		SET @RetVal=@ChqRegId
	End
	else
		SET @RetVal=-1
End
else if(isnull(@ChqStatus,0)=2)	--- Prepare/Printed
Begin
	UPDATE CFA.tblChequeRegister SET ChqStatus=@ChqStatus, PrintedBy=@Addedby, PrintedDate=GetDate(),LastUpdatedOn=GetDate()  
	WHERE ChqRegId=@ChqRegId 
End
else if(isnull(@ChqStatus,0)=3)	----     Discarded
Begin
	if exists(select 1 from CFA.tblChequeRegister where ChqRegId=@ChqRegId and isnull(ChqStatus,0) in(0,1,2,9,3))
	Begin
		UPDATE CFA.tblChequeRegister SET ChqStatus=@ChqStatus, DiscardedBy=@Addedby, DiscardedRemark=@Remark, DiscardedDate=GetDate(),LastUpdatedOn=GetDate()  
		WHERE ChqRegId=@ChqRegId 
		delete from CFA.tblChqBlockedforInv where ChqRegId=@ChqRegId and BranchId=@BranchId and CompId=@CompId
		SET @RetVal=@ChqRegId
	End
	else
		SET @RetVal=-1 
End

--- status 4 - Deposited by import data only...

else if(isnull(@ChqStatus,0)=5)		----    Returned
Begin
	UPDATE CFA.tblChequeRegister SET ChqStatus=@ChqStatus, ReturnedBy=@Addedby, ReturnedReasonId=@ReturnedReasonId, ReturnedRemark=@Remark, 
	ReturnedDate=@ReturnDate,LastUpdatedOn=GetDate()
	WHERE ChqRegId=@ChqRegId
End
else if(isnull(@ChqStatus,0)=8)		----    Settled
Begin
	UPDATE CFA.tblChequeRegister SET ChqStatus=@ChqStatus, SettledBy=@Addedby, SettledDate=getdate(), LastUpdatedOn=GetDate()  
	WHERE ChqRegId=@ChqRegId
End
else if(isnull (@chqStatus,0)=6) --- First Notice
Begin
	UPDATE CFA.tblChequeRegister SET ChqStatus=@ChqStatus, ReturnedRemark=@Remark,
	FirstNoticeDate=GETDATE() where ChqRegId=@ChqRegId
End
else if (isnull (@ChqStatus,0)=7) --- Legal Notice
Begin
	UPDATE CFA.tblChequeRegister SET ChqStatus=@ChqStatus,ReturnedRemark=@Remark,
	LegalNoticeDate=GETDATE() WHERE ChqRegId=@ChqRegId
END

else 
Begin
	SET @RetVal=-1
End

SET @RetVal=SCOPE_IDENTITY();  
END
GO
/****** Object:  StoredProcedure [CFA].[usp_CheuqeRegisterAdd]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_CheuqeRegisterAdd]
--declare
@BranchId int,
@CompId int,
@ChqReceivedDate datetime,
@StokistId int,
@BankId int,
@FromChqNo int,
@ToChqNo int,
@Addedby int,
@RetValue int output

--set @BranchId=1; set @CompId=1;set @ChqReceivedDate='2022-05-25';set @StokistId=30;set @FromChqNo=101;set @ToChqNo=105;set @Addedby=1;set @BankId=11
AS

BEGIN
	set @RetValue = 0

	if isnull(@ToChqNo,0)=0 set @ToChqNo=@FromChqNo
	declare @chqNo nvarchar(10)=''

	if exists(select ChqNo from CFA.tblChequeRegister where StokistId=@StokistId and BankId=@BankId and convert(int,chqno) between convert(int,@FromChqNo) and convert(int,@ToChqNo))
	begin 	set @RetValue=-1 end
	else
	Begin
	
		while(@FromChqNo<=@ToChqNo)
		Begin
	
			set @chqNo=''
			set @chqNo=REPLICATE('0',6-LEN(RTRIM(CONVERT(varchar(50),isnull(@FromChqNo,0))))) + CONVERT(varchar(50),(isnull(@FromChqNo,0)))

			insert into CFA.tblChequeRegister(BranchId, CompId, ChqReceivedDate, StokistId, StockistCity, BankId, IFSCCode, AccountNo, ChqNo, ChqStatus, Addedby, AddedOn)
			select @BranchId, @CompId, @ChqReceivedDate, @StokistId, s.CityCode, @BankId, b.IFSCCode, b.AccountNo, @chqNo, 0, @Addedby, getdate() 
			from CFA.tblStockistMaster s inner join CFA.tblStockiestBankDetails b on s.StockistId=b.StockistId
			where s.StockistId=@StokistId and b.BankId=@BankId
					
			set @RetValue=SCOPE_IDENTITY()
						
			set @FromChqNo=convert(int,@FromChqNo)+1	
		End	
	End
 --select  @RetValue
END
GO
/****** Object:  StoredProcedure [CFA].[usp_CheuqeRegisterCounts]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [CFA].[usp_CheuqeRegisterCounts]    Script Date: 12/15/2022 4:44:35 PM ******/

CREATE PROCEDURE [CFA].[usp_CheuqeRegisterCounts]
--declare
@BranchId int,
@CompId int,
@StockistId int
--set @BranchId=1; set @CompId=1; set @StockistId=0;

as

BEGIN
	if (isnull(@StockistId,0)>0)
	Begin
		SELECT  BranchId, CompId, StokistId, count(ChqNo) Total,
			sum(case when ChqStatus=0 then 1 else 0 end ) Blank,
			sum(case when ChqStatus=1 then 1 else 0 end ) Utilised,
			sum(case when ChqStatus=2 then 1 else 0 end ) Prepare,
			sum(case when ChqStatus=3 then 1 else 0 end ) Discarded,
			sum(case when ChqStatus=4 then 1 else 0 end ) Deposited,
			sum(case when ChqStatus=5 then 1 else 0 end ) Returned,
			sum(case when ChqStatus=8 then 1 else 0 end ) Settled
		FROM CFA.tblChequeRegister 		
		where BranchId=@BranchId and CompId=@CompId and (StokistId=@StockistId or isnull(@StockistId,0)=0)
		group by  BranchId, CompId, StokistId
	End
	Else
	Begin
		SELECT  BranchId, CompId, 0 StokistId, count(ChqNo) Total,
			sum(case when ChqStatus=0 then 1 else 0 end ) Blank,
			sum(case when ChqStatus=1 then 1 else 0 end ) Utilised,
			sum(case when ChqStatus=2 then 1 else 0 end ) Prepare,
			sum(case when ChqStatus=3 then 1 else 0 end ) Discarded,
			sum(case when ChqStatus=4 then 1 else 0 end ) Deposited,
			sum(case when ChqStatus=5 then 1 else 0 end ) Returned,
			sum(case when ChqStatus=8 then 1 else 0 end ) Settled
		FROM CFA.tblChequeRegister 
		where BranchId=@BranchId and CompId=@CompId
		group by  BranchId, CompId
	End
END
GO
/****** Object:  StoredProcedure [CFA].[usp_CheuqeRegisterEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_CheuqeRegisterEdit]
--declare
@ChqRegId bigint,
@BranchId int,
@CompId int,
@ChqReceivedDate datetime,
@StokistId int,
@BankId int,
@IFSCCode nvarchar(50), 
@AccountNo nvarchar(50),
@ChqNo nvarchar(10),
@Updatedby int,
@Action nvarchar(20),
@RetValue int output

--set @ChqRegId=1; set @BranchId=1; set @CompId=1;set @ChqReceivedDate='2022-05-25';set @StokistId=30;
--set @ChqNo=105;set @Updatedby=1;set @BankId=11 set @Action='EDIT'
AS

BEGIN
	set @RetValue = 0
	if(upper(@Action)='EDIT')
	Begin
		if exists(select ChqNo from CFA.tblChequeRegister where StokistId=@StokistId and BankId=@BankId and convert(int,chqno) = convert(int,@ChqNo) and ChqRegId<>@ChqRegId )
		begin 	
			set @RetValue=-1 
		end
		else
		Begin
			declare @chqNoNew nvarchar(10)=''
			set @chqNoNew=REPLICATE('0',6-LEN(RTRIM(CONVERT(varchar(50),isnull(@ChqNo,0))))) + CONVERT(varchar(50),(isnull(@ChqNo,0)))
			
			update CFA.tblChequeRegister 
			set ChqReceivedDate=@ChqReceivedDate,
				BankId=@BankId,
				IFSCCode=@IFSCCode,
				AccountNo=@AccountNo,
				ChqNo=@chqNoNew,
				Addedby=@Updatedby,
				LastUpdatedOn=getdate()
			where BranchId=@BranchId and CompId=@CompId and ChqRegId=@ChqRegId
							
			set @RetValue=@ChqRegId
		End
	End
	else if (upper(@Action)='DELETE')
	Begin
		if exists(select ChqNo from CFA.tblChequeRegister where ChqRegId=@ChqRegId and ChqStatus>0)
		begin 	
			set @RetValue=-1 
		end
		else
		Begin
			Delete from CFA.tblChequeRegister where ChqRegId=@ChqRegId
		End
	End
END
GO
/****** Object:  StoredProcedure [CFA].[usp_CheuqeRegisterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  
CREATE PROCEDURE [CFA].[usp_CheuqeRegisterList] 
--declare  
@BranchId int,  
@CompId int,  
@StockistId int  
--set @BranchId=1; set @CompId=1; set @StockistId=0;  
  
as  
BEGIN  
  
 SELECT  cq.ChqRegId, cq.BranchId, cq.CompId, cq.ChqReceivedDate, cq.StokistId, s.StockistNo, CFA.fn_CamelCase(s.StockistName) StockistName,   
  cq.StockistCity, CFA.fn_CamelCase(ct.CityName) CityName,   
  cq.BankId, CFA.fn_CamelCase(bnk.MasterName) AS BankName, cq.IFSCCode, cq.AccountNo, cq.ChqNo, cq.ChqStatus, sts.StatusText as ChqStatusText, cq.BlockedBy, cq.BlockedDate,   
  cq.DiscardedBy, cq.DiscardedDate, cq.DiscardedRemark, cq.ReleasedBy, cq.ReleasedDate, cq.ReleasedRemark, cq.PrintedBy,   
  cq.PrintedDate, cq.ChqAmount, cq.DepositedBy, cq.DepositedDate, cq.SettledBy, cq.SettledDate, cq.ReturnedBy, cq.ReturnedDate, cq.ReturnedReasonId, rm.MasterName as ReturnedReasonText,  
  cq.ReturnedRemark, cq.LastUpdatedOn, cq.BouncedChqAmtRevd, 
  datediff(day,cq.ReturnedDate,GETDATE()) AS date_difference ,cq.FirstNoticeDate,cq.LegalNoticeDate,
  ISNULL((CASE WHEN ((cq.ChqStatus = 5) and datediff( dd, cq.ReturnedDate,getdate())>=15) THEN 1 ELSE 0 END),0) IsFirstNoticeFlag,
  ISNULL((CASE WHEN ((cq.ChqStatus = 6) and datediff( dd, cq.FirstNoticeDate,getdate())>=30) THEN 1 ELSE 0 END),0) IsLegalNoticeFlag  
 FROM CFA.tblChequeRegister AS cq LEFT OUTER JOIN CFA.tblGeneralMaster AS bnk ON cq.BankId = bnk.pkId LEFT OUTER JOIN  
  CFA.tblStockistMaster AS s ON cq.StokistId = s.StockistId LEFT OUTER JOIN CFA.tblCityMaster AS ct ON cq.StockistCity = ct.CityCode  
  left outer join CFA.tblStatusMaster as sts on cq.ChqStatus = sts.id and sts.StatusFor='CHQ'  
  left outer join CFA.tblGeneralMaster rm on cq.ReturnedReasonId = rm.pkId  
 where cq.BranchId=@BranchId and cq.CompId=@CompId and (cq.StokistId=@StockistId or isnull(@StockistId,0)=0)  
END  
GO
/****** Object:  StoredProcedure [CFA].[usp_ChqDepoReceiptList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_ChqDepoReceiptList] 
--declare
@BranchId int,
@CompId	int
--set @BranchId=1 set @CompId=1
AS

BEGIN
	SELECT cq.BranchId, cq.CompId , cq.StokistId, s.StockistNo, s.StockistName, cq.DepositedDate, bk.MasterName as BankName, cq.AccountNo, 
		cq.ChqNo, cq.ChqRegId, cq.ChqAmount, cq.Addedby, cq.AddedOn
	FROM CFA.tblChequeRegister AS cq LEFT OUTER JOIN cfa.tblStockistMaster s on cq.StokistId =s.StockistId
		left outer join CFA.tblGeneralMaster bk on cq.BankId=bk.pkId
	WHERE cq.BranchId=@BranchId and cq.CompId=@CompId and cast(cq.DepositedDate as date)>=CAST(GETDATE()-5 as date)
	order by DepositedDate desc 
END


GO
/****** Object:  StoredProcedure [CFA].[Usp_ChqRegSummaryReport]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [CFA].[Usp_ChqRegSummaryReport]
@BranchId int,
@CompId int
as

SELECT cq.StokistId, st.StockistNo, st.StockistName, b.MasterName AS BankName, cq.BankId, cq.IFSCCode, cq.AccountNo, 
--cq.ChqStatus, s.StatusText ChqStatus, 
count(cq.ChqRegId) TotalChqCount,
sum(case when cq.ChqStatus=0 then 1 else 0 end) as BlankChqs,
sum(case when cq.ChqStatus=1 then 1 else 0 end) as UtilisedChqs,
sum(case when cq.ChqStatus=2 then 1 else 0 end) as PrepareChqs,
sum(case when cq.ChqStatus=3 then 1 else 0 end) as DiscardedChqs,
sum(case when cq.ChqStatus=4 then 1 else 0 end) as DepositedChqs,
sum(case when cq.ChqStatus=5 then 1 else 0 end) as ReturnedChqs,
sum(case when cq.ChqStatus=6 then 1 else 0 end) as SettledChqs
FROM CFA.tblChequeRegister AS cq INNER JOIN
CFA.tblStatusMaster AS s ON cq.ChqStatus = s.id and s.StatusFor='CHQ' left outer join
CFA.tblStockistMaster AS st on cq.StokistId=st.StockistId LEFT OUTER JOIN
CFA.tblStockiestBankDetails AS sb ON st.StockistId = sb.StockistId LEFT OUTER JOIN
CFA.tblGeneralMaster AS b ON sb.BankId = b.pkId 
where cq.BranchId=@BranchId and cq.CompId=@CompId
group by cq.StokistId, st.StockistNo, st.StockistName, b.MasterName, cq.BankId, cq.IFSCCode, cq.AccountNo 

 
GO
/****** Object:  StoredProcedure [CFA].[usp_ChqSummaryForMonthly]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_ChqSummaryForMonthly]
--DECLARE
@CompId INT,
@BranchId INT,
@FromDate DATETIME,
@ToDate DATETIME
--SET @CompId=0; SET @BranchId=0; SET @FromDate='2022-07-07'; SET @ToDate='2022-07-07';
AS
BEGIN
	SELECT ISNULL(i.CompId, 0) AS CompId,ISNULL(i.BranchId,0) AS BranchId,CFA.fn_CamelCase(cm.CompanyName) CompanyName,
	ISNULL(i.InvId, 0) AS InvId,ISNULL(i.InvNo,'') AS InvNo,
	i.InvCreatedDate,convert(datetime,'1900-01-01') DueDate,ISNULL(chq.ChqAmount, '') AS ChqAmount,ISNULL(chq.ChqNo, '') AS ChqNo,
	s.Emailid,
	--'anilshinde@aadyamconsultant.com' AS Emailid,
	 s.StockistNo, s.StockistName
	FROM CFA.tblInvoiceHeader i left outer join CFA.tblStockistMaster AS s on i.SoldTo_StokistId=s.StockistId
	inner join CFA.tblChqBlockedforInv chqInv on i.InvId=chqInv.InvId
	left outer join CFA.tblChequeRegister AS chq WITH (NOLOCK) on chqInv.ChqRegId=chq.ChqRegId
	INNER JOIN CFA.tblCompanyMaster cm ON i.CompId=cm.CompanyId
	WHERE (chq.CompId=@CompId OR @CompId=0) AND (chq.BranchId=@BranchId OR @BranchId=0)
	AND CAST(i.InvCreatedDate AS DATE)>=CAST(@FromDate AS DATE) AND CAST(i.InvCreatedDate AS DATE)<=CAST(@ToDate AS DATE)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_CityMastersAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_CityMastersAddEdit]  
--DECLARE   
@CityCode nvarchar(50), 
@StateCode nvarchar(50),  
@CityName nvarchar(100),  
@ActiveFlag char(1),  
@Action nvarchar(10),  
@Addedby nvarchar(50),  
@RetValue int output  
--SET @StateCode='MH';  --SET @CityName='Dapoli';  --SET @CityCode=90;  --SET @ActiveFlag ='Y';  --SET @Action = 'EDIT'    
  
AS  
BEGIN  
	set @RetValue = 0;  
	if (upper(ltrim(rtrim(@Action)))='ADD')  
	Begin  
		if not exists(select CityName from CFA.tblCityMaster where StateCode=@StateCode and CityName=@CityName)  
		Begin  
		select @CityCode=max(convert(int,citycode))+1 from CFA.tblCityMaster

			insert into CFA.tblCityMaster(CityCode,CityName,StateCode,ActiveFlag,LastUpdateBy,LastUpdateTime) 
			values(@CityCode,@CityName,@StateCode,'Y', @Addedby, getdate())  
			set @RetValue=SCOPE_IDENTITY()  
		End  
		else   
		Begin  
			set @RetValue=-1 -- City with StateCode with same City Name exists  
		End  
	End  
	else if (upper(ltrim(rtrim(@Action)))='EDIT')  
	Begin  
		if not exists(select CityName from CFA.tblCityMaster where StateCode=@StateCode and CityName=@CityName and CityCode<>@CityCode)  
		Begin 
			update CFA.tblCityMaster 
			set CityName=@CityName , 
				LastUpdateBy=@Addedby,
				LastUpdateTime=getdate()  
			where CityCode=@CityCode 
			set @RetValue=@CityCode 
		End
		Else
			 set @RetValue=-1
	End  
	else if (upper(ltrim(rtrim(@Action)))='STATUS')  
	Begin  
		update CFA.tblCityMaster set ActiveFlag=@ActiveFlag,LastUpdateTime=getdate() where  CityCode=@CityCode  
		set @RetValue=@CityCode  
	End  
	else  
	Begin  
		set @RetValue=-2  
	End   
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ClaimApproveAdd]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [CFA].[usp_ClaimApproveAdd]
--DECLARE
@TransitId BIGINT,
@BranchId INT,
@CompId INT,
@ClaimId INT,
@ClaimApproveBy NVARCHAR(200),
@ApproveClaimDate DATETIME,
@ClaimRemark NVARCHAR(200),
@RetValue INT OUTPUT
--SET @TransitId=1; SET @BranchId=1; SET @CompId=1; SET @ClaimId=7; SET @ClaimApproveBy='PRANITA'; SET ApproveClaimDate='2022-09-22';
--SET @ClaimRemark='Approve Claim';
AS
BEGIN
	set @RetValue=0
	IF EXISTS(SELECT TransitId FROM CFA.tblInsuranceClaim WHERE TransitId=@TransitId)
	BEGIN
		UPDATE CFA.tblInsuranceClaim SET ClaimApproveBy=@ClaimApproveBy,ApproveClaimDate=@ApproveClaimDate,ClaimRemark=@ClaimRemark,ClaimStatus='Claim Approved'
		WHERE BranchId=@BranchId AND CompId=@CompId AND ClaimId=@ClaimId AND TransitId=@TransitId
		SET @RetValue=@TransitId
	END
	ELSE
	BEGIN
		SET @RetValue=-1
	END
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ClaimSRSMapping]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
  
CREATE PROCEDURE [CFA].[usp_ClaimSRSMapping] ----Not in use 
--DECLARE  
@BranchId int,  
@CompId int,  
@LRIdGPId int,  
@SRSId varchar(max),  
@AddedBy int,  
@RetValue int output  
  
--SET @BranchId = 1;SET @CompId = 1;set @LRIdGPId = 3;SET @SRSId = '4,5,6'; set @AddedBy = 2  
AS  
BEGIN  
 set @RetValue=0   
   
 delete from CFA.tblClaimSRSMapping where LRIdGPId=@LRIdGPId and SRSId not in (select [value] from CFA.fn_StringSplit(@SRSId,','))  
  
 IF not exists(select SRSId from CFA.tblClaimSRSMapping where SRSId in (select [value] from CFA.fn_StringSplit(@SRSId,',')))  
  Begin    
   insert into CFA.tblClaimSRSMapping(BranchId,CompId,LRIdGPId,SRSId,AddedBy,AddedOn)  
   select @BranchId,@CompId,@LRIdGPId,[value],@AddedBy,GETDATE() from CFA.fn_StringSplit(@SRSId,',')  
   set @RetValue=SCOPE_IDENTITY()  
  end  
 else  
  set @RetValue=-1  
   
End  
GO
/****** Object:  StoredProcedure [CFA].[usp_CommissionInvAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [CFA].[usp_CommissionInvAddEdit]
--declare
@ComInvId	int,
@BranchId	int,
@CompanyId	int,
@InvDate	datetime,
@InvTypeId	int,
@Discription	nvarchar(1000),
@TaxId int,
@TaxableAmt	int,
@CGST	decimal(18, 2),
@SGST	decimal(18, 2),
@TotalAmt	decimal(18, 2),
@Addedby	nvarchar(50),
@Action	nvarchar(20),
@RetValue int OUTPUT

as
BEGIN
set @RetValue=0
	If(@Action='ADD')
	Begin
		declare @InvoiceNo nvarchar(20); declare @tbl table(InvNoNew nvarchar(20))
		insert into @tbl (InvNoNew) exec CFA.usp_GetCommInvNo @BranchId,@InvDate
		select @InvoiceNo=InvNoNew from @tbl 
		Print @InvoiceNo 
		if (@CompanyId>0 and @InvTypeId>0 and @TaxableAmt>0 )
		Begin
			insert into CFA.tblCommssionInv(BranchId,CompanyId,InvNo,InvDate,InvTypeId,Discription,TaxId,TaxableAmt,
				CGST,SGST,TotalAmt,Addedby,AddedOn,LastUpdatedOn)
			values (@BranchId,@CompanyId,@InvoiceNo,@InvDate,@InvTypeId,@Discription,@TaxId,@TaxableAmt,
				@CGST,@SGST,@TotalAmt,@Addedby,getdate(),getdate())
			set @RetValue=SCOPE_IDENTITY()	
		End
		else
			set @RetValue=-1
	End
	If(@Action='EDIT')
	Begin
		if (@CompanyId>0 and @InvTypeId>0 and @TaxableAmt>0 )
		Begin
			if exists(select ComInvId from CFA.tblCommssionInv where  ComInvId = @ComInvId)
			Begin
				Update CFA.tblCommssionInv 
				set CompanyId = @CompanyId,
					InvDate = @InvDate,
					InvTypeId = @InvTypeId,
					Discription = @Discription,
					TaxId=@TaxId,
					TaxableAmt = @TaxableAmt,
					CGST=@CGST,
					SGST=@SGST,
					TotalAmt=@TotalAmt,
					LastUpdatedOn = GETDATE()
				 where ComInvId=@ComInvId
				set @RetValue=@ComInvId
			End
			else
				set @RetValue=-1
		End
			set @RetValue=-1
	End
	If(@Action='DELETE')
	Begin
		if not exists(select ComInvId from CFA.tblCommissionInvPaymentDtls where ComInvId=@ComInvId)
		Begin
			Delete from CFA.tblCommssionInv where ComInvId=@ComInvId
			set @RetValue=@ComInvId
		End
		else
			set @RetValue=-1
	End
END
GO
/****** Object:  StoredProcedure [CFA].[usp_CommissionInvList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [CFA].[usp_CommissionInvList] 
--declare
@BranchId	int
as

BEGIN
	SELECT i.ComInvId, i.BranchId, i.CompanyId, i.InvNo, i.InvDate, i.InvTypeId, g.MasterName InvType,
		i.Discription,i.TaxId,t.GSTType, i.TaxableAmt, i.CGST, i.SGST, i.TotalAmt, i.Addedby, i.AddedOn, i.LastUpdatedOn, 
		c.CompanyCode, c.CompanyName, c.CompanyCity, cm.CityName, c.CompanyAddress, SUM(p.PaymentAmt) AS PaymentAmt
	FROM CFA.tblCommssionInv AS i WITH (nolock) 
		INNER JOIN CFA.tblCompanyMaster AS c WITH (nolock) ON i.CompanyId = c.CompanyId 
		LEFT OUTER JOIN CFA.tblCityMaster AS cm ON c.CompanyCity = cm.CityCode 
		LEFT OUTER JOIN CFA.tblCommissionInvPaymentDtls AS p WITH (nolock) ON i.ComInvId = p.ComInvId 
		LEFT OUTER JOIN CFA.tblGeneralMaster AS g WITH (nolock) ON i.InvTypeId = g.pkId
		LEFT OUTER Join CFA.tblTAXMaster AS t WITH (nolock) ON i.TaxId = t.TaxId
	WHERE i.BranchId = @BranchId  
	GROUP BY i.ComInvId, i.BranchId, i.CompanyId, i.InvNo, i.InvDate, i.InvTypeId, g.MasterName, i.Discription,i.TaxId,t.GSTType, i.TaxableAmt, 
		i.CGST, i.SGST, i.TotalAmt, i.Addedby, i.AddedOn, i.LastUpdatedOn, c.CompanyCode, c.CompanyName, c.CompanyCity, cm.CityName, c.CompanyAddress 
END
GO
/****** Object:  StoredProcedure [CFA].[usp_CommissionInvPaymentDtlsAdd]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [CFA].[usp_CommissionInvPaymentDtlsAdd]
--declare
@ComInvPaymentId int,
@ComInvId int,
@PaymentDate datetime,
@TDSAmt	float,
@PaymentAmt	float,
@PaymentModeId int,
@UTRNo int,
@Remark	nvarchar(200),
@Addedby nvarchar(20),
@Action	nvarchar(20),
@RetValue int OUTPUT

as
BEGIN
set @RetValue=0
	If(@Action='ADD')
	Begin
		if (@PaymentAmt>0 and @ComInvId>0)
		Begin
			insert into CFA.tblCommissionInvPaymentDtls(ComInvId,PaymentDate,TDSAmt,PaymentAmt,PaymentModeId,UTRNo,Remark,Addedby,LastUpdatedOn)
			values (@ComInvId,@PaymentDate,@TDSAmt,@PaymentAmt,@PaymentModeId,@UTRNo,@Remark,@Addedby,getdate())
			set @RetValue=SCOPE_IDENTITY()	
		End
		else
			set @RetValue=-1
	End
	If(@Action='DELETE')
	Begin
		Delete from CFA.tblCommissionInvPaymentDtls where ComInvPaymentId=@ComInvPaymentId
		set @RetValue=@ComInvPaymentId
	End
END

GO
/****** Object:  StoredProcedure [CFA].[usp_CommissionInvPaymentDtlsList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [CFA].[usp_CommissionInvPaymentDtlsList]
--declare
@ComInvId int

AS

BEGIN
	SELECT i.InvNo, p.ComInvPaymentId, p.ComInvId, p.PaymentDate, p.TDSAmt, p.PaymentAmt, p.PaymentModeId, 
	g.MasterName as PaymentModeText, p.Remark,p.UTRNo
	FROM CFA.tblCommissionInvPaymentDtls AS p WITH (nolock) inner join CFA.tblCommssionInv i WITH (nolock) on p.ComInvId=i.ComInvId
		LEFT OUTER JOIN CFA.tblGeneralMaster AS g WITH (nolock) ON p.PaymentModeId = g.pkId
	WHERE p.ComInvId=@ComInvId 
END
GO
/****** Object:  StoredProcedure [CFA].[usp_CompanyBranchRelationAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_CompanyBranchRelationAddEdit]
--DECLARE
@CompanyId varchar(max),
@BranchId int,
@AddedBy int,
@RetValue int output
--set @CompanyId='1,2,4'; set @BranchId=1; set @AddedBy='1';
AS
BEGIN
	set @RetValue=0
	-- Delete unticked first
	delete from CFA.tblCompanyBranchRelation 
	where BranchId=@BranchId and CompanyId not in (select [value] from CFA.fn_StringSplit(@CompanyId,','))
	
	-- Insert new ticked old ticked are already added
	if exists(SELECT [value] from CFA.fn_StringSplit(@CompanyId,',') tn
		left outer join CFA.tblCompanyBranchRelation br on tn.[value]=br.CompanyId and  br.BranchId=@BranchId
		where br.CompanyId is null)
	begin
		insert into CFA.tblCompanyBranchRelation(BranchId,CompanyId,AddedBy,AddedDate,LastUpdatedDate)
		select @BranchId,[value],@AddedBy,getdate(),getdate() from CFA.fn_StringSplit(@CompanyId,',') a 
		left outer join CFA.tblCompanyBranchRelation br on a.[value]=br.CompanyId and  br.BranchId=@BranchId
		where br.CompanyId is null
		set @RetValue = SCOPE_IDENTITY()
	end
	else
	begin
		set @RetValue=1
	end

	select @RetValue as RetValue, @BranchId as BranchId

END
GO
/****** Object:  StoredProcedure [CFA].[usp_CompanyBranchRelationList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_CompanyBranchRelationList]
@BranchId int

AS
BEGIN
	SELECT c.PkId,c.CompanyId,ct.CompanyCode,ct.CompanyName,c.BranchId,bm.BranchCode,bm.BranchName,c.AddedBy, c.AddedDate, c.LastUpdatedDate
	 FROM CFA.tblCompanyBranchRelation as c LEFT OUTER JOIN CFA.tblCompanyMaster AS ct ON c.CompanyId = ct.CompanyId
	 LEFT OUTER JOIN CFA.tblBranchMaster AS bm ON c.BranchId = bm.BranchId
	 where (c.BranchId=@BranchId or ISNULL(@BranchId,0)= 0)

END
GO
/****** Object:  StoredProcedure [CFA].[usp_CompanyMasterAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_CompanyMasterAddEdit]
@CompanyId	int,
@CompanyCode	nvarchar(50),
@CompanyName	nvarchar(50),
@CompanyEmail	nvarchar(200),
@ContactNo	nvarchar(50),
@CompanyAddress	nvarchar(250),
@CompanyCity	nvarchar(50),
@Pin	varchar(10),
@CompanyPAN	nvarchar(10),
@GSTNo	nvarchar(50),
@IsPicklistAvailable	bit,
@IsActive	char(1),
@Addedby	nvarchar(50),
@Action	nvarchar(10),
@RetValue	int output

AS
BEGIN
	set @RetValue=0
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin
		if not exists(select CompanyId from CFA.tblCompanyMaster where CompanyCode=@CompanyCode and CompanyName=@CompanyName)
		Begin
			insert into CFA.tblCompanyMaster(CompanyCode, CompanyName, CompanyEmail, ContactNo, CompanyAddress, CompanyCity, Pin, 
				CompanyPAN, GSTNo, IsPicklistAvailable, IsActive, Addedby, AddedOn, LastUpdatedOn) 
			values(@CompanyCode, @CompanyName, @CompanyEmail, @ContactNo, @CompanyAddress, @CompanyCity, @Pin, 
				@CompanyPAN, @GSTNo, @IsPicklistAvailable, 'Y', @Addedby, getdate(), getdate())
				set @RetValue=SCOPE_IDENTITY()
		End
		else 
		Begin
			set @RetValue=-1	-- Company with CompanyCode and name exists
		End
	End
	else if (upper(ltrim(rtrim(@Action)))='EDIT')
	Begin
		if not exists(select CompanyId from CFA.tblCompanyMaster where CompanyCode=@CompanyCode and CompanyName=@CompanyName and CompanyId<>@CompanyId)
		Begin
			update CFA.tblCompanyMaster 
			set CompanyCode=@CompanyCode,
				CompanyName=@CompanyName,
				CompanyEmail=@CompanyEmail,
				ContactNo=@ContactNo,
				CompanyAddress=@CompanyAddress,
				CompanyCity=@CompanyCity,
				Pin=@Pin,
				CompanyPAN=@CompanyPAN,
				GSTNo=@GSTNo,
				IsPicklistAvailable=@IsPicklistAvailable,
				Addedby=@Addedby,
				LastUpdatedOn=GETDATE()
			 where CompanyId=@CompanyId

			set @RetValue=@CompanyId
		End
		else 
		Begin
			set @RetValue=-1	-- Company with CompanyCode and name exists
		End
	End
	else if (upper(ltrim(rtrim(@Action)))='STATUS')
	Begin
		update CFA.tblCompanyMaster set IsActive=@IsActive, LastUpdatedOn=GETDATE() where  CompanyId=@CompanyId
		set @RetValue=@CompanyId
	End
	else
	Begin
		set @RetValue=-2
	End	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_CompanyMasterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_CompanyMasterList]
@Status varchar(10)

as
BEGIN
SELECT c.CompanyId, c.CompanyCode, cfa.fn_CamelCase(c.CompanyName) CompanyName, c.CompanyEmail, c.ContactNo, 
cfa.fn_CamelCase(c.CompanyAddress) CompanyAddress, c.CompanyCity, cfa.fn_CamelCase(ct.CityName) CityName, 
c.Pin, upper(c.CompanyPAN) CompanyPAN, upper(c.GSTNo) GSTNo, c.IsPicklistAvailable, c.IsActive, c.Addedby, c.AddedOn, c.LastUpdatedOn
FROM CFA.tblCompanyMaster AS c LEFT OUTER JOIN CFA.tblCityMaster AS ct ON c.CompanyCity = ct.CityCode 
where (upper(IsActive)=upper(@Status) or upper(@Status)='ALL')
order by c.CompanyName
END
GO
/****** Object:  StoredProcedure [CFA].[usp_CompanyMasterListByBranchId]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_CompanyMasterListByBranchId]
@BranchId int,
@Status nvarchar(10)

AS

BEGIN
	SELECT c.CompanyId, cfa.fn_CamelCase(c.CompanyCode) CompanyCode, cfa.fn_CamelCase(c.CompanyName) CompanyName,
	case when isnull(cb.BranchId,0) =@BranchId then 1 else 0 end Checked
	FROM CFA.tblCompanyMaster AS c left outer join CFA.tblCompanyBranchRelation cb on c.CompanyId =cb.CompanyId and cb.BranchId =@BranchId
	WHERE ( UPPER(c.IsActive) = UPPER(@Status) OR UPPER(@Status) = 'ALL')
	order by checked desc,c.CompanyName
END



GO
/****** Object:  StoredProcedure [CFA].[usp_CompanyVendorRelationAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_CompanyVendorRelationAddEdit]
--DECLARE
@VendorId varchar(max),
@CompanyId int,
@AddedBy int,
@RetValue int output
--SET  @VendorId='1,2,3,4' set  @CompanyId=2 set @AddedBy='1' 
AS
BEGIN
	set @RetValue=0
	-- Delete unticked first
	delete from CFA.tblCompanyVendorMapping
	where CompanyId=@CompanyId and VendorId not in (select [value] from CFA.fn_StringSplit(@VendorId,','))

	-- Insert new ticked old ticked are already added
	if exists(SELECT [value] from CFA.fn_StringSplit(@VendorId,',') a
		left outer join CFA.tblCompanyVendorMapping br on a.[value]=br.VendorId and br.CompanyId=@CompanyId
		where br.VendorId is null)
	begin
		insert into CFA.tblCompanyVendorMapping(CompanyId,VendorId,AddedBy,AddedDate,LastUpdatedDate)
		select @CompanyId,[value],@AddedBy,getdate(),getdate()from CFA.fn_StringSplit(@VendorId,',') a
		left outer join CFA.tblCompanyVendorMapping br on a.[value]=br.VendorId and br.CompanyId=@CompanyId
		where br.VendorId is null
		set @RetValue = SCOPE_IDENTITY()
	end
	else
	begin
		set @RetValue=1
	end

	select @RetValue as RetValue, @CompanyId as CompanyId
END



GO
/****** Object:  StoredProcedure [CFA].[usp_CourierMasterAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [CFA].[usp_CourierMasterAddEdit]
@CourierId	int,
@BranchId	int,
@CourierName	nvarchar(100),
@CourierEmail	nvarchar(250),
@CourierMobNo	nvarchar(30),
@CourierAddress	nvarchar(250),
@CityCode	nvarchar(20),
@StateCode	nvarchar(20),
@DistrictCode	varchar(MAX),
@RatePerBox int,
@IsActive	char(1),
@Addedby	nvarchar(50),
@Action	nvarchar(10),
@RetValue	int output

AS

BEGIN
	set @RetValue=0
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin
		if not exists(select CourierId from CFA.tblCourierMaster where CourierName=@CourierName)
		Begin
			insert into CFA.tblCourierMaster(BranchId, CourierName, CourierEmail, CourierMobNo, CourierAddress, 
			CityCode, StateCode, DistrictCode,RatePerBox, IsActive, Addedby, AddedOn, LastUpdatedOn)
			values(@BranchId, @CourierName, @CourierEmail, @CourierMobNo, @CourierAddress, 
			@CityCode, @StateCode, @DistrictCode,@RatePerBox, 'Y', @Addedby, getdate(), getdate())
				
			set @RetValue=SCOPE_IDENTITY()
		End
		else 
			set @RetValue=-1	-- Courier with same code
	End
	else if (upper(ltrim(rtrim(@Action)))='EDIT')
	Begin
		if not exists(select CourierId from CFA.tblCourierMaster where CourierName=@CourierName and CourierId<>@CourierId)
		Begin
			update CFA.tblCourierMaster
			set BranchId=@BranchId,
				CourierName=@CourierName,
				CourierEmail=@CourierEmail,
				CourierMobNo=@CourierMobNo,
				CourierAddress=@CourierAddress,
				CityCode=@CityCode,
				StateCode=@StateCode,
				DistrictCode=@DistrictCode,
				RatePerBox=@RatePerBox,
				Addedby=@Addedby,
				LastUpdatedOn=getdate()
			where CourierId=@CourierId
			
			set @RetValue=@CourierId
		End
		else 
		Begin
			set @RetValue=-1	-- Branch with samecode or name exists
		End
	End
	else if (upper(ltrim(rtrim(@Action)))='STATUS')
	Begin
		update CFA.tblCourierMaster set IsActive=@IsActive, LastUpdatedOn=getdate() where CourierId=@CourierId
		set @RetValue=@CourierId
	End
	else
	Begin
		set @RetValue=-2
	End	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_CourierMasterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--[CFA].[usp_CourierMasterList] 0, 'ALL','ALL'
CREATE PROCEDURE [CFA].[usp_CourierMasterList]
--declare
@BranchId INT,
@DistrictCode nvarchar(20),
@Status	nvarchar(10)

AS

BEGIN
	SELECT t.CourierId, t.BranchId, br.BranchName,cfa.fn_CamelCase(t.CourierName) CourierName, t.CourierEmail, t.CourierMobNo, 
	cfa.fn_CamelCase(t.CourierAddress) CourierAddress, t.CityCode, cfa.fn_CamelCase(ct.CityName) CityName, t.StateCode, 
	cfa.fn_CamelCase(st.StateName) StateName, t.DistrictCode,t.RatePerBox, t.IsActive, t.Addedby, 
	t.AddedOn, t.LastUpdatedOn, cfa.fn_CamelCase(dt.DistrictName) DistrictName, u.DisplayName
	FROM CFA.tblCourierMaster AS t LEFT OUTER JOIN CFA.tblStateMaster AS st ON t.StateCode = st.StateCode LEFT OUTER JOIN
	CFA.tblCityMaster AS ct ON t.CityCode = ct.CityCode LEFT OUTER JOIN CFA.tbldistrictMaster AS dt ON t.DistrictCode = dt.DistrictCode
	 LEFT OUTER JOIN [CFA].[tblBranchMaster] AS br ON t.BranchId = br.BranchId left outer join
	 CFA.tblUser as u ON u.UserId=t.Addedby
	WHERE (UPPER(t.IsActive) = UPPER(@Status) OR UPPER(@Status) = 'ALL') 
	and (t.BranchId=@BranchId OR @BranchId=0) AND (t.DistrictCode = @DistrictCode or isnull(@DistrictCode,'ALL')='ALL')
END
GO
/****** Object:  StoredProcedure [CFA].[usp_CourierParentAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_CourierParentAddEdit]
@Cpid INT,
@BranchId INT,
@ParentCourierName nvarchar(100),
@ParentCourierEmail nvarchar(50),
@ParentCourierMobNo nvarchar(30),
@IsTDS char(1),
@TDSPer INT,
@IsGST char(1),
@GSTNumber nvarchar(30),
@IsActive char(1),
@Addedby nvarchar(50),
@Action	nvarchar(10),
@RetValue int output
AS
BEGIN
	set @RetValue=0
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin
		insert into CFA.tblCourierParentMst(BranchId, ParentCourierName, ParentCourierEmail, ParentCourierMobNo,IsTDS,TDSPer,IsGST, GSTNumber,IsActive, Addedby, AddedOn, LastUpdatedOn)
		values(@BranchId,@ParentCourierName, @ParentCourierEmail, @ParentCourierMobNo,@IsTDS,@TDSPer,@IsGST, @GSTNumber,'Y',@Addedby, getdate(), getdate())

		set @RetValue=SCOPE_IDENTITY()
	END
	else if (upper(ltrim(rtrim(@Action)))='EDIT')
	Begin
		if not exists(select Cpid from CFA.tblCourierParentMst where Cpid=@Cpid and Cpid<>@Cpid)
		Begin
		update CFA.tblCourierParentMst
		set ParentCourierName=@ParentCourierName,
			ParentCourierEmail=@ParentCourierEmail,
			ParentCourierMobNo=@ParentCourierMobNo,
			IsTDS=@IsTDS,
			TDSPer=@TDSPer,
			IsGST=@IsGST,
			GSTNumber=@GSTNumber,
			Addedby=@Addedby,
			LastUpdatedOn=getdate()
			where Cpid=@Cpid

			set @RetValue=@Cpid
		End
		else
		Begin
			set @RetValue=-1	-- Branch with samecode or name exists
		End
	End
	else if (upper(ltrim(rtrim(@Action)))='STATUS')
	Begin
		update CFA.tblCourierParentMst set IsActive=@IsActive, LastUpdatedOn=getdate() where Cpid=@Cpid
		set @RetValue=@Cpid
	End
	else
	Begin
		set @RetValue=-2
	End	
END

GO
/****** Object:  StoredProcedure [CFA].[usp_CourierParentMappingAdd]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_CourierParentMappingAdd]
--declare
@BranchId INT,
@CPid INT,
@CourierId VARCHAR(Max),
@Addedby NVARCHAR(50),
@RetValue int output
--set @BranchId=1;set @CPid=1;set @Addedby=1;set @CourierId='32,70,69,33,16'
AS
BEGIN
	
	SET @RetValue=0
    -- Delete unticked first
	delete from CFA.tblCourierParentMapping
	where BranchId=@BranchId and CPid=@CPid and CourierId not in (select [value] from CFA.fn_StringSplit(@CourierId,','))

	-- Insert new ticked old ticked are already added
	if exists(SELECT [value] from CFA.fn_StringSplit(@CourierId,',') tn
		left outer join CFA.tblCourierParentMapping cpm on tn.[value]=cpm.CourierId and cpm.BranchId=@BranchId
		where cpm.CourierId is null)
	Begin	
		insert into CFA.tblCourierParentMapping(BranchId,CPid,CourierId,Addedby,AddedOn,LastUpdatedOn)
		SELECT @BranchId,@CPid,[value],@Addedby,GETDATE(),GETDATE() from CFA.fn_StringSplit(@CourierId,',')	tn
		left outer join CFA.tblCourierParentMapping cpm on tn.[value]=cpm.CourierId and cpm.BranchId=@BranchId
		where cpm.CourierId is null 
		set @RetValue = SCOPE_IDENTITY()
	End
	else
	begin
		set @RetValue=1
	end

	select @RetValue as RetValue, @BranchId as BranchId

END
GO
/****** Object:  StoredProcedure [CFA].[usp_CreditNoteList_DestructionDue]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_CreditNoteList_DestructionDue]
@BranchId int,
@compId Int

as

BEGIN
	select cn.CNId, cn.CrDrNoteNo,cn.CRDRCreationDate,cn.CrDrAmt,cn.StockiestId, stk.StockistNo,stk.StockistName,
	stk.CityCode,ct.CityName,cn.SalesOrderNo,cn.SalesOrderDate,cn.OrderReason,cn.LRNo,cn.LRDate,
	cn.BranchId,cn.CompId,cn.DestrCertFile
	from CFA.tblCNHeader cn left outer join CFA.tblStockistMaster stk on cn.StockiestId=stk.StockistId 
	left outer join CFA.tblCityMaster ct on stk.CityCode=ct.CityCode
	where cn.BranchId=@BranchId and cn.compid=@compId and cn.DestrCertFile is not null
END
GO
/****** Object:  StoredProcedure [CFA].[usp_CreditNoteList_UploadDestruction]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_CreditNoteList_UploadDestruction]
@BranchId int,
@compId Int

as

BEGIN
	select cn.CNId, cn.CrDrNoteNo,cn.CRDRCreationDate,cn.CrDrAmt,cn.StockiestId, stk.StockistNo,stk.StockistName,
	stk.CityCode,ct.CityName,cn.SalesOrderNo,cn.SalesOrderDate,cn.OrderReason,cn.LRNo,cn.LRDate,
	cn.BranchId,cn.CompId,cn.DestrCertFile
	from CFA.tblCNHeader cn left outer join CFA.tblStockistMaster stk on cn.StockiestId=stk.StockistId 
	left outer join CFA.tblCityMaster ct on stk.CityCode=ct.CityCode
	where cn.BranchId=@BranchId and cn.compid=@compId and cn.DestrCertFile is null
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashboardInvoiceHeaderList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_DashboardInvoiceHeaderList]
--DECLARE
@BranchId INT,
@CompId	INT
--SET @BranchId=1; SET @CompId=1; 
AS
BEGIN 

	 SELECT i.InvId,i.InvNo,i.InvCreatedDate,i.NoOfBox,i.IsColdStorage,i.InvAmount,i.IsStockTransfer,i.InvStatus,i.PackedDate,i.PackedBy,i.AddedOn,i.ReadyToDispatchDate,
	 sm.StockistId,sm.StockistNo,sm.StockistName,asm.InvoiceId,asm.LastUpdatedDate,asm.LRNo,asm.LRDate,asm.LRBox,asm.TransportModeId
	 FROM CFA.tblInvoiceHeader AS i LEFT OUTER JOIN 
		CFA.tblStockistMaster AS sm ON sm.StockistId = i.SoldTo_StokistId LEFT OUTER JOIN
		(
		SELECT DISTINCT a.InvoiceId, a.TransportModeId,a.LRDate,a.LRBox,a.LRNo,a.LastUpdatedDate
		FROM CFA.tblInvoiceHeader i WITH (NOLOCK) inner join --LEFT OUTER JOIN (OLD)
		CFA.tblAssignTransportMode a WITH (NOLOCK) ON i.InvId=a.InvoiceId
		WHERE (i.InvStatus not in (8,9,20) or CAST(i.InvCreatedDate AS DATE) =CAST(GETDATE() AS DATE))
		) asm ON i.InvId=asm.InvoiceId 
	 WHERE (i.BranchId=@BranchId OR @BranchId=0) AND (i.CompId=@CompId or @CompId=0)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordChequeRegCnt]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- CFA.usp_DashbordChequeRegCnt 1,2,'2023-01-01','2023-04-18'
Create PROC [CFA].[usp_DashbordChequeRegCnt]
--declare
@BranchId INT,
@CompId INT,
@FromDate Datetime,
@ToDate Datetime
--set @BranchId=1 set @CompId=2 SET @FromDate='2023-01-01'; SET @ToDate='2023-04-18';

AS

BEGIN
	SET FMTONLY OFF
	declare @OSDt datetime, @OverDueStk int
	select @OSDt=max(OSDate) from CFA.tblStkOutStanding where (BranchId=@BranchId OR @BranchId=0) AND (CompId=@CompId OR @CompId=0)

	select @OverDueStk=count(distinct StockistId) from CFA.tblStkOutStanding o 
	where (o.BranchId=@BranchId OR @BranchId=0) AND (o.CompId=@CompId OR @CompId=0) 
	and CAST(osdate as date) = cast(@OSDt as date) and o.OverdueAmt>0

	SELECT 
		ISNULL(sum(CASE WHEN ((cr.ChqStatus = 5) and CAST(cr.ReturnedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)) THEN 1 ELSE 0 END),0) TotalBounce,
		ISNULL(sum(CASE WHEN ((cr.ChqStatus = 6) and CAST(cr.FirstNoticeDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)) THEN 1 ELSE 0 END),0) TotalFirstNotice,
		ISNULL(sum(CASE WHEN ((cr.ChqStatus = 7) and CAST(cr.LegalNoticeDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)) THEN 1 ELSE 0 END),0) TotalLegalNotice,
		ISNULL(sum(CASE WHEN ((cr.ChqStatus = 4) AND (cast(cr.DepositedDate AS DATE) =cast(getdate() AS DATE))) THEN 1 ELSE 0 END),0) TodayDeposited,
		ISNULL(sum(CASE WHEN ((cr.ChqStatus = 4) AND CAST(cr.DepositedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)) THEN 1 ELSE 0 END),0) DepositedMonth ,
		ISNULL(sum(CASE WHEN ((cr.ChqStatus = 4) AND cast(cr.DepositedDate AS DATE) =cast(getdate() AS DATE)) THEN 1 ELSE 0 END),0) DealyDeposited, --TBD
		ISNULL(@OverDueStk,0) Overduestk
	FROM CFA.tblChequeRegister AS cr left outer join CFA.tblStockistOSDataImport as os ON cr.ChqNo=os.ChqNo
	where (cr.BranchId=@BranchId OR @BranchId=0) AND (cr.CompId=@CompId OR @CompId=0)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordChequeRegCntNew]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- CFA.usp_DashbordChequeRegCntNew 1,1 
CREATE PROC [CFA].[usp_DashbordChequeRegCntNew]
--declare
@BranchId INT,
@CompId INT
--set @BranchId=1 set @CompId=2 
AS

BEGIN
	SET FMTONLY OFF
	declare @OSDt datetime, @OverDueStk int,@OverDueAmt nvarchar(20)
	select @OSDt=max(OSDate) from CFA.tblStkOutStanding where (BranchId=@BranchId OR @BranchId=0) AND (CompId=@CompId OR @CompId=0)

	select 
	@OverDueStk=s.OverDueStk,
	@OverDueAmt = s.OverdueAmt
	from (select count(distinct StockistId)OverDueStk,ISNULL(SUM(OverdueAmt),0)OverdueAmt from CFA.tblStkOutStanding  
	where (BranchId=@BranchId OR @BranchId=0) AND (CompId=@CompId OR @CompId=0) 
	and CAST(osdate as date) = cast(@OSDt as date) and OverdueAmt>0)as s

	declare @SOMDt datetime, @CummDiposited INT=0
	set @SOMDt= convert(varchar(4),datepart(yyyy, getdate()))+'-'+ convert(varchar(2),datepart(MM, getdate()))+'-01'
	print @SOMDt

	SELECT @CummDiposited=(select count(ChqRegId) from  CFA.tblChequeRegister cq WITH (NOLOCK) 
	where  (cq.BranchId=@BranchId or @BranchId=0 ) and (cq.CompId=@CompId or @CompId=0) 
	and (CAST(cq.DepositedDate AS DATE) between cast(@SOMDt as date) AND cast(getdate() as date)))

	SELECT 
		ISNULL(sum(CASE WHEN ((cr.ChqStatus = 5) and CAST(cr.ReturnedDate AS DATE) = cast(getdate() as date)) THEN 1 ELSE 0 END),0) TodayBounce,
		ISNULL(sum(CASE WHEN (cr.ChqStatus = 5) THEN 1 ELSE 0 END),0) TotalBounce,
		ISNULL(sum(CASE WHEN ((cr.ChqStatus = 5) and datediff( dd, cr.ReturnedDate,getdate())>=12) THEN 1 ELSE 0 END),0) DueforFirstNotice,
		ISNULL(sum(CASE WHEN ((cr.ChqStatus = 6) and datediff( dd, cr.FirstNoticeDate,getdate())>=27) THEN 1 ELSE 0 END),0) DueforLegalNotice,
		ISNULL(sum(CASE WHEN ((cr.ChqStatus = 4) AND (cast(cr.DepositedDate AS DATE) =cast(getdate() AS DATE))) THEN 1 ELSE 0 END),0) TodayDeposited,
		ISNULL(@OverDueStk,0) Overduestk,
		ISNULL(@OverDueAmt,0)OverDueAmt,
		ISNULL(@CummDiposited,0)CummDiposited
	FROM CFA.tblChequeRegister AS cr 
	where (cr.BranchId=@BranchId OR @BranchId=0) AND (cr.CompId=@CompId OR @CompId=0)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordChequeRegList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
  
CREATE PROCEDURE [CFA].[usp_DashbordChequeRegList]  
--declare  
@BranchId int,  
@CompId int,  
@FromDate datetime,  
@ToDate datetime
--set @BranchId=1; set @CompId=1; set @StockistId=0;  
  
as  
BEGIN  
  
 SELECT  cq.ChqRegId, cq.BranchId, cq.CompId, cq.ChqReceivedDate, cq.StokistId, s.StockistNo, CFA.fn_CamelCase(s.StockistName) StockistName,   
  cq.StockistCity, CFA.fn_CamelCase(ct.CityName) CityName,   
  cq.BankId, CFA.fn_CamelCase(bnk.MasterName) AS BankName, cq.IFSCCode, cq.AccountNo, cq.ChqNo, cq.ChqStatus, sts.StatusText as ChqStatusText, cq.BlockedBy, cq.BlockedDate,   
  cq.DiscardedBy, cq.DiscardedDate, cq.DiscardedRemark, cq.ReleasedBy, cq.ReleasedDate, cq.ReleasedRemark, cq.PrintedBy,   
  cq.PrintedDate, cq.ChqAmount, cq.DepositedBy, cq.DepositedDate, cq.SettledBy, cq.SettledDate, cq.ReturnedBy, cq.ReturnedDate, cq.ReturnedReasonId, rm.MasterName as ReturnedReasonText,  
  cq.ReturnedRemark, cq.LastUpdatedOn, cq.BouncedChqAmtRevd, datediff(day,cq.ReturnedDate,GETDATE()) AS date_difference ,cq.FirstNoticeDate,cq.LegalNoticeDate  
 FROM CFA.tblChequeRegister AS cq LEFT OUTER JOIN CFA.tblGeneralMaster AS bnk ON cq.BankId = bnk.pkId LEFT OUTER JOIN  
  CFA.tblStockistMaster AS s ON cq.StokistId = s.StockistId LEFT OUTER JOIN CFA.tblCityMaster AS ct ON cq.StockistCity = ct.CityCode  
  left outer join CFA.tblStatusMaster as sts on cq.ChqStatus = sts.id and sts.StatusFor='CHQ'  
  left outer join CFA.tblGeneralMaster rm on cq.ReturnedReasonId = rm.pkId  
 where (cq.BranchId=@BranchId OR @BranchId=0) AND (cq.CompId=@CompId or @CompId=0)
	and (
		 CAST(cq.ReturnedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date) or
		 CAST(cq.FirstNoticeDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date) or
		 CAST(cq.LegalNoticeDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date) or
		 CAST(cq.DepositedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date) 
		)

	  
END  
GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordChequeRegListNew]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [CFA].[usp_DashbordChequeRegListNew]
--declare  
@BranchId int,   
@CompId int  
--set @BranchId=1; set @CompId=1; set @StockistId=0;    
as  
BEGIN  
  
 SELECT  cq.ChqRegId, cq.BranchId, cq.CompId, cq.ChqReceivedDate, cq.StokistId, s.StockistNo, CFA.fn_CamelCase(s.StockistName) StockistName,   
  cq.StockistCity, CFA.fn_CamelCase(ct.CityName) CityName,   
  cq.BankId, CFA.fn_CamelCase(bnk.MasterName) AS BankName, cq.IFSCCode, cq.AccountNo, cq.ChqNo, cq.ChqStatus, sts.StatusText as ChqStatusText, cq.BlockedBy, cq.BlockedDate,   
  cq.DiscardedBy, cq.DiscardedDate, cq.DiscardedRemark, cq.ReleasedBy, cq.ReleasedDate, cq.ReleasedRemark, cq.PrintedBy,   
  cq.PrintedDate, cq.ChqAmount, cq.DepositedBy, cq.DepositedDate, cq.SettledBy, cq.SettledDate, cq.ReturnedBy, cq.ReturnedDate, cq.ReturnedReasonId, rm.MasterName as ReturnedReasonText,  
  cq.ReturnedRemark, cq.LastUpdatedOn, cq.BouncedChqAmtRevd,cq.FirstNoticeDate,cq.LegalNoticeDate,
  ISNULL((CASE WHEN ((cq.ChqStatus = 5) and datediff( dd, cq.ReturnedDate,getdate())>=12) THEN 1 ELSE 0 END),0) IsDueforFirstNotice,
  ISNULL((CASE WHEN ((cq.ChqStatus = 5) and datediff( dd, cq.ReturnedDate,getdate())>12) THEN 1 ELSE 0 END),0) IsOverDueForFirstNotice,
  ISNULL((CASE WHEN ((cq.ChqStatus = 6) and datediff( dd, cq.FirstNoticeDate,getdate())>=27) THEN 1 ELSE 0 END),0) IsDueforLegalNotice
  FROM CFA.tblChequeRegister AS cq LEFT OUTER JOIN 
  CFA.tblGeneralMaster AS bnk ON cq.BankId = bnk.pkId LEFT OUTER JOIN  
  CFA.tblStockistMaster AS s ON cq.StokistId = s.StockistId LEFT OUTER JOIN 
  CFA.tblCityMaster AS ct ON cq.StockistCity = ct.CityCode LEFT OUTER JOIN 
  CFA.tblStatusMaster as sts on cq.ChqStatus = sts.id and sts.StatusFor='CHQ' LEFT OUTER JOIN 
  CFA.tblGeneralMaster rm on cq.ReturnedReasonId = rm.pkId  
 where (cq.BranchId=@BranchId OR @BranchId=0) AND (cq.CompId=@CompId or @CompId=0)	
END  
GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordInvInwardCnt]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----CFA.usp_DashbordInvInwardCnt 1,2,'2023-01-01','2023-04-13'
CREATE PROCEDURE [CFA].[usp_DashbordInvInwardCnt]
--declare
@BranchId INT,
@CompId INT,
@FromDate Datetime,
@ToDate Datetime
--set @BranchId=1 set @CompId=1 SET @FromDate='2023-01-01'; SET @ToDate='2023-04-21';
AS
BEGIN
	declare @TotalVeh int, @TotalCaseQty float, @PendClaimCnt int, @PendSANCnt int

	select count(distinct ti.VehicleNo) TotalVeh,
	isnull(sum(case when CAST(ti.AddedOn AS DATE) = cast(getdate() as date) then 1 else 0 end),0) TodayVeh,
	sum(isnull(convert(float,ti.TotalCaseQty),0)) TotalCaseQty


	from CFA.tblTransitInvoiceHeader ti with (NOLOCK)
	where (ti.BranchId=@BranchId or @BranchId=0) AND (ti.CompId=@CompId or @CompId=0 ) 
	--and CAST(ti.AddedOn AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)	

	select @TotalVeh TotalVeh, @TotalCaseQty TotalCaseQty,
		isnull(sum(case when isnull(i.ClaimNo,'')<>'' and ClaimApproveBy IS NULL then 1 else 0 end),0) PendClaimCnt,
		isnull(sum(case when isnull(i.SANNo,'')<>'' and SANApproveBy IS NULL then 1 else 0 end),0) PendSANCnt
	from CFA.tblInsuranceClaim i with (NOLOCK)
	where (i.BranchId=@BranchId or @BranchId=0) AND (i.CompId=@CompId or @CompId=0 ) 
	and (CAST(i.ClaimDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date) or 
		CAST(i.SANDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date) )
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordInvInwardCntNew]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----CFA.usp_DashbordInvInwardCntNew 1,1
CREATE PROCEDURE [CFA].[usp_DashbordInvInwardCntNew]
--declare
@BranchId INT,
@CompId INT
--set @BranchId=1 set @CompId=1 
AS
BEGIN
	declare @TotalVeh int,@TodayVeh int, @TotalCaseQty float,   @TodayCaseQty float,
	@SOMDt datetime, @CummVehicle int=0,@CummBoxes int=0
	set @SOMDt= convert(varchar(4),datepart(yyyy, getdate()))+'-'+ convert(varchar(2),datepart(MM, getdate()))+'-01'
	print @SOMDt

	select @TotalVeh=count(distinct ti.VehicleNo),
	@TodayVeh=isnull(sum(case when CAST(ti.AddedOn AS DATE) = cast(getdate() as date) then 1 else 0 end),0),
	--@TotalCaseQty=sum(isnull(convert(float,ti.TotalCaseQty),0)),
	@TodayCaseQty=isnull(sum(case when CAST(ti.AddedOn AS DATE) = cast(getdate() as date) then isnull(convert(float,ti.TotalCaseQty),0) else 0 end),0)
	from CFA.tblTransitInvoiceHeader ti with (NOLOCK)
	where (ti.BranchId=@BranchId or @BranchId=0) AND (ti.CompId=@CompId or @CompId=0 )

	SELECT 
	@CummVehicle=cv.CummVehicle,
	@CummBoxes=cv.CummBoxes
	FROM(
	SELECT count(TransitId)CummVehicle,sum(isnull(convert(float,th.TotalCaseQty),0))CummBoxes from  CFA.tblTransitInvoiceHeader th WITH (NOLOCK) 
	WHERE  (th.BranchId=@BranchId or @BranchId=0 ) and (th.CompId=@CompId or @CompId=0) 
	and (CAST(th.AddedOn AS DATE) between cast(@SOMDt as date) AND cast(getdate() as date))) as cv

	select @TotalVeh TotalVeh,@TodayVeh TodayVeh, @TotalCaseQty TotalCaseQty,   @TodayCaseQty TodayCaseQty,
		isnull(sum(case when isnull(i.ClaimNo,'')<>'' and CAST(i.ClaimDate AS DATE)=CAST(getdate() AS DATE) then 1 else 0 end),0) TodayClaimCnt,
		isnull(sum(case when isnull(i.ClaimNo,'')<>'' and ClaimApproveBy IS NULL then 1 else 0 end),0) PendClaimCnt,		
		isnull(sum(case when isnull(i.SANNo,'')<>'' and CAST(i.SANDate AS DATE)=CAST(getdate() AS DATE) then 1 else 0 end),0) TodaySANCnt,
		isnull(sum(case when isnull(i.SANNo,'')<>'' and SANApproveBy IS NULL then 1 else 0 end),0) PendSANCnt,
		@CummVehicle AS CummVehicle,@CummBoxes AS CummBoxes
	from CFA.tblInsuranceClaim i with (NOLOCK)
	where (i.BranchId=@BranchId or @BranchId=0) AND (i.CompId=@CompId or @CompId=0) 
	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordInvInwardList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_DashbordInvInwardList]
--declare
@BranchId INT,
@CompId INT,
@FromDate Datetime,
@ToDate Datetime
--set @BranchId=1 set @CompId=2 SET @FromDate='2023-01-01'; SET @ToDate='2023-04-29';
AS
BEGIN
	SELECT ti.TransitId,ti.InvNo,ti.InvoiceDate,ti.LrNo, ti.LrDate,ti.TransporterId,tm.TransporterNo,tm.TransporterName,
	mv.VehicleNo,ti.AddedOn, 
	clm.ClaimNo,clm.ClaimDate,clm.ClaimAmount,clm.SANNo,clm.SANDate,clm.ClaimApproveBy,clm.SANApproveBy
	FROM CFA.tblTransitInvoiceHeader ti LEFT OUTER JOIN CFA.tblTransporterMaster as tm ON ti.TransporterId = tm.TransporterId 
	
	--LEFT OUTER JOIN CFA.tblMapInwardVehicle mv ON ti.LrNo=mv.LRNo
	--LEFT OUTER JOIN CFA.tblInsuranceClaim as clm ON ti.LrNo = clm.LRNo

	left outer join cfa.tblMapInwardVehicle mv on ti.TransitId=mv.pkId
	left outer join CFA.tblInsuranceClaim as clm on ti.TransitId=clm.ClaimId

	WHERE (ti.BranchId=@BranchId or @BranchId=0) AND (ti.CompId=@CompId or @CompId=0)
	and (
		CAST(ti.AddedOn AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date) or
		CAST(clm.ClaimDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date) or 
		CAST(clm.SANDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date) 
		)
END


GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordInvInwardListNew]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_DashbordInvInwardListNew]
--declare
@BranchId INT,
@CompId INT
--set @BranchId=1 set @CompId=1;
AS
BEGIN
	SELECT distinct ti.TransitId,ti.InvNo,ti.InvoiceDate,ti.LrNo, ti.LrDate,ti.TransporterId,tm.TransporterNo,tm.TransporterName,
		ti.VehicleNo,ti.AddedOn, 
		clm.ClaimNo,clm.ClaimDate,clm.ClaimAmount,clm.SANNo,clm.SANDate,clm.ClaimApproveBy,clm.SANApproveBy,
		case when isnull(clm.ClaimNo,0)>0 then clm.ClaimNo else clm.SANNo End ClaimSANNo,
		case when isnull(clm.ClaimDate,0)>0 then clm.ClaimDate else clm.SANDate End ClaimSANDate
	FROM CFA.tblTransitInvoiceHeader ti LEFT OUTER JOIN 
		CFA.tblTransporterMaster as tm ON ti.TransporterId = tm.TransporterId LEFT OUTER JOIN
		CFA.tblMapInwardVehicle mv on ti.TransitId=mv.pkId LEFT OUTER JOIN 
		CFA.tblInsuranceClaim as clm on ti.TransitId=clm.TransitId
	WHERE (ti.BranchId=@BranchId or @BranchId=0) AND (ti.CompId=@CompId or @CompId=0)
END

GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordOrderDispatchCnt]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---	CFA.usp_DashbordOrderDispatchCnt 1,2,'2022-01-04','2023-04-20'
CREATE PROC [CFA].[usp_DashbordOrderDispatchCnt]
--DECLARE
@BranchId INT,
@CompId INT,
@FromDate DATETIME,
@ToDate DATETIME
--set @BranchId=1 set @CompId=2 SET @FromDate='2023-01-01'; SET @ToDate='2023-04-18';
AS
BEGIN
SET FMTONLY OFF
	declare @ResultCnt table (TodayInv int, TotalInvoices int, CummPL int, InvPerMonth int, TodaysBoxes int, CummBoxes int, PendingLR int,
	DispatchN int, DispatchN1 int, DispatchN2 int, DispatchPending int, SalesAmtToday int, SalesAmtCumm int, NotDispPckdInv int, NotDispPckdBox int, LocalMode int,OtherCity int,ByHand int)
	
	DECLARE @CummPL INT=0, @TodayInv INT=0, @TodaysBoxes INT=0, @TodaySalesAmt int
	SELECT @CummPL=(select count(Picklistid) from  CFA.tblPickListHeader p WITH (NOLOCK) 
	where  (BranchId=@BranchId or @BranchId=0 ) and (CompId=@CompId or @CompId=0) and (CAST(p.PicklistDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)))

	select @TodayInv=count(InvId), @TodaySalesAmt=ISNULL(SUM(i.InvAmount),0) from CFA.tblInvoiceHeader i WITH (NOLOCK) 
	WHERE (i.BranchId=@BranchId or @BranchId=0 ) and (i.CompId=@CompId or @CompId=0) and (CAST(i.InvCreatedDate AS DATE)=cast(getdate() as date))

	select @TodaysBoxes=ISNULL(SUM(CASE WHEN (tm.InvoiceId=tm.AttachedInvId or isnull(tm.AttachedInvId,0)=0) THEN i.NoOfBox ELSE 0 END),0)	
	from CFA.tblAssignTransportMode tm with (nolock) inner join CFA.tblInvoiceHeader i with (nolock) on tm.InvoiceId=i.InvId
	where (i.BranchId=@BranchId or @BranchId=0 ) and (i.CompId=@CompId or @CompId=0) and (CAST(i.PackedDate AS DATE) = cast(getdate() as date))

	insert into @ResultCnt(TodayInv, TodaysBoxes, SalesAmtToday, CummPL, InvPerMonth, SalesAmtCumm)
	SELECT 	@TodayInv,@TodaysBoxes,@TodaySalesAmt,@CummPL,COUNT(i.InvId) InvPerMonth,ISNULL(SUM(isnull(i.InvAmount,0)),0) CummSaleAmt
	from CFA.tblInvoiceHeader i WITH (NOLOCK)
	WHERE (i.BranchId=@BranchId or @BranchId=0 ) and (i.CompId=@CompId or @CompId=0)
	and (CAST(i.InvCreatedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date))

	update @ResultCnt 
	set DispatchN=d.DispatchN, 
		DispatchN1=d.DispatchN1, 
		DispatchN2=d.DispatchN2, 
		DispatchPending=d.DispatchPending
	from (	--3) Total Dispatch
		select  
			ISNULL(SUM(CASE WHEN ((i.InvStatus = 7 and CAST(i.InvCreatedDate AS DATE) =CAST(g.GatepassDate AS DATE))) THEN 1 ELSE 0 END),0) DispatchN, 
			ISNULL(SUM(CASE WHEN ((i.InvStatus = 7 and DATEDIFF(dd,i.InvCreatedDate,g.GatepassDate)=1)) THEN 1 ELSE 0 END),0) DispatchN1,
			ISNULL(SUM(CASE WHEN ((i.InvStatus = 7 and DATEDIFF(dd,i.InvCreatedDate,g.GatepassDate)=2)) THEN 1 ELSE 0 END),0) DispatchN2,
			ISNULL(SUM(CASE WHEN ((i.InvStatus < 7)) THEN 1 ELSE 0 END),0) DispatchPending
		from CFA.tblInvoiceHeader i with (nolock) left outer join CFA.tblGenerateGatepassDetails gd  with (nolock) on i.InvId=gd.InvId 
		left outer join CFA.tblGenerateGatepass g  with (nolock) on gd.GatepassId=g.GatepassId
		where (i.BranchId=@BranchId or @BranchId=0 ) and (i.CompId=@CompId or @CompId=0) 
		and CAST(i.InvCreatedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)
	) d	
	
	update @ResultCnt 
	set CummBoxes=a.CummBoxes
	from (
		select ISNULL(SUM(CASE WHEN (tm.InvoiceId=tm.AttachedInvId or isnull(tm.AttachedInvId,0)=0) THEN i.NoOfBox ELSE 0 END),0) CummBoxes
		from CFA.tblAssignTransportMode tm with (nolock) inner join CFA.tblInvoiceHeader i with (nolock) on tm.InvoiceId=i.InvId
		where (i.BranchId=@BranchId or @BranchId=0 ) and (i.CompId=@CompId or @CompId=0) 
		and CAST(i.PackedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)
	) a

	update @ResultCnt 
	set PendingLR=b.PendingLRUpdate, 
		LocalMode=b.LocalMode,
		OtherCity=b.OtherCity,
		ByHand=b.ByHand
	from (
		select isnull(sum(case when i.InvStatus = 7 and tm.LRDate is not null then 1 else 0 End),0) PendingLRUpdate,
		ISNULL(SUM(CASE WHEN TransportModeId=1 THEN 1 ELSE 0 END),0) AS LocalMode,
		ISNULL(SUM(CASE WHEN TransportModeId=2 THEN 1 ELSE 0 END),0) AS OtherCity,
		ISNULL(SUM(CASE WHEN TransportModeId=3 THEN 1 ELSE 0 END),0) AS ByHand
		from CFA.tblAssignTransportMode tm with (nolock) inner join CFA.tblInvoiceHeader i with (nolock) on tm.InvoiceId=i.InvId
		where (i.BranchId=@BranchId or @BranchId=0 ) and (i.CompId=@CompId or @CompId=0) 
		and CAST(i.InvCreatedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)
	) b

	update @ResultCnt 
	set NotDispPckdInv=c.PkgDone,
		NotDispPckdBox=c.PendingBoxes
	from (
	select count(distinct i.InvId) PkgDone,	ISNULL(SUM(CASE WHEN (tm.InvoiceId=tm.AttachedInvId or isnull(tm.AttachedInvId,0)=0) THEN i.NoOfBox ELSE 0 END),0) PendingBoxes
	from CFA.tblAssignTransportMode tm with (nolock) inner join CFA.tblInvoiceHeader i with (nolock) on tm.InvoiceId=i.InvId
	where InvStatus in (3,5,6) and (i.BranchId=@BranchId or @BranchId=0 ) and (i.CompId=@CompId or @CompId=0) 
	and CAST(i.InvCreatedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)
	) c

	select TodayInv, TotalInvoices, CummPL, InvPerMonth, TodaysBoxes, CummBoxes, PendingLR, DispatchN, DispatchN1, DispatchN2,
	 DispatchPending, SalesAmtToday, SalesAmtCumm, NotDispPckdInv, NotDispPckdBox, LocalMode,OtherCity,ByHand
	 from @ResultCnt
	
END

GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordOrderDispatchCntNew]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------- CFA.usp_DashbordOrderDispatchCntNew 1,1
CREATE PROC [CFA].[usp_DashbordOrderDispatchCntNew]
--DECLARE    
@BranchId INT,    
@CompId INT    
--set @BranchId=1 set @CompId=1  
AS    
BEGIN    
SET FMTONLY OFF    
	declare @ResultCnt table (InvPending int,InvToday int,PrioPending int,PrioToday int,ConcernPending int,StkrToday int,    
	StkrPending int,StkrPendingAmt numeric(17,0), GPToday int,GPPending int,GPPendingAmt numeric(17,0), LRPending int,
	LocalPending int,LocalTotalDisp int,OtherCityPending int,OtherTotalDisp int,ByHandPending int,ByHandTotalDisp int,
	TPBox int, TPStockiest int, StkBox int, StkInv int,DispatchN int ,DispatchN1 int ,DispatchN2 int, DispatchNPer int,DispatchN1Per int,
	DispatchN2Per int,DispatchPending int,TodaySalesAmt numeric(17,0),CummSaleAmt numeric(17,0),PLToday int, PLPending int, PLConcern int,
	 PLVerifiedToday int, PLVerifiedPending int, PLAllotedToday int, PLAllotedPending int,TotalInvoices int,CummInvCnt int, CummPLCnt int, CummBoxCnt int)    

	DECLARE @GPToday INT=0, @NoOfStockist int    
	select @GPToday=count(gatepassid) from CFA.tblGenerateGatepass g where cast(GatepassDate as date)=CAST(GETDATE() AS DATE)
	select @NoOfStockist=COUNT(distinct SoldTo_StokistId) FROM CFA.tblInvoiceHeader with(nolock) 
	WHERE (BranchId=@BranchId or @BranchId=0 ) and (CompId=@CompId or @CompId=0) and InvStatus=5 

	insert into @ResultCnt(InvPending,InvToday,PrioPending,PrioToday,ConcernPending,StkrToday,StkrPending,StkrPendingAmt, GPToday, 
	GPPending,GPPendingAmt,TPStockiest,StkInv,DispatchPending,TodaySalesAmt)
	select ISNULL(SUM(CASE WHEN InvStatus not in (7,8,9,20) THEN 1 ELSE 0 end),0) InvPending,
		ISNULL(SUM(CASE WHEN CAST(i.InvCreatedDate AS DATE)=CAST(GETDATE() AS DATE) THEN 1 ELSE 0 end),0) InvToday,
		ISNULL(SUM(CASE WHEN InvStatus not in (7,8,9,20) and isnull(i.OnPriority,0)=1 THEN 1 ELSE 0 end),0) PrioPending,
		ISNULL(SUM(CASE WHEN isnull(i.OnPriority,0)=1 and CAST(i.InvCreatedDate AS DATE)=CAST(GETDATE() AS DATE) THEN 1 ELSE 0 end),0) PrioToday,
		ISNULL(SUM(CASE WHEN isnull(i.InvStatus,0) in (4,6) THEN 1 ELSE 0 end),0) ConcernPending,
		ISNULL(SUM(CASE WHEN CAST(i.ReadyToDispatchDate AS DATE)=CAST(GETDATE() AS DATE) THEN 1 ELSE 0 end),0) StkrToday,
		ISNULL(SUM(CASE WHEN isnull(i.InvStatus,0) in (0,1,2,3,4,6) THEN 1 ELSE 0 end),0) StkrPending,
		ISNULL(SUM(CASE WHEN isnull(i.InvStatus,0) in (0,1,2,3,4,6) THEN isnull(i.InvAmount,0) ELSE 0 end),0) StkrPendingAmt,
		(@GPToday) GPToday, ISNULL(SUM(CASE WHEN isnull(i.InvStatus,0) in (5) THEN 1 ELSE 0 end),0) GPPending,
		ISNULL(SUM(CASE WHEN isnull(i.InvStatus,0) in (5) THEN isnull(i.InvAmount,0) ELSE 0 end),0) GPPendingAmt, 
		isnull(@NoOfStockist,0), count(distinct i.InvId) StkNoOfInv,
		
		ISNULL(SUM(CASE WHEN ((i.InvStatus < 7)) THEN 1 ELSE 0 END),0) DispatchPending,
		ISNULL(SUM(CASE WHEN CAST(i.InvCreatedDate AS DATE)=CAST(GETDATE() AS DATE) THEN i.InvAmount ELSE 0 end),0) TodaySalesAmt	
		from CFA.tblInvoiceHeader i with (nolock)  LEFT OUTER JOIN CFA.tblStockistMaster AS sm ON sm.StockistId = i.SoldTo_StokistId
		left outer join CFA.tblGenerateGatepassDetails gd  with (nolock) on i.InvId=gd.InvId 
		left outer join CFA.tblGenerateGatepass g  with (nolock) on gd.GatepassId=g.GatepassId     
	WHERE (i.BranchId=@BranchId or @BranchId=0 ) and (i.CompId=@CompId or @CompId=0) and i.IsStockTransfer=0 
	and (InvStatus not in (8,9,20) or CAST(i.InvCreatedDate AS DATE)=CAST(GETDATE() AS DATE))
		
	update @ResultCnt     
	set LRPending=b.LRPending,     
		LocalPending=b.LocalPending,
		OtherCityPending=b.OtherCityPending,
		ByHandPending=b.ByHandPending,
		TPBox=b.BoxForGP,
		StkBox=b.BoxForGP
	from (  select isnull(sum(case when i.InvStatus = 7 and tm.LRDate is null then 1 else 0 End),0) LRPending,    
			ISNULL(SUM(CASE WHEN (TransportModeId=1)and(InvStatus <>7) THEN 1 ELSE 0 END),0) AS LocalPending, 
			ISNULL(SUM(CASE WHEN (TransportModeId=2)and(InvStatus <>7) THEN 1 ELSE 0 END),0) AS OtherCityPending,
			ISNULL(SUM(CASE WHEN (TransportModeId=3)and(InvStatus <>7) THEN 1 ELSE 0 END),0) AS ByHandPending,
			ISNULL(SUM(CASE WHEN i.InvStatus = 5 AND (isnull(tm.AttachedInvId,0)=0 OR AttachedInvId=InvId) THEN isnull(NoOfBox,0) ELSE 0 END),0) AS BoxForGP
			from CFA.tblAssignTransportMode tm with (nolock) inner join CFA.tblInvoiceHeader i with (nolock) on tm.InvoiceId=i.InvId    
			where (i.BranchId=@BranchId or @BranchId=0 ) and (i.CompId=@CompId or @CompId=0) and i.IsStockTransfer=0 
			and InvStatus not in (8,9,20)  
		) b
	
	update @ResultCnt     
	set PLToday=a.PLToday,
		PLPending=a.PLPending,
		PLConcern=a.PLConcern,
		PLVerifiedToday=a.PLVeriToday,
		PLVerifiedPending=a.PLVeriPending,
		PLAllotedToday=a.PLAllotedToday,
		PLAllotedPending=a.PLAllotPending
	From (	select count(p.Picklistid) PLPending,  
			ISNULL(SUM(CASE WHEN CAST(p.PicklistDate AS DATE)=CAST(GETDATE() AS DATE) THEN 1 ELSE 0 end),0) PLToday,
			ISNULL(SUM(CASE WHEN isnull(p.PicklistStatus,0) in (9) THEN 1 ELSE 0 end),0) PLConcern,
			ISNULL(SUM(CASE WHEN CAST(p.VerifiedDate AS DATE)=CAST(GETDATE() AS DATE) THEN 1 ELSE 0 end),0) PLVeriToday, 
			ISNULL(SUM(CASE WHEN isnull(p.PicklistStatus,0) in (0) THEN 1 ELSE 0 end),0) PLVeriPending,
			ISNULL(SUM(CASE WHEN isnull(p.PicklistStatus,0) in (3,6) AND CAST(p.AllottedDate as date)=CAST(GETDATE() AS DATE) THEN 1 ELSE 0 end),0) PLAllotedToday,
			ISNULL(SUM(CASE WHEN isnull(p.PicklistStatus,0) in (1,2,5,7) THEN 1 ELSE 0 end),0) PLAllotPending 
			from CFA.tblPickListHeader p (nolock)
			where (p.BranchId=@BranchId or @BranchId=0 ) and (p.CompId=@CompId or @CompId=0) and p.PicklistStatus not in (8,10,11) and p.IsStockTransfer=0 
			) a

	---- Calculate Cummulative Counts------------------
	declare @SOMDt datetime, @CummPL INT=0
	set @SOMDt= convert(varchar(4),datepart(yyyy, getdate()))+'-'+ convert(varchar(2),datepart(MM, getdate()))+'-01'
	print @SOMDt

	SELECT @CummPL=(select count(Picklistid) from  CFA.tblPickListHeader p WITH (NOLOCK) 
	where  (p.BranchId=@BranchId or @BranchId=0 ) and (p.CompId=@CompId or @CompId=0) and (p.IsStockTransfer=0)
	and (CAST(p.PicklistDate AS DATE) between cast(@SOMDt as date) AND cast(getdate() as date)))

	update @ResultCnt     
	set CummInvCnt=isnull(cm.CummInv,0),
		CummBoxCnt=isnull(cm.CummBox,0),
		CummPLCnt=isnull(@CummPL,0),
		CummSaleAmt=ISNULL(cm.CummSaleAmt,0),
		LocalTotalDisp=ISNULL(cm.LocalTotalDisp,0) ,   
		OtherTotalDisp=ISNULL(cm.OtherTotalDisp,0),    
		ByHandTotalDisp=ISNULL(cm.ByHandTotalDisp,0),
		DispatchN=ISNULL(cm.DispatchN,0),
		DispatchN1=ISNULL(cm.DispatchN1,0),
		DispatchN2=ISNULL(cm.DispatchN2,0),
		DispatchNPer=ISNULL(cm.DispatchN*100.0/TotalDisp,0),
		DispatchN1Per=ISNULL(cm.DispatchN1*100.0/TotalDisp,0),
		DispatchN2Per=ISNULL(cm.DispatchN2*100.0/TotalDisp,0)
	From (
		select count(i.InvId) CummInv, sum(isnull(i.NoOfBox,0)) CummBox,sum(isnull(i.InvAmount,0)) CummSaleAmt,
			ISNULL(SUM(CASE WHEN (tm.TransportModeId=1)and(InvStatus >= 7) THEN 1 ELSE 0 END),0) AS LocalTotalDisp,   
			ISNULL(SUM(CASE WHEN (tm.TransportModeId=2)and(InvStatus >= 7) THEN 1 ELSE 0 END),0) AS OtherTotalDisp,    
			ISNULL(SUM(CASE WHEN (tm.TransportModeId=3)and(InvStatus >= 7) THEN 1 ELSE 0 END),0) AS ByHandTotalDisp,  
			ISNULL(SUM(CASE WHEN (i.InvStatus=7) and CAST(i.InvCreatedDate AS DATE) =CAST(g.GatepassDate AS DATE)THEN 1 ELSE 0 end),0) DispatchN,
			ISNULL(SUM(CASE WHEN (i.InvStatus=7) and DATEDIFF(dd,i.InvCreatedDate,g.GatepassDate)=1 THEN 1 ELSE 0 end),0) DispatchN1,
			ISNULL(SUM(CASE WHEN (i.InvStatus=7) and DATEDIFF(dd,i.InvCreatedDate,g.GatepassDate)=2 THEN 1 ELSE 0 end),0) DispatchN2,  
			ISNULL(SUM(CASE WHEN (InvStatus >= 7) THEN 1 ELSE 0 END),0) AS TotalDisp
			from CFA.tblInvoiceHeader i left outer join CFA.tblAssignTransportMode tm on i.InvId=tm.InvoiceId
			left outer join CFA.tblGenerateGatepassDetails gd  with (nolock) on i.InvId=gd.InvId 
			left outer join CFA.tblGenerateGatepass g  with (nolock) on gd.GatepassId=g.GatepassId  
		WHERE (i.BranchId=@BranchId or @BranchId=0 ) and (i.CompId=@CompId or @CompId=0) and i.IsStockTransfer=0 
		and (InvStatus<>20) and CAST(i.InvCreatedDate AS DATE) between @SOMDt and CAST(GETDATE() AS DATE)
		) cm
	    
	select InvPending,InvToday,PrioPending,PrioToday,ConcernPending,StkrToday,StkrPending, StkrPendingAmt, GPToday,GPPending,
		 GPPendingAmt,LRPending,LocalPending,LocalTotalDisp,OtherCityPending,OtherTotalDisp,ByHandPending, ByHandTotalDisp,
		 TPBox, TPStockiest, StkBox, StkInv,DispatchN,DispatchN1,DispatchN2,DispatchNPer,DispatchN1Per,DispatchN2Per,DispatchPending ,
		 TodaySalesAmt,PLToday, PLPending,PLConcern, PLVerifiedToday, PLVerifiedPending, PLAllotedToday, PLAllotedPending,TotalInvoices,
		 CummInvCnt,CummBoxCnt,CummPLCnt,CummSaleAmt   
	from @ResultCnt    
    
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordOrderDispatchList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---   CFA.usp_DashbordOrderDispatchList 1,2,'2023-04-01','2023-04-20';

CREATE PROC [CFA].[usp_DashbordOrderDispatchList]
--DECLARE
@BranchId INT,
@CompId INT,
@FromDate DATETIME,
@ToDate DATETIME
--set @BranchId=1 set @CompId=2 SET @FromDate='2023-01-01'; SET @ToDate='2023-04-20';
AS
BEGIN 
SET FMTONLY OFF
	declare @DashInvList table(InvId bigint ,InvNo nvarchar(50),InvCreatedDate datetime, IsColdStorage int,InvAmount decimal(18,0),
	IsStockTransfer int,InvStatus int,PackedDate datetime,PackedBy int,StockistId bigint,StockistNo nvarchar(20), 
	StockistName nvarchar(250), DispatchN int, DispatchN1 int, DispatchN2 int,
	InvoiceIdTM bigint,AttachedInvId bigint,NoOfBox int,LRDate datetime,TransportModeId int)

	insert into @DashInvList (InvId, InvNo, InvCreatedDate, IsColdStorage, InvAmount, IsStockTransfer, InvStatus, PackedDate, PackedBy, 
	StockistId, StockistNo, StockistName, DispatchN, DispatchN1, DispatchN2) 
	select i.InvId,i.InvNo,i.InvCreatedDate,i.IsColdStorage,ISNULL(i.InvAmount,0),i.IsStockTransfer,i.InvStatus,i.PackedDate,i.PackedBy,
	sm.StockistId,sm.StockistNo,sm.StockistName,
	CASE WHEN ((i.InvStatus = 7 and CAST(i.InvCreatedDate AS DATE) =CAST(g.GatepassDate AS DATE))) THEN 1 ELSE 0 END DispatchN, 
	CASE WHEN ((i.InvStatus = 7 and DATEDIFF(dd,i.InvCreatedDate,g.GatepassDate)=1)) THEN 1 ELSE 0 END DispatchN1,
	CASE WHEN ((i.InvStatus = 7 and DATEDIFF(dd,i.InvCreatedDate,g.GatepassDate)=2)) THEN 1 ELSE 0 END DispatchN2	 
	from CFA.tblInvoiceHeader i with (nolock)  LEFT OUTER JOIN CFA.tblStockistMaster AS sm ON sm.StockistId = i.SoldTo_StokistId
	left outer join CFA.tblGenerateGatepassDetails gd  with (nolock) on i.InvId=gd.InvId 
	left outer join CFA.tblGenerateGatepass g  with (nolock) on gd.GatepassId=g.GatepassId 
	where (i.BranchId=@BranchId OR @BranchId=0) AND (i.CompId=@CompId or @CompId=0)
	and (CAST(i.InvCreatedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date) or CAST(i.InvCreatedDate AS DATE)=cast(getdate() as date))
	
	update @DashInvList
	set InvoiceIdTM=a.InvoiceId,
		AttachedInvId=a.AttachedInvId,
		LRDate=a.LRDate,
		TransportModeId=a.TransportModeId,
		NoOfBox=isnull(a.NoOfBox,0)
	from @DashInvList dt inner join 
	(
	select InvoiceId,AttachedInvId,LRDate,TransportModeId,
	ISNULL(CASE WHEN (tm.InvoiceId=tm.AttachedInvId or isnull(tm.AttachedInvId,0)=0) THEN i2.NoOfBox ELSE 0 END,0) AS NoOfBox
	from CFA.tblAssignTransportMode tm with (nolock) inner join CFA.tblInvoiceHeader i2 with (nolock) on tm.InvoiceId=i2.InvId
	where (i2.BranchId=@BranchId OR @BranchId=0) AND (i2.CompId=@CompId or @CompId=0)
	and (CAST(i2.InvCreatedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date) or CAST(i2.InvCreatedDate AS DATE)=cast(getdate() as date))
	) a on a.InvoiceId=dt.InvId

	select InvId, InvNo, InvCreatedDate, IsColdStorage, InvAmount, IsStockTransfer, InvStatus, PackedDate, PackedBy, 
	StockistId, StockistNo, StockistName, DispatchN, DispatchN1, DispatchN2,InvoiceIdTM,AttachedInvId,LRDate,TransportModeId, NoOfBox	
	from @DashInvList 
	--where TransportModeId=1
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordOrderDispatchListNew]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---		CFA.usp_DashbordOrderDispatchListNew 1,1

CREATE PROC [CFA].[usp_DashbordOrderDispatchListNew]
--DECLARE
@BranchId INT,
@CompId INT
--set @BranchId=1 set @CompId=2;
AS
BEGIN 
SET FMTONLY OFF

	declare @DashInvList table(InvId bigint ,InvNo nvarchar(50),InvCreatedDate datetime, IsColdStorage int,InvAmount decimal(18,0),OnPriority int,
	IsStockTransfer int,InvStatus int,PackedDate datetime,PackedBy int,StockistId bigint,StockistNo nvarchar(20), 
	StockistName nvarchar(250),ReadyToDispatchDate datetime, InvoiceIdTM bigint,AttachedInvId bigint,NoOfBox int,
	LRDate datetime,TransportModeId int)--,DispatchN int, DispatchN1 int, DispatchN2 int,CummInv int

	insert into @DashInvList (InvId, InvNo, InvCreatedDate, IsColdStorage, InvAmount,OnPriority, IsStockTransfer, InvStatus, PackedDate, PackedBy, 
	StockistId, StockistNo, StockistName,ReadyToDispatchDate) 
	select i.InvId,i.InvNo,i.InvCreatedDate,i.IsColdStorage,ISNULL(i.InvAmount,0),OnPriority,i.IsStockTransfer,i.InvStatus,i.PackedDate,i.PackedBy,
	sm.StockistId,sm.StockistNo,sm.StockistName,i.ReadyToDispatchDate
	--,CASE WHEN ((i.InvStatus = 7 and CAST(i.InvCreatedDate AS DATE) =CAST(g.GatepassDate AS DATE))) THEN 1 ELSE 0 END DispatchN, 
	--CASE WHEN ((i.InvStatus = 7 and DATEDIFF(dd,i.InvCreatedDate,g.GatepassDate)=1)) THEN 1 ELSE 0 END DispatchN1,
	--CASE WHEN ((i.InvStatus = 7 and DATEDIFF(dd,i.InvCreatedDate,g.GatepassDate)=2)) THEN 1 ELSE 0 END DispatchN2	 
	from CFA.tblInvoiceHeader i with (nolock)  LEFT OUTER JOIN CFA.tblStockistMaster AS sm ON sm.StockistId = i.SoldTo_StokistId
	left outer join CFA.tblGenerateGatepassDetails gd  with (nolock) on i.InvId=gd.InvId 
	left outer join CFA.tblGenerateGatepass g  with (nolock) on gd.GatepassId=g.GatepassId 
	where (i.BranchId=@BranchId OR @BranchId=0) AND (i.CompId=@CompId or @CompId=0) and i.IsStockTransfer=0
	and (i.InvStatus not in (7,8,9,20) or CAST(i.InvCreatedDate AS DATE)=CAST(GETDATE() AS DATE))

	update @DashInvList
	set InvoiceIdTM=a.InvoiceId,
		AttachedInvId=a.AttachedInvId,
		LRDate=a.LRDate,
		TransportModeId=a.TransportModeId,
		NoOfBox=isnull(a.NoOfBox,0)
	from @DashInvList dt inner join 
	(
	select InvoiceId,AttachedInvId,LRDate,TransportModeId,
	ISNULL(CASE WHEN (tm.InvoiceId=tm.AttachedInvId or isnull(tm.AttachedInvId,0)=0) THEN i2.NoOfBox ELSE 0 END,0) AS NoOfBox
	from CFA.tblAssignTransportMode tm with (nolock) inner join CFA.tblInvoiceHeader i2 with (nolock) on tm.InvoiceId=i2.InvId
	where (i2.BranchId=@BranchId OR @BranchId=0) AND (i2.CompId=@CompId or @CompId=0)) a on a.InvoiceId=dt.InvId 

	--declare @SOMDt datetime, @dts datetime ='2023-05-02'
	--set @SOMDt= convert(varchar(4),datepart(yyyy, @dts))+'-'+ convert(varchar(2),datepart(MM,@dts))+'-01'
	--print @SOMDt

	--Update @DashInvList set CummInv = 1
	--where invid in (select i.InvId from CFA.tblInvoiceHeader i WHERE (i.BranchId=@BranchId or @BranchId=0 ) 
	--	and (i.CompId=@CompId or @CompId=0) and i.IsStockTransfer=0 and (InvStatus<>20)
	--	and CAST(i.InvCreatedDate AS DATE) between @SOMDt and CAST(GETDATE() AS DATE)) 
	 
	select InvId, InvNo, InvCreatedDate, IsColdStorage, InvAmount,OnPriority, IsStockTransfer, InvStatus, PackedDate, PackedBy, 
	StockistId, StockistNo, StockistName,ReadyToDispatchDate, InvoiceIdTM,AttachedInvId,
	ISNULL(LRDate,'1900-01-01')LRDate,TransportModeId, NoOfBox--,,DispatchN, DispatchN1, DispatchN2ISNULL(CummInv,0)CummInv
	from @DashInvList 
	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordOrderDispLRListNew]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_DashbordOrderDispLRListNew]
--DECLARE
@BranchId INT,
@CompId INT
--set @BranchId=1 set @CompId=1;
AS
BEGIN 
	SELECT pl.PicklistNo,pl.PicklistDate,pl.FromInv,pl.ToInv,pl.PicklistStatus,pl.AllottedDate,pl.VerifiedDate,pl.IsStockTransfer,st.StatusText
	FROM CFA.tblPickListHeader pl left outer join 
		 CFA.tblstatusmaster as st ON pl.PicklistStatus=st.id AND st.StatusFor='PL'
	WHERE (pl.BranchId=@BranchId or @BranchId=0 ) and (pL.CompId=@CompId or @CompId=0) and pl.PicklistStatus not in (8,10,11)
END	
GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordOrderReturnCnt]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--	CFA.usp_DashbordOrderReturnCnt 1, 2, '2023-01-01','2023-04-24'
CREATE PROC [CFA].[usp_DashbordOrderReturnCnt]
--declare
@BranchId INT,
@CompId INT,
@FromDate datetime,
@ToDate datetime

--set @BranchId=0 set @CompId=0 SET @FromDate='2023-01-01'; SET @ToDate='2023-04-24';
AS
BEGIN

	declare @OrderRet table(id int identity, TotalClaims int, atWarehouse int, atAuditorChk int, atOperator int, SalebleClaim int,
		TodayConsign int, CummConsign int, SalebleCN1 int, SalebleCN2 int, SalebleCN2_7 int, SalebleCN7Plus int, PendingCN int,
		SettPeriod15 int, SettPeriod30 int, SettPeriod45 int, SettPeriodMore45 int)

	insert into @OrderRet(TodayConsign, CummConsign,TotalClaims,atWarehouse,atOperator,atAuditorChk,SalebleClaim)

	select 
	(select Count(distinct ig.LREntryId)  FROM CFA.tblInwardGatepass ig   
	where (ig.BranchId = @BranchId OR @BranchId=0) and (ig.CompId = @CompId OR @CompId = 0)
	AND CAST(ig.ReceiptDate AS DATE) = cast(getdate() as date)) TodayConsign,
	(select Count(distinct ig.LREntryId)  FROM CFA.tblInwardGatepass ig 
	where (ig.BranchId = @BranchId OR @BranchId=0) and (ig.CompId = @CompId OR @CompId = 0)
	AND CAST(ig.ReceiptDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)) CummConsign,
	Count(distinct ig.LREntryId) TotalPending,
	sum(case when isnull(ig.RecvdAtOP,0)=0 then 1 else 0 end) atWarehouse,
	sum(case when isnull(ig.RecvdAtOP,0)=1 and srs.SRSId is null then 1 else 0 end) atOperator,
	sum(case when isnull(srs.SRSId,0)>0 and srs.IsVerified is NULL  then 1 else 0 end) AtAuditor,
	sum(case when pc.ReturnCatId in (34,35) then 1 else 0 end) SalebleClaims
	FROM CFA.tblInwardGatepass ig left outer join CFA.tblPhysicalCheck1 pc on ig.LREntryId=pc.LREntryId 
	left outer join CFA.tblSRSHeader srs on ig.LREntryId=srs.LREntryId
	left outer join CFA.tblCNHeader c on srs.SRSId=c.SRSId
	where (ig.BranchId = @BranchId OR @BranchId=0) and (ig.CompId = @CompId OR @CompId = 0)
	AND CAST(ig.ReceiptDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)
	and c.CNId is null  --Pending means CN not generated...

	update @OrderRet
	set PendingCN=a.TotalSaleblePndg,
		SalebleCN1=Day1,
		SalebleCN2=day2,
		SalebleCN2_7=day2_7,
		SalebleCN7Plus=day7
	from ( select count(s.SRSId) TotalSaleblePndg,
	isnull(sum(case when datediff(dd,ig.ReceiptDate,getdate())=0 then 1 else 0 end),0) Day1, 
	isnull(sum(case when datediff(dd,ig.ReceiptDate,getdate())=1 then 1 else 0 end),0) day2,
	isnull(sum(case when datediff(dd,ig.ReceiptDate,getdate())>1 and datediff(dd,cn.CRDRCreationDate,getdate())<=7 then 1 else 0 end),0) day2_7,
	isnull(sum(case when datediff(dd,ig.ReceiptDate,getdate())>7 then 1 else 0 end),0) day7
	FROM CFA.tblInwardGatepass ig left outer join  CFA.tblPhysicalCheck1 p on ig.LREntryId=p.LREntryId 
	left outer JOIN CFA.tblSRSHeader s ON p.LREntryId=s.LREntryId 
	left outer join CFA.tblCNHeader cn on cn.SRSId = s.SRSId
	where (p.ReturnCatId in(34,35)) and (p.BranchId = @BranchId OR @BranchId=0) and (p.CompId = @CompId OR @CompId = 0) 
	and CAST(ig.ReceiptDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)	
	and cn.CNId is null) a

	update @OrderRet
	set SettPeriod15=a.D15,
		SettPeriod30=a.D30,
		SettPeriod45=a.D45,
		SettPeriodMore45=a.D45Plus
	from ( select isnull(sum(case when datediff(dd,i.ReceiptDate,c.CRDRCreationDate)<=15 then 1 else 0 end),0) D15, 
		isnull(sum(case when datediff(dd,i.ReceiptDate,c.CRDRCreationDate)>15 and datediff(dd,i.ReceiptDate,c.CRDRCreationDate)<=30 then 1 else 0 end),0) D30,
		isnull(sum(case when datediff(dd,i.ReceiptDate,c.CRDRCreationDate)>30 and datediff(dd,i.ReceiptDate,c.CRDRCreationDate)<=45 then 1 else 0 end),0) D45,
		isnull(sum(case when datediff(dd,i.ReceiptDate,c.CRDRCreationDate)>45 then 1 else 0 end),0) D45Plus
		FROM CFA.tblInwardGatepass i left outer JOIN CFA.tblSRSHeader s ON i.LREntryId=s.LREntryId 
		left outer join CFA.tblCNHeader c on c.SRSId = s.SRSId
		where (i.BranchId = @BranchId OR @BranchId=0) and (i.CompId = @CompId OR @CompId = 0) 
		and CAST(i.ReceiptDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)	
		and c.CRDRCreationDate is not null	)a 



	select isnull(TotalClaims,0) TotalClaims, isnull(atWarehouse,0) atWarehouse, isnull(atAuditorChk,0) atAuditorChk, 
		isnull(atOperator,0) atOperator, isnull(SalebleClaim,0) SalebleClaim,isnull(TodayConsign,0) TodayConsign, 
		isnull(CummConsign,0) CummConsign, isnull(SalebleCN1,0) SalebleCN1, isnull(SalebleCN2,0) SalebleCN2, isnull(SalebleCN2_7,0) SalebleCN2_7, 
		isnull(SalebleCN7Plus,0) SalebleCN7Plus, isnull(PendingCN,0) PendingCN,isnull(SettPeriod15,0) SettPeriod15, 
		isnull(SettPeriod30,0) SettPeriod30, isnull(SettPeriod45,0) SettPeriod45, isnull(SettPeriodMore45,0) SettPeriodMore45 
	from @OrderRet

END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordOrderReturnCntNew]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--	CFA.usp_DashbordOrderReturnCntNew 1, 2
CREATE PROC [CFA].[usp_DashbordOrderReturnCntNew]
--declare
@BranchId INT,
@CompId INT
--set @BranchId=0 set @CompId=0 
AS
BEGIN

	declare @OrderRet table(id int identity, ConsignToday int,ConsignPending int,atWarehouse int,atOperator int,atAuditorChk int,
	SalebleClaim int,DestrPending int, SalebleCN1 int, SalebleCN2 int, SalebleCN2_7 int, Saleblemorethan2Days int,More11Days int,PendingCN int,
	--SettPeriod15 int, SettPeriod30 int, SettPeriod45 int, SettPeriodMore45 int,
	SettPeriod2D int, SettPeriod5D int, SettPeriod7D int, SettPeriodMore11D int)

	insert into @OrderRet(ConsignToday,ConsignPending,atWarehouse,atOperator,atAuditorChk,SalebleClaim,DestrPending)
	select isnull(sum(case when CAST(ig.LREntryDate AS DATE) = cast(getdate() as date) then 1 else 0 end),0) ConsignTodayLRDate,
	Count( ig.LREntryId) TotalPending,
	sum(case when isnull(ig.RecvdAtOP,0)=0 then 1 else 0 end) atWarehouse,
	sum(case when isnull(ig.RecvdAtOP,0)=1 and srs.SRSId is null then 1 else 0 end) atOperator,
	sum(case when isnull(srs.SRSId,0)>0 and srs.IsVerified is NULL  then 1 else 0 end) AtAuditor,
	sum(case when pc.ReturnCatId in (34,35) then 1 else 0 end) SalebleClaims,
	(select count(DestrCertfile)  from CFA.tblCNHeader where (BranchId = @BranchId OR @BranchId=0) and (CompId = @CompId OR @CompId = 0)
	and DestrCertDate is null) DestrPending
	FROM CFA.tblInwardGatepass ig left outer join CFA.tblPhysicalCheck1 pc on ig.LREntryId=pc.LREntryId 
	left outer join CFA.tblSRSHeader srs on ig.LREntryId=srs.LREntryId
	left outer join CFA.tblCNHeader c on srs.SRSId=c.SRSId
	where (ig.BranchId = @BranchId OR @BranchId=0) and (ig.CompId = @CompId OR @CompId = 0)
	and (c.CNId is null or CAST(ig.LREntryDate AS DATE) = cast(getdate() as date))  --Pending means CN not generated...

	update @OrderRet
	set PendingCN=a.TotalSaleblePndg, SalebleCN1=Day1, SalebleCN2=day2, SalebleCN2_7=day2_7, Saleblemorethan2Days=morethan2Days,More11Days=More11Day 
	from (select count(s.SRSId) TotalSaleblePndg,
			isnull(sum(case when datediff(dd,ig.ReceiptDate,getdate())=0 then 1 else 0 end),0) Day1, 
			isnull(sum(case when datediff(dd,ig.ReceiptDate,getdate())=1 then 1 else 0 end),0) day2,
			isnull(sum(case when datediff(dd,ig.ReceiptDate,getdate())>1 and datediff(dd,cn.CRDRCreationDate,getdate())<=7 then 1 else 0 end),0) day2_7,
			--isnull(sum(case when datediff(dd,ig.ReceiptDate,getdate())>7 then 1 else 0 end),0) day7,
			isnull(sum(case when datediff(dd,ig.ReceiptDate,getdate())>2 then 1 else 0 end),0) morethan2Days,
			isnull(sum(case when datediff(dd,ig.ReceiptDate,getdate())>11 then 1 else 0 end),0) More11Day
		 FROM CFA.tblInwardGatepass ig left outer join  CFA.tblPhysicalCheck1 p on ig.LREntryId=p.LREntryId 
			left outer JOIN CFA.tblSRSHeader s ON p.LREntryId=s.LREntryId left outer join CFA.tblCNHeader cn on cn.SRSId = s.SRSId
		 where (p.ReturnCatId in(34,35)) and (p.BranchId = @BranchId OR @BranchId=0) and (p.CompId = @CompId OR @CompId = 0) and cn.CNId is null
		) a

	--update @OrderRet
	--set SettPeriod15=a.D15, SettPeriod30=a.D30, SettPeriod45=a.D45, SettPeriodMore45=a.D45Plus
	--from (select 
	--		isnull(sum(case when datediff(dd,i.ReceiptDate,c.CRDRCreationDate)<=15 then 1 else 0 end),0) D15, 
	--		isnull(sum(case when datediff(dd,i.ReceiptDate,c.CRDRCreationDate)>15 and datediff(dd,i.ReceiptDate,c.CRDRCreationDate)<=30 then 1 else 0 end),0) D30,
	--		isnull(sum(case when datediff(dd,i.ReceiptDate,c.CRDRCreationDate)>30 and datediff(dd,i.ReceiptDate,c.CRDRCreationDate)<=45 then 1 else 0 end),0) D45,
	--		isnull(sum(case when datediff(dd,i.ReceiptDate,c.CRDRCreationDate)>45 then 1 else 0 end),0) D45Plus
	--	  FROM CFA.tblInwardGatepass i left outer JOIN CFA.tblSRSHeader s ON i.LREntryId=s.LREntryId 
	--		left outer join CFA.tblCNHeader c on c.SRSId = s.SRSId
	--	  where (i.BranchId = @BranchId OR @BranchId=0) and (i.CompId = @CompId OR @CompId = 0) and c.CRDRCreationDate is not null	
	--	)a 

	update @OrderRet
	set SettPeriod2D=a.D2, SettPeriod5D=a.D5, SettPeriod7D=a.D7, SettPeriodMore11D=a.D11Plus
	from (select 
			isnull(sum(case when datediff(dd,i.ReceiptDate,c.CRDRCreationDate)<=2 then 1 else 0 end),0) D2, 
			isnull(sum(case when datediff(dd,i.ReceiptDate,c.CRDRCreationDate)>5 and datediff(dd,i.ReceiptDate,c.CRDRCreationDate)<=7 then 1 else 0 end),0) D5,
			isnull(sum(case when datediff(dd,i.ReceiptDate,c.CRDRCreationDate)>7 and datediff(dd,i.ReceiptDate,c.CRDRCreationDate)<=11 then 1 else 0 end),0) D7,
			isnull(sum(case when datediff(dd,i.ReceiptDate,c.CRDRCreationDate)>11 then 1 else 0 end),0) D11Plus
			FROM CFA.tblInwardGatepass i left outer JOIN CFA.tblSRSHeader s ON i.LREntryId=s.LREntryId 
			left outer join CFA.tblCNHeader c on c.SRSId = s.SRSId
			where (i.BranchId = @BranchId OR @BranchId=0) and (i.CompId = @CompId OR @CompId = 0) and c.CRDRCreationDate is not null	
		)a 

	select isnull(ConsignToday,0) ConsignToday,isnull(ConsignPending,0) ConsignPending, isnull(atWarehouse,0) atWarehouse, 
		isnull(atOperator,0) atOperator, isnull(atAuditorChk,0) atAuditorChk, isnull(SalebleClaim,0) SalebleClaim,
		isnull(DestrPending,0) DestrPending, isnull(SalebleCN1,0) SalebleCN1, isnull(SalebleCN2,0) SalebleCN2, isnull(SalebleCN2_7,0) SalebleCN2_7, 
		isnull(Saleblemorethan2Days,0) Saleblemorethan2Days,ISNULL(More11Days,0)More11Days, isnull(PendingCN,0) PendingCN,
		--isnull(SettPeriod15,0) SettPeriod15,isnull(SettPeriod30,0) SettPeriod30, isnull(SettPeriod45,0) SettPeriod45, isnull(SettPeriodMore45,0) SettPeriodMore45 ,
		ISNULL(SettPeriod2D,0)SettPeriod2D, ISNULL(SettPeriod5D,0)SettPeriod5D, ISNULL(SettPeriod7D,0)SettPeriod7D, ISNULL(SettPeriodMore11D,0)SettPeriodMore11D
		
	from @OrderRet

END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordOrderReturnList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--	CFA.usp_DashbordOrderReturnList 1, 2, '2023-01-01','2023-04-24'
create PROC [CFA].[usp_DashbordOrderReturnList]
--declare
@BranchId INT,
@CompId INT,
@FromDate datetime,
@ToDate datetime

--set @BranchId=0 set @CompId=0 SET @FromDate='2023-01-01'; SET @ToDate='2023-04-24';
AS

BEGIN
	--declare @OrderRet table(id int identity, LREntryId int, LRNo nvarchar(20), LRDate datetime,StkId int, StkNo nvarchar(20), StkName nvarchar(500),
	--TrasporterName nvarchar(500), GPNo nvarchar(50), ClaimNo nvarchar(20), SalesDocNo nvarchar(50), CNNo nvarchar(50), CNDate Datetime)
	
	select ig.LREntryId, ig.LRNo, ig.LREntryDate,ig.StockistId,stk.StockistNo,stk.StockistName,
	case when ig.CourierId >0 then c.CourierName else t.TransporterName end TransporterName,
	ig.GatepassNo,pc.ClaimNo, srs.SalesDocNo,cn.CrDrNoteNo, cn.CRDRCreationDate,
	ig.ReceiptDate,ig.RecvdAtOP,pc.ReturnCatId,srs.IsVerified,
	case when (pc.ReturnCatId in(34,35)) and datediff(dd,ig.ReceiptDate,getdate())=0 then 1 else 0 end Day1, 
	case when (pc.ReturnCatId in(34,35)) and datediff(dd,ig.ReceiptDate,getdate())=1 then 1 else 0 end day2,
	case when (pc.ReturnCatId in(34,35)) and datediff(dd,ig.ReceiptDate,getdate())>1 and datediff(dd,cn.CRDRCreationDate,getdate())<=7 then 1 else 0 end day2_7,
	case when (pc.ReturnCatId in(34,35)) and datediff(dd,ig.ReceiptDate,getdate())>7 then 1 else 0 end day7Plus,
	case when cn.CRDRCreationDate is not null and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)<=15 then 1 else 0 end D15, 
	case when cn.CRDRCreationDate is not null and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)>15 and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)<=30 then 1 else 0 end D30,
	case when cn.CRDRCreationDate is not null and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)>30 and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)<=45 then 1 else 0 end D45,
	case when cn.CRDRCreationDate is not null and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)>45 then 1 else 0 end D45Plus
	FROM CFA.tblInwardGatepass ig left outer join CFA.tblPhysicalCheck1 pc on ig.LREntryId=pc.LREntryId 
	left outer join CFA.tblSRSHeader srs on ig.LREntryId=srs.LREntryId
	left outer join CFA.tblCNHeader cn on srs.SRSId=cn.SRSId
	left outer join CFA.tblStockistMaster stk on ig.StockistId=stk.StockistId
	left outer join CFA.tblTransporterMaster t on ig.TransporterId=t.TransporterId
	left outer join CFA.tblCourierMaster c on ig.CourierId=c.CourierId
	where (ig.BranchId = @BranchId OR @BranchId=0) and (ig.CompId = @CompId OR @CompId = 0)
	AND (	CAST(ig.ReceiptDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date) or
	CAST(ig.ReceiptDate AS DATE) = cast(getdate() as date)	)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordOrderReturnListNew]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--	CFA.usp_DashbordOrderReturnListNew 1, 1
CREATE PROC [CFA].[usp_DashbordOrderReturnListNew]
--declare
@BranchId INT,
@CompId INT

--set @BranchId=0 set @CompId=0;
AS

BEGIN
	
	select ig.LREntryId, ig.LRNo, ig.LREntryDate,ig.StockistId,stk.StockistNo,stk.StockistName,
	--case when ig.CourierId >0 then c.CourierName else t.TransporterName end TransporterName,
	case when isnull(ig.CourierId,0)>0  then c.CourierName  
			 when isnull(t.TransporterId,0)>0  then t.TransporterName else 'By Hand' End TransporterName,
	ig.GatepassNo,pc.ClaimNo, srs.SalesDocNo,srs.SRSId,cn.CrDrNoteNo,cn.CNId, cn.CRDRCreationDate,
	ig.ReceiptDate,ig.RecvdAtOP,pc.ReturnCatId,srs.IsVerified,
	case when (pc.ReturnCatId in(34,35)) and datediff(dd,ig.ReceiptDate,getdate())=0 then 1 else 0 end Day1, 
	case when (pc.ReturnCatId in(34,35)) and datediff(dd,ig.ReceiptDate,getdate())=1 then 1 else 0 end day2,
	case when (pc.ReturnCatId in(34,35)) and datediff(dd,ig.ReceiptDate,getdate())>1 and datediff(dd,cn.CRDRCreationDate,getdate())<=7 then 1 else 0 end day2_7,
	--case when (pc.ReturnCatId in(34,35)) and datediff(dd,ig.ReceiptDate,getdate())>7 then 1 else 0 end day7Plus,
	case when (pc.ReturnCatId in(34,35)) and datediff(dd,ig.ReceiptDate,getdate())>11 then 1 else 0 end More11day,
	--case when cn.CRDRCreationDate is not null and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)<=15 then 1 else 0 end D15, 
	--case when cn.CRDRCreationDate is not null and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)>15 and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)<=30 then 1 else 0 end D30,
	--case when cn.CRDRCreationDate is not null and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)>30 and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)<=45 then 1 else 0 end D45,
	--case when cn.CRDRCreationDate is not null and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)>45 then 1 else 0 end D45Plus,

	case when cn.CRDRCreationDate is not null and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)<=2 then 1 else 0 end D2, 
	case when cn.CRDRCreationDate is not null and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)>2 and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)<=5 then 1 else 0 end D5,
	case when cn.CRDRCreationDate is not null and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)>5 and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)<=7 then 1 else 0 end D7,
	case when cn.CRDRCreationDate is not null and datediff(dd,ig.ReceiptDate,cn.CRDRCreationDate)>11 then 1 else 0 end D11
	FROM CFA.tblInwardGatepass ig left outer join CFA.tblPhysicalCheck1 pc on ig.LREntryId=pc.LREntryId 
	left outer join CFA.tblSRSHeader srs on ig.LREntryId=srs.LREntryId
	left outer join CFA.tblCNHeader cn on srs.SRSId=cn.SRSId
	left outer join CFA.tblStockistMaster stk on ig.StockistId=stk.StockistId
	left outer join CFA.tblTransporterMaster t on ig.TransporterId=t.TransporterId
	left outer join CFA.tblCourierMaster c on ig.CourierId=c.CourierId
	where (ig.BranchId = @BranchId OR @BranchId=0) and (ig.CompId = @CompId OR @CompId = 0)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordOutStandingStkListNew]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_DashbordOutStandingStkListNew]
--declare  
@BranchId int,   
@CompId int  
--set @BranchId=1; set @CompId=1; set @StockistId=0;    
as  
BEGIN  
  
 SET FMTONLY OFF
	declare @OSDt datetime, @OverDueStk int

	select @OSDt=max(OSDate) from CFA.tblStkOutStanding where (BranchId=@BranchId OR @BranchId=0) AND (CompId=@CompId OR @CompId=0)

	select st.OSDate,st.StockistId,st.StockistCode,s.StockistName,max(st.DueDate)DueDate,sum(isnull(st.OverdueAmt,0))OverdueAmt,st.CityCode,ct.CityName
	from CFA.tblStkOutStanding st  left outer join
	CFA.tblStockistMaster AS s ON s.StockistId = st.StockistId LEFT OUTER JOIN 
	CFA.tblCityMaster AS ct ON st.CityCode = ct.CityCode
	where (BranchId=@BranchId OR @BranchId=0) AND (CompId=@CompId OR @CompId=0) 
	and CAST(osdate as date) = cast(@OSDt as date) and OverdueAmt>0	
	group by st.OSDate,st.StockistId,st.StockistCode,s.StockistName,st.CityCode,ct.CityName
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordStockTransferCnt]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- CFA.usp_DashbordStockTransferCnt 1,1,'2023-01-01','2022-04-06'
create PROC [CFA].[usp_DashbordStockTransferCnt]
--declare
@BranchId INT,
@CompId INT,
@FromDate Datetime,
@ToDate Datetime

--set @BranchId=1 set @CompId=2 SET @FromDate='2023-01-01'; SET @ToDate='2023-04-18';

AS
BEGIN
SET FMTONLY OFF
	
	Declare @TodayInv int, @CummInv int,@CummPL int, @PendingDispatch int, @TodayBox int, @CummBox int, @PendingLR int

	SELECT @CummPL=count(Picklistid) FROM CFA.tblPickListHeader WITH (NOLOCK) where IsStockTransfer=1 and CAST(PicklistDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)
	SELECT @TodayInv=Count(InvId) From CFA.tblInvoiceHeader i with (nolock)
	where i.IsStockTransfer = 1 and (i.BranchId=@BranchId OR @BranchId=0) and (i.CompId=@CompId  OR @CompId=0) 
	and cast(i.InvCreatedDate as date) = cast(getdate() as date)
	
	SELECT @CummInv=Count(InvId),
	@PendingDispatch=isnull(SUM(CASE WHEN i.InvStatus < 7 then 1 else 0 END),0)
	From CFA.tblInvoiceHeader i with (nolock)
	where i.IsStockTransfer = 1 and (i.BranchId=@BranchId OR @BranchId=0) and (i.CompId=@CompId  OR @CompId=0)
	and cast(i.InvCreatedDate as date) between cast(@FromDate as date) AND cast(@ToDate as date)

	select @TodayBox=ISNULL(SUM(CASE WHEN (tm.InvoiceId=tm.AttachedInvId or isnull(tm.AttachedInvId,0)=0) THEN i.NoOfBox ELSE 0 END),0)	
	from CFA.tblAssignTransportMode tm with (nolock) inner join CFA.tblInvoiceHeader i with (nolock) on tm.InvoiceId=i.InvId
	where i.IsStockTransfer = 1 and (i.BranchId=@BranchId or @BranchId=0 ) 
	and (i.CompId=@CompId or @CompId=0) and (CAST(i.PackedDate AS DATE) = cast(getdate() as date))

	select @CummBox=ISNULL(SUM(CASE WHEN (tm.InvoiceId=tm.AttachedInvId or isnull(tm.AttachedInvId,0)=0) THEN i.NoOfBox ELSE 0 END),0)
	from CFA.tblAssignTransportMode tm with (nolock) inner join CFA.tblInvoiceHeader i with (nolock) on tm.InvoiceId=i.InvId
	where i.IsStockTransfer = 1 and (i.BranchId=@BranchId or @BranchId=0 ) and (i.CompId=@CompId or @CompId=0) 
	and CAST(i.PackedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)

	select @PendingLR=count(InvId) 
	from CFA.tblAssignTransportMode tm with (nolock) inner join CFA.tblInvoiceHeader i with (nolock) on tm.InvoiceId=i.InvId
	where i.IsStockTransfer = 1 and (i.BranchId=@BranchId or @BranchId=0 ) and (i.CompId=@CompId or @CompId=0) 
	and CAST(i.InvCreatedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date) and i.InvStatus = 7 and tm.LRDate is null

	 select @TodayInv TodayInv, @CummInv CummInv, @CummPL CummPL, @PendingDispatch PendingDispatch, 
	 @TodayBox TodayBox, @CummBox CummBox, @PendingLR PendingLR 

END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashbordStockTransferCntNew]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----- CFA.usp_DashbordStockTransferCntNew 1,1
CREATE PROC [CFA].[usp_DashbordStockTransferCntNew] 
--DECLARE    
@BranchId INT,    
@CompId INT    
--set @BranchId=1 set @CompId=2  
AS    
BEGIN    
SET FMTONLY OFF    
	declare @ResultCnt table (InvPending int,InvToday int,ConcernPending int,StkrToday int,StkrPending int, GPToday int, GPPending int,
	StkCummInvCnt int, StkCummPLCnt int, StkCummBoxCnt int,NoOfBoxes int,LRPending int,StkSticerPendingAmt numeric(17,0),StkGPPendingAmt numeric(17,0))    
      
	DECLARE @GPToday INT=0   
	select @GPToday=count(distinct g.gatepassid) from CFA.tblGenerateGatepass g 
		inner join CFA.tblGenerateGatepassDetails gd on g.GatepassId=gd.GatepassId
		inner join CFA.tblInvoiceHeader i on gd.InvId=i.InvId 
	where isnull(i.IsStockTransfer,0)=1 and cast(g.GatepassDate as date)=CAST(GETDATE() AS DATE)
	
	insert into @ResultCnt(InvPending,InvToday,ConcernPending,StkrToday,StkrPending, GPToday, GPPending,StkSticerPendingAmt,StkGPPendingAmt)
	select ISNULL(SUM(CASE WHEN InvStatus not in (7,8,9,20) THEN 1 ELSE 0 end),0) InvPending,
		ISNULL(SUM(CASE WHEN CAST(i.InvCreatedDate AS DATE)=CAST(GETDATE() AS DATE) THEN 1 ELSE 0 end),0) InvToday,
		ISNULL(SUM(CASE WHEN isnull(i.InvStatus,0) in (4,6) THEN 1 ELSE 0 end),0) ConcernPending,
		ISNULL(SUM(CASE WHEN CAST(i.ReadyToDispatchDate AS DATE)=CAST(GETDATE() AS DATE) THEN 1 ELSE 0 end),0) StkrToday,
		ISNULL(SUM(CASE WHEN isnull(i.InvStatus,0) in (0,1,2,3,4,6) THEN 1 ELSE 0 end),0) StkrPending,
		(@GPToday) GPToday, ISNULL(SUM(CASE WHEN isnull(i.InvStatus,0) in (5) THEN 1 ELSE 0 end),0) GPPending,
		ISNULL(SUM(CASE WHEN isnull(i.InvStatus,0) in (0,1,2,3,4,6) THEN isnull(i.InvAmount,0) ELSE 0 end),0) StkSticerPendingAmt,
		ISNULL(SUM(CASE WHEN isnull(i.InvStatus,0) in (5) THEN isnull(i.InvAmount,0) ELSE 0 end),0) StkGPPendingAmt
				
	from CFA.tblInvoiceHeader i WITH (NOLOCK)     
	WHERE (i.BranchId=@BranchId or @BranchId=0 ) and (i.CompId=@CompId or @CompId=0) and isnull(i.IsStockTransfer,0)=1
	and (InvStatus not in (7,8,9,20) or CAST(i.InvCreatedDate AS DATE)=CAST(GETDATE() AS DATE))

	declare @SOMDt datetime, @CummPL INT=0
	set @SOMDt= convert(varchar(4),datepart(yyyy, getdate()))+'-'+ convert(varchar(2),datepart(MM, getdate()))+'-01'
	print @SOMDt

	SELECT @CummPL=(select count(Picklistid) from  CFA.tblPickListHeader p WITH (NOLOCK) 
	where  (p.BranchId=@BranchId or @BranchId=0 ) and (p.CompId=@CompId or @CompId=0) and (p.IsStockTransfer=0)
	and (CAST(p.PicklistDate AS DATE) between cast(@SOMDt as date) AND cast(getdate() as date)))

	update @ResultCnt     
	set StkCummInvCnt=isnull(cm.CummInv,0),
		StkCummBoxCnt=isnull(cm.CummBox,0),
		StkCummPLCnt=isnull(@CummPL,0),
		LRPending= ISNULL(cm.LRPending,0)
	From (
		select isnull(sum(case when i.InvStatus = 7 and tm.LRDate is null then 1 else 0 End),0) LRPending,
		count(i.InvId) CummInv, sum(isnull(i.NoOfBox,0)) CummBox,sum(isnull(i.InvAmount,0)) CummSaleAmt
		from CFA.tblInvoiceHeader i left outer join CFA.tblAssignTransportMode tm on i.InvId=tm.InvoiceId
		WHERE (i.BranchId=@BranchId or @BranchId=0 ) and (i.CompId=@CompId or @CompId=0) and i.IsStockTransfer=0 
		and (InvStatus<>20) and CAST(i.InvCreatedDate AS DATE) between @SOMDt and CAST(GETDATE() AS DATE)
		) cm

	update @ResultCnt     
		set NoOfBoxes=b.BoxForGP
		from (  select 
		ISNULL(SUM(CASE WHEN i.InvStatus = 5 AND (isnull(tm.AttachedInvId,0)=0 OR AttachedInvId=InvId) THEN isnull(NoOfBox,0) ELSE 0 END),0) AS BoxForGP
		from CFA.tblAssignTransportMode tm with (nolock) inner join CFA.tblInvoiceHeader i with (nolock) on tm.InvoiceId=i.InvId    
		where (i.BranchId=@BranchId or @BranchId=0 ) and (i.CompId=@CompId or @CompId=0) and i.IsStockTransfer=1 
		and InvStatus not in (8,9,20)  
		) b
	    
		select InvPending,InvToday,ConcernPending,StkrToday,StkrPending, GPToday, GPPending	,StkCummInvCnt,StkCummBoxCnt,StkCummPLCnt,NoOfBoxes,LRPending,StkSticerPendingAmt,StkGPPendingAmt
	from @ResultCnt    
    
END    
GO
/****** Object:  StoredProcedure [CFA].[usp_DashChqRegCummDepositedListNew]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [CFA].[usp_DashChqRegCummDepositedListNew]
--declare  
@BranchId int,   
@CompId int  
--set @BranchId=1; set @CompId=1;  
as  
BEGIN  

	declare @SOMDt datetime, @CummDiposited INT=0
	set @SOMDt= convert(varchar(4),datepart(yyyy, getdate()))+'-'+ convert(varchar(2),datepart(MM, getdate()))+'-01'
	print @SOMDt

	SELECT  cq.ChqRegId,cq.ChqReceivedDate,s.StockistNo, CFA.fn_CamelCase(s.StockistName) StockistName,   
	  cq.StockistCity, CFA.fn_CamelCase(ct.CityName) CityName,cq.BankId, CFA.fn_CamelCase(bnk.MasterName) AS BankName, 
	  cq.IFSCCode, cq.AccountNo, cq.ChqNo, cq.ChqStatus, sts.StatusText as ChqStatusText,cq.ChqAmount,cq.DepositedDate,cq.LastUpdatedOn
	  FROM CFA.tblChequeRegister AS cq LEFT OUTER JOIN 
	  CFA.tblGeneralMaster AS bnk ON cq.BankId = bnk.pkId LEFT OUTER JOIN  
	  CFA.tblStockistMaster AS s ON cq.StokistId = s.StockistId LEFT OUTER JOIN 
	  CFA.tblCityMaster AS ct ON cq.StockistCity = ct.CityCode LEFT OUTER JOIN 
	  CFA.tblStatusMaster as sts on cq.ChqStatus = sts.id and sts.StatusFor='CHQ' LEFT OUTER JOIN 
	  CFA.tblGeneralMaster rm on cq.ReturnedReasonId = rm.pkId  
	 where  (cq.BranchId=@BranchId or @BranchId=0 ) and (cq.CompId=@CompId or @CompId=0) 
	and (CAST(cq.DepositedDate AS DATE) between cast(@SOMDt as date) AND cast(getdate() as date))

END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashInvInwardCummVehicleListNew]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--[CFA].[usp_DashInvInwardCummVehicleListNew] 1,1
CREATE PROCEDURE [CFA].[usp_DashInvInwardCummVehicleListNew]
--declare
@BranchId INT,
@CompId INT
--set @BranchId=1 set @CompId=1;
AS
BEGIN
	
	declare @SOMDt datetime, @CummPL INT=0
	set @SOMDt= convert(varchar(4),datepart(yyyy, getdate()))+'-'+ convert(varchar(2),datepart(MM, getdate()))+'-01'
	print @SOMDt

	SELECT distinct ti.TransitId,ti.InvNo,ti.InvoiceDate,ti.LrNo, ti.LrDate,ti.TransporterId,tm.TransporterNo,tm.TransporterName,ti.TotalCaseQty,
		ti.VehicleNo,ti.AddedOn
	FROM CFA.tblTransitInvoiceHeader ti LEFT OUTER JOIN 
		CFA.tblTransporterMaster as tm ON ti.TransporterId = tm.TransporterId LEFT OUTER JOIN
		CFA.tblMapInwardVehicle mv on ti.TransitId=mv.pkId
	WHERE  (ti.BranchId=@BranchId or @BranchId=0 ) and (ti.CompId=@CompId or @CompId=0) 
	and (CAST(ti.AddedOn AS DATE) between cast(@SOMDt as date) AND cast(getdate() as date))
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashOrderDispatchCummInvList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--  [CFA].[usp_DashOrderDispatchCummInvList] 1,1
CREATE PROC [CFA].[usp_DashOrderDispatchCummInvList]
@BranchId int,
@CompId int

AS 
BEGIN

	declare @SOMDt datetime
	set @SOMDt= convert(varchar(4),datepart(yyyy, getdate()))+'-'+ convert(varchar(2),datepart(MM, getdate()))+'-01'
	print @SOMDt

	SELECT i.InvId,i.InvNo,i.InvCreatedDate,i.NoOfBox,sm.StockistNo,sm.StockistName,i.InvAmount,i.IsStockTransfer
	FROM CFA.tblInvoiceHeader i left outer join 
	CFA.tblAssignTransportMode tm on i.InvId=tm.InvoiceId LEFT OUTER JOIN 
	CFA.tblStockistMaster sm ON sm.StockistId = i.SoldTo_StokistId
	WHERE (i.BranchId=@BranchId or @BranchId=0 ) and (i.CompId=@CompId or @CompId=0)
	and (InvStatus<>20) and CAST(i.InvCreatedDate AS DATE) between @SOMDt and CAST(GETDATE() AS DATE)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashOrderDispatchSmmryCnt]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---		CFA.usp_DashOrderDispatchSmmryCnt 1,1

CREATE PROC [CFA].[usp_DashOrderDispatchSmmryCnt]
--DECLARE
@BranchId INT,
@CompId INT
--set @BranchId=1 set @CompId=1;
AS
BEGIN 
SET FMTONLY OFF

	declare @DashInvList table(InvId bigint,InvCreatedDate datetime, InvAmount decimal(18,0),AttachedInvId bigint,NoOfBox int)--,CummInv int

	insert into @DashInvList (InvId, InvCreatedDate, InvAmount) 
	select i.InvId,i.InvCreatedDate,ISNULL(i.InvAmount,0)
	from CFA.tblInvoiceHeader i with (nolock) 
	where (i.BranchId=@BranchId OR @BranchId=0) AND (i.CompId=@CompId or @CompId=0) and i.IsStockTransfer=0
	and (i.InvStatus not in (7,8,9,20) or CAST(i.InvCreatedDate AS DATE)=CAST(GETDATE() AS DATE))

	update @DashInvList
	set NoOfBox=isnull(a.NoOfBox,0)
	from @DashInvList dt inner join 
	(
	select InvoiceId,ISNULL(CASE WHEN (tm.InvoiceId=tm.AttachedInvId or isnull(tm.AttachedInvId,0)=0) THEN i2.NoOfBox ELSE 0 END,0) AS NoOfBox
	from CFA.tblAssignTransportMode tm with (nolock) inner join CFA.tblInvoiceHeader i2 with (nolock) on tm.InvoiceId=i2.InvId
	where (i2.BranchId=@BranchId OR @BranchId=0) AND (i2.CompId=@CompId or @CompId=0) AND i2.IsStockTransfer=0
	) a on a.InvoiceId=dt.InvId 

	select  cast(InvCreatedDate as date) InvDate, count(InvId) InvCount, sum(isnull(InvAmount,0)) InvAmount, sum(isnull(NoOfBox,0)) NoOfBox
	from @DashInvList 
	group by cast(InvCreatedDate as date) order by cast(InvCreatedDate as date)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DashOrderDispCummPLListNew]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [CFA].[usp_DashOrderDispCummPLListNew]
--DECLARE
@BranchId INT,
@CompId INT
--set @BranchId=1 set @CompId=1;
AS
BEGIN 
declare @SOMDt datetime
	set @SOMDt= convert(varchar(4),datepart(yyyy, getdate()))+'-'+ convert(varchar(2),datepart(MM, getdate()))+'-01'
	print @SOMDt

	SELECT pl.PicklistNo,pl.PicklistDate,pl.FromInv,pl.ToInv,pl.PicklistStatus,pl.AllottedDate,pl.VerifiedDate,pl.IsStockTransfer,st.StatusText
	FROM CFA.tblPickListHeader pl left outer join 
		 CFA.tblstatusmaster as st ON pl.PicklistStatus=st.id AND st.StatusFor='PL'
	where  (pl.BranchId=@BranchId or @BranchId=0 ) and (pl.CompId=@CompId or @CompId=0) 
	and (CAST(pl.PicklistDate AS DATE) between cast(@SOMDt as date) AND cast(getdate() as date))
END	
GO
/****** Object:  StoredProcedure [CFA].[usp_DashStkTrnsferSmmryCnt]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---		CFA.usp_DashStkTrnsferSmmryCnt 1,1

CREATE PROC [CFA].[usp_DashStkTrnsferSmmryCnt]
--DECLARE
@BranchId INT,
@CompId INT
--set @BranchId=1 set @CompId=1;
AS
BEGIN 
SET FMTONLY OFF

	declare @DashInvList table(InvId bigint,InvCreatedDate datetime, InvAmount decimal(18,0),AttachedInvId bigint,NoOfBox int)--,CummInv int

	insert into @DashInvList (InvId, InvCreatedDate, InvAmount) 
	select i.InvId,i.InvCreatedDate,ISNULL(i.InvAmount,0)
	from CFA.tblInvoiceHeader i with (nolock) 
	where (i.BranchId=@BranchId OR @BranchId=0) AND (i.CompId=@CompId or @CompId=0) and i.IsStockTransfer=1
	and (i.InvStatus not in (7,8,9,20) or CAST(i.InvCreatedDate AS DATE)=CAST(GETDATE() AS DATE))

	update @DashInvList
	set NoOfBox=isnull(a.NoOfBox,0)
	from @DashInvList dt inner join 
	(
	select InvoiceId,ISNULL(CASE WHEN (tm.InvoiceId=tm.AttachedInvId or isnull(tm.AttachedInvId,0)=0) THEN i2.NoOfBox ELSE 0 END,0) AS NoOfBox
	from CFA.tblAssignTransportMode tm with (nolock) inner join CFA.tblInvoiceHeader i2 with (nolock) on tm.InvoiceId=i2.InvId
	where (i2.BranchId=@BranchId OR @BranchId=0) AND (i2.CompId=@CompId or @CompId=0) AND i2.IsStockTransfer=1
	) a on a.InvoiceId=dt.InvId 

	select  cast(InvCreatedDate as date) StkInvDate, count(InvId) StkInvCount, sum(isnull(InvAmount,0)) StkInvAmount, sum(isnull(NoOfBox,0)) StkNoOfBox
	from @DashInvList 
	group by cast(InvCreatedDate as date) order by cast(InvCreatedDate as date)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DeleteVehicleChecklistDetailsForMob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_DeleteVehicleChecklistDetailsForMob]
@TransitId bigint,
@BranchId int,
@CompId int,
@ChkListMstId bigint,
@RetValue int output
AS
BEGIN
	SET @RetValue=0

	--BEGIN
	--DELETE FROM CFA.tblInvInVehicleChecklistDtls WHERE ChkListMstId=@ChkListMstId
	--DELETE FROM CFA.tblInvInVehicleChecklistMst WHERE (BranchId = @BranchId AND CompId=@CompId AND ChkListMstId=@ChkListMstId)
	--SET @RetValue=@ChkListMstId
	--END
	--SET @RetValue=-1

	UPDATE CFA.tblMapInwardVehicle SET IsChecklistDone=0,LastUpdatedOn=GETDATE()
	WHERE BranchId=@BranchId AND CompId=@CompId AND TransitId=@TransitId
	
	SET @RetValue=@TransitId

	RETURN @RetValue
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DivisionMasterAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_DivisionMasterAddEdit]
@BranchId	int	,
@CompanyId	int	,
@DivisionId	int,
@DivisionCode	nvarchar(10),
@DivisionName	nvarchar(50),
@FloorName	nvarchar(50),
@IsColdStorage	int,
@IsActive	char(1),
@AddedBy	nvarchar(100),
@Action	nvarchar(10),
@RetValue	int output

AS
BEGIN
	set @RetValue=0
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin
		if not exists(select DivisionId from CFA.tblDivisionMaster where BranchId=@BranchId and CompanyId=@CompanyId and (DivisionCode=@DivisionCode or DivisionName=@DivisionName))
		Begin
			insert into CFA.tblDivisionMaster(BranchId,CompanyId,DivisionCode, DivisionName, FloorName, IsColdStorage, IsActive, AddedBy, AddedOn, LastUpdatedOn) 
			values(@BranchId,@CompanyId,@DivisionCode, @DivisionName, @FloorName, @IsColdStorage, @IsActive, @AddedBy, getdate(), getdate())
			set @RetValue=SCOPE_IDENTITY()
		End
		else 
		Begin
			set @RetValue=-1	-- Division with DivisionCode and name exists
		End
	End
	else if (upper(ltrim(rtrim(@Action)))='EDIT')
	Begin
		if not exists(select DivisionId from CFA.tblDivisionMaster where (DivisionCode=@DivisionCode or DivisionName=@DivisionName) and DivisionId<>@DivisionId)
		Begin
			update CFA.tblDivisionMaster 
			set DivisionCode=@DivisionCode,
				DivisionName=@DivisionName,
				FloorName=@FloorName,
				IsColdStorage=@IsColdStorage,
				Addedby=@Addedby,
				LastUpdatedOn=GETDATE()
			 where DivisionId=@DivisionId

			set @RetValue=@DivisionId
		End
		else 
		Begin
			set @RetValue=-1	-- Division with DivisionCode and name exists
		End
	End
	else if (upper(ltrim(rtrim(@Action)))='STATUS')
	Begin
		update CFA.tblDivisionMaster set IsActive=@IsActive, LastUpdatedOn=GETDATE() where  DivisionId=@DivisionId
		set @RetValue=@DivisionId
	End
	else
	Begin
		set @RetValue=-2
	End	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_DivisionMasterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_DivisionMasterList] 
@Status varchar(10)

as
BEGIN
	SELECT d.BranchId,d.DivisionId, d.DivisionCode,cfa.fn_CamelCase(d.DivisionName)DivisionName,cfa.fn_CamelCase(d.FloorName)FloorName, d.IsColdStorage,cfa.fn_CamelCase(g.MasterName) as SupplyType, 
	d.IsActive, d.AddedBy, d.AddedOn, d.LastUpdatedOn
	FROM CFA.tblDivisionMaster d left outer join CFA.tblgeneralmaster g on d.IsColdStorage=g.pkId 
	where (upper(d.IsActive)=upper(@Status) or upper(@Status)='ALL')
END
GO
/****** Object:  StoredProcedure [CFA].[usp_EmailConfigurationAdd]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
  
CREATE PROC [CFA].[usp_EmailConfigurationAdd]  
--DECLARE  
@BranchId int,  
@CompanyId int,  
@EmailForId int,  
@EmailCCPersonId varchar(max),  
@RetValue int output  
  
--set @BranchId=1;set @CompanyId=1;set @EmailForId=1; set @EmailCCPersonId='1,2';  
  
AS  
BEGIN  
  
 set @RetValue=0  
 
	delete from CFA.tblEmailConfiguration where BranchId=@BranchId and CompanyId=@CompanyId and EmailForId=@EmailForId 
    
	insert into CFA.tblEmailConfiguration(BranchId,CompanyId,EmailForId,EmailCCPersonId,Name,Email,LastUpdatedDate)  
	select @BranchId,@CompanyId, @EmailForId,a.value,e.Name,e.Email,getdate()   
	from CFA.fn_StringSplit(@EmailCCPersonId,',') a inner join CFA.tblEmailCCPerson e on a.value=e.EmailCCPersonId  
  
 set @RetValue=scope_identity()    
END
GO
/****** Object:  StoredProcedure [CFA].[usp_EmployeeCompanyDetails]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_EmployeeCompanyDetails]
@EmpId int

AS
BEGIN
	SELECT e.EmpId, ec.CompanyId, cfa.fn_CamelCase(c.CompanyName) CompanyName, c.CompanyCode,ct.CityCode,cfa.fn_CamelCase(ct.CityName) CityName, 
	b.BranchCode, cfa.fn_CamelCase(b.BranchName) BranchName
	FROM CFA.tblEmployeeMaster e left outer join 
		CFA.tblEmployeeCompanyMapping AS ec on e.EmpId=ec.EmpId LEFT OUTER JOIN
		CFA.tblBranchMaster AS b ON e.BranchId = b.BranchId LEFT OUTER JOIN
		CFA.tblCompanyMaster AS c ON ec.CompanyId = c.CompanyId
		left outer join CFA.tblCityMaster ct on c.CompanyCity=ct.CityCode
	where e.EmpId=@EmpId and e.IsActive='Y'
END

GO
/****** Object:  StoredProcedure [CFA].[usp_EmployeeMasterActivate]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_EmployeeMasterActivate]
@EmpId	int,
@IsActive	char(1),
@Addedby	nvarchar(50),
@RetValue	int output

AS
BEGIN
	set @RetValue=0
	update CFA.tblEmployeeMaster set IsActive=@IsActive, Addedby=@Addedby, LastUpdatedOn=getdate() where EmpId=@EmpId
	update CFA.tblUser set IsActive=@IsActive,Addedby=@Addedby,LastUpdatedOn=getdate() where EmpId=@EmpId
	set @RetValue=@EmpId
END
GO
/****** Object:  StoredProcedure [CFA].[usp_EmployeeMasterAdd]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_EmployeeMasterAdd]  
--declare
@BranchId int,  
@EmpNo nvarchar(20),  
@EmpName nvarchar(100),  
@EmpPAN nvarchar(10),  
@EmpEmail nvarchar(250),  
@EmpMobNo nvarchar(30),  
@EmpAddress nvarchar(250),  
@CityCode nvarchar(20),  
@DesignationId bigint,  
@BloodGroup varchar(5),  
@AadharNo varchar(25),  
@companyStr nvarchar(max),  
@Addedby nvarchar(50),  
@RetValue int output  

--set @BranchId =4  ; set @EmpNo='007'; set @EmpName ='Appa'; set @EmpPAN ='HTR123432'; set @EmpEmail ='arun@gmail.com';
-- set @EmpMobNo ='8877120912'; set @EmpAddress ='xyz'
--; set @CityCode ='1'; set @DesignationId =28; set @BloodGroup ='9'; set @AadharNo ='672843782'; set @companyStr ='1,'; set @Addedby ='2'; 
  

AS  
BEGIN  
	set @RetValue=0; declare @NewEmpId int,  @NewUserId int  
  
	if exists(select EmpId from CFA.tblEmployeeMaster where isnull(@EmpNo,'0') <>'0' and EmpNo=@EmpNo)
		set @RetValue=-1
	Else if exists(select EmpId from CFA.tblEmployeeMaster where EmpEmail=@EmpEmail)
		set @RetValue=-2
	else if exists(select EmpId from CFA.tblEmployeeMaster where EmpMobNo=@EmpMobNo)
		set @RetValue=-3
	else  
	Begin  -- Add Employee   
		insert into CFA.tblEmployeeMaster(BranchId, EmpNo, EmpName, EmpPAN, EmpEmail, EmpMobNo, EmpAddress, CityCode,  
		DesignationId,BloodGroup, AadharNo,IsUser, IsActive, Addedby, AddedOn, LastUpdatedOn)   
		values(@BranchId, @EmpNo, @EmpName, @EmpPAN, @EmpEmail, @EmpMobNo, @EmpAddress, @CityCode,   
		@DesignationId,nullif(@BloodGroup,''),@AadharNo,'N', 'Y', @Addedby, getdate(), getdate())  
		set @NewEmpId=SCOPE_IDENTITY()  
		set @RetValue=@NewEmpId  
  
		if (@NewEmpId>0 and isnull(@companyStr,'')<>'') -- Add company mapping  
		Begin  
			delete from CFA.tblEmployeeCompanyMapping where EmpId=@NewEmpId   -- delete old records, then insert new  
			insert into CFA.tblEmployeeCompanyMapping(EmpId,CompanyId,Addedby,AddedOn,LastUpdatedOn)   
			select @NewEmpId,value,@Addedby,getdate(),getdate() from CFA.fn_StringSplit(@companyStr,',')  
		End
	End
	return @RetValue
END
GO
/****** Object:  StoredProcedure [CFA].[usp_EmployeeMasterEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_EmployeeMasterEdit]  
@EmpId int,  
@BranchId int,  
@EmpName nvarchar(100),  
@EmpPAN nvarchar(10),  
@EmpEmail nvarchar(250),  
@EmpMobNo nvarchar(30),  
@EmpAddress nvarchar(250),  
@CityCode nvarchar(20),  
@DesignationId bigint,  
@BloodGroup varchar(5),  
@AadharNo varchar(25),  
@companyStr nvarchar(max), 
@Addedby nvarchar(50),  
@RetValue int output  
  
AS  
BEGIN  
	set @RetValue=0  ;   declare @UserId int

	if exists(select EmpId from CFA.tblEmployeeMaster where EmpEmail=@EmpEmail and EmpId<>@EmpId)
		set @RetValue=-2
	else if exists(select EmpId from CFA.tblEmployeeMaster where EmpMobNo=@EmpMobNo and EmpId<>@EmpId)
		set @RetValue=-3
	else 
	Begin  
		update CFA.tblEmployeeMaster  
		set BranchId=@BranchId,
			EmpName=@EmpName,   
			EmpPAN=@EmpPAN,   
			EmpEmail=@EmpEmail,   
			EmpMobNo=@EmpMobNo,   
			EmpAddress=@EmpAddress,   
			CityCode=@CityCode,  
			DesignationId=@DesignationId,  
			BloodGroup=nullif(@BloodGroup,''),  
			AadharNo=@AadharNo,   
			Addedby=@Addedby,   
			LastUpdatedOn=getdate()  
		where EmpId=@EmpId  
  
		set @RetValue=@EmpId  
		If exists(select EmpId from CFA.tblUser where EmpId=@EmpId)
		Begin
			update tblUser set DisplayName=@EmpName,BranchId=@BranchId where EmpId=@EmpId
		End

		if (@EmpId>0 and isnull(@companyStr,'')<>'')  
		Begin  
			delete from CFA.tblEmployeeCompanyMapping where EmpId=@EmpId  -- delete old records, then insert new  
			insert into CFA.tblEmployeeCompanyMapping(EmpId,CompanyId,Addedby,AddedOn,LastUpdatedOn)   
			select @EmpId,[value],@Addedby,getdate(),getdate() from CFA.fn_StringSplit(@companyStr,',')  
		End
	End  
END
GO
/****** Object:  StoredProcedure [CFA].[usp_EmployeeMasterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_EmployeeMasterList] 
--declare
@BranchId int,
@Status varchar(10)
--set @BranchId=0; set @Status='ALL'
AS
BEGIN
	SELECT u.UserId,e.EmpId, e.BranchId, e.EmpNo, b.BranchCode, cfa.fn_CamelCase(b.BranchName) BranchName, cfa.fn_CamelCase(e.EmpName) EmpName, 
	upper(e.EmpPAN) EmpPAN, e.EmpEmail, e.EmpMobNo, 
		cfa.fn_CamelCase(e.EmpAddress) EmpAddress, e.CityCode, cfa.fn_CamelCase(ct.CityName) CityName, e.DesignationId, cfa.fn_CamelCase(d.MasterName) DesignationName, 
		e.BloodGroup as pkId, cfa.fn_CamelCase(g.MasterName) BloodGroupName, e.AadharNo, e.IsUser, e.IsActive, 
		e.Addedby, e.AddedOn, e.LastUpdatedOn, u.RoleId, cfa.fn_CamelCase(u.UserName) UserName, u.Password, u.IsActive AS UserStatus
	FROM CFA.tblEmployeeMaster AS e LEFT OUTER JOIN
		CFA.tblUser AS u ON e.EmpId = u.EmpId LEFT OUTER JOIN
		CFA.tblCityMaster AS ct ON e.CityCode = ct.CityCode LEFT OUTER JOIN
		CFA.tblBranchMaster AS b ON e.BranchId = b.BranchId LEFT OUTER JOIN
		CFA.tblGeneralMaster AS g ON g.pkId = e.BloodGroup left outer join
		CFA.tblGeneralMaster As d on d.pkId = e.DesignationId
	where (e.BranchId=@BranchId or @BranchId=0) and (upper(e.IsActive)=upper(@Status) or upper(@Status)='ALL')
	and isnull(u.UserId,0)<>1
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ExpenseRegisterAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_ExpenseRegisterAddEdit]
@ExpInvId int,
@BranchId int,
@InvTypeId int,
@VendorId int,
@TransId int,
@CourierId int,
@ExpInvNo nvarchar(50),
@InvDate datetime,
@CompId int,
@ExpHeadId int,
@NoOfBox int,
@InvFromDt	datetime,
@InvToDt	datetime,
@IsGSTApply	char(1),
@TaxableAmt int,
@CGST decimal(18,2),
@SGST decimal(18,2),
@TaxId int,
@TotalAmt decimal(18,2),
@IsReimbursable char(1),
@ExpInvStatus int,
@AddedBy int,
@Action	nvarchar(20),
@RetValue int OUTPUT

As

BEGIN
set @RetValue=0
	If(@Action='ADD')
	Begin
		if not exists(select * from CFA.tblExpenseRegister where VendorId=@VendorId AND ExpInvNo = @ExpInvNo)
		Begin
			insert into CFA.tblExpenseRegister(BranchId, InvTypeId, VendorId, TransId, CourierId, ExpInvNo, InvDate, CompId, 
				ExpHeadId, NoOfBox, InvFromDt, InvToDt, IsGSTApply, TaxableAmt, CGST, SGST,TaxId, TotalAmt, IsReimbursable, 
				ExpInvStatus, AddedBy, AddedOn, LastUpdatedOn)
			values (@BranchId, @InvTypeId, @VendorId, @TransId, @CourierId, @ExpInvNo, @InvDate, @CompId, 
				@ExpHeadId, @NoOfBox, @InvFromDt, @InvToDt, @IsGSTApply, @TaxableAmt, @CGST, @SGST,@TaxId, @TotalAmt, @IsReimbursable, 
				0, @AddedBy,getdate(),getdate())  -- 0 For Pending while adding new Expense invoice
			set @RetValue=SCOPE_IDENTITY()
			if (@RetValue>0)
			Begin
				if (isnull(@TransId,0)>0)
				Begin
					insert into CFA.tblExpenseRegisterDtls(ExpInvId, GPDate, GatepassId, NoOfInv, GPNoOfBox, TranspNoOfBox, 
						CityCode, Rate, FreightAmt, DtlsStatus, AddedBy, LastUpdatedOn)
					select @RetValue, cast(g.GatepassDate as date) GPDate, g.GatepassId,count(isnull(gd.InvId,0)) GPInv,sum(isnull(i.NoOfBox,0)) GPBox,
						sum(isnull(i.NoOfBox,0)) TPBox,isnull(i.SoldTo_City,0) CityCode,isnull(t.RatePerBox,0) RatePerBox,
						sum(isnull(i.NoOfBox,0)) * isnull(t.RatePerBox,0)FreightAmt, 0, @AddedBy, getdate()
					From CFA.tblGenerateGatepass g inner join CFA.tblGenerateGatepassDetails gd on g.GatepassId=gd.GatepassId
						inner join CFA.tblInvoiceHeader i on gd.InvId=i.InvId
						inner join CFA.tblAssignTransportMode tm on gd.InvId=tm.InvoiceId
						inner join CFA.tblTransporterMaster t on tm.TransporterId=t.TransporterId
						inner join CFA.tblTransporterParentMapping tpm on t.TransporterId=tpm.TransporterId
					where g.CompId=@CompId and g.BranchId=@BranchId and tpm.TPId=@TransId
						and cast(g.GatepassDate as date) between cast(@InvFromDt as date) and cast(@InvToDt as date)
					group by cast(g.GatepassDate as date),g.GatepassId,i.SoldTo_City,t.RatePerBox
				End
				else if (isnull(@CourierId,0)>0)
				Begin
					insert into CFA.tblExpenseRegisterDtls(ExpInvId, GPDate, GatepassId, NoOfInv, GPNoOfBox, TranspNoOfBox, 
						CityCode, Rate, FreightAmt, DtlsStatus, AddedBy, LastUpdatedOn)
					select @RetValue, cast(g.GatepassDate as date) GPDate, g.GatepassId,count(isnull(gd.InvId,0)) GPInv,sum(isnull(i.NoOfBox,0)) GPBox,
						sum(isnull(i.NoOfBox,0)) TPBox,isnull(i.SoldTo_City,0) CityCode,isnull(c.RatePerBox,0) RatePerBox,
						sum(isnull(i.NoOfBox,0)) * isnull(c.RatePerBox,0)FreightAmt, 0, @AddedBy, getdate()
					From CFA.tblGenerateGatepass g inner join CFA.tblGenerateGatepassDetails gd on g.GatepassId=gd.GatepassId
						inner join CFA.tblInvoiceHeader i on gd.InvId=i.InvId
						inner join CFA.tblAssignTransportMode tm on gd.InvId=tm.InvoiceId
						inner join CFA.tblCourierMaster c on tm.CourierId=c.CourierId
						inner join CFA.tblCourierParentMapping cpm on c.CourierId=cpm.CourierId
					where g.CompId=@CompId and g.BranchId=@BranchId and cpm.CPid=@CourierId
						and cast(g.GatepassDate as date) between cast(@InvFromDt as date) and cast(@InvToDt as date)
					group by cast(g.GatepassDate as date),g.GatepassId,i.SoldTo_City,c.RatePerBox
				End
			End
		End
		else
			set @RetValue=-1
	End
	If(@Action='EDIT')
	Begin
		Begin
			Update CFA.tblExpenseRegister 
			set InvTypeId=@InvTypeId, 
				VendorId=@VendorId, 
				TransId=@TransId,
				CourierId = @CourierId,
				ExpInvNo=@ExpInvNo, 
				InvDate=@InvDate, 
				CompId=@CompId,
				ExpHeadId=@ExpHeadId,
				NoOfBox=@NoOfBox, 
				InvFromDt=@InvFromDt, 
				InvToDt=@InvToDt, 
				IsGSTApply=@IsGSTApply,
				TaxableAmt=@TaxableAmt, 
				CGST=@CGST, 
				SGST=@SGST,
				TaxId=@TaxId, 
				TotalAmt=@TotalAmt, 
				IsReimbursable=@IsReimbursable, 
				LastUpdatedOn=getdate() 
			where ExpInvId=@ExpInvId
			if (@ExpInvId>0)
			Begin
				delete from CFA.tblExpenseRegisterDtls where ExpInvId=@ExpInvId
				insert into CFA.tblExpenseRegisterDtls(ExpInvId, GPDate, GatepassId, NoOfInv, GPNoOfBox, TranspNoOfBox, 
					Rate, FreightAmt, DtlsStatus, AddedBy, LastUpdatedOn)
				select @RetValue, cast(g.GatepassDate as date) GPDate, g.GatepassId,count(isnull(gd.InvId,0)) GPNoOfInv,
					sum(isnull(i.NoOfBox,0)) GPNoOfBox,sum(isnull(i.NoOfBox,0)) TranspNoOfBox,
					case when tm.CourierId>0 then isnull(c.RatePerBox,0) else isnull(t.RatePerBox,0) end RatePerBox,
					case when tm.CourierId>0 then sum(isnull(i.NoOfBox,0)) * isnull(c.RatePerBox,0) 
						else sum(isnull(i.NoOfBox,0)) * isnull(t.RatePerBox,0) end FreightAmt,
					0,@AddedBy,getdate()
				From CFA.tblGenerateGatepass g inner join CFA.tblGenerateGatepassDetails gd on g.GatepassId=gd.GatepassId
					inner join CFA.tblInvoiceHeader i on gd.InvId=i.InvId
					inner join CFA.tblAssignTransportMode tm on gd.InvId=tm.InvoiceId
					left outer join CFA.tblTransporterMaster t on tm.TransporterId=t.TransporterId
					left outer join CFA.tblCourierMaster c on tm.CourierId=c.CourierId
				where g.CompId=@CompId and g.BranchId=@BranchId and (tm.TransporterId=@TransId or tm.CourierId=@TransId) 
					and cast(g.GatepassDate as date) between cast(@InvFromDt as date) and cast(@InvToDt as date)
				group by cast(g.GatepassDate as date),g.GatepassId,tm.CourierId,t.RatePerBox,c.RatePerBox
			End

			set @RetValue=@ExpInvId
		End
	End
	If(@Action='DELETE')
	Begin
		Begin
		if not exists(select * from CFA.tblExpenseRegister where ExpInvId=@ExpInvId and isnull(ExpInvStatus,0) > 0)
			Begin
				delete from CFA.tblExpenseRegisterDtls where ExpInvId=@ExpInvId
				Delete from CFA.tblExpenseRegister where ExpInvId=@ExpInvId
				set @RetValue=@ExpInvId
			End
		else
			set @RetValue=-1
		End
	End
	If(@Action='STATUS')
	Begin
		update CFA.tblExpenseRegister set ExpInvStatus=@ExpInvStatus, LastUpdatedOn=getdate() where ExpInvId=@ExpInvId
		set @RetValue=@ExpInvId
	End
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ExpenseRegisterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [CFA].[usp_ExpenseRegisterList] 
@BranchId int

As

Begin
	Select Er.ExpInvId, Er.BranchId, InvTypeId, ExpInvNo, InvDate, CompId, cm.CompanyName, ExpHeadId, H.HeadName, NoOfBox, TaxableAmt, 
		Er.CGST,Er. SGST, TotalAmt, IsReimbursable, Er.AddedBy, Er.VendorId, V.VendorName, TransId, T.ParentTranspName, CourierId, C.ParentCourierName,
		case when isnull(Er.TransId,0)>0  then T.ParentTranspName  
			 when isnull(Er.CourierId,0)>0  then C.ParentCourierName else V.VendorName End BillFromName,
		(TotalAmt - sum(ISNULL(Erp.PaymentAmt,0))) as Balance, 
        Er.InvFromDt, Er.InvToDt, Er.IsGSTApply, Er.ExpInvStatus, s.StatusText as ExpInvStatusText,tx.TaxId,tx.GSTType
	from CFA.tblExpenseRegister as Er Left Outer Join
		CFA.tblExpenseRegisterPayment as Erp on  Er.ExpInvId = Erp.ExpInvId Left Outer Join
		CFA.tblVendorMaster as V on Er.VendorId = V.VendorId Left Outer Join
		CFA.tblTransporterParentMst as T on Er.TransId = T.Tpid Left Outer Join
		CFA.tblCourierParentMst as C on Er.CourierId = C.Cpid Left Outer Join
		CFA.tblCompanyMaster as cm on Er.CompId = cm.CompanyId Left Outer Join
		CFA.tblHeadMaster as H on Er.ExpHeadId = H.pkId LEFT OUTER JOIN
		CFA.tblTAXMaster as tx on Er.TaxId=tx.TaxId LEFT OUTER JOIN
        CFA.tblStatusMaster AS s ON Er.ExpInvStatus = s.id and s.StatusFor='ExpInv'
	where Er.BranchId=@BranchId
	group by Er.ExpInvId, Er.BranchId, InvTypeId, ExpInvNo, InvDate, CompId, cm.CompanyName, ExpHeadId, H.HeadName, NoOfBox, TaxableAmt, 
		Er.CGST, Er.SGST, TotalAmt, IsReimbursable, Er.AddedBy, Er.VendorId, V.VendorName, TransId, T.ParentTranspName, CourierId, C.ParentCourierName,
		Er.InvFromDt, Er.InvToDt, Er.IsGSTApply, Er.ExpInvStatus, s.StatusText,tx.TaxId,tx.GSTType
End

GO
/****** Object:  StoredProcedure [CFA].[usp_ExpenseRegisterPaymentAdd]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [CFA].[usp_ExpenseRegisterPaymentAdd]
--declare
@ExpPaymentId int,
@ExpInvId int,
@PaymentDate datetime,
@TDS decimal(18,2),
@PaymentAmt int,
@PayMode int,
@UTRNo nvarchar(50),
@Remark	nvarchar(500),
@AddedBy nvarchar(50),
@Action nvarchar(20),
@RetValue int OUTPUT

as
BEGIN
set @RetValue=0
	If(@Action='ADD')
	Begin
		if (@PaymentAmt>0 and @ExpInvId>0)
		Begin
			insert into CFA.tblExpenseRegisterPayment(ExpInvId,PaymentDate,TDS,PaymentAmt,PayMode,UTRNo,Remark,AddedBy,LastUpdatedOn)
			values (@ExpInvId,@PaymentDate,@TDS,@PaymentAmt,@PayMode,@UTRNo,@Remark,@AddedBy,getdate())
			set @RetValue=SCOPE_IDENTITY()	
		End
		else
			set @RetValue=-1
	End
	If(@Action='DELETE')
	Begin
		Delete from CFA.tblExpenseRegisterPayment where ExpPaymentId=@ExpPaymentId
		set @RetValue=@ExpInvId
	End
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ExpenseRegisterPaymentList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [CFA].[usp_ExpenseRegisterPaymentList] 
--declare
@ExpInvId int

AS

BEGIN
	SELECT i.ExpInvNo, p.ExpPaymentId, p.ExpInvId, p.PaymentDate, p.TDS, p.PaymentAmt, p.PayMode, 
	g.MasterName as PaymentModeText, p.UTRNo, p.Remark
	FROM CFA.tblExpenseRegisterPayment AS p WITH (nolock) inner join CFA.tblExpenseRegister i WITH (nolock) on p.ExpInvId=i.ExpInvId
		LEFT OUTER JOIN CFA.tblGeneralMaster AS g WITH (nolock) ON p.PayMode = g.pkId
	WHERE p.ExpInvId=@ExpInvId 
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ExpInvResConcern]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Proc [CFA].[usp_ExpInvResConcern]

@ExpInvDtlsId int,
@Status int,
@Remark varchar(500),
@Retval int Output

AS 

Begin
	Declare @ExpInvId int;
	if exists(select ExpInvDtlsId from CFA.tblExpenseRegisterDtls where ExpInvDtlsId=@ExpInvDtlsId)
		Begin
			update CFA.tblExpenseRegisterDtls set DtlsStatus = @Status, ResolveRemark = @Remark where ExpInvDtlsId = @ExpInvDtlsId

			set @ExpInvId =(select ExpInvId from CFA.tblExpenseRegisterDtls where ExpInvDtlsId = @ExpInvDtlsId);

			if exists (select ExpInvId from CFA.tblExpenseRegisterDtls where ExpInvId=@ExpInvId and DtlsStatus=1)
				Begin
					update CFA.tblExpenseRegister set ExpInvStatus=1 where  ExpInvId=@ExpInvId
				End
			else if exists(select ExpInvId from CFA.tblExpenseRegisterDtls where ExpInvId=@ExpInvId and DtlsStatus=0)
				Begin
					update CFA.tblExpenseRegister set ExpInvStatus=0 where  ExpInvId=@ExpInvId
				End
			else
				Begin
					update CFA.tblExpenseRegister set ExpInvStatus=2 where  ExpInvId=@ExpInvId
				End
			set @Retval = @ExpInvDtlsId;
		End
	Else
		Begin
			set @Retval = -1;
		End
End
GO
/****** Object:  StoredProcedure [CFA].[usp_ExpiryStockistNotificationDashboard]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- [CFA].[usp_ExpiryStockistNotificationDashboard] 0, 0,''
CREATE PROC [CFA].[usp_ExpiryStockistNotificationDashboard]
--declare
@BranchId INT,
@CompId INT,
@Flag nvarchar(10)=''
AS 
BEGIN

	SET FMTONLY OFF
	IF (UPPER(LTRIM(RTRIM(@Flag))) = 'BR') --For BranchAdmin
		begin
		select BranchId=@BranchId,CompId=@CompId, count(s.StockistId) DLFoodNotiCnt
		from CFA.tblStockistMaster AS s
		Where (cast(s.DLExpDate as date)<=cast(dateadd(dd,10,getdate()) as date) or  cast(s.FoodLicExpDate as date)<=cast(dateadd(dd,10,getdate()) as date))
		and s.StockistId in (select StockiestId from CFA.tblStockiestBranchRelation where BranchId=@BranchId or @BranchId=0)
	    and s.StockistId in (select StockiestId from CFA.tblStockiestCompanyRelation where CompId=@CompId or @CompId=0)
		--group by sb.BranchId, cb.CompId
	end
	ELSE
	begin
		select  BranchId=0, CompId=0, count(s.StockistId) DLFoodNotiCnt
		from CFA.tblStockistMaster AS s
		Where (cast(s.DLExpDate as date)<=cast(dateadd(dd,10,getdate()) as date) or  cast(s.FoodLicExpDate as date)<=cast(dateadd(dd,10,getdate()) as date))
		and s.StockistId in (select StockiestId from CFA.tblStockiestBranchRelation where BranchId=@BranchId or @BranchId=0)
	    and s.StockistId in (select StockiestId from CFA.tblStockiestCompanyRelation where CompId=@CompId or @CompId=0)
		--group by sb.BranchId, cb.CompId
	end
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ExpiryStockistNotiList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--[CFA].[usp_ExpiryStockistNotiList] 1,1
CREATE PROC  [CFA].[usp_ExpiryStockistNotiList] 
--declare
@BranchId INT,
@CompId INT

AS
BEGIN
	SELECT s.StockistId,s.StockistNo,s.StockistName,s.Emailid,s.DLNo,s.DLExpDate,
	s.FoodLicNo,s.FoodLicExpDate,s.Addedby,s.LastUpdatedOn,
    CASE WHEN (CAST(s.DLExpDate AS DATE) <=CAST(dateadd(dd,10,GETDATE()) AS DATE)) THEN 1 ELSE 0 END DLExpDateCount,
    CASE WHEN (CAST(s.FoodLicExpDate AS DATE) <=CAST(dateadd(dd,10,GETDATE()) AS DATE)) THEN 1 ELSE 0 END FoodLicExpDateCount
	from CFA.tblStockistMaster AS s
	Where (CAST(s.DLExpDate AS DATE) <=CAST(dateadd(dd,10,GETDATE()) AS DATE) or CAST(s.FoodLicExpDate AS DATE) <=CAST(dateadd(dd,10,GETDATE()) AS DATE))
	and s.StockistId in (select StockiestId from CFA.tblStockiestBranchRelation where BranchId=@BranchId or @BranchId=0)
	and s.StockistId in (select StockiestId from CFA.tblStockiestCompanyRelation where CompId=@CompId or @CompId=0)
END

GO
/****** Object:  StoredProcedure [CFA].[usp_ExpirySupervisorDashboard_Mob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- cfa.usp_ExpirySupervisorDashboard_Mob 1,1
-- Expiry supervisor dashboard loading time is more
CREATE proc [CFA].[usp_ExpirySupervisorDashboard_Mob]
--declare
@BranchId int,
@CompId int
--set @BranchId=1; set @CompId=1;
as
begin

	select gp.BranchId,gp.CompId,gp.LREntryId,gp.LREntryDate,gp.LREntryNo,gp.StockistId,sm.StockistNo,
		CFA.fn_CamelCase(sm.StockistName) StockistName,gp.City,CFA.fn_CamelCase(c.CityName) CityName,gp.TransporterId,
		CFA.fn_CamelCase(tm.TransporterName) TransporterName,gp.CourierId,CFA.fn_CamelCase(cm.CourierName) CourierName,
		CFA.fn_CamelCase(gp.OtherTrasport) OtherTrasport,gp.LRNo,gp.LRDate,gp.NoOfBox,gp.AmountPaid,gp.CashmemoDate,
		gp.ClaimFormAvailable,gp.GoodsReceived,gp.GatepassNo,gp.ReceiptDate,gp.RecvdAtOP,gp.RecvdAtOPDate,
		isnull(CFA.fn_CamelCase(tm.TransporterName),cm.CourierName)+isnull(CFA.fn_CamelCase(cm.CourierName),
		tm.TransporterName) TransCourName,isnull(pc.PhyChkId,0) PhyChkId,
		case when (isnull(pc.PhyChkId,0)=0) then datediff(dd, gp.LREntryDate,getdate()) else 0 end as PhyChkAgeing,
		case when (isnull(gp.GoodsReceived,0)=0) then datediff(dd, gp.LREntryDate,getdate()) else 0 end as GoodNotRecAgeing,
		case when (isnull(gp.ClaimFormAvailable,0)=0) then datediff(dd, gp.LREntryDate,getdate()) else 0 end as ClaimMissingAgeing,
		pc.ReturnCatId,gm.MasterName as RetCatName,pc.ClaimNo,pc.ClaimDate,pc.ClaimStatus,pc.ConcernId,gm.MasterName AS ConcernText,
		pc.ConcernRemark,pc.ConcernDate,pc.ConcernBy,cbn.DisplayName as ConcernByName,pc.ResolveConcernBy,rcbn.DisplayName as ResolveConcernByName,
		pc.ResolveConcernDate,pc.ResolveRemark,s.SRSId,isnull(s.IsVerified, 'N') AS IsVerified,isnull(s.IsCorrectionReq, 'N') as IsCorrectionReq,
		s.CorrectionReqRemark,s.VerifyCorrectionBy,s.VerifyCorrectionDate,--isnull(achk.IsVerified, 'N') AS AudIsVerified,isnull(achk.IsCorrectionReq, 'N') as AudIsCorrectionReq,
		case when VerifyCorrectionDate is null then datediff(dd, gp.LREntryDate, getdate()) else 0 end as AuditChkAgeing,s.SalesDocNo
	from CFA.tblInwardGatePass as gp with(nolock) left outer join CFA.tblStockistMaster AS sm on gp.StockistId=sm.StockistId
		left outer join CFA.tblCityMaster as c with(nolock) on gp.City=c.CityCode 
		left outer join CFA.tblTransporterMaster as tm with(nolock) on gp.TransporterId=tm.TransporterId
		left outer join CFA.tblCourierMaster as cm with(nolock) on gp.CourierId=cm.CourierId		
		left outer join CFA.tblPhysicalCheck1 as pc with(nolock) on gp.LREntryId=pc.LREntryId
		left outer join CFA.tblGeneralMaster as gm with(nolock) on pc.ReturnCatId=gm.pkId
		left outer join CFA.tblSRSHeader as s with(nolock) on pc.LREntryId=s.LREntryId
		left outer join	CFA.tblCNHeader as cnh with(nolock) on s.SRSId=cnh.SRSId
		left outer join CFA.tblAuditorCheck as achk with(nolock) on s.SRSId=achk.SRSId
		left outer join CFA.tblUser as cbn with(nolock) on pc.ConcernBy=cbn.UserId
		left outer join CFA.tblUser as rcbn with(nolock) on pc.ResolveConcernBy=rcbn.UserId
	where gp.BranchId=@BranchId and gp.CompId=@CompId --and pc.BranchId=@BranchId and pc.CompId=@CompId --and cnh.SRSId is null
	--and gp.LREntryId=5
end
GO
/****** Object:  StoredProcedure [CFA].[usp_ExpRegDtlsUpdate]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_ExpRegDtlsUpdate]
--Declare
@ExpInvId	int,
@AddedBy	int,
@SummDt CFA.AcBillSumm READONLY
--@RetValue nvarchar(50) output

as
BEGIN
	declare @RetValue nvarchar(50)='';

	if not exists(select ExpInvId from CFA.tblExpenseRegisterPayment where ExpInvId=@ExpInvId)
	Begin
		update CFA.tblExpenseRegisterDtls
		set TranspNoOfBox=dt.TransBillBox,
			DtlsStatus=dt.DtlsStatus,
			LastUpdatedOn=getdate()
		from CFA.tblExpenseRegisterDtls a inner join @SummDt dt on a.GatepassId=dt.GatepassId and ExpInvId=@ExpInvId
		
		if exists(select ExpInvId from CFA.tblExpenseRegisterDtls where ExpInvId=@ExpInvId and DtlsStatus=1)
		Begin
			update CFA.tblExpenseRegister set ExpInvStatus=1 where  ExpInvId=@ExpInvId
		End
		else if exists(select ExpInvId from CFA.tblExpenseRegisterDtls where ExpInvId=@ExpInvId and DtlsStatus=0)
		Begin
			update CFA.tblExpenseRegister set ExpInvStatus=0 where  ExpInvId=@ExpInvId
		End
		else
		Begin
			update CFA.tblExpenseRegister set ExpInvStatus=2 where  ExpInvId=@ExpInvId
		End
		SET @RetValue=@ExpInvId
	End
	else
	begin
		set @RetValue=-1
	end
	select @RetValue as RetResult	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ExpSupCount]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Proc [CFA].[usp_ExpSupCount]

@BranchId int,
@CompId int

As

Declare @CNCount bigint, @PendingLR bigint

Set @PendingLR =(Select count (LREntryId) cn from CFA.tblInwardGatePass where BranchId = @BranchId and CompId = @CompId and RecvdAtOP = 0)

Set @CNCount=(Select count (CNId) cn from CFA.tblCNHeader where BranchId = @BranchId and CompId = @CompId)

Select @CNCount as CNCount, @PendingLR as PendingLR
GO
/****** Object:  StoredProcedure [CFA].[usp_GatepassDtlsForDeleteById]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_GatepassDtlsForDeleteById] --1
--DECLARE
@GatepassId INT,
@RetValue INT OUTPUT
--SET @GatepassId=1;
AS
BEGIN
	SET @RetValue=0
	------- Update invoice status
	update CFA.tblInvoiceHeader set InvStatus= 5, LastUpdatedOn=getdate() 
	where InvId in (select invid from CFA.tblGenerateGatepassDetails WHERE GatepassId=@GatepassId)

    DELETE FROM CFA.tblGenerateGatepass WHERE GatepassId=@GatepassId
	DELETE FROM CFA.tblGenerateGatepassDetails WHERE GatepassId=@GatepassId
	SET @RetValue=@GatepassId

	
			
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GatepassListGenerateNewNo]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--		 [CFA].[usp_GatepassListGenerateNewNo] 1,1,'2022-05-02'

CREATE PROCEDURE [CFA].[usp_GatepassListGenerateNewNo] 
--DECLARE
@BranchId INT,
@CompId	INT,
@GatepassDate DATETIME
--SET @BranchId=1; SET @CompId=1; SET @GatepassDate='2022-05-16';
AS
BEGIN		----   GP-2022-0002
	DECLARE @GPNo NVARCHAR(20),@Count INT
	SELECT @Count=MAX(CONVERT(INT,isnull(GatepassNo,0))) FROM CFA.tblGenerateGatepass
	WHERE BranchId=@BranchId AND CompId=@CompId AND DATEPART(YYYY,GatepassDate)=DATEPART(YYYY,@GatepassDate) 
	
	SET @GPNo= REPLICATE('0',4-LEN(RTRIM(CONVERT(VARCHAR(20),ISNULL(@Count,0))))) + CONVERT(VARCHAR(50),(ISNULL(@Count,0)+1))
	SELECT @GPNo
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GeneralMasterAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_GeneralMasterAddEdit]
@pkId	int,
@CategoryName	nvarchar(50),
@MasterName	nvarchar(200),
@DescriptionText	nvarchar(250),
@IsActive	char(1),
@Action	nvarchar(10),
@RetValue	int output

AS
BEGIN
	set @RetValue=0
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin
		if not exists(select MasterName from CFA.tblGeneralMaster where CategoryName=@CategoryName and MasterName=@MasterName)
		Begin
			insert into CFA.tblGeneralMaster(CategoryName,MasterName,DescriptionText,IsActive) values(@CategoryName,@MasterName,@DescriptionText,'Y')
				set @RetValue=SCOPE_IDENTITY()
		End
		else 
		Begin
			set @RetValue=-1	-- Master with Category and name exists
		End
	End
	else if (upper(ltrim(rtrim(@Action)))='EDIT')
	Begin
		if not exists(select MasterName from CFA.tblGeneralMaster where CategoryName=@CategoryName and MasterName=@MasterName and pkId<>@pkId)
		Begin
			update CFA.tblGeneralMaster set MasterName=@MasterName, DescriptionText=@DescriptionText where pkId=@pkId
			set @RetValue=@pkId
		End
		else 
		Begin
			set @RetValue=-1	-- Master with Category and name exists
		End
	End
	else if (upper(ltrim(rtrim(@Action)))='STATUS')
	Begin
		update CFA.tblGeneralMaster set IsActive=@IsActive where  pkId=@pkId
		set @RetValue=@pkId
	End
	else
	Begin
		set @RetValue=-2
	End	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GeneralMasterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [CFA].[usp_GeneralMasterList]
@CategoryName nvarchar(50),
@Status varchar(10)

as
BEGIN
	SELECT pkId, cfa.fn_CamelCase(CategoryName) CategoryName,cfa.fn_CamelCase(MasterName)MasterName, cfa.fn_CamelCase(DescriptionText)DescriptionText, IsActive
	FROM CFA.tblGeneralMaster 
	where (CategoryName=@CategoryName or isnull(@CategoryName,'ALL')='ALL') and 
	(upper(IsActive)=upper(@Status) or upper(@Status)='ALL')
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GenerateGatepassAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_GenerateGatepassAddEdit]
--DECLARE
@GatepassId INT,
@BranchId INT,
@CompId INT,
@CAId Int,
@GatepassDate DATETIME,
@VehicleNo NVARCHAR(100),
@InvStr VARCHAR(MAX),
@GuardNameId int,
@GuardNameText nvarchar(50),
@DriverName NVARCHAR(100),
@Addedby NVARCHAR(50),
@Action NVARCHAR(10)--,
----@RetValue INT OUTPUT

--SET @GatepassId=0; SET @BranchId=1; SET @CompId=1; set @CAId=0; SET @GatepassDate='2022-12-03';
--SET @VehicleNo='MH12NG9650'; SET @InvStr='27,18'; SET @GuardNameId=9; SET @DriverName='Anil'; SET @Addedby='7'; SET @Action='ADD';

AS

BEGIN

	--SET @RetValue=0; 
	DECLARE @NewGPId INT

	IF (UPPER(LTRIM(RTRIM(@Action)))='ADD')
	BEGIN	
		-- Generate New GP No-------------------
		BEGIN		----   GP-2022-0002
			DECLARE @GPNo NVARCHAR(20),@Count INT
			SELECT @Count=MAX(CONVERT(INT,isnull(GatepassNo,0))) FROM CFA.tblGenerateGatepass
			WHERE BranchId=@BranchId AND CompId=@CompId AND DATEPART(YYYY,GatepassDate)=DATEPART(YYYY,@GatepassDate) 
			PRINT @Count
	
			SET @GPNo= REPLICATE('0',4-LEN(RTRIM(CONVERT(VARCHAR(20),ISNULL(@Count,0))))) + CONVERT(VARCHAR(50),(ISNULL(@Count,0)+1))
		END
		----------------------------------------
		declare @InvData table(InvId bigint)
		declare @InvData1 table(InvId bigint)

		insert into @InvData (InvId) select InvoiceId from CFA.tblAssignTransportMode where (InvoiceId in (select [VALUE] FROM CFA.fn_StringSplit(@InvStr,',')) or AttachedInvId in (select [VALUE] FROM CFA.fn_StringSplit(@InvStr,',')))

		-- chck if inv alredy included in GP
		insert into @InvData1(InvId) select InvId from CFA.tblGenerateGatepassDetails 
			where InvId in (select InvoiceId from CFA.tblAssignTransportMode where (InvoiceId in (select [VALUE] FROM CFA.fn_StringSplit(@InvStr,',')) 
						or AttachedInvId in (select InvId FROM @InvData)))
		
		if exists(select InvId from @InvData1)
		Begin
			select -1 GatepassId, isnull((STUFF((select ',' + convert(nvarchar(50),i.InvNo) from CFA.tblGenerateGatepassDetails AS gi 
			inner join CFA.tblInvoiceHeader i on gi.InvId=i.InvId where gi.InvId in (select InvId FROM @InvData )FOR XML PATH('')),1,1,'')),'') as InvIdStr
		End
		----------------
		Else
		Begin
			INSERT INTO CFA.tblGenerateGatepass(BranchId,CompId,CAId,GatepassNo,GatepassDate,VehicleNo,GuardNameId,GuardNameText,DriverName,Addedby,AddedOn,LastUpdatedOn)   
			VALUES(@BranchId,@CompId,@CAId,@GPNo,@GatepassDate,@VehicleNo,@GuardNameId,@GuardNameText,@DriverName,@Addedby,GETDATE(),GETDATE())  
			SET @NewGPId=SCOPE_IDENTITY() 

			IF (@NewGPId>0 AND ISNULL(@InvStr,'')<>'') -- Add Invoices wise GatepassId 
			BEGIN  
				INSERT INTO CFA.tblGenerateGatepassDetails(GatepassId,InvId,Addedby,AddedOn)   
				SELECT @NewGPId,InvId,@Addedby,GETDATE() FROM @InvData

				------- Update invoice status
				update CFA.tblInvoiceHeader set InvStatus= 5, LastUpdatedOn=getdate() where InvId in (select InvId from @InvData)
				update CFA.tblInvoiceHeader set InvStatus= 7, LastUpdatedOn=getdate() where InvId in (select InvId from @InvData)
			END
			SELECT @NewGPId as GatepassId,'' InvIdStr  --FROM CFA.tblGenerateGatepass order by 1 desc
		END
	END
		--ELSE IF (UPPER(LTRIM(RTRIM(@Action)))='EDIT')
		--BEGIN
		--	UPDATE CFA.tblGenerateGatepass 
		--	SET GatepassDate=@GatepassDate,VehicleNo=@VehicleNo,GuardNameId=@GuardNameId,DriverName=@DriverName,
		--	CAId=@CAId, GuardNameText=@GuardNameText, UpdatedBy=@Addedby,LastUpdatedOn=GETDATE()
		--	WHERE GatepassId=@GatepassId
		--	--SET @RetValue=@GatepassId

		--	IF (@GatepassId>0 AND ISNULL(@InvStr,'')<>'') -- Add Invoices wise GatepassId 
		--	BEGIN  
		--		DELETE FROM CFA.tblGenerateGatepassDetails WHERE GatepassId=@GatepassId   -- delete old records, then insert new  
		--		INSERT INTO CFA.tblGenerateGatepassDetails(GatepassId,InvId,Addedby,AddedOn)   
		--		SELECT @GatepassId,[VALUE],@Addedby,GETDATE() FROM CFA.fn_StringSplit(@InvStr,',')

		--		------- Update invoice status
		--		update CFA.tblInvoiceHeader set InvStatus= 5, LastUpdatedOn=getdate() 
		--		where InvId in (select invid from CFA.tblGenerateGatepassDetails WHERE GatepassId=@GatepassId)
		--		update CFA.tblInvoiceHeader set InvStatus= 7, LastUpdatedOn=getdate() 
		--		where InvId in (select [VALUE] FROM CFA.fn_StringSplit(@InvStr,',') )
		--	END
		--END	
		----ELSE
		----BEGIN
		----	SET @RetValue=-2
		----END	

END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetAdminDetails]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_GetAdminDetails] 
--declare
@EmailFor int
as
     Begin
      SELECT (case when isnull(e.EmailConfigurationId,0)>0  then 1 else 0 end) as IsSelect, cast(o.EmailCCPersonId as int ) as PersonId ,o.Name as PersonName ,
	  o.EMAIL FROM CFA.[tblEmailCCPerson] o left outer join [CFA].[tblEmailConfiguration] e
	   on cast(o.EmailCCPersonId as int) = e.EmailConfigurationId  and e.EmailForId =@EmailFor
     End 
GO
/****** Object:  StoredProcedure [CFA].[usp_GetallInvoicepagesCount]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--		CFA.usp_GetInvoiceSummaryCount 1,1

create PROC [CFA].[usp_GetallInvoicepagesCount]
--Declare
@BranchId INT,
@CompId INT
--set @BranchId=1 set @CompId=1
AS
BEGIN
	SELECT i.BranchId,i.CompId, COUNT(i.InvId) TotalInvoices,
	sum(case when ((i.InvStatus not in (8,9,20) or cast(i.InvCreatedDate as date) =cast(getdate() as date))) then 1 else 0 end) TodaysWithOldOpen,
	sum(case when (i.InvStatus in (20)) then 1 else 0 end) CancelInvCtn,  
	sum(case when (i.InvStatus in (0)) then 1 else 0 end) PendingInvCtn, -- Created InvStatus -> 0
	sum(case when (i.OnPriority in (1) and i.InvStatus not in (20)) then 1 else 0 end) as OnPriorityCtn,
	sum(case when (i.InvStatus in (4)) then 1 else 0 end) PackerConcern,  
	sum(case when (i.InvStatus in (7)) then 1 else 0 end) GatpassGenCtn,
	sum(case when (i.InvStatus in (7,8)) then 1 else 0 end) PendingLR,
	sum(case when (i.IsStockTransfer in (1)) then 1 else 0 end) as IsStockTransferCtn,
	sum(case when asm.InvoiceId is not null then 1 else 0 end) as StkPrint,
	sum(case when asm.InvoiceId is not null and TransportModeId=1 and InvStatus<7 then 1 else 0 end) as LocalMode,
	sum(case when asm.InvoiceId is not null  and TransportModeId=2 and InvStatus<7  then 1 else 0 end) as OtherCity,
	sum(case when asm.InvoiceId is not null  and TransportModeId=3 and InvStatus<7  then 1 else 0 end) as ByHand	
	from CFA.tblInvoiceHeader i with (nolock) left outer join 
	(
		select distinct a.InvoiceId, a.TransportModeId
		from CFA.tblInvoiceHeader i with (nolock) left outer join CFA.tblAssignTransportMode a on i.InvId=a.InvoiceId
		where (i.InvStatus not in (8,9,20) or cast(i.InvCreatedDate as date) =cast(getdate() as date))
	) asm on i.InvId=asm.InvoiceId
	where i.BranchId = @BranchId and i.CompId= @CompId 
	group by i.BranchId,i.CompId
	


END


GO
/****** Object:  StoredProcedure [CFA].[usp_GetAllotedPickListForPicker]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_GetAllotedPickListForPicker] --1,1,5,'2022-03-11'
--DECLARE  
@BranchId int,  
@CompId INT,  
@PickerId int,  
@PicklistDate datetime  

--SET @BranchId=1; SET @CompId=1; set @PickerId=5; set @PicklistDate='2022-06-15'  
AS  
BEGIN  
	SELECT a.BranchId, a.CompId, a.PickerId, a.AllotmentId, a.Picklistid, a.AllottedBy, a.AllottedDate, a.AllotmentStatus,ISNULL(p.IsStockTransfer,0) as IsStockTransfer, 
		ast.StatusText AS AllotmentStatusText, p.PicklistNo, p.PicklistDate, p.FromInv, p.ToInv, p.PicklistStatus, s.StatusText AS PicklistStatusText, 
		a.AcceptedDate, a.ReasonId, rsn.MasterName AS ReasonText, a.RejectRemark, a.PickedDate, a.PickerConcernId, pcrn.MasterName AS pickerconcerText, 
		a.PickerConcernRemark, a.PickerConcernDate, a.VerifiedDate, a.VerifiedBy, u.DisplayName AS VerifiedByName,
		a.VerifiedConcernId, vc.MasterName as VerifiedConcernText, a.VerifiedConcernRemark,isnull(p.OnPriority,0) OnPriority
	FROM            CFA.tblStatusMaster AS ast RIGHT OUTER JOIN
		CFA.tblPicklistAllotment AS a INNER JOIN
		CFA.tblPickListHeader AS p ON a.Picklistid = p.Picklistid LEFT OUTER JOIN
		CFA.tblUser AS u on a.VerifiedBy = u.UserId LEFT OUTER JOIN
		CFA.tblGeneralMaster AS pcrn ON a.PickerConcernId = pcrn.pkId LEFT OUTER JOIN
		CFA.tblGeneralMaster AS rsn ON a.ReasonId = rsn.pkId ON ast.id = a.AllotmentStatus AND ast.StatusFor = 'PL' LEFT OUTER JOIN
		CFA.tblStatusMaster AS s ON p.PicklistStatus = s.id AND s.StatusFor = 'PL'  
		left outer join CFA.tblGeneralMaster vc on a.VerifiedConcernId=vc.pkId
		left outer join CFA.tblPicklistReAllotment ra on p.Picklistid=ra.Picklistid
	WHERE a.BranchId=@BranchId AND a.CompId=@CompId and a.PickerId=@PickerId and ra.Picklistid is null
		and (cast(PicklistDate as date)=cast(@PicklistDate as date) or PicklistStatus <>10)  
	ORDER BY a.Picklistid  
 --union   
 --SELECT a.BranchId, a.CompId, a.PickerId, a.ReAllotmentId, a.Picklistid, a.ReAllottedBy, a.ReAllottedDate, a.ReAllotmentStatus, 
	--	ast.StatusText AS reAllotmentStatusText, p.PicklistNo, p.PicklistDate, p.FromInv, p.ToInv, p.PicklistStatus, s.StatusText AS PicklistStatusText, 
	--	a.AcceptedDate, a.ReasonId, rsn.MasterName AS ReasonText, a.RejectRemark, a.PickedDate, a.PickerConcernId, pcrn.CategoryName AS pickerconcerText, 
	--	a.PickerConcernRemark, a.PickerConcernDate,  a.VerifiedDate, a.VerifiedBy, u.DisplayName AS VerifiedByName,
	--	a.VerifiedConcernId, vc.MasterName as VerifiedConcernText, a.VerifiedConcernRemark,isnull(p.OnPriority,0) OnPriority
	--FROM            CFA.tblStatusMaster AS ast RIGHT OUTER JOIN
	--	CFA.tblPicklistReAllotment AS a INNER JOIN
	--	CFA.tblPickListHeader AS p ON a.Picklistid = p.Picklistid LEFT OUTER JOIN
	--	CFA.tblUser AS u on a.VerifiedBy = u.UserId LEFT OUTER JOIN
	--	CFA.tblGeneralMaster AS pcrn ON a.PickerConcernId = pcrn.pkId LEFT OUTER JOIN
	--	CFA.tblGeneralMaster AS rsn ON a.ReasonId = rsn.pkId ON ast.id = a.ReAllotmentStatus AND ast.StatusFor = 'PL' LEFT OUTER JOIN
	--	CFA.tblStatusMaster AS s ON p.PicklistStatus = s.id AND s.StatusFor = 'PL' 
	--	left outer join CFA.tblGeneralMaster vc on a.VerifiedConcernId=vc.pkId 
	--WHERE a.BranchId=@BranchId AND a.CompId=@CompId and a.PickerId=@PickerId  
	--	and (cast(PicklistDate as date)=cast(@PicklistDate as date) or PicklistStatus <>10)  
	--ORDER BY a.Picklistid   
  
END  
GO
/****** Object:  StoredProcedure [CFA].[usp_GetAllotmentDetailsPicklistWise]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_GetAllotmentDetailsPicklistWise] 
--DECLARE  
@BranchId int,  
@CompId INT,  
@PicklistId int--,
--@ 

--SET @BranchId=1; SET @CompId=1; set @PicklistId=2
AS  
BEGIN  
	SELECT p.Picklistid, a.PickerId, u.DisplayName PickerName, a.AllotmentId,  a.AllotmentStatus, ast.StatusText AS AllotmentStatusText,  
		a.ReasonId, rsn.MasterName AS ReasonText, a.RejectRemark, a.PickerConcernId, pcrn.MasterName AS pickerconcernText, 
		a.PickerConcernRemark,  a.VerifiedBy,  a.VerifiedConcernId, 
		vc.MasterName as VerifiedConcernText, a.VerifiedConcernRemark,
		a.AcceptedDate,a.PickedDate,a.PickerConcernDate,a.VerifiedDate 
	FROM CFA.tblPickListHeader AS p inner join CFA.tblPicklistAllotment a  ON a.Picklistid = p.Picklistid
		LEFT OUTER JOIN CFA.tblUser AS u on a.PickerId = u.UserId
		LEFT OUTER JOIN CFA.tblStatusMaster AS ast ON ast.id = a.AllotmentStatus AND ast.StatusFor = 'PL'
		LEFT OUTER JOIN CFA.tblGeneralMaster AS pcrn ON a.PickerConcernId = pcrn.pkId 
		LEFT OUTER JOIN CFA.tblGeneralMaster AS rsn ON a.ReasonId = rsn.pkId  
		left outer join CFA.tblGeneralMaster vc on a.VerifiedConcernId=vc.pkId
		left outer join CFA.tblPicklistReAllotment ra on p.Picklistid=ra.Picklistid
	WHERE a.BranchId=@BranchId AND a.CompId=@CompId and p.Picklistid=@PicklistId and ra.Picklistid is null

	 --union   
	 --SELECT p.Picklistid, a.PickerId, u.DisplayName PickerName, a.ReAllotmentId,  a.ReAllotmentStatus, ast.StatusText AS AllotmentStatusText,  
		--a.ReasonId, rsn.MasterName AS ReasonText, a.RejectRemark, a.PickerConcernId, pcrn.MasterName AS pickerconcernText, 
		--a.PickerConcernRemark,  a.VerifiedBy, a.VerifiedConcernId, 
		--vc.MasterName as VerifiedConcernText, a.VerifiedConcernRemark,
		--a.AcceptedDate,a.PickedDate,a.PickerConcernDate,a.VerifiedDate 
	 --FROM CFA.tblPickListHeader AS p inner join CFA.tblPicklistReAllotment a  ON a.Picklistid = p.Picklistid
		--	LEFT OUTER JOIN CFA.tblUser AS u on a.PickerId = u.UserId 
		--	LEFT OUTER JOIN CFA.tblStatusMaster AS ast ON ast.id = a.ReAllotmentStatus AND ast.StatusFor = 'PL'
		--	LEFT OUTER JOIN CFA.tblGeneralMaster AS pcrn ON a.PickerConcernId = pcrn.pkId 
		--	LEFT OUTER JOIN CFA.tblGeneralMaster AS rsn ON a.ReasonId = rsn.pkId  
		--	left outer join CFA.tblGeneralMaster vc on a.VerifiedConcernId=vc.pkId			 
		--WHERE a.BranchId=@BranchId AND a.CompId=@CompId and p.Picklistid=@PicklistId  			
END  
GO
/****** Object:  StoredProcedure [CFA].[usp_GetAssignedTransporterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_GetAssignedTransporterList] --1,1
--Declare
@BranchId INT,
@CompId	INT 
--SET @BranchId=1; SET @CompId=1; 

AS
BEGIN
	SELECT 
	case when tm.AttachedInvId>0 then 
		( 
			select top 1 (select min(InvNo) from CFA.tblInvoiceHeader i1 inner join CFA.tblAssignTransportMode AS t1 on i1.InvId=t1.InvoiceId
			where t1.AttachedInvId=(select isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=i.InvId and AttachedInvId is not null))
			+' '+ (STUFF((select ' / ' + convert(nvarchar(50), a.StrInv) 
			from (select distinct substring(i2.invno,len(i2.invno)-2,3) StrInv 
			from CFA.tblInvoiceHeader i2 inner join CFA.tblAssignTransportMode AS t2 on i2.InvId=t2.InvoiceId 
			where t2.AttachedInvId=(select isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=i.InvId and AttachedInvId is not null)
			 and InvNo <> (select min(InvNo) from CFA.tblInvoiceHeader i3 inner join CFA.tblAssignTransportMode AS t3 on i3.InvId=t3.InvoiceId
			where t3.AttachedInvId=(select isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=i.InvId and AttachedInvId is not null)) 
			) a order by a.StrInv FOR XML PATH('')),1,1,''))
		)
		 else  i.InvNo End InvNo1,	
	i.InvNo,
	tm.AssignTransMId, i.InvId, i.BranchId, i.CompId, i.InvCreatedDate, i.IsColdStorage,
	case when i.IsStockTransfer=1 then oc.CNFId else sk.StockistId end StockistId,
		case when i.IsStockTransfer=1 then oc.CNFCode else sk.StockistNo end StockistNo, 
		case when i.IsStockTransfer=1 then oc.CNFName else sk.StockistName end StockistName, 
		case when i.IsStockTransfer=1 then oc.ContactNo else sk.MobNo end MobNo, 
		case when i.IsStockTransfer=1 then oc.CNFAddress else sk.StockistAddress end StockistAddress,
		case when i.IsStockTransfer=1 then ocCt.CityCode else sk.CityCode end CityCode,
		case when i.IsStockTransfer=1 then ocCt.CityName else ct.CityName end CityName,
		tm.TransportModeId,tm.TransporterId, CFA.fn_CamelCase(t.TransporterName) TransporterName,tm.CourierId,
		CFA.fn_CamelCase(c.CourierName) CourierName,tm.PersonName, tm.PersonAddress, tm.PersonMobNo, tm.OtherDetails,i.OnPriority,
		tm.Delivery_Remark,i.LastUpdatedOn ,i.IsStockTransfer,i.NoOfBox,i.InvWeight,i.IsCourier
	FROM CFA.tblInvoiceHeader AS i LEFT OUTER join CFA.tblStockistMaster AS sk ON sk.StockistId = i.SoldTo_StokistId
		INNER JOIN CFA.tblAssignTransportMode AS tm ON i.InvId = tm.InvoiceId
		left outer join CFA.tblCityMaster AS ct ON sk.CityCode = ct.CityCode
		left outer join CFA.tblTransporterMaster AS t ON tm.TransporterId = t.TransporterId
		LEFT OUTER JOIN CFA.tblCourierMaster AS c ON c.CourierId = tm.CourierId			
		left outer join CFA.tblCityMaster AS cnt ON tm.OCnfCity = cnt.CityCode
		left outer JOIN CFA.tblOtherCNFMaster AS oc ON oc.CNFId = i.SendToCNFId
		LEFT OUTER JOIN CFA.tblCityMaster AS ocCt ON tm.OCnfCity = ocCt.CityCode
	WHERE (i.BranchId=@BranchId OR @BranchId=0) AND i.CompId=@CompId and i.InvStatus<7 and tm.InvoiceId is not null
	and (tm.AttachedInvId=0 or tm.AttachedInvId=tm.InvoiceId)
END


GO
/****** Object:  StoredProcedure [CFA].[usp_GetAuditLogDetails]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--		cfa.usp_GetLogDetails '2022-03-01','2022-04-30','','Fail','',''

CREATE PROCEDURE [CFA].[usp_GetAuditLogDetails]
@FromOnDate datetime,
@ToDate datetime,
@MethodType varchar(20),
@LogStatus varchar(20),
@RefNo varchar(20),
@RoleId varchar(20)
as

Begin
	SELECT ServiceId,Userid,LogFor,LogData,LogStatus,LogDateTime,LogException FROM cfa.tblAuditLog
	where cast(LogDateTime as date) between cast(convert(datetime, @FromOnDate,101) as date) and cast(convert(datetime, @ToDate,101) as date)
	and (LogStatus=@LogStatus or isnull(@LogStatus,'')='')
End



GO
/****** Object:  StoredProcedure [CFA].[usp_GetBranchById]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_GetBranchById] 
@BranchId INT

AS

BEGIN

	SELECT BranchId, cfa.fn_CamelCase(BranchName) BranchName FROM CFA.tblBranchMaster
	WHERE BranchId=@BranchId

END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetcategoryList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [CFA].[usp_GetcategoryList]

as
BEGIN
	select CatId,cfa.fn_CamelCase(CategoryName) CategoryName,isActive from cfa.tblcategory 
	where upper(isActive)=upper('Y')
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetCCEmailandPurposeDetails]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_GetCCEmailandPurposeDetails] 
--declare
@DetailFlag varchar(10) 

AS

BEGIN
	IF(@DetailFlag = 'CCPerson')
     Begin
      SELECT cast(EmailCCPersonId as int ) as Id ,Name as Name ,EMAIL FROM CFA.[tblEmailCCPerson]
     End
  ELSE
    Begin
      SELECT EmailForId as Id ,Name as Name,null as Email FROM [CFA].[tblEmailFor] 
    End
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetCCPersonDetailsForEmail]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_GetCCPersonDetailsForEmail] 0,0,0
CREATE proc [CFA].[usp_GetCCPersonDetailsForEmail]
--declare
@BranchId INT,
@CompId INT,
@EmailFor INT
--SET @BranchId=1; SET @CompId=1; SET @EmailFor=1
AS
BEGIN
	SELECT BranchId,CompanyId,EmailForId,[Name],Email FROM CFA.tblEmailConfiguration ec
	WHERE (ec.BranchId=@BranchId OR @BranchId=0) AND (ec.CompanyId=@CompId OR @CompId=0) AND (ec.EmailForId=@EmailFor OR @EmailFor=0)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetChecklistMasterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [CFA].[usp_GetChecklistMasterList] 
@BranchId int,
@CompId int,
@Status nvarchar(10)

as
BEGIN
	SELECT c.ChecklistTypeId,c.BranchId, c.CompId as CompanyId,c.QuestionName, c.ControlType, c.SeqNo,c.Addedby,c.IsActive,c.AddedOn,s.CompanyName,s.CompanyCode,b.BranchName
	FROM CFA.tblInvInVehicleChecklistMaster c 
	left outer join CFA.tblCompanyMaster s on c.CompId=s.CompanyId 
	left outer join  CFA.tblBranchMaster b on c.BranchId=b.BranchId
	where((c.BranchId = @BranchId or @BranchId=0) and (CompId = @CompId or @CompId=0)) 
	and (upper(c.IsActive)=upper(@Status) or upper(@Status)='ALL')
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetCityList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_GetCityList] -- 'ALL','ALL','N'
@StateCode nvarchar(10),
@DistrictCode nvarchar(10),
@Flag varchar(10)

AS
BEGIN

	SELECT c.CityCode, cfa.fn_CamelCase(c.CityName) CityName,c.StateCode,cfa.fn_CamelCase(s.StateName) StateName, 
	c.ActiveFlag, c.LastUpdateBy, c.LastUpdateTime
	FROM CFA.tblCityMaster c left outer join CFA.tblStateMaster s on c.StateCode=s.StateCode
	WHERE (c.StateCode =@StateCode or isnull(@StateCode,'ALL')='ALL') 
	and  (c.DistrictCode =@DistrictCode or isnull(@DistrictCode,'ALL')='ALL') 
	and (upper(c.ActiveFlag)=upper(@Flag) or isnull(@Flag,'ALL')='ALL')
	order by c.CityName 

END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetClaimSRSMappedList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_GetClaimSRSMappedList]         
--DECLARE        
@BranchId INT,        
@CompId INT        
AS        
BEGIN        
	SELECT gp.BranchId, gp.CompId, s.SRSId,gp.LREntryId,gp.LREntryNo, gp.LRNo, gp.LRDate,c.ClaimNo, 
	c.ClaimDate, c.ReturnCatId,s.SRSStatus,s.PONoLRNo,stk.StockistId, stk.StockistNo,stk.StockistName                               
	FROM CFA.tblInwardGatepass AS gp INNER JOIN      
	CFA.tblPhysicalCheck1 AS c ON gp.LREntryId = c.LREntryId INNER JOIN      
	CFA.tblSRSHeader AS s ON c.LREntryId = s.LREntryId LEFT OUTER JOIN      
	CFA.tblStockistMaster AS stk ON s.SoldtoPartyId = stk.StockistId       
	WHERE gp.BranchId=@BranchId AND gp.CompId=@CompId        
END 
GO
/****** Object:  StoredProcedure [CFA].[usp_GetCommInvNo]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--		CFA.usp_GetCommInvNo 1, '2023-04-25'

CREATE proc [CFA].[usp_GetCommInvNo] 
--declare
@BranchId int,
@InvDate datetime
--set @BranchId=1; set @InvDate='2023-04-26'
as
BEGIN
	declare @InvoiceNo nvarchar(20), @Count int,@yrs nvarchar(20),@FnStrDt nvarchar(20),@FnEndDt nvarchar(20)
	if @InvDate is null set @InvDate=getdate()
	if (datepart(mm,@invDate)<4) select @FnStrDt=convert(nvarchar(4),datepart(yyyy,@invDate)-1)+'-04-01', @FnEndDt=convert(nvarchar(4),datepart(yyyy,@invDate))+'-03-31'
	Else if(datepart(mm,@invDate)>=4) select @FnStrDt=convert(nvarchar(4),datepart(yyyy,@invDate))+'-04-01', @FnEndDt=convert(nvarchar(4),datepart(yyyy,@invDate)+1)+'-03-31' 
	--select @FnStrDt, @FnEndDt
	set @yrs= convert(nvarchar(2), (datepart(YY,@FnStrDt))%100) +'-'+convert(nvarchar(2), (datepart(YY,@FnEndDt))%100)
	--select @yrs

	select @Count=convert(int,isnull(substring(InvNo,7,10),0)) from CFA.tblCommssionInv 
	where BranchId=@BranchId and InvDate between @FnStrDt and @FnEndDt
	
	set @InvoiceNo= @yrs+'-'+ REPLICATE('0',4-LEN(RTRIM(CONVERT(varchar(50),isnull(@Count,0))))) + CONVERT(varchar(50),(isnull(@Count,0)+1))

	select @InvoiceNo as InvoiceNo

End
GO
/****** Object:  StoredProcedure [CFA].[usp_GetCompanyListByBRId]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


  --[CFA].[usp_GetCompanyListByBRId]1,'Y'
CREATE PROC [CFA].[usp_GetCompanyListByBRId]
@BranchId Int,
@Status varchar(10)

as
BEGIN
	SELECT c.CompanyId, c.CompanyCode, cfa.fn_CamelCase(c.CompanyName) as CompanyName
	FROM CFA.tblCompanyMaster AS c LEFT OUTER JOIN 
		CFA.tblCityMaster AS ct ON c.CompanyCity = ct.CityCode LEFT OUTER JOIN 
		CFA.tblCompanyBranchRelation as  cb on c.CompanyId=cb.CompanyId
	where cb.BranchId=@BranchId and (upper(IsActive)=upper(@Status) or upper(@Status)='ALL')
	order by c.CompanyName
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetCourierParent]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE proc [CFA].[usp_GetCourierParent]

@Cpid int

As 

Begin
	Select Cpid, BranchId, ParentCourierName, ParentCourierEmail, ParentCourierMobNo,IsTDS,TDSPer, IsGST, GSTNumber, IsActive 
	from CFA.tblCourierParentMst
	where Cpid = @Cpid
End
GO
/****** Object:  StoredProcedure [CFA].[usp_GetCourierParentList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [CFA].[usp_GetCourierParentList]

@BranchId int,
@Status nvarchar(10)

As 

Begin
	Select Cpid, BranchId, ParentCourierName, ParentCourierEmail, ParentCourierMobNo,IsTDS,TDSPer, IsGST, GSTNumber, IsActive 
	from CFA.tblCourierParentMst
	where BranchId = @BranchId and ( UPPER(IsActive) = UPPER(@Status) OR UPPER(@Status) = 'ALL')
End
GO
/****** Object:  StoredProcedure [CFA].[usp_GetDashbordForChequeAccountingAllLogin]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_GetDashbordForChequeAccountingAllLogin] 1,2,'2023-01-04','2023-04-10'
CREATE PROC [CFA].[usp_GetDashbordForChequeAccountingAllLogin]
@BranchId INT,
@CompId INT,
@FromDate Datetime,
@ToDate Datetime
--set @BranchId=1 set @CompId=1 SET @FromDate='2022-07-07'; SET @ToDate='2022-07-07';

AS
BEGIN
	SELECT 
	-- Cheque Bounced
		ISNULL(sum(CASE WHEN ((cr.ChqStatus = 5)and CAST(cr.ReturnedDate AS DATE) between cast(@FromDate as date) AND 
		cast(@ToDate as date)) THEN 1 ELSE 0 END),0) TotalChqBounced,
		ISNULL(sum(CASE WHEN ((cr.ChqStatus = 6)and
		CAST(cr.LastUpdatedOn AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)) THEN 1 ELSE 0 END),0) TotalFirstNotice,
		ISNULL(sum(CASE WHEN ((cr.ChqStatus = 7)and
		CAST(cr.LastUpdatedOn AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)) THEN 1 ELSE 0 END),0) TotalLegalNotice,
		--Cheque Deposited
		ISNULL(sum(CASE WHEN ((cr.ChqStatus = 4) AND (cast(cr.DepositedDate AS DATE) =cast(getdate() AS DATE))) THEN 1 ELSE 0 END),0) DepositedDay,
		ISNULL(sum(CASE WHEN ((cr.ChqStatus = 4) AND (DATEDIFF(dd,cr.DepositedDate,GETDATE()) <=30)and
		CAST(cr.DepositedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)) THEN 1 ELSE 0 END),0) DepositedMonth ,
		ISNULL(sum(CASE WHEN ((cr.ChqStatus = 4) AND cast(cr.DepositedDate AS DATE) =cast(getdate() AS DATE)) THEN 1 ELSE 0 END),0) DealyDeposited, --TBD
		ISNULL(sum(CASE WHEN ((os.OverdueAmt > 0)and
		CAST(os.DueDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)) THEN 1 ELSE 0 END),0) Overduestk
	FROM CFA.tblChequeRegister AS cr left outer join
	CFA.tblStockistOSDataImport as os ON cr.ChqNo=os.ChqNo
	where (cr.BranchId=@BranchId OR @BranchId=0) AND (cr.CompId=@CompId OR @CompId=0)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetDashbordOraderDisForcntAllLogin]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----[CFA].[usp_GetDashbordOraderDisForcntAllLogin]1,2,'2023-01-01','2023-04-12'
CREATE PROC [CFA].[usp_GetDashbordOraderDisForcntAllLogin]
--DECLARE
@BranchId INT,
@CompId INT,
@FromDate DATETIME,
@ToDate DATETIME
--set @BranchId=1 set @CompId=1 SET @FromDate=null; SET @ToDate=null;
AS
BEGIN

	DECLARE @CummPL INT=0
	SELECT @CummPL=SUM(CASE WHEN (DATEPART(MM,p.PicklistDate)=DATEPART(MM, GETDATE())and CAST(p.PicklistDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)) THEN 1 ELSE 0 END)
	FROM CFA.tblPickListHeader p WITH (NOLOCK) 

	--1) Total Dispatch
	SELECT
		ISNULL(SUM(CASE WHEN ((i.InvStatus = 7 and CAST(i.ReadyToDispatchDate AS DATE) =CAST(GETDATE() AS DATE))) THEN 1 ELSE 0 END),0) TodaysDispatchN, 
		ISNULL(SUM(CASE WHEN ((i.InvStatus = 7 and DATEDIFF(dd,i.ReadyToDispatchDate,GETDATE())=1)) THEN 1 ELSE 0 END),0) TodaysDispatchN1,
		ISNULL(SUM(CASE WHEN ((i.InvStatus = 7 and DATEDIFF(dd,i.ReadyToDispatchDate,GETDATE())=2)) THEN 1 ELSE 0 END),0) TodaysDispatchN2,
		ISNULL(SUM(CASE WHEN ((i.InvStatus < 7 and CAST(i.InvCreatedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date))) THEN 1 ELSE 0 END),0) Pending,
	--2) Total Invoices and Picklist
		ISNULL(SUM(CASE WHEN CAST(i.InvCreatedDate AS DATE)=CAST(GETDATE() AS DATE) THEN 1 ELSE 0 end),0) TodayInv,
		COUNT(i.InvId) TotalInvoices,
		@CummPL AS CummInv,
		ISNULL(SUM(CASE WHEN ((DATEDIFF(dd,i.InvCreatedDate,GETDATE()) <=30)) THEN 1 ELSE 0 END),0)InvPerMonth,  	
	--3) No of Boxes and LR Updation 
		ISNULL(SUM(CASE WHEN(CAST(i.PackedDate AS DATE) =CAST(GETDATE() AS DATE)) THEN i.NoOfBox ELSE 0 END),0) TodaysBoxes,
		ISNULL(SUM(CASE WHEN ((CAST(i.PackedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date))) THEN i.NoOfBox ELSE 0 END),0) AS CummBoxesmonth,
		ISNULL(SUM(CASE WHEN ((asm.LRDate is null) and (asm.LRNo is null) and(asm.LRBox is null)and CAST(asm.LastUpdatedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)) THEN 1 ELSE 0 END),0) PendingLRupdation,
	--4) Sales Amt for the day till date
		ISNULL(SUM(CASE WHEN (CAST(i.InvCreatedDate AS DATE) =CAST(GETDATE() AS DATE)) THEN i.InvAmount ELSE 0 END),0) SalesToday,
		ISNULL(SUM(CASE WHEN(CAST(i.InvCreatedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date))THEN i.InvAmount ELSE 0 END),0) Cummsalemonth,
	--5) Not Yet Dispatched
		ISNULL(SUM(CASE WHEN ((i.InvStatus >= 3) and (i.PackedDate is not null)and(i.PackedBy is not null)) THEN 1 ELSE 0 END),0) InvPackingDone,
	--6) No of Boxes Dispatched
		ISNULL(SUM(CASE WHEN ((asm.TransportModeId=1) AND CAST(asm.LastUpdatedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date))THEN 1 ELSE 0 END),0) AS LocalMode,
		ISNULL(SUM(CASE WHEN ((asm.TransportModeId=2) AND CAST(asm.LastUpdatedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date))THEN 1 ELSE 0 END),0) AS OtherCity,
		ISNULL(SUM(CASE WHEN ((asm.TransportModeId=3) AND CAST(asm.LastUpdatedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date))THEN 1 ELSE 0 END),0) AS ByHand
	from CFA.tblInvoiceHeader i WITH (NOLOCK)left outer join
	   (
		SELECT DISTINCT a.InvoiceId, a.TransportModeId,a.LRDate,a.LRBox,a.LRNo,a.LastUpdatedDate
		FROM CFA.tblInvoiceHeader i WITH (NOLOCK) left outer join 
		CFA.tblAssignTransportMode a WITH (NOLOCK) ON i.InvId=a.InvoiceId
		WHERE (i.InvStatus not in (8,9,20) or CAST(i.InvCreatedDate AS DATE) =CAST(GETDATE() AS DATE))
	    ) asm ON i.InvId=asm.InvoiceId 	
	WHERE (i.BranchId=@BranchId or @BranchId=0 ) and (i.CompId=@CompId or @CompId=0)
END

GO
/****** Object:  StoredProcedure [CFA].[usp_GetDashbordOrderReturnForAllLogin]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[CFA].[usp_GetDashbordOrderReturnForAllLogin]1,1,'2023-01-01','2023-04-11'
CREATE PROC [CFA].[usp_GetDashbordOrderReturnForAllLogin]
@BranchId INT,
@CompId INT,
@FromDate datetime,
@ToDate datetime

--set @BranchId=1 set @CompId=1 SET @FromDate='2022-07-07'; SET @ToDate='2022-07-07';
AS
BEGIN
	declare @PendingAtWarehouse INT=0,@PendingAtAuditor int=0,@TotalClaim int=0;

	select @PendingAtWarehouse =count(ig.LREntryId)
	FROM CFA.tblInwardGatepass ig left outer join CFA.tblPhysicalCheck1 pc on ig.LREntryId=pc.LREntryId  
	left outer join CFA.tblSRSHeader srs on ig.LREntryId=srs.LREntryId
	where (pc.ClaimNo is not null and srs.IsVerified is null and (ig.BranchId = @BranchId OR @BranchId=0)and
	(ig.CompId = @CompId OR @CompId = 0)AND CAST(pc.ClaimDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date))

	select @PendingAtAuditor =count(ig.LREntryId)
	FROM CFA.tblInwardGatepass ig left outer join CFA.tblPhysicalCheck1 pc on ig.LREntryId=pc.LREntryId  
	left outer join CFA.tblSRSHeader srs on ig.LREntryId=srs.LREntryId
	where (pc.ClaimNo is not null and srs.IsVerified is NOT NULL and (ig.BranchId = @BranchId OR @BranchId=0)and
	(ig.CompId = @CompId OR @CompId = 0)AND CAST(pc.ClaimDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date))

	select @TotalClaim=count(i.LREntryId)FROM CFA.tblInwardGatepass as i LEFT OUTER JOIN CFA.tblPhysicalCheck1 AS pc on i.LREntryId=pc.LREntryId
	where (i.ClaimFormAvailable=1 and pc.ClaimNo is not null and CAST(pc.ClaimDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)and
	(i.BranchId = @BranchId OR @BranchId=0)  and (i.CompId = @CompId OR @CompId = 0))

	SELECT
		--1) Pending claims
		 ISNULL(@TotalClaim,0) as Total,
		 ISNULL(@PendingAtWarehouse,0) AS Warehouse,
		 ISNULL(@PendingAtAuditor,0) AS Auditorchk,
		 ISNULL(SUM(CASE WHEN ((g.RecvdAtOP=1)and CAST(g.RecvdAtOPDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)) then 1 else 0 END),0) RecvdAtOPCnt,
		 ISNULL(SUM(CASE WHEN ((p.ReturnCatId in (76,77)) and CAST(p.AddedOn AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)) then 1 else 0 END),0) SaleableClaim,
		 --4) Consignment Recived
		 ISNULL(SUM(CASE WHEN ((g.ClaimFormAvailable = 1)and(g.GoodsReceived = 1)and(cast(g.LREntryDate as date) =cast(getdate() as date))) then 1 else 0 END),0)TodysCong ,
		 ISNULL((select count(LREntryId) from CFA.tblInwardGatepass where (ClaimFormAvailable = 1)and(GoodsReceived = 1)
		 and(DATEDIFF(dd,LREntryDate,GETDATE()) <=30)and(BranchId = @BranchId OR @BranchId=0)  and (CompId = @CompId OR @CompId = 0)),0)MonthCong	 	
	 FROM CFA.tblInwardGatepass g left outer join CFA.tblPhysicalCheck1 p on g.LREntryId=p.LREntryId  	
     Where (g.BranchId = @BranchId OR @BranchId=0)  and (g.CompId = @CompId OR @CompId = 0)
     Group by g.BranchId, g.CompId  
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetDashOrderRetAllLoginCN]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--[CFA].[usp_GetDashOrderRetAllLoginCN]1,1,'2023-01-01','2023-04-13'
CREATE PROC [CFA].[usp_GetDashOrderRetAllLoginCN]
--declare
@BranchId INT,
@CompId INT,
@FromDate datetime,
@ToDate datetime

--set @BranchId=0 set @CompId=0 SET @FromDate='2023-01-01'; SET @ToDate='2023-04-13';
AS
BEGIN
	DECLARE @Onedays INT=0,	@twodays INT=0,@morethentwodays INT=0,@moresevdays INT=0,@PendingCN INT=0,@FifteenDays int =0,
	@ThirthyDays int=0,@fortyfiveDays int=0,@abovefortyfiveDays int=0,@PendingSRS INT=0;

	SELECT @PendingSRS=count(s.SRSId)from CFA.tblSRSHeader s left outer join CFA.tblCNHeader cn on cn.SRSId = s.SRSId
	where (s.BranchId = @BranchId OR @BranchId=0) and (s.CompId = @CompId OR @CompId = 0)and cn.SRSId is null and CAST(s.AddedOn AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)

	select @FifteenDays=sum(case when (DATEDIFF(dd,p.AddedOn,GETDATE()) =15) then 1 else 0 end),
	@ThirthyDays=sum(case when (DATEDIFF(dd,p.AddedOn,GETDATE())>15 and DATEDIFF(dd,p.AddedOn,GETDATE())<=30) then 1 else 0 end),
	@fortyfiveDays=sum(case when (DATEDIFF(dd,p.AddedOn,GETDATE())>30 and DATEDIFF(dd,p.AddedOn,GETDATE())<=45) then 1 else 0 end),
	@abovefortyfiveDays=sum(case when (DATEDIFF(dd,p.AddedOn,GETDATE())>=45) then 1 else 0 end)
	FROM CFA.tblPhysicalCheck1 p INNER JOIN CFA.tblSRSHeader s ON p.LREntryId=s.LREntryId left outer join CFA.tblCNHeader cn on cn.SRSId = s.SRSId
	where (p.ReturnCatId in(76,77)) and (p.BranchId = @BranchId OR @BranchId=0) and (p.CompId = @CompId OR @CompId = 0)and cn.SRSId is not null
	and CAST(p.AddedOn AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)	

	SELECT @PendingCN=count(p.LREntryId),
	@Onedays=sum(case when (DATEDIFF(dd,p.AddedOn,GETDATE())=1) then 1 else 0 end),
	@twodays=sum(case when (DATEDIFF(dd,p.AddedOn,GETDATE())=2) then 1 else 0 end),
	@morethentwodays=sum(case when (DATEDIFF(dd,p.AddedOn,GETDATE())>2 and DATEDIFF(dd,p.AddedOn,GETDATE())<=7) then 1 else 0 end),
	@moresevdays=sum(case when (DATEDIFF(dd,p.AddedOn,GETDATE())>7) then 1 else 0 end )
	FROM CFA.tblPhysicalCheck1 p INNER JOIN CFA.tblSRSHeader s ON p.LREntryId=s.LREntryId left outer join CFA.tblCNHeader cn on cn.SRSId = s.SRSId
	where (p.ReturnCatId in(76,77)) and (p.BranchId = @BranchId OR @BranchId=0)  and (p.CompId = @CompId OR @CompId = 0)and cn.CNId is null
	and CAST(p.AddedOn AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)	
	 
	SELECT isnull(@Onedays,0) Onedays,isnull(@twodays,0) twodays,isnull(@morethentwodays,0) morethentwodays,isnull(@moresevdays,0) moresevdays,isnull(@PendingCN,0) PendingCN,
	isnull(@PendingSRS,0)PendingSRS,isnull(@FifteenDays,0) FifteenDays,isnull(@ThirthyDays,0) ThirthyDays,isnull(@fortyfiveDays,0) fortyfiveDays,isnull(@abovefortyfiveDays,0) abovefortyfiveDays
END    

GO
/****** Object:  StoredProcedure [CFA].[usp_GetDisplayOrderReturnCounts]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CFA.usp_GetDisplayOrderReturnCounts 1,1
CREATE PROC [CFA].[usp_GetDisplayOrderReturnCounts]
--DECLARE
@BranchId INT,
@CompId INT
--SET @BranchId=1; SET @CompId=1;
AS
BEGIN
	 DECLARE @AllClaimCount INT, @ConcernRaisedCount INT, @ConcernResolvedCount INT, 
	         @AllSRSCount INT, @IsVerifiedCount INT, @IsCorrectionReqCount INT

	 SET @AllClaimCount = (SELECT COUNT(PhyChkId) FROM CFA.tblPhysicalCheck1 WHERE BranchId=@BranchId AND CompId=@CompId)
	 SET @ConcernRaisedCount = (SELECT ClaimStatus FROM CFA.tblPhysicalCheck1 WHERE BranchId=@BranchId AND CompId=@CompId AND ClaimStatus=1)
	 SET @ConcernResolvedCount = (SELECT ClaimStatus FROM CFA.tblPhysicalCheck1 WHERE BranchId=@BranchId AND CompId=@CompId AND ClaimStatus=2)
	 SET @AllSRSCount = (SELECT COUNT(SRSId) FROM CFA.tblSRSHeader WHERE BranchId=@BranchId AND CompId=@CompId)
	 SET @IsVerifiedCount = (SELECT COUNT(IsVerified) FROM CFA.tblSRSHeader WHERE BranchId=@BranchId AND CompId=@CompId AND IsVerified='Y')
	 SET @IsCorrectionReqCount = (SELECT COUNT(IsCorrectionReq) FROM CFA.tblSRSHeader WHERE BranchId=@BranchId AND CompId=@CompId AND IsCorrectionReq='Y')

	 SELECT ISNULL(@AllClaimCount,0) AS AllClaimCount,ISNULL(@ConcernRaisedCount,0) AS ConcernRaisedCount,ISNULL(@ConcernResolvedCount,0) AS ConcernResolvedCount,
			ISNULL(@AllSRSCount, 0) AS AllSRSCount,ISNULL(@IsVerifiedCount,0) AS IsVerifiedCount,ISNULL(@IsCorrectionReqCount,0) AS IsCorrectionReqCount
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetDistrictList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_GetDistrictList]
@StateCode nvarchar(10)='ALL',
@Flag varchar(10)='ALL'

AS
BEGIN

	SELECT d.DistrictCode,cfa.fn_CamelCase(d.DistrictName) DistrictName,d.StateCode, d.ActiveFlag, d.LastUpdateBy, d.LastUpdateTime,
	 cfa.fn_CamelCase( s.StateName) StateName
	FROM CFA.tblDistrictMaster AS d LEFT OUTER JOIN CFA.tblStateMaster AS s ON d.StateCode = s.StateCode
	WHERE (d.StateCode =@StateCode or isnull(@StateCode,'ALL')='ALL') 
	and (upper(d.ActiveFlag)=upper(@Flag) or isnull(@Flag,'ALL')='ALL')
	order by d.DistrictName 

END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetEmailConfigurationList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_GetEmailConfigurationList]
--Declare
@BranchId int,
@CompanyId int


AS
BEGIN

	Select Name AS PersonName,Email from CFA.tblEmailConfiguration 
	where (BranchId=@BranchId OR @BranchId=0) AND (CompanyId=@CompanyId OR @CompanyId=0) 

END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetExpRegisterListForCheckInv]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_GetExpRegisterListForCheckInv]
@BranchId INT

AS

BEGIN
	SELECT Er.ExpInvId, Er.BranchId, InvTypeId, ExpInvNo, InvDate, CompId, cm.CompanyName, ExpHeadId, H.HeadName, NoOfBox, TaxableAmt, 
		CGST, SGST, TotalAmt, IsReimbursable, Er.AddedBy, Er.VendorId, V.VendorName, TransId, T.ParentTranspName,
		case when isnull(Er.TransId,0)>0  then T.ParentTranspName  
			 when isnull(Er.CourierId,0)>0  then C.ParentCourierName else V.VendorName End BillFromName,
		(TotalAmt - SUM(ISNULL(Erp.PaymentAmt,0))) AS Balance, 
        Er.InvFromDt, Er.InvToDt, Er.IsGSTApply, Er.ExpInvStatus, s.StatusText AS ExpInvStatusText
	FROM CFA.tblExpenseRegister AS Er LEFT OUTER JOIN
		CFA.tblExpenseRegisterPayment AS Erp ON  Er.ExpInvId = Erp.ExpInvId LEFT OUTER JOIN
		CFA.tblVendorMaster AS V ON Er.VendorId = V.VendorId LEFT OUTER JOIN
		CFA.tblTransporterParentMst AS T ON Er.TransId = T.Tpid LEFT OUTER JOIN
		CFA.tblCourierParentMst as C on Er.CourierId = C.Cpid LEFT OUTER JOIN
		CFA.tblCompanyMaster AS cm ON Er.CompId = cm.CompanyId LEFT OUTER JOIN
		CFA.tblHeadMaster AS H ON Er.ExpHeadId = H.pkId LEFT OUTER JOIN
        CFA.tblStatusMaster AS s ON Er.ExpInvStatus = s.id and s.StatusFor='ExpInv'
	WHERE Er.BranchId=@BranchId and InvTypeId in(1,3) and Er.ExpInvStatus in (0,1)		-- 1 for Transporter Bill
	GROUP BY Er.ExpInvId, Er.BranchId, InvTypeId, ExpInvNo, InvDate, CompId, cm.CompanyName, ExpHeadId, H.HeadName, NoOfBox, TaxableAmt, 
		CGST, SGST, TotalAmt, IsReimbursable, Er.AddedBy, Er.VendorId, V.VendorName, TransId, T.ParentTranspName, CourierId, C.ParentCourierName,
		Er.InvFromDt, Er.InvToDt, Er.IsGSTApply, Er.ExpInvStatus, s.StatusText
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetGatepassDtlsForMob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE PROCEDURE [CFA].[usp_GetGatepassDtlsForMob]
--Declare  
@BranchId INT,  
@CompId INT  
--SET @BranchId=1; SET @CompId=1;  
AS  
  
BEGIN  
  
	 SELECT gp.GatepassId, gp.BranchId, gp.CompId, gp.GatepassNo, gp.GatepassDate, gp.VehicleNo, gp.GuardNameId, g.EmpName, g.EmpNo,   
	 gp.DriverName, gp.Addedby, gp.AddedOn, gp.UpdatedBy, gp.LastUpdatedOn, gp.IsPrinted,count(gd.InvId) NoOfInv,
	 gp.CAId,ca.CAName, gp.GuardNameText,ISNULL(i.IsStockTransfer,'') AS IsStockTransfer,
	 isnull((STUFF((select ',' + convert(nvarchar(50),gi.InvId) from CFA.tblGenerateGatepassDetails AS gi 
	 where gi.GatepassId=gp.GatepassId FOR XML PATH('')),1,1,'')),'') as InvIdStr
	 FROM CFA.tblGenerateGatepass AS gp inner join CFA.tblGenerateGatepassDetails gd on gp.GatepassId=gd.GatepassId 
	 LEFT OUTER JOIN  CFA.tblEmployeeMaster AS g ON gp.GuardNameId = g.EmpId 
	 LEFT OUTER JOIN  CFA.tblCartingAgentMaster ca  ON gp.CAId = ca.CAId 
	 left outer join CFA.tblInvoiceHeader i on gd.InvId = i.InvId
	 WHERE (gp.BranchId = @BranchId) AND (gp.CompId = @CompId) AND (CAST(gp.GatepassDate AS Date) = CAST(GETDATE() AS date))  
	 group by  gp.GatepassId, gp.BranchId, gp.CompId, gp.GatepassNo, gp.GatepassDate, gp.VehicleNo, gp.GuardNameId,   
	 g.EmpName, g.EmpNo, gp.DriverName, gp.Addedby, gp.AddedOn, gp.UpdatedBy, gp.LastUpdatedOn, gp.IsPrinted ,
	 gp.CAId,ca.CAName, gp.GuardNameText,i.IsStockTransfer
END  
GO
/****** Object:  StoredProcedure [CFA].[usp_GetGatepassDtlsForPDF]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--		CFA.usp_GetGatepassDtlsForPDF  1,2,63

CREATE PROCEDURE [CFA].[usp_GetGatepassDtlsForPDF]	-- 1,1,24
--DECLARE
@BranchId INT,
@CompId INT,
@GPid INT
--SET @BranchId=1; SET @CompId=2; SET @GPid=63;
AS
BEGIN
	declare @InvNoStr nvarchar(2000), @AttInvId bigint ,@InvNoStr1 nvarchar(30) 
	--select @AttInvId=isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=@InvId and AttachedInvId is not null  
  
	--set @InvNoStr=
	--select isnull((STUFF((select ',' + convert(nvarchar(50), i.InvNo)   
	--from CFA.tblInvoiceHeader i inner join CFA.tblAssignTransportMode AS t on i.InvId=t.InvoiceId  
	--where t.AttachedInvId=@AttInvId FOR XML PATH('')),1,1,'')),'')   
	--print @InvNoStr  

	---Added on date:20-Feb-2023
	--select @AttInvId=isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=7 and AttachedInvId is not null
	--select min(InvNo) from CFA.tblInvoiceHeader i inner join CFA.tblAssignTransportMode AS t on i.InvId=t.InvoiceId
	--where t.AttachedInvId=(select isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=7 and AttachedInvId is not null)
	--
	--select (select min(InvNo) from CFA.tblInvoiceHeader i inner join CFA.tblAssignTransportMode AS t on i.InvId=t.InvoiceId
	--where t.AttachedInvId=(select isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=7 and AttachedInvId is not null))
	--+' '+ (STUFF((select ' / ' + convert(nvarchar(50), a.StrInv) 
	--from (select distinct substring(i.invno,len(i.invno)-2,3) StrInv 
	--from CFA.tblInvoiceHeader i inner join CFA.tblAssignTransportMode AS t on i.InvId=t.InvoiceId 
	--where t.AttachedInvId=(select isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=7 and AttachedInvId is not null)
	-- and InvNo <> (select min(InvNo) from CFA.tblInvoiceHeader i inner join CFA.tblAssignTransportMode AS t on i.InvId=t.InvoiceId
	--where t.AttachedInvId=(select isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=7 and AttachedInvId is not null)) 
	--) a order by a.StrInv FOR XML PATH('')),1,1,''))
	
	--select @InvNoStr 

	SELECT distinct gp.GatepassId, gp.BranchId, gp.CompId, gp.GatepassNo, gp.GatepassDate, gp.VehicleNo, gp.GuardNameId, g.EmpName, g.EmpNo, 
		gp.DriverName, gp.Addedby, gp.AddedOn, gp.UpdatedBy, gp.LastUpdatedOn, gp.IsPrinted,br.BranchCode, br.BranchName,
		br.BranchAddress, br.City BrCitycode,bct.CityName AS BrCityName,br.Pin brPin, br.ContactNo brContactNo, br.Email brEmail,
		cp.CompanyCode, cp.CompanyName, cp.CompanyEmail, cp.ContactNo AS CompContactNo, cp.CompanyAddress,
		cp.CompanyCity CompanyCityCode, cpct.CityName as CompanyCityName, cp.Pin AS CompanyPin,		
		--Details Section Data
		atm.TransportModeId, tm.MasterName AS TrasportModeText, 
		atm.TransporterId, t.TransporterNo, t.TransporterName,atm.CourierId,c.CourierName, atm.Delivery_Remark, atm.LRNo,
		i.SoldTo_StokistId, sk.StockistNo, sk.StockistName, sk.MobNo, sk.Emailid, i.SoldTo_City, ct.CityName,
		i.NoOfBox,i.IsCourier,gp.CAId,ca.CAName, gp.GuardNameText,
		case when atm.AttachedInvId>0 then 
		( 
			select top 1 (select min(InvNo) from CFA.tblInvoiceHeader i inner join CFA.tblAssignTransportMode AS t on i.InvId=t.InvoiceId
			where t.AttachedInvId=(select isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=gpd.InvId and AttachedInvId is not null))
			+' '+ (STUFF((select ' / ' + convert(nvarchar(50), a.StrInv) 
			from (select distinct substring(i.invno,len(i.invno)-2,3) StrInv 
			from CFA.tblInvoiceHeader i inner join CFA.tblAssignTransportMode AS t on i.InvId=t.InvoiceId 
			where t.AttachedInvId=(select isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=gpd.InvId and AttachedInvId is not null)
			 and InvNo <> (select min(InvNo) from CFA.tblInvoiceHeader i inner join CFA.tblAssignTransportMode AS t on i.InvId=t.InvoiceId
			where t.AttachedInvId=(select isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=gpd.InvId and AttachedInvId is not null)) 
			) a order by a.StrInv FOR XML PATH('')),1,1,''))
		)
		 else  i.InvNo End InvNo,
		case when atm.AttachedInvId>0 then isnull((STUFF((select ',' + convert(nvarchar(50), gd.InvId)   
		from CFA.tblGenerateGatepassDetails gd inner join CFA.tblAssignTransportMode AS t on gd.InvId=t.InvoiceId  
		where  t.AttachedInvId=atm.AttachedInvId FOR XML PATH('')),1,1,'')),'') else  convert(varchar(20),gpd.InvId) End InvoiceId
		
	FROM CFA.tblGenerateGatepass AS gp INNER JOIN CFA.tblGenerateGatepassDetails AS gpd ON gp.GatepassId = gpd.GatepassId
		INNER JOIN CFA.tblCompanyMaster AS cp ON gp.CompId = cp.CompanyId
		INNER JOIN CFA.tblBranchMaster AS br ON gp.BranchId = br.BranchId
		LEFT OUTER JOIN CFA.tblCityMaster AS bct ON br.City = bct.CityCode
		left outer join CFA.tblCityMaster AS cpct ON cp.CompanyCity = cpct.CityCode
		left outer join CFA.tblEmployeeMaster AS g ON g.EmpId = gp.GuardNameId
		left outer join CFA.tblAssignTransportMode AS atm ON atm.InvoiceId = gpd.InvId 
		left outer join CFA.tblGeneralMaster AS tm  on tm.pkId = atm.TransportModeId 
		Left outer join CFA.tblTransporterMaster AS t ON atm.TransporterId = t.TransporterId
		INNER JOIN CFA.tblInvoiceHeader AS i ON atm.InvoiceId = i.InvId
		INNER JOIN CFA.tblStockistMaster AS sk ON sk.StockistId = i.SoldTo_StokistId
		Left outer join CFA.tblCityMaster AS ct ON ct.CityCode = i.SoldTo_City
		LEFT OUTER JOIN CFA.tblCourierMaster AS c ON atm.CourierId = c.CourierId
		LEFT OUTER JOIN  CFA.tblCartingAgentMaster ca  ON gp.CAId = ca.CAId
	WHERE gp.BranchId=@BranchId AND gp.CompId=@CompId AND gp.GatepassId=@GPid

	--select distinct 
	----  ,  i.InvCreatedDate, i.IsColdStorage,  i.InvAmount, i.PONo, i.PODate, i.NoOfItems, 
	----i.InvStatus,  i.InvWeight,  i.ReadyToDispatchBy, i.CancelBy, gpd.GatepassDtlsId, gpd.InvId
	--from CFA.tblGenerateGatepass AS gp INNER JOIN CFA.tblGenerateGatepassDetails AS gpd ON gp.GatepassId = gpd.GatepassId
	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetGatepassDtlsForPDF_NIU]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [CFA].[usp_GetGatepassDtlsForPDF_NIU]	-- 1,1,1
--DECLARE
@BranchId INT,
@CompId INT,
@GPid INT
--SET @BranchId=1; SET @CompId=1; SET @GPid=28;
AS
BEGIN
	--declare @InvNoStr nvarchar(2000), @AttInvId bigint  
	--select @AttInvId=isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=@InvId and AttachedInvId is not null  
  
	--set @InvNoStr=
	--select isnull((STUFF((select ',' + convert(nvarchar(50), i.InvNo)   
	--from CFA.tblInvoiceHeader i inner join CFA.tblAssignTransportMode AS t on i.InvId=t.InvoiceId  
	--where t.AttachedInvId=@AttInvId FOR XML PATH('')),1,1,'')),'')   
	--print @InvNoStr  

	SELECT distinct gp.GatepassId, gp.BranchId, gp.CompId, gp.GatepassNo, gp.GatepassDate, gp.VehicleNo, gp.GuardNameId, g.EmpName, g.EmpNo, 
		gp.DriverName, gp.Addedby, gp.AddedOn, gp.UpdatedBy, gp.LastUpdatedOn, gp.IsPrinted,
		br.BranchCode, br.BranchName, br.BranchAddress, br.City BrCitycode,bct.CityName AS BrCityName,
		br.Pin brPin, br.ContactNo brContactNo, br.Email brEmail, cp.CompanyCode, cp.CompanyName, cp.CompanyEmail, 
		cp.ContactNo AS CompContactNo, cp.CompanyAddress, cp.CompanyCity CompanyCityCode, cpct.CityName as CompanyCityName, 
		cp.Pin AS CompanyPin

	

		
	FROM CFA.tblGenerateGatepass AS gp INNER JOIN CFA.tblGenerateGatepassDetails AS gpd ON gp.GatepassId = gpd.GatepassId
	INNER JOIN CFA.tblCompanyMaster AS cp ON gp.CompId = cp.CompanyId
	INNER JOIN CFA.tblBranchMaster AS br ON gp.BranchId = br.BranchId
	LEFT OUTER JOIN CFA.tblCityMaster AS bct ON br.City = bct.CityCode
	left outer join CFA.tblCityMaster AS cpct ON cp.CompanyCity = cpct.CityCode
	left outer join CFA.tblEmployeeMaster AS g ON g.EmpId = gp.GuardNameId
	WHERE gp.BranchId = @BranchId AND gp.CompId = @CompId --AND gp.GatepassId = @GPid

	select distinct gp.GatepassId, gp.GatepassNo,atm.TransportModeId, tm.MasterName AS TrasportModeText, 
	atm.TransporterId, t.TransporterNo, t.TransporterName,atm.CourierId,c.CourierName, atm.Delivery_Remark, atm.LRNo,
	i.SoldTo_StokistId, sk.StockistNo, sk.StockistName, sk.MobNo, sk.Emailid, i.SoldTo_City, ct.CityName,
	i.NoOfBox,i.IsCourier,gp.CAId,ca.CAName, gp.GuardNameText,
	case when atm.AttachedInvId>0 then isnull((STUFF((select ',' + convert(nvarchar(50), i.InvNo)   
	from CFA.tblInvoiceHeader i inner join CFA.tblAssignTransportMode AS t on i.InvId=t.InvoiceId  
	where  t.AttachedInvId=atm.AttachedInvId FOR XML PATH('')),1,1,'')),'') else  i.InvNo End InvNo,
	case when atm.AttachedInvId>0 then isnull((STUFF((select ',' + convert(nvarchar(50), gd.InvId)   
	from CFA.tblGenerateGatepassDetails gd inner join CFA.tblAssignTransportMode AS t on gd.InvId=t.InvoiceId  
	where  t.AttachedInvId=atm.AttachedInvId FOR XML PATH('')),1,1,'')),'') else  convert(varchar(20),gpd.InvId) End InvoiceId

	--  ,  i.InvCreatedDate, i.IsColdStorage,  i.InvAmount, i.PONo, i.PODate, i.NoOfItems, 
	--i.InvStatus,  i.InvWeight,  i.ReadyToDispatchBy, i.CancelBy, gpd.GatepassDtlsId, gpd.InvId
	from CFA.tblGenerateGatepass AS gp INNER JOIN CFA.tblGenerateGatepassDetails AS gpd ON gp.GatepassId = gpd.GatepassId
		left outer join CFA.tblAssignTransportMode AS atm ON atm.InvoiceId = gpd.InvId 
		left outer join CFA.tblGeneralMaster AS tm  on tm.pkId = atm.TransportModeId 
		Left outer join CFA.tblTransporterMaster AS t ON atm.TransporterId = t.TransporterId
		INNER JOIN CFA.tblInvoiceHeader AS i ON atm.InvoiceId = i.InvId
		INNER JOIN CFA.tblStockistMaster AS sk ON sk.StockistId = i.SoldTo_StokistId
		Left outer join CFA.tblCityMaster AS ct ON ct.CityCode = i.SoldTo_City
		LEFT OUTER JOIN CFA.tblCourierMaster AS c ON atm.CourierId = c.CourierId
		LEFT OUTER JOIN  CFA.tblCartingAgentMaster ca  ON gp.CAId = ca.CAId
		 
		 
	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetGPSummaryChecklist]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_GetGPSummaryChecklist]
--declare
@ExpInvId int
--set @ExpInvId=1
as
BEGIN
	SELECT DISTINCT (convert(nvarchar(10),cast(ed.GPDate as date),112)+convert(nvarchar(10),ed.CityCode)) dtctID, 
		cast(ed.GPDate as date) GPDate,sum(isnull(ed.NoOfInv,0)) NoOfInv, sum(isnull(ed.GPNoOfBox,0)) GPNoOfBox, 
		sum(isnull(ed.TranspNoOfBox,0)) TranspNoOfBox, ed.Rate, sum(ed.FreightAmt) as FreightAmt,ed.CityCode,ct.CityName
	FROM CFA.tblExpenseRegisterDtls AS ed INNER JOIN CFA.tblGenerateGatepass g ON ed.GatepassId = g.GatepassId
	left outer join CFA.tblGenerateGatepassDetails gd on g.GatepassId=gd.GatepassId
	left outer join CFA.tblInvoiceHeader i with(nolock) on gd.InvId=i.InvId
	left outer join CFA.tblCityMaster ct on ed.CityCode=ct.CityCode

	where ed.ExpInvId=@ExpInvId
	Group by cast(ed.GPDate as date), ed.Rate,ed.CityCode,ct.CityName
	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetGPSummaryChecklistByGPDate]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[CFA].[usp_GetGPSummaryChecklistByGPDate] 1,'2023-05-11',16
CREATE proc [CFA].[usp_GetGPSummaryChecklistByGPDate]
--declare
@ExpInvId int,
@GPDate datetime,
@CityCode int
--set @ExpInvId=5
as
BEGIN
	SELECT ed.ExpInvDtlsId,ed.GPDate, ed.GatepassId, CFA.tblGenerateGatepass.GatepassNo, ed.NoOfInv, ed.GPNoOfBox, ed.TranspNoOfBox, 
		ed.CityCode, ed.Rate, ed.FreightAmt, ed.Remark, ed.DtlsStatus, ed.ResolveRemark,sm.StatusText,
	convert(nvarchar(10),ed.GatepassId)+convert(nvarchar(10),ed.CityCode) gpctId
	FROM CFA.tblExpenseRegisterDtls AS ed INNER JOIN CFA.tblGenerateGatepass ON ed.GatepassId = CFA.tblGenerateGatepass.GatepassId
	left outer join CFA.tblStatusMaster sm on ed.DtlsStatus=sm.id and sm.StatusFor='ExpInv'
	where ed.ExpInvId=@ExpInvId and cast(ed.GPDate as date)=cast(@GPDate as date) and (ed.DtlsStatus in(0,1))
	and ed.CityCode=@CityCode
--select cast(g.GatepassDate as date) GPDate, t.TransporterId,t.TransporterName,c.CourierId,c.CourierName, 
--	sum(isnull(gd.InvId,0)) GPNoOfInv,sum(isnull(i.NoOfBox,0)) GPNoOfBox,
--	case when tm.CourierId>0 then cc.CityCode else tc.CityCode end CityCode,
--	case when tm.CourierId>0 then cc.CityName else tc.CityName end CityName,
--	case when tm.CourierId>0 then isnull(c.RatePerBox,0) else isnull(t.RatePerBox,0) end RatePerBox,
--	case when tm.CourierId>0 then sum(isnull(i.NoOfBox,0)) * isnull(c.RatePerBox,0) else sum(isnull(i.NoOfBox,0)) * isnull(t.RatePerBox,0) end Amount
--	From CFA.tblGenerateGatepass g inner join CFA.tblGenerateGatepassDetails gd on g.GatepassId=gd.GatepassId
--	inner join CFA.tblInvoiceHeader i on gd.InvId=i.InvId
--	inner join CFA.tblAssignTransportMode tm on gd.InvId=tm.InvoiceId
	
--	left outer join CFA.tblTransporterMaster t on tm.TransporterId=t.TransporterId
--	left outer join CFA.tblCityMaster tc on tc.CityCode=t.CityCode
--	left outer join CFA.tblTransporterParentMapping tp on tm.TransporterId=tp.TransporterId
--	left outer join CFA.tblTransporterParentMst tpm on tpm.Tpid=tp.Tpid
	
--	left outer join CFA.tblCourierMaster c on tm.CourierId=c.CourierId
--	left outer join CFA.tblCityMaster cc on cc.CityCode=c.CityCode
--	left outer join CFA.tblCourierParentMapping cp on tm.CourierId=cp.CourierId
--	left outer join CFA.tblCourierParentMst cpm on cpm.CPid=cp.CPid
--	--left outer join CFA.tblExpenseRegisterDtls erd on cast(erd.InvDate as date)=cast(g.GatepassDate as date)	
--	where (tm.TransporterId=@TransId or tm.CourierId=@TransId) and g.CompId=@CompId and g.BranchId=@BranchId
--	and cast(g.GatepassDate as date) between cast(@FromDt as date) and cast(@ToDt as date)
--	group by cast(g.GatepassDate as date),t.TransporterId,t.TransporterName,c.CourierId,c.CourierName,gd.InvId,
--	tm.CourierId,cc.CityCode,tc.CityCode,cc.CityName,tc.CityName,t.RatePerBox,c.RatePerBox

END

GO
/****** Object:  StoredProcedure [CFA].[usp_GetGSTTypeList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [CFA].[usp_GetGSTTypeList]
@TaxId int=0

AS
BEGIN
	SELECT TaxId,GSTType,CGST,SGST,AddedBy,LastUpdatedOn from CFA.tblTAXMaster 
	where(TaxId=@TaxId or ISNULL(@TaxId,0)=0)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetGuardDetails]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_GetGuardDetails]
--DECLARE  
@BranchId INT,  
@CompId INT
  
AS  
--set @BranchId=1; set @CompId = 2;
  
BEGIN  
	SELECT e.EmpId, e.EmpName --g.GatepassNo
	FROM CFA.tblEmployeeMaster e 	--LEFT OUTER JOIN CFA.tblGenerateGatepass g on e.BranchId= g.BranchId
	LEFT OUTER JOIN  CFA.tblEmployeeCompanyMapping m on e.EmpId = m.EmpId
	where e.BranchId=@BranchId and m.CompanyId = @CompId and e.IsActive = 'Y' and e.DesignationId=  28
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetHeadMasterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_GetHeadMasterList] 1
CREATE PROCEDURE [CFA].[usp_GetHeadMasterList]
@BranchId int
AS
BEGIN

	SELECT  h.pkId,h.BranchId,h.HeadName,h.HeadTypeId,g.MasterName as HeadType,h.IsActiveStatus,h.Addedby,h.AddedOn,h.LastUpdatedOn
	FROM CFA.tblHeadMaster h left outer join CFA.tblGeneralMaster g on h.HeadTypeId=g.pkId
	WHERE (h.BranchId = @BranchId or @BranchId=0)

END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetImportCNDataList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_GetImportCNDataList]
--DECLARE
@BranchId INT,
@CompId INT
--SET @BranchId=1; SET @CompId=1;
AS
BEGIN
	SELECT cnh.BranchId,cnh.CompId,cnh.SalesOrderNo,
		   cnh.SalesOrderDate,cnh.CrDrNoteNo,cnh.CRDRCreationDate,cnh.CrDrAmt,
		   st.StockistNo,st.StockistName,cm.CityName,cnh.OrderReason, cnh.LRNo,cnh.LRDate,cnh.CFAGRDate,
		   cnh.AddedBy,cnh.LastUpdateDate
	FROM CFA.tblCNHeader cnh LEFT OUTER JOIN CFA.tblStockistMaster st ON cnh.SoldToCode=st.StockistNo
	LEFT OUTER JOIN CFA.tblCityMaster cm ON st.CityCode=cm.CityCode
	WHERE cnh.BranchId=@BranchId AND cnh.CompId=@CompId
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetInsuranceClaimByIdApprovalEmail]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_GetInsuranceClaimByIdApprovalEmail]
--DECLARE
@BranchId INT,
@CompId INT,
@ClaimId BIGINT
--SET @BranchId=1; SET @CompId=1; SET @ClaimId=11
AS
BEGIN
	SELECT ins.BranchId,ins.CompId,ins.ClaimId,ins.InvoiceId,tih.InvNo,ins.ClaimNo,ins.ClaimDate,ins.ClaimAmount,ct.ClaimType,
	ins.DebitNote,ins.DebitDate,ins.DebitAmount,ins.ClaimStatus,ins.Remark,ins.AddedBy,ins.AddedOn,ins.LastUpdatedDate,
	'nitesh@aadyamconsultant.com' AS EmailId,ins.IsEmail
	FROM CFA.tblInsuranceClaim ins LEFT OUTER JOIN cfa.tblTransitInvoiceHeader tih on ins.InvoiceId=tih.InvId
	LEFT OUTER JOIN CFA.tblInsClaimType ct on ins.ClaimType=ct.ClaimTypeId
	WHERE ins.BranchId=@BranchId AND ins.CompId=@CompId AND ins.ClaimId=@ClaimId
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetInsuranceClaimInvById]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[CFA].[usp_GetInsuranceClaimInvById] 1,1,'23'
CREATE PROCEDURE [CFA].[usp_GetInsuranceClaimInvById]
--DECLARE
@BranchId INT,
@CompId INT,
@InvoiceId NVARCHAR(20)
--SET @BranchId=1; SET @CompId=1; SET @InvoiceId='23';
AS
BEGIN
	SELECT ins.BranchId,ins.CompId,ins.InvoiceId,ins.ClaimId,ins.ClaimNo,CAST(ins.ClaimDate AS DATE) AS ClaimDate,ins.ClaimAmount
	FROM CFA.tblInsuranceClaim ins
	WHERE ins.BranchId=@BranchId AND ins.CompId=@CompId AND ins.InvoiceId=@InvoiceId
END

GO
/****** Object:  StoredProcedure [CFA].[usp_GetInsuranceClaimInvoiceList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_GetInsuranceClaimInvoiceList] 
--DECLARE
@BranchId INT,
@CompId INT
AS
BEGIN
	SELECT BranchId,CompId,InvId,InvNo	FROM CFA.tblTransitInvoiceHeader
	WHERE BranchId=@BranchId AND CompId=@CompId
END

GO
/****** Object:  StoredProcedure [CFA].[usp_GetInsuranceClaimList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--[CFA].[usp_GetInsuranceClaimList] 1,1
CREATE PROCEDURE [CFA].[usp_GetInsuranceClaimList]
--DECLARE
@BranchId INT,
@CompId INT
AS
BEGIN
	SELECT ins.BranchId,ins.CompId,ins.ClaimId,ins.InvoiceId,tih.InvNo,ins.ClaimNo,ins.ClaimDate,ins.ClaimAmount,ct.ClaimTypeId,ct.ClaimType,
	ins.DebitNote,ins.DebitDate,ins.DebitAmount,ins.ClaimStatus,ins.Remark,ins.IsEmail,ins.AddedBy,ins.AddedOn,ins.LastUpdatedDate
	FROM CFA.tblInsuranceClaim ins LEFT OUTER JOIN cfa.tblTransitInvoiceHeader tih on ins.InvoiceId=tih.TransitId
	LEFT OUTER JOIN CFA.tblInsClaimType ct on ins.ClaimType=ct.ClaimTypeId
	WHERE ins.BranchId=@BranchId AND ins.CompId=@CompId
END

GO
/****** Object:  StoredProcedure [CFA].[usp_GetInternalAuditDtls]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_GetInternalAuditDtls] 0,0
CREATE PROC [CFA].[usp_GetInternalAuditDtls]
--Declare
@BranchId INT,
@CompId INT 
--SET @BranchId=0; SET @CompId=0;
AS
BEGIN 
	SELECT cq.StokistId,s.StockistNo,CFA.fn_CamelCase(s.StockistName) StockistName, s.Emailid,
	--'anilshinde@aadyamconsultant.com' AS Emailid,
	CFA.fn_CamelCase(ct.CityName) CityName,cq.ChqNo, 
	cq.ChqStatus,st.StatusText as ChqStatusText,cq.ReleasedRemark
	FROM CFA.tblStockistMaster s WITH(NOLOCK) INNER JOIN CFA.tblChequeRegister cq ON s.StockistId=cq.StokistId
	LEFT OUTER JOIN CFA.tblCityMaster AS ct WITH(NOLOCK) ON s.CityCode=ct.CityCode
	INNER JOIN CFA.tblStatusMaster st WITH(NOLOCK) ON cq.ChqStatus=st.id and st.StatusFor='CHQ'
    --where cq.BranchId = @BranchId and cq.CompId = @CompId
	WHERE (cq.BranchId=@BranchId OR @BranchId=0) AND (cq.CompId=@CompId OR @CompId=0)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetInvDtlsForEmail]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_GetInvDtlsForEmail]
--DECLARE
@BranchId INT,
@CompId INT,
@GatepassId INT

AS

BEGIN
	SELECT t.TransporterName, atm.LRNo, s.StockistNo, s.StockistName, s.Emailid,
	c.CompanyCode,CompanyName
	FROM CFA.tblAssignTransportMode AS atm INNER JOIN CFA.tblGenerateGatepass AS gp INNER JOIN
	CFA.tblGenerateGatepassDetails AS gpd ON gp.GatepassId = gpd.GatepassId ON atm.InvoiceId = gpd.InvId INNER JOIN
	CFA.tblInvoiceHeader AS i ON gpd.InvId = i.InvId inner JOIN
	CFA.tblStockistMaster s on s.StockistId=i.SoldTo_StokistId  left outer join
	CFA.tblTransporterMaster AS t ON atm.TransporterId = t.TransporterId
	left outer join CFA.tblCompanyMaster c on i.CompId=c.CompanyId
	where gp.BranchId = @BranchId and gp.CompId = @CompId and gp.GatepassId = @GatepassId
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetInventorydashbordCntforAllLogin]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[CFA].[usp_GetInventorydashbordCntforAllLogin]1,2,'2023-01-01','2023-04-13'
CREATE PROCEDURE [CFA].[usp_GetInventorydashbordCntforAllLogin]
@BranchId INT,
@CompId INT,
@FromDate Datetime,
@ToDate Datetime
--set @BranchId=1 set @CompId=1 SET @FromDate='2022-07-07'; SET @ToDate='2022-07-07';
AS
BEGIN
	SELECT
		--Boxes and vehicales details
		ISNULL(COUNT(CASE WHEN (ti.VehicleNo IS NOT NULL)and CAST(ti.AddedOn AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)THEN 1 ELSE 0 END),0) Totalvehical,
		ISNULL(SUM((convert (float,ti.TotalCaseQty))),0.0) TotalCaseQty,
		--claim Details
		ISNULL((SELECT COUNT(LrNo) FROM CFA.tblInsuranceClaim WHERE (ISNULL(ClaimNo,'')<>'') AND( ClaimApproveBy IS NULL)AND 
		CAST(ClaimDate AS DATE) BETWEEN cast(@FromDate as date) AND cast(@ToDate as date) AND (BranchId=@BranchId or @BranchId=0) AND (CompId=@CompId or @CompId=0) ),0) Pendingclaim,
		ISNULL((SELECT COUNT(LrNo) FROM CFA.tblInsuranceClaim WHERE (ISNULL(SANNo,'')<>'') AND (SANApproveBy IS NULL)AND
		CAST(SANDate AS DATE) BETWEEN cast(@FromDate as date) AND cast(@ToDate as date)AND (BranchId=@BranchId or @BranchId=0) AND (CompId=@CompId or @CompId=0)),0) PendingSan
	FROM CFA.tblTransitInvoiceHeader AS ti 
	where (ti.BranchId=@BranchId or @BranchId=0) AND (ti.CompId=@CompId or @CompId=0 ) 
	group by  BranchId, CompId
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetInvInLRDetailsForMob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CFA.usp_GetInvInLRDetailsForMob 1,1
CREATE PROC [CFA].[usp_GetInvInLRDetailsForMob]
--DECLARE
@BranchId INT,
@CompId INT
--SET @BranchId=1;SET @CompId=1;
AS
BEGIN
	SELECT BranchId,CompId,InvId,InvoiceDate,LRNo,LRDate,NoOfCase,ActualNoOfCase,Remarks,AddedBy,AddedOn,LastUpdatedOn
	FROM CFA.tblInvInLRDetailsForMobile
	WHERE BranchId=@BranchId AND CompId=@CompId
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetInvInVehicleCheckListMaster]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--	CFA.usp_GetInvInVehicleCheckListMaster 1,1
CREATE PROC [CFA].[usp_GetInvInVehicleCheckListMaster]
--DECLARE
@BranchId INT,
@CompId INT
--SET @BranchId=1;SET @CompId=1
AS
BEGIN
	 SELECT ChecklistTypeId,BranchId,CompId,ChecklistType,QuestionName,ControlType,SeqNo
	 FROM CFA.tblInvInVehicleChecklistMaster
	 WHERE BranchId=@BranchId AND CompId=@CompId AND IsActive='Y'
	 Order by SeqNo
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetInvoiceDetailsForSticker]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_GetInvoiceDetailsForSticker] --1,1,0
--declare 
@BranchId int,
@CompId int,
@InvId int
--SET @BranchId=1; SET @CompId=1; SET @InvId=15;
as
BEGIN
	declare @InvNoStr nvarchar(2000), @AttInvId bigint,@InvNoStr1 nvarchar(30)

	select @AttInvId=isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=@InvId and AttachedInvId is not null
	select @InvNoStr1 =min(InvNo) from CFA.tblInvoiceHeader i inner join CFA.tblAssignTransportMode AS t on i.InvId=t.InvoiceId
	where t.AttachedInvId=@AttInvId

	set @InvNoStr=@InvNoStr1+' '+ (STUFF((select ' / ' + convert(nvarchar(50), a.StrInv) 
	from (select distinct substring(i.invno,len(i.invno)-2,3) StrInv 
	from CFA.tblInvoiceHeader i inner join CFA.tblAssignTransportMode AS t on i.InvId=t.InvoiceId 
	where t.AttachedInvId=@AttInvId and InvNo <> @InvNoStr1 ) a order by a.StrInv FOR XML PATH('')),1,1,''))
	--select @InvNoStr 
	--select @InvNoStr 
	--print @InvNoStr
	SELECT distinct i.InvId, i.BranchId, i.CompId, 

	case when tm.AttachedInvId>0 then 
		( 
			select top 1 (select min(InvNo) from CFA.tblInvoiceHeader i1 inner join CFA.tblAssignTransportMode AS t1 on i1.InvId=t1.InvoiceId
			where t1.AttachedInvId=(select isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=i.InvId and AttachedInvId is not null))
			+' '+ (STUFF((select ' / ' + convert(nvarchar(50), a.StrInv) 
			from (select distinct substring(i2.invno,len(i2.invno)-2,3) StrInv 
			from CFA.tblInvoiceHeader i2 inner join CFA.tblAssignTransportMode AS t2 on i2.InvId=t2.InvoiceId 
			where t2.AttachedInvId=(select isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=i.InvId and AttachedInvId is not null)
			 and InvNo <> (select min(InvNo) from CFA.tblInvoiceHeader i3 inner join CFA.tblAssignTransportMode AS t3 on i3.InvId=t3.InvoiceId
			where t3.AttachedInvId=(select isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=i.InvId and AttachedInvId is not null)) 
			) a order by a.StrInv FOR XML PATH('')),1,1,''))
		)
		 else  i.InvNo End InvNo,tm.AttachedInvId,
		--case when isnull(tm.AttachedInvId,0)>0   then @InvNoStr else i.InvNo end as InvNo, 
		tm.TransportModeId, tm.PersonName, tm.PersonAddress, tm.PersonMobNo, tm.OtherDetails, 
		tm.TransporterId, t.TransporterNo, t.TransporterName, tm.CourierId, c.CourierName, tm.Delivery_Remark, 
		i.SoldTo_StokistId, i.InvAmount, i.InvStatus, i.NoOfBox, i.InvWeight, i.IsCourier,i.OnPriority,i.IsStockTransfer,
		
		case when i.IsStockTransfer=1 then oc.CNFId else sk.StockistId end StockistId,
		case when i.IsStockTransfer=1 then oc.CNFCode else sk.StockistNo end StockistNo, 
		case when i.IsStockTransfer=1 then substring(oc.CNFName,1,18) else substring(sk.StockistName,1,18) end StockistName, 
		case when i.IsStockTransfer=1 then oc.ContactNo else sk.MobNo end MobNo, 
		case when i.IsStockTransfer=1 then oc.CNFAddress else sk.StockistAddress end StockistAddress,
		case when i.IsStockTransfer=1 then ocCt.CityCode else sk.CityCode end CityCode,
		case when i.IsStockTransfer=1 then ocCt.CityName else ct.CityName end CityName
			
	FROM CFA.tblInvoiceHeader AS i with (nolock) left outer join CFA.tblStockistMaster AS sk ON sk.StockistId = i.SoldTo_StokistId 
	INNER JOIN CFA.tblAssignTransportMode AS tm ON i.InvId = tm.InvoiceId
	left outer join CFA.tblCourierMaster AS c ON c.CourierId = tm.CourierId 
	left outer join CFA.tblCityMaster AS ct ON sk.CityCode = ct.CityCode
	left outer join	CFA.tblTransporterMaster AS t ON tm.TransporterId = t.TransporterId 
	left outer join CFA.tblCityMaster AS cnt ON tm.OCnfCity = cnt.CityCode
		left outer JOIN CFA.tblOtherCNFMaster AS oc ON oc.CNFId = i.SendToCNFId
		LEFT OUTER JOIN CFA.tblCityMaster AS ocCt ON tm.OCnfCity = ocCt.CityCode
	Where (i.InvId =@InvId or @InvId=0) and i.BranchId =@BranchId and i.CompId=@CompId  and i.InvStatus<7 and tm.InvoiceId is not null
	and (tm.AttachedInvId=0 or tm.AttachedInvId=tm.InvoiceId)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetInvoiceForChqBlock]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [CFA].[usp_GetInvoiceForChqBlock] 
--declare
@stockistId int,
@CompId int,
@FromDate DATETIME,
@ToDate DATETIME
--@InvDate datetime

--set @stockistId=18; set @CompId=1 ; set @FromDate='2023-01-1'; set @ToDate='2023-06-06'

as

BEGIN
	SELECT i.InvId, i.BranchId, i.CompId, i.InvNo, i.InvCreatedDate, i.IsColdStorage, i.SoldTo_StokistId, s.StockistName, 
	s.StockistNo, s.CityCode, c.CityName, i.InvAmount, i.InvStatus, cb.InvId as CbInvId
	FROM CFA.tblInvoiceHeader AS i INNER JOIN CFA.tblStockistMaster AS s ON i.SoldTo_StokistId = s.StockistId LEFT OUTER JOIN
	CFA.tblCityMaster AS c ON s.CityCode = c.CityCode left outer join CFA.tblChqBlockedforInv cb on i.InvId=cb.InvId
	where SoldTo_StokistId=@stockistId and --CAST(InvCreatedDate AS DATE) >= CAST(@FromDate AS DATE) AND CAST(InvCreatedDate AS DATE)<=CAST(@ToDate AS DATE) 
	CAST(InvCreatedDate AS DATE) BETWEEN CAST(@FromDate AS DATE) AND CAST(@ToDate AS DATE)
	and cb.InvId is null and i.CompId=@CompId
END
--cast(InvCreatedDate as date)=cast(@InvDate as date) 

GO
/****** Object:  StoredProcedure [CFA].[usp_GetInvoiceHeaderResolveConcern]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_GetInvoiceHeaderResolveConcern]
--DECLARE
@BranchId INT,
@CompId	INT,
@BillDrawerId int=0
--SET @BranchId=1; SET @CompId=1; SET @BillDrawerId=0;
AS
BEGIN
	SELECT        i.InvId, i.BranchId, i.CompId, i.InvNo, i.InvCreatedDate, i.IsColdStorage, i.SoldTo_StokistId, 
		case when i.IsStockTransfer=1 then oc.CNFCode else sm.StockistNo end StockistNo, 
		case when i.IsStockTransfer=1 then oc.CNFName else sm.StockistName end StockistName, 
		case when i.IsStockTransfer=1 then oc.CityCode else sm.CityCode end CityCode,
		case when i.IsStockTransfer=1 then ocCt.CityName else c.CityName end CityName,
		 i.InvAmount, i.InvStatus, s.StatusText, 
		i.AcceptedBy, BD.DisplayName AS BillDrawerName, i.PackedBy, Pckr.EmpName AS PackedByName, 
		i.NoOfBox, i.InvWeight, i.IsCourier, i.PackingConcernDate, 
		i.PackingConcernId, pkcrn.MasterName AS PackingConcernText, i.PackingRemark, i.ReadyToDispatchBy, DC.DisplayName as DispatchByName,
		i.ReadyToDispatchDate,i.ReadyToDispatchConcernId, dcrn.MasterName AS DispatchConcernText, i.ReadyToDispatchRemark, i.OnPriority,i.IsStockTransfer
	FROM CFA.tblInvoiceHeader AS i LEFT OUTER JOIN CFA.tblStockistMaster AS sm ON sm.StockistId = i.SoldTo_StokistId
	    left outer JOIN CFA.tblOtherCNFMaster AS oc ON oc.CNFId = i.SendToCNFId
		LEFT OUTER JOIN CFA.tblEmployeeMaster AS Pckr ON i.PackedBy = Pckr.EmpId
		LEFT OUTER JOIN CFA.tblStatusMaster AS s ON s.id = i.InvStatus AND s.StatusFor = 'INV' 
		LEFT OUTER JOIN CFA.tblCityMaster AS c ON c.CityCode = sm.CityCode
		LEFT OUTER JOIN CFA.tblUser AS BD ON i.AcceptedBy = BD.UserId
		LEFT OUTER JOIN CFA.tblUser AS DC ON i.ReadyToDispatchBy = DC.UserId
		LEFT OUTER JOIN	CFA.tblGeneralMaster AS pkcrn ON i.PackingConcernId = pkcrn.pkId 
		LEFT OUTER JOIN	CFA.tblGeneralMaster AS dcrn ON i.PackingConcernId = dcrn.pkId 
		LEFT OUTER JOIN CFA.tblCityMaster AS ocCt ON oc.CityCode = ocCt.CityCode
	WHERE (i.BranchId=@BranchId OR @BranchId=0) AND i.CompId=@CompId and (i.AcceptedBy=@BillDrawerId or @BillDrawerId=0)
		and i.InvStatus in (4,6)
	ORDER BY Invid DESC
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetInvoiceListForMob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_GetInvoiceListForMob] --1,1,5
--declare
@BranchId int,  
@CompId int,
@InvStatus int
--select @BranchId =1,@CompId=2,@InvStatus=0
AS

BEGIN
	SELECT 
	case when tm.AttachedInvId>0 then 
		( 
			select top 1 (select min(InvNo) from CFA.tblInvoiceHeader i1 inner join CFA.tblAssignTransportMode AS t1 on i1.InvId=t1.InvoiceId
			where t1.AttachedInvId=(select isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=i.InvId and AttachedInvId is not null))
			+' '+ (STUFF((select ' / ' + convert(nvarchar(50), a.StrInv) 
			from (select distinct substring(i2.invno,len(i2.invno)-2,3) StrInv 
			from CFA.tblInvoiceHeader i2 inner join CFA.tblAssignTransportMode AS t2 on i2.InvId=t2.InvoiceId 
			where t2.AttachedInvId=(select isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=i.InvId and AttachedInvId is not null)
			 and InvNo <> (select min(InvNo) from CFA.tblInvoiceHeader i3 inner join CFA.tblAssignTransportMode AS t3 on i3.InvId=t3.InvoiceId
			where t3.AttachedInvId=(select isnull(AttachedInvId,0) from CFA.tblAssignTransportMode where InvoiceId=i.InvId and AttachedInvId is not null)) 
			) a order by a.StrInv FOR XML PATH('')),1,1,''))
		)
		 else  i.InvNo End InvNo,
	i.InvId, i.BranchId, i.CompId, i.InvCreatedDate, 
		case when i.IsStockTransfer=1 then oc.CNFCode else sk.StockistNo end StockistNo, 
		case when i.IsStockTransfer=1 then oc.CNFName else sk.StockistName end StockistName, 
		case when i.IsStockTransfer=1 then oc.ContactNo else sk.MobNo end MobNo, 
		case when i.IsStockTransfer=1 then oc.CNFAddress else sk.StockistAddress end StockistAddress,
		case when i.IsStockTransfer=1 then oc.CityCode else sk.CityCode end CityCode,
		case when i.IsStockTransfer=1 then ocCt.CityName else ct.CityName end CityName, 
		 tm.PersonName, tm.PersonAddress, tm.PersonMobNo, tm.OtherDetails, 
		tm.TransporterId, t.TransporterNo, t.TransporterName, tm.CourierId, c.CourierName, tm.Delivery_Remark, 
		i.SoldTo_StokistId, i.InvAmount, i.InvStatus, i.NoOfBox, i.InvWeight, i.IsCourier,i.OnPriority,
		tm.TransportModeId,		ISNULL(i.IsStockTransfer,'') AS IsStockTransfer,
		case when tm.TransportModeId=1 then 'Local' when tm.TransportModeId=2 then 'Other City' 
		when tm.TransportModeId=3 then 'By Hand' Else '' End TransportModeText,tm.AttachedInvId, 
		br.City as BrCityCode,ISNULL((ISNULL(t.TransporterName,c.CourierName)),PersonName) AS TransCourName,
		(select (STUFF((select ', ' + convert(nvarchar(5), a.ScannedBoxes) 
		from CFA.tblScannedInvData a where InvId=i.InvId order by a.ScannedBoxes FOR XML PATH('')),1,1,''))) as ScannedBoxes
	FROM CFA.tblInvoiceHeader AS i left outer JOIN CFA.tblStockistMaster AS sk ON sk.StockistId = i.SoldTo_StokistId
		 left outer JOIN CFA.tblOtherCNFMaster AS oc ON oc.CNFId = i.SendToCNFId
		LEFT OUTER JOIN CFA.tblCityMaster AS ct ON sk.CityCode = ct.CityCode
		INNER JOIN CFA.tblAssignTransportMode AS tm ON i.InvId = tm.InvoiceId
		LEFT OUTER JOIN CFA.tblCourierMaster AS c ON tm.CourierId=c.CourierId
		LEFT OUTER JOIN CFA.tblTransporterMaster AS t ON tm.TransporterId = t.TransporterId
		left outer Join CFA.tblBranchMaster br on i.BranchId=br.BranchId
		LEFT OUTER JOIN CFA.tblCityMaster AS ocCt ON oc.CityCode = ocCt.CityCode
				
	Where  i.BranchId =@BranchId and i.CompId=@CompId and (i.InvStatus=@InvStatus or (@InvStatus=0 and i.InvStatus<7)) -- Remove Gatepass Generated
	and (tm.AttachedInvId=0 or tm.AttachedInvId=tm.InvoiceId)
	order by InvNo
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetInvoiceListWithLRDetails]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_GetInvoiceListWithLRDetails]
--DECLARE
@BranchId int,
@CompId	INT,
@LRDate datetime

--SET @BranchId=1; SET @CompId=1; set @LRDate='2022-05-05'
AS
BEGIN
	select i.InvId, i.InvNo, i.NoOfBox, i.SoldTo_StokistId as StokistId,
		case when i.IsStockTransfer=1 then oc.CNFCode else s.StockistNo end StockistNo, 
		case when i.IsStockTransfer=1 then oc.CNFName else s.StockistName end StockistName, 
		tm.LRNo,tm.LRDate,tm.LRBox,tm.LRWeightInKG,i.OnPriority,i.IsStockTransfer
	from CFA.tblInvoiceHeader i inner join CFA.tblAssignTransportMode tm on i.InvId=tm.InvoiceId
		left outer join CFA.tblStockistMaster s on i.SoldTo_StokistId =s.StockistId
		left outer JOIN CFA.tblOtherCNFMaster AS oc ON oc.CNFId = i.SendToCNFId
	where i.BranchId=@BranchId and i.CompId=@CompId 
	order by tm.LRDate desc
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetInvoiceSummaryCounts]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--		[CFA].[usp_GetInvoiceSummaryCounts] 1,1,'2022-06-13'

CREATE PROC [CFA].[usp_GetInvoiceSummaryCounts]
--declare
@BranchId int,
@CompId int,
@InvDate datetime

--SET @BranchId=1; SET @CompId=1; SET @InvDate='2022-05-10'
AS
BEGIN
	select i.BranchId, i.CompId, count(i.InvId) TotalInv,
	sum(case when (InvStatus=20) then 1 else 0 end) CancelInv,
	sum(case when (InvStatus in (1)) then 1 else 0 end) AcceptedInv,
	sum(case when (InvStatus in (0)) then 1 else 0 end) PendingForAcceptInv,
	sum(case when (InvStatus=2) then 1 else 0 end) InvoiceDrawn,
	sum(case when (InvStatus=3) then 1 else 0 end) Packed,
	sum(case when (InvStatus=5) then 1 else 0 end) ReadyToDispatch,
	sum(case when (InvStatus in (4,6)) then 1 else 0 end) Concern,
	sum(case when (InvStatus=7) then 1 else 0 end) GetpassGenerated,
	sum(case when (InvStatus=8) then 1 else 0 end) Dispatched,
	sum(case when (InvStatus=9) then 1 else 0 end) LRUpdated,
	sum(case when (InvStatus=20) then 1 else 0 end) Cancel
	from CFA.tblInvoiceHeader as i 
	Where i.BranchId=@BranchId and i.CompId=@CompId 
	and (i.InvStatus not in (8,9,20) or cast(i.InvCreatedDate as date) =cast(getdate() as date))
	group by i.BranchId, i.CompId
END

GO
/****** Object:  StoredProcedure [CFA].[usp_GetInwradGatepassList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_GetInwradGatepassList]
--DECLARE
@BranchId int,
@CompId int

--SET @BranchId =1;SET @CompId =1;
AS
BEGIN
	SELECT  g.LREntryId,g.BranchId,g.CompId,g.LREntryNo,g.LREntryDate,g.StockistId, sm.StockistNo,
	CFA.fn_CamelCase(sm.StockistName) StockistName,g.City,CFA.fn_CamelCase(c.CityName) CityName, 
	g.TransporterId, CFA.fn_CamelCase(tm.TransporterName) TransporterName,g.CourierId,
	CFA.fn_CamelCase(cm.CourierName) CourierName,CFA.fn_CamelCase(g.OtherTrasport) OtherTrasport,
	g.LRNo,g.LRDate,g.NoOfBox,g.AmountPaid,g.CashmemoDate,g.ClaimFormAvailable,GoodsReceived,g.GatepassNo, g.ReceiptDate,
	IsEmailSent,g.AddedBy,g.AddedOn,g.LastUpdatedOn,g.RecvdAtOP,g.RecvdAtOPDate,
	isnull(CFA.fn_CamelCase(tm.TransporterName),cm.CourierName)+isnull(CFA.fn_CamelCase(cm.CourierName),tm.TransporterName) TransCourName,
	isnull(p.PhyChkId,0) PhyChkId, 
	case when (isnull(p.PhyChkId,0)=0) then datediff(dd, g.LREntryDate,getdate()) else 0 end as PhyChkAgeing,
	case when (isnull(g.GoodsReceived,0)=0) then datediff(dd, g.LREntryDate,getdate()) else 0 end as GoodNotRecAgeing,
	case when (isnull(g.ClaimFormAvailable,0)=0) then datediff(dd, g.LREntryDate,getdate()) else 0 end as ClaimMissingAgeing
	From CFA.tblInwardGatePass AS g LEFT OUTER JOIN CFA.tblStockistMaster AS sm ON g.StockistId=sm.StockistId
	left outer join CFA.tblCityMaster AS c ON g.City=c.CityCode 
	left outer join CFA.tblTransporterMaster tm on g.TransporterId=tm.TransporterId
	left outer join CFA.tblCourierMaster cm on g.CourierId = cm.CourierId
	left outer join CFA.tblPhysicalCheck1 p on g.LREntryId=p.LREntryId
	WHERE (g.BranchId=@BranchId) AND (g.CompId=@CompId) 
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetLatestVersionDetails]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [CFA].[usp_GetLatestVersionDetails]
AS
BEGIN
	 SELECT Top 1 VersionId, VersionNo FROM CFA.tbl_VersionDetails order by AddedOn desc
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetListForDashboardInventoryInwrd]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_GetListForDashboardInventoryInwrd]--1,1
@BranchId int,
@CompId int

AS

BEGIN
	SELECT tih.TransitId,tih.InvNo,tih.InvoiceDate,tih.TransporterId,tm.TransporterNo,
	tm.TransporterName,tih.LrNo,tih.LrDate,	tih.Addedby,tih.AddedOn, ISNULL(tih.IsMapDone,0) AS IsMapDone,
	ISNULL(miv.IsChecklistDone,0) AS IsChecklistDone,clm.ClaimId,clm.ClaimDate,clm.ClaimAmount,
	clm.ClaimNo,clm.ClaimRemark,clm.ClaimStatus,clm.ClaimType,clm.DebitDate,clm.SANNo,clm.SANDate,miv.VehicleNo,clm.ClaimApproveBy,clm.SANApproveBy
	FROM CFA.tblTransitInvoiceHeader tih LEFT OUTER JOIN CFA.tblTransporterMaster as tm
	ON tih.TransporterId = tm.TransporterId 
	LEFT OUTER JOIN CFA.tblInsuranceClaim as clm ON tih.LrNo = clm.LRNo
	LEFT OUTER JOIN CFA.tblMapInwardVehicle miv ON tih.LrNo=miv.LRNo
	WHERE (tih.BranchId=@BranchId or @BranchId=0) AND (tih.CompId=@CompId or @CompId=0)
END


GO
/****** Object:  StoredProcedure [CFA].[usp_GetLogDetails]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [CFA].[usp_GetLogDetails]

as

Begin

	SELECT top 200 LogID, Userid, LogFor, LogData, LogStatus, LogDatetime, LogException
	FROM cfa.tblAuditLog order by LogDateTime desc

End
GO
/****** Object:  StoredProcedure [CFA].[usp_GetLR_SRSMappingCounts]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_GetLR_SRSMappingCounts] --1,1  
--declare  
@BranchId int,    
@CompId int    
--set @BranchId=1 set @CompId=1    
as    
    
Begin    
	if exists(SELECT BranchId, CompId FROM CFA.tblInwardGatepass Where BranchId = @BranchId and CompId = @CompId)   
	Begin
		SELECT g.BranchId, g.CompId, 
		sum(case when cast(g.LREntryDate as date)=cast(getdate() as date) then 1 else 0 End) TodayTotalLR,  
		sum(case when (cast(g.LREntryDate as date)=cast(getdate() as date) and g.RecvdAtOP =1) then 1 else 0 End) TodayReceivedLR,  
		sum(case when (cast(g.LREntryDate as date)=cast(getdate() as date) and isnull(s.SRSId,0) >0) then 1 else 0 End) TodayImportedLR,  
		sum(case when isnull(s.SRSId,0) <=0 and g.ClaimFormAvailable=1 then 1 else 0 End) NotFoundLR,  
		sum(case when (cast(s.VerifyCorrectionDate as date)=cast(getdate() as date) and s.IsVerified ='Y') then 1 else 0 End) TodayVerifiedCount,  
		sum(case when isnull(s.IsCorrectionReq,'N')='Y'  then 1 else 0 End) CorrReqCount  
		FROM CFA.tblInwardGatepass g Left outer join CFA.tblSRSHeader s on g.LREntryId=s.LREntryId    
		Where g.BranchId = @BranchId and g.CompId = @CompId    
		group by g.BranchId, g.CompId
	End
	Else
	Begin
		SELECT @BranchId BranchId, @CompId CompId,0 TodayTotalLR, 0 TodayReceivedLR,0 TodayImportedLR, 0 NotFoundLR,0 TodayVerifiedCount,0 CorrReqCount 
	End
End
GO
/****** Object:  StoredProcedure [CFA].[usp_GetLRDtlsInvDtlsForEmail]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_GetLRDtlsInvDtlsForEmail] 0,0
CREATE PROC [CFA].[usp_GetLRDtlsInvDtlsForEmail]
--DECLARE
@BranchId INT,
@CompId INT
--SET @BranchId=0; SET @CompId=0;
AS
BEGIN  
	 SELECT t.TransporterName,atm.LRNo,atm.LRDate,atm.LRBox,s.StockistNo,s.StockistName,s.Emailid  
	 --'anilshinde@aadyamconsultant.com' AS Emailid  
	 FROM CFA.tblInvoiceHeader AS i WITH(NOLOCK) INNER JOIN CFA.tblAssignTransportMode AS atm WITH(NOLOCK) ON i.InvId=atm.InvoiceId
	 INNER JOIN  CFA.tblStockistMaster AS s WITH(NOLOCK) ON s.StockistId=i.SoldTo_StokistId
	 LEFT OUTER JOIN CFA.tblTransporterMaster AS t WITH(NOLOCK) ON atm.TransporterId=t.TransporterId
	 WHERE (i.BranchId=@BranchId OR @BranchId=0) AND (i.CompId=@CompId OR @CompId=0) 
	 AND CAST(atm.LastUpdatedDate AS DATE)=CAST(GETDATE() AS DATE) AND atm.LRNo IS NOT NULL
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetLRDtlsLstOfCnsgmntRecvdFrSndMail]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_GetLRDtlsLstOfCnsgmntRecvdFrSndMail] 0,0
CREATE PROC [CFA].[usp_GetLRDtlsLstOfCnsgmntRecvdFrSndMail]
--DECLARE
@BranchId int,
@CompId int
--SET @BranchId=0; SET @CompId=0;
AS
BEGIN
	SELECT ig.LREntryId,ig.LREntryNo,ig.LRNo,ig.LRDate,ig.BranchId,ig.CompId,ig.StockistId,ig.ClaimFormAvailable,ig.GatepassNo,ig.GoodsReceived,
	sm.StockistNo,sm.StockistName, sm.Emailid,
	--'anilshinde@aadyamconsultant.com' AS Emailid,
	tm.TransporterNo,tm.TransporterName,pc.ClaimNo,pc.ClaimDate,ig.IsEmailSent,
	isnull(CFA.fn_CamelCase(tm.TransporterName),cm.CourierName)+isnull(CFA.fn_CamelCase(cm.CourierName),tm.TransporterName) TransCourName
	FROM CFA.tblInwardGatepass AS ig LEFT OUTER JOIN CFA.tblStockistMaster as sm on sm.StockistId = ig.StockistId
	LEFT OUTER JOIN CFA.tblTransporterMaster as tm on ig.TransporterId = tm.TransporterId
	LEFT OUTER JOIN CFA.tblCourierMaster as cm on ig.CourierId = cm.CourierId
	LEFT OUTER JOIN CFA.tblPhysicalCheck1 as pc on ig.LREntryId = pc.LREntryId
	WHERE (ig.BranchId=@BranchId OR @BranchId=0) AND (ig.CompId=@CompId OR @CompId=0) and ig.GatepassNo IS NOT NULL AND ig.IsEmailSent=0
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetLrMisMatchList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [CFA].[usp_GetLrMisMatchList]
@BranchId int,  
@CompId int  
--set @BranchId=1 set @CompId=1  
as  
  
Begin  
	SELECT g.BranchId, g.CompId,g.LREntryId, g.LREntryNo,g.LREntryDate,g.StockistId, stk.StockistNo, stk.StockistName,  
		g.LRNo, g.LRDate,g.AmountPaid,ct.CityName,g.CourierId,t.TransporterId,t.TransporterName,t.TransporterNo, g.OtherTrasport,  
		g.GoodsReceived,g.ClaimFormAvailable,g.GatepassNo,g.ReceiptDate,g.RecvdAtOP,g.RecvdAtOPDate,s.SRSId,C.CourierName,
		isnull(CFA.fn_CamelCase(t.TransporterName),c.CourierName)+isnull(CFA.fn_CamelCase(c.CourierName),t.TransporterName) TransCourName    
	FROM CFA.tblInwardGatepass g left outer join CFA.tblCityMaster AS ct on ct.CityCode = g.City  
		LEFT OUTER JOIN CFA.tblStockistMaster AS stk ON g.StockistId = stk.StockistId   
		LEFT OUTER JOIN CFA.tblTransporterMaster AS t ON g.TransporterId = t.TransporterId 
		LEFT OUTER JOIN CFA.tblCourierMaster AS c ON g.CourierId = c.CourierId  
		Left outer join CFA.tblSRSHeader s on g.LREntryId=s.LREntryId  
	Where g.BranchId = @BranchId and g.CompId = @CompId and g.GoodsReceived=1 and s.SRSId is null and g.ClaimFormAvailable= 1
End
GO
/****** Object:  StoredProcedure [CFA].[usp_GetLRPageCounts]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--   CFA.usp_GetLRPageCounts 1,1  
  
CREATE proc [CFA].[usp_GetLRPageCounts]    
--declare  
@BranchId int,    
@CompId int    
--set @BranchId=1  set @CompId=1  
as    
    
Begin    
 SELECT g.BranchId, g.CompId,  
 sum(case when (cast(g.ReceiptDate as date)=cast(getdate() as date) and g.ClaimFormAvailable=1 ) then 1 else 0 end) TodayLRGP,  
 sum(case when (p.ConcernDate is not null and p.ResolveConcernDate is null) then 1 else 0 end) ConcernCnt,  
 sum(case when (p.ConcernDate is not null and p.ResolveConcernDate is not null) then 1 else 0 end) ConcernResolveCnt,  
 sum(case when ((cast(g.RecvdAtOPDate as date)=cast(getdate() as date))) then 1 else 0 end) RecvdAtOPCnt,  
 sum(case when (isnull(g.RecvdAtOP ,0)=0) and g.ClaimFormAvailable=1 then 1 else 0 end) PendingAtExpSCnt  
 FROM CFA.tblInwardGatepass g left outer join CFA.tblPhysicalCheck1 p on g.LREntryId=p.LREntryId  
 Where g.BranchId = @BranchId and g.CompId = @CompId and isnull(GatepassNo,'')<>'' and ReceiptDate is not null    
 Group by g.BranchId, g.CompId  
End  
GO
/****** Object:  StoredProcedure [CFA].[usp_GetLRSRSCNListforFilterDataOrdrRtrn]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Proc [CFA].[usp_GetLRSRSCNListforFilterDataOrdrRtrn]--1,1
@BranchId int,
@CompId int

AS
BEGIN
 SELECT ig.BranchId, ig.CompId, ig.LREntryId,ig.LREntryDate,ig.LRDate,ig.ClaimFormAvailable,ig.GatepassNo,ig.ReceiptDate,ig.StockistId,
 stk.StockistNo,stk.StockistName, ig.LREntryNo,ig.LRNo,ig.AmountPaid,t.TransporterId,t.TransporterNo, t.TransporterName,ig.GoodsReceived,
 ig.RecvdAtOP,ig.RecvdAtOPDate,s.IsVerified,s.SRSId,s.SRSStatus,p.ClaimNo,p.ClaimStatus,p.ClaimDate,cn.SalesOrderDate,cn.CNId ,p.AddedOn 
 FROM CFA.tblInwardGatepass ig LEFT OUTER JOIN CFA.tblStockistMaster AS stk ON ig.StockistId = stk.StockistId
 LEFT OUTER JOIN CFA.tblTransporterMaster AS t ON ig.TransporterId = t.TransporterId
 LEFT OUTER JOIN CFA.tblPhysicalCheck1 p on ig.LREntryId = p.LREntryId
 LEFT OUTER JOIN CFA.tblSRSHeader AS s on ig.LREntryId = s.LREntryId
 LEFT OUTER JOIN CFA.tblCNHeader cn on cn.SRSId = s.SRSId
 WHERE (ig.BranchId = @BranchId or @BranchId=0)and (ig.CompId = @CompId or @CompId=0)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetMapInwardVehicleRsolveCncrnList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_GetMapInwardVehicleRsolveCncrnList] 1,1
CREATE PROC [CFA].[usp_GetMapInwardVehicleRsolveCncrnList]
--DECLARE
@BranchId int,
@CompId int
--SET @BranchId=1; SET @CompId=2;
AS
BEGIN
	SELECT mv.pkId,mv.BranchId,mv.CompId,mv.LRNo,mv.LRDate,mv.InwardDate,mv.TransporterId,mv.VehicleNo,
		mv.DriverName,mv.MobileNo,mv.NoOfCasesQty,mv.ActualNoOfCasesQty,mv.ConcernRemark,mv.AddedOn,
		mv.AddedBy,mv.ConcernBy,mv.ConcernUpdatedOn,mv.IsConcern,tm.TransporterName,tm.TransporterNo,mv.IsClaim,mv.IsSAN,
		mv.ResolvedBy,tih.TransitId,ISNULL(ivc.Img1,'')Img1,ISNULL(ivc.img2,'')Img2,ISNULL(ivc.Img3,'')Img3,ISNULL(ivc.Img4,'')Img4
	FROM CFA.tblMapInwardVehicle as mv left outer join CFA.tblTransporterMaster as tm on mv.TransporterId=tm.TransporterId
	left outer join CFA.tblTransitInvoiceHeader as tih on mv.TransitId=tih.TransitId
	left outer join CFA.tblInvInVehicleChecklistMst as ivc on mv.TransitId = ivc.TransitId
	WHERE mv.BranchId =@BranchId AND mv.CompId= @CompId and mv.IsConcern=1 or mv.ResolvedBy IS NOT NULL
END


GO
/****** Object:  StoredProcedure [CFA].[usp_GetMapInwardVehicleWithLRListForMob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_GetMapInwardVehicleWithLRListForMob] 1,2
CREATE PROC [CFA].[usp_GetMapInwardVehicleWithLRListForMob]
--DECLARE
@BranchId int,
@CompId int
--SET @BranchId=1; SET @CompId=2;
AS
BEGIN

	SELECT tih.TransitId,mv.pkId,mv.BranchId,mv.CompId,mv.LRNo,mv.LRDate,mv.InwardDate,mv.TransporterId,mv.VehicleNo,
	mv.DriverName,mv.MobileNo,mv.NoOfCasesQty,mv.ActualNoOfCasesQty,mv.ConcernRemark,mv.AddedOn,
	mv.AddedBy,mv.ConcernBy,mv.ConcernUpdatedOn,t.TransporterName,t.TransporterNo,mv.IsConcern,mv.ResolvedBy,mv.IsChecklistDone
	
	--FROM CFA.tblMapInwardVehicle as mv
	--left outer join CFA.tblTransporterMaster as t on mv.TransporterId=t.TransporterId
	--WHERE (mv.BranchId=@BranchId AND mv.CompId=@CompId)

	from cfa.tblTransitInvoiceHeader as tih inner join CFA.tblMapInwardVehicle as mv on tih.TransitId=mv.TransitId
	left outer join CFA.tblTransporterMaster as t on mv.TransporterId=t.TransporterId
	where tih.BranchId=@BranchId AND tih.CompId=@CompId and tih.IsMapDone=1

END


GO
/****** Object:  StoredProcedure [CFA].[usp_GetMenuListRoleWise]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [CFA].[usp_GetMenuListRoleWise] 
--declare
@RoleId int
--set @RoleId=3
as
BEGIN
	
	--SELECT pkId, RoleId, Dashboard, EmployeeMaster, StockistMaster, CartingMaster, CourierMaster, BranchMaster, CompanyMaster, StockistTransporterMapping, TransporterMaster, StockistBranchRelation, StockistCompanyRelation, 
	--	GeneralMaster, PicklistOperation, PicklistAdd, PicklistVerify, PicklistAllot, ReAllotPicklist, ImportInvData, InvCancelList, ReadyToDispatch, AssignTransportMode, ImportLRData, PrintSticker, ChqRegister, ImportOS, 
	--	ImportChqDeposit, ChqSummRpt, EmailConfig, ChqSummMonthlyRpt, ResolveConcernPL, ResolveConcernINV, PriotiseINV, AssignTransportModeEdit, AppConfig, ImportTransitReport, ApproveVehicleIssue, InsuranceClaim, 
	--	ApprovalClaim, LRReceivedList, ResolveClaimConcern, ImportSRS, CorrectionRequiredList, SRSPendingCNList, ImportCreditNote, UploadDestructionCertificate, DestructionCertificateList, AppConfiguration, StockTransferAdd,
	--	CityMaster, ThresholdValueMaster, ChecklistMaster, OtherCNFMaster, ImportDepositedCheque, ChequeRegisterSummaryReport, 
	--	RaisedConcernList, VersionDetails, BranchCompanyRelationMaster
	--FROM CFA.tblUserMenuRights AS ur
	--WHERE (RoleId = @RoleId) 

	SELECT pkId, RoleId, Dashboard, EmployeeMaster, StockistMaster, CartingMaster, CourierMaster, BranchMaster, CompanyMaster, StockistTransporterMapping, TransporterMaster, StockistBranchRelation, StockistCompanyRelation, 
		GeneralMaster, PicklistOperation, PicklistAdd, PicklistVerify, PicklistAllot, ReAllotPicklist, ImportInvData, InvCancelList, ReadyToDispatch, AssignTransportMode, ImportLRData, PrintSticker, ChqRegister, ImportOS, 
		ImportChqDeposit, ChqSummRpt, EmailConfig, ChqSummMonthlyRpt, ResolveConcernPL, ResolveConcernINV, PriotiseINV, AssignTransportModeEdit, AppConfig, ImportTransitReport, ApproveVehicleIssue, InsuranceClaim, 
		ApprovalClaim, LRReceivedList, ResolveClaimConcern, ImportSRS, CorrectionRequiredList, SRSPendingCNList, ImportCreditNote, UploadDestructionCertificate, DestructionCertificateList, AppConfiguration, StockTransferAdd,
		CityMaster, ThresholdValueMaster, ChecklistMaster, OtherCNFMaster, ImportDepositedCheque, ChequeRegisterSummaryReport, RaisedConcernList, VersionDetails, BranchCompanyRelationMaster , DashBoardOrderReturn ,
		DashBoardOrderDispatch,DashBoradChequeAcc, DashBoardInventoyInward, DashBoradStockTrans,DashMiniORPendingSRS,DashORFOROperator,DashCheackAccForOprator,DashOrdDisForOperator,DashOrdDisForSupervisor,DashBoardORForSupervisor,
		DshBranchDRP,DshCompanyDRP,ExpenseRegister,ReimbursmentInvoice,ComissionInvoice,GatepassbillSummary,CheckInvoice,TaxMaster,HeadMaster,TransportParentMaster,
        TransportParentMapping,CourierParentMaster,CourierParentMapping,VendorMaster,CompanyVendorMapping,ChequeStatusReport,VendorBranchMapping,VehicleChecklistForImg
	FROM CFA.tblUserMenuRights AS ur
	WHERE (RoleId = @RoleId) 

END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetmissingClaimFormList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE PROC [CFA].[usp_GetmissingClaimFormList]  
--DECLARE  
@BranchId int,  
@CompId int,  
@Flag int  
  
--SET @BranchId =1;SET @CompId =1;SET @Flag =0;  
AS  
BEGIN  
 SELECT  g.BranchId,g.CompId,g.LREntryId, g.GatepassNo, g.ReceiptDate,g.StockistId, sm.StockistNo,CFA.fn_CamelCase(sm.StockistName) StockistName,  
 g.City,CFA.fn_CamelCase(c.CityName) CityName, g.TransporterId, CFA.fn_CamelCase(tm.TransporterName) TransporterName,   
 g.CourierId,CFA.fn_CamelCase(cm.CourierName) CourierName,CFA.fn_CamelCase(g.OtherTrasport) OtherTrasport,  
 g.LRNo,g.LRDate,g.NoOfBox,g.AmountPaid,g.ClaimFormAvailable, g.AddedBy,g.AddedOn,g.LastUpdatedOn,  
 isnull(CFA.fn_CamelCase(tm.TransporterName),'')+isnull(CFA.fn_CamelCase(cm.CourierName),'')  
 +isnull(CFA.fn_CamelCase(g.OtherTrasport),'') TransCourName  
 From CFA.tblInwardGatePass AS g LEFT OUTER JOIN CFA.tblStockistMaster AS sm ON g.StockistId=sm.StockistId  
 left outer join CFA.tblCityMaster AS c ON g.City=c.CityCode   
 left outer join CFA.tblTransporterMaster tm on g.TransporterId=tm.TransporterId  
 left outer join CFA.tblCourierMaster cm on g.CourierId = cm.CourierId  
 WHERE (g.BranchId=@BranchId) AND (g.CompId=@CompId) AND (g.ClaimFormAvailable=@Flag)  
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetOCRTextData]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_GetOCRTextData]
@BarnchId int,
@CompId int
AS

BEGIN
	SELECT ocr.pkId,ocr.BranchId,ocr.CompId,ocr.StockistId,st.StockistNo,st.StockistName,ocr.LR_ClaimNo,ocr.BatchNo,ocr.Quantity,
		ocr.Unit,ocr.Code,ocr.ProductName,ocr.ReturnType,ocr.Division,ocr.Plant,ocr.MFG_Date,ocr.EXP_Date,ocr.MRP_Price
	FROM CFA.tblOCRTextData ocr LEFT OUTER JOIN 
	CFA.tblStockistMaster st on ocr.StockistId=st.StockistId
	WHERE (ocr.BranchId=@BarnchId or @BarnchId=0)AND(ocr.CompId=@CompId or @CompId=0)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetOfficerDetails]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_GetOfficerDetails]

AS

BEGIN
SELECT EmployeeNo,EmployeeName,MobileNo,Email,OfficerRole FROM [CFA].[tblOfficerDetails]

END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetParentTransporter]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [CFA].[usp_GetParentTransporter]
--DECLARE
@Tpid INT

AS
BEGIN
	SELECT Tpid, BranchId,cfa.fn_CamelCase(ParentTranspNo) ParentTranspNo, cfa.fn_CamelCase(ParentTranspName) ParentTranspName,
	ParentTranspEmail,cfa.fn_CamelCase(ParentTranspMobNo) ParentTranspMobNo,IsTDS,TDSPer,IsGST,GSTNumber,IsActive,Addedby,AddedOn,LastUpdatedOn
	FROM CFA.tblTransporterParentMst
	WHERE Tpid = @Tpid
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetPickList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_GetPickList]
--DECLARE
@BranchId INT,
@CompId	INT,
@PicklistDate datetime
--SET @BranchId=1; SET @CompId=1;
AS
BEGIN
	SELECT p.BranchId,p.CompId,p.Picklistid,p.PicklistNo,p.PicklistDate,p.FromInv,p.ToInv,p.PicklistStatus,p.VerifiedBy, 
	s.StatusText,isnull(OnPriority,0) OnPriority,p.RejectReason,ISNULL(p.IsStockTransfer,0) as IsStockTransfer
	FROM CFA.tblPickListHeader p LEFT OUTER JOIN CFA.tblStatusMaster s ON p.PicklistStatus=s.id and s.statusFor='PL'
	WHERE p.BranchId=@BranchId AND p.CompId=@CompId and (cast(PicklistDate as date)=cast(@PicklistDate as date) or PicklistStatus <>10)
	ORDER BY p.Picklistid DESC
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetPickListForReallotment]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_GetPickListForReallotment]
--DECLARE
@BranchId INT,
@CompId	INT,
@PicklistDate datetime
--SET @BranchId=1; SET @CompId=1;set @PicklistDate='2022-07-16'
AS
BEGIN
	--SELECT p.BranchId,p.CompId,p.Picklistid,p.PicklistNo,p.PicklistDate,p.FromInv,p.ToInv,p.PicklistStatus,p.VerifiedBy, s.StatusText
	--FROM CFA.tblPickListHeader p LEFT OUTER JOIN CFA.tblStatusMaster s ON p.PicklistStatus=s.id and s.statusFor='PL'
	--WHERE p.BranchId=@BranchId AND p.CompId=@CompId and cast(p.PicklistDate as date)=cast(@PicklistDate as date)
	--ORDER BY p.Picklistid DESC

	SELECT a.BranchId, a.CompId,ISNULL(p.IsStockTransfer,0) as IsStockTransfer, p.Picklistid,p.PicklistNo,p.PicklistDate,p.FromInv,p.ToInv,p.PicklistStatus,p.VerifiedBy, s.StatusText,
		a.PickerId, e.EmpName PickerName,e.EmpNo PickerNo, a.AllotmentId, a.AllottedDate, a.AllotmentStatus, 
		ast.StatusText AS AllotmentStatusText,a.RejectRemark,isnull(p.OnPriority,0) OnPriority
	FROM CFA.tblPicklistAllotment AS a INNER JOIN
		CFA.tblPickListHeader AS p ON a.Picklistid = p.Picklistid LEFT OUTER JOIN
		CFA.tblStatusMaster AS ast ON a.AllotmentStatus = ast.id AND ast.StatusFor = 'PL' LEFT OUTER JOIN
		CFA.tblStatusMaster AS s ON p.PicklistStatus = s.id AND s.StatusFor = 'PL'
		left outer join cfa.tblUser u on a.PickerId=u.UserId
		left outer join cfa.tblEmployeeMaster e on e.EmpId =u.EmpId
	WHERE p.BranchId=@BranchId AND p.CompId=@CompId and p.PicklistStatus in (3,5,6,7)
	and (cast(PicklistDate as date)=cast(@PicklistDate as date) or PicklistStatus <10)
	ORDER BY p.Picklistid DESC 

	--union 
	--SELECT a.BranchId, a.CompId,p.Picklistid,p.PicklistNo,p.PicklistDate,p.FromInv,p.ToInv,p.PicklistStatus,p.VerifiedBy, s.StatusText,
	--	a.PickerId, e.EmpName PickerName,e.EmpNo PickerNo, a.reAllotmentId, a.reAllottedDate, a.reAllotmentStatus, 
	--	ast.StatusText AS AllotmentStatusText,a.RejectRemark,isnull(p.OnPriority,0) OnPriority
	--FROM CFA.tblPicklistReAllotment AS a INNER JOIN
	--	CFA.tblPickListHeader AS p ON a.Picklistid = p.Picklistid LEFT OUTER JOIN
	--	CFA.tblStatusMaster AS ast ON a.ReAllotmentStatus = ast.id AND ast.StatusFor = 'PL' LEFT OUTER JOIN
	--	CFA.tblStatusMaster AS s ON p.PicklistStatus = s.id AND s.StatusFor = 'PL'
	--	left outer join cfa.tblUser u on a.PickerId=u.UserId
	--	left outer join cfa.tblEmployeeMaster e on e.EmpId =u.EmpId
	--WHERE p.BranchId=@BranchId AND p.CompId=@CompId and p.PicklistStatus in (3,5,6,7)
	--and (cast(PicklistDate as date)=cast(@PicklistDate as date) or PicklistStatus <10)
	 
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetPicklistForResolveConcern]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_GetPicklistForResolveConcern] 
--DECLARE  
@BranchId int,  
@CompId INT,  
@PicklistDate datetime

--SET @BranchId=1; SET @CompId=1; set @PicklistId=2
AS  
BEGIN  
	SELECT p.Picklistid, p.PicklistNo,p.PicklistDate, p.FromInv, p.ToInv, p.PicklistStatus, pst.StatusText PicklistStatusText,  
		a.PickerId, u.DisplayName PickerName, a.AllotmentId,  a.AllotmentStatus, ast.StatusText AS AllotmentStatusText,  
		a.ReasonId, rsn.MasterName AS ReasonText, a.RejectRemark, a.PickerConcernId, pcrn.MasterName AS pickerconcernText, 
		a.PickerConcernRemark,  a.VerifiedBy,  a.VerifiedConcernId, vc.MasterName as VerifiedConcernText, a.VerifiedConcernRemark,
		a.AcceptedDate,a.PickedDate,a.PickerConcernDate,a.VerifiedDate,isnull(p.OnPriority,0) OnPriority ,P.IsStockTransfer
	FROM CFA.tblPickListHeader AS p inner join CFA.tblPicklistAllotment a  ON a.Picklistid = p.Picklistid
		LEFT OUTER JOIN CFA.tblUser AS u on a.PickerId = u.UserId
		LEFT OUTER JOIN CFA.tblStatusMaster AS pst ON pst.id = p.PicklistStatus AND pst.StatusFor = 'PL'
		LEFT OUTER JOIN CFA.tblStatusMaster AS ast ON ast.id = a.AllotmentStatus AND ast.StatusFor = 'PL'
		LEFT OUTER JOIN CFA.tblGeneralMaster AS pcrn ON a.PickerConcernId = pcrn.pkId 
		LEFT OUTER JOIN CFA.tblGeneralMaster AS rsn ON a.ReasonId = rsn.pkId  
		left outer join CFA.tblGeneralMaster vc on a.VerifiedConcernId=vc.pkId
		left outer join CFA.tblPicklistReAllotment ra on p.Picklistid=ra.Picklistid
	WHERE a.BranchId=@BranchId AND a.CompId=@CompId and ra.Picklistid is null
		and p.PicklistStatus in (9,11)

	--union   
	--SELECT p.Picklistid, p.PicklistNo,p.PicklistDate, p.FromInv, p.ToInv, p.PicklistStatus, pst.StatusText PicklistStatusText,  
	--	a.PickerId, u.DisplayName PickerName, a.ReAllotmentId,  a.ReAllotmentStatus, ast.StatusText AS AllotmentStatusText,  
	--	a.ReasonId, rsn.MasterName AS ReasonText, a.RejectRemark, a.PickerConcernId, pcrn.MasterName AS pickerconcernText, 
	--	a.PickerConcernRemark,  a.VerifiedBy,  a.VerifiedConcernId, vc.MasterName as VerifiedConcernText, a.VerifiedConcernRemark,
	--	a.AcceptedDate,a.PickedDate,a.PickerConcernDate,a.VerifiedDate,isnull(p.OnPriority,0) OnPriority
	--FROM CFA.tblPickListHeader AS p inner join CFA.tblPicklistReAllotment a  ON a.Picklistid = p.Picklistid
	--	LEFT OUTER JOIN CFA.tblUser AS u on a.PickerId = u.UserId 
	--	LEFT OUTER JOIN CFA.tblStatusMaster AS pst ON pst.id = p.PicklistStatus AND pst.StatusFor = 'PL'
	--	LEFT OUTER JOIN CFA.tblStatusMaster AS ast ON ast.id = a.ReAllotmentStatus AND ast.StatusFor = 'PL'
	--	LEFT OUTER JOIN CFA.tblGeneralMaster AS pcrn ON a.PickerConcernId = pcrn.pkId 
	--	LEFT OUTER JOIN CFA.tblGeneralMaster AS rsn ON a.ReasonId = rsn.pkId  
	--	left outer join CFA.tblGeneralMaster vc on a.VerifiedConcernId=vc.pkId			 
	--WHERE a.BranchId=@BranchId AND a.CompId=@CompId and p.PicklistStatus in (9,11)			
END  
GO
/****** Object:  StoredProcedure [CFA].[usp_GetPicklistSummaryCounts]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--		cfa.usp_GetPicklistSummaryCounts 1, 1, '2022-06-25'

CREATE PROC [CFA].[usp_GetPicklistSummaryCounts]
--declare
@BranchId int,
@CompId	INT,
@PicklistDate datetime
--set @BranchId=1; set @CompId=1; set @PicklistDate='2022-05-12'
AS

BEGIN
--	Total Alloted, accepted, Pending, Rejected, concern, completed, verified.

	select BranchId, CompId, COUNT(Picklistid) TotalPL,
	--sum(case when (PicklistStatus not in (2,3,4,6,8,9,10)) then 1 else 0 end) AllotmentPending,  
	sum(case when (PicklistStatus in (0,1,5,7)) then 1 else 0 end) AllotmentPending,
	sum(case when (PicklistStatus in (3,6)) then 1 else 0 end) Alloted,
	sum(case when (PicklistStatus in (4)) then 1 else 0 end) Accepted,
	sum(case when (PicklistStatus in (2)) then 1 else 0 end) OperatorRejected,	
	sum(case when (PicklistStatus in (9,11)) then 1 else 0 end) Concern, 
	sum(case when (PicklistStatus in (8)) then 1 else 0 end) Completed, 
	sum(case when (PicklistStatus in (10)) then 1 else 0 end) CompletedVerified
	from CFA.tblPickListHeader
	where BranchId = @BranchId and CompId= @CompId and (cast(PicklistDate as date)=cast(@PicklistDate as date) or PicklistStatus <>10)
	group by CompId,BranchId

END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetPicklistSummaryData]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_GetPicklistSummaryData]
--declare
@BranchId int,
@CompId	INT,
@PickerId int,
@PicklistDate datetime
--set @BranchId=1; set @CompId=1; set @PickerId=5; set @PicklistDate='2022-05-05 15:40'
AS

BEGIN
--	Total Alloted, accepted, Pending, Rejected, concern, completed, verified.

	select pa.BranchId, pa.CompId, cast(pl.PicklistDate as date) PicklistDate, pa.PickerId, 
	COUNT(pa.Picklistid) TotalPL,
	sum(case when (pa.AllotmentStatus in (4,5,7,8,9,10)) then 1 else 0 end) Accepted,
	sum(case when (pa.AllotmentStatus not in (4,5,7,8,9,10)) then 1 else 0 end) Pending,  
	sum(case when (pa.AllotmentStatus in (5,7)) then 1 else 0 end) Rejected, 
	sum(case when (pa.AllotmentStatus in (9)) then 1 else 0 end) Concern, 
	sum(case when (pa.AllotmentStatus in (8)) then 1 else 0 end) Completed, 
	sum(case when (pa.AllotmentStatus in (10)) then 1 else 0 end) Verified
	from CFA.tblPicklistAllotment pa inner join CFA.tblPickListHeader pl on pa.Picklistid=pl.Picklistid 
	where pa.BranchId = @BranchId and pa.CompId= @CompId and pa.PickerId=@PickerId 
	and (cast(PicklistDate as date)=cast(@PicklistDate as date) or PicklistStatus <10)
	group by pa.CompId,pa.BranchId, cast(pl.PicklistDate as date), pa.PickerId

END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetPrintDetails]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[CFA].[usp_GetPrintDetails] 0,0
CREATE PROC [CFA].[usp_GetPrintDetails]
--DECLARE
@BranchId INT,
@CompId INT
--SET @BranchId=0; SET @CompId=0
AS
BEGIN
		SELECT cm.CompanyName,bm.BranchName,pd.PrinterId,pd.BranchId,pd.CompId,pd.PrinterType,pd.PrinterIPAddress,pd.PrinterName,pd.PrinterPortNumber,pd.AddedBy,pd.LastUpdatedOn,
		ISNULL(pd.UtilityNo,0) AS UtilityNo
		FROM CFA.tblPrinterDetails pd LEFT OUTER JOIN CFA.tblCompanyMaster cm ON pd.CompId=cm.CompanyId LEFT OUTER JOIN CFA.tblBranchMaster bm ON pd.BranchId=bm.BranchId
		WHERE (pd.BranchId=@BranchId OR @BranchId=0) AND (pd.CompId=@CompId OR @CompId=0)
		ORDER BY pd.PrinterType DESC
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetPrinterStatusForMob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_GetPrinterStatusForMob] 1,1
CREATE PROC [CFA].[usp_GetPrinterStatusForMob]
--DECLARE
@BranchId INT,
@CompId INT
--SET @BranchId=1; SET @CompId=1;
AS
BEGIN
		SELECT pkId,BranchId,CompId,ISNULL(InvId,0) AS InvId, ISNULL(GpId,0) AS GpId,[Type],Flag
		FROM CFA.tblPrinterPDFData WHERE BranchId=@BranchId AND CompId=@CompId AND CAST(LastUpdatedOn AS DATE)=CAST(GETDATE() AS DATE)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetPrintPDFData]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_GetPrintPDFData] 1,1, 'Sticker'
CREATE PROC [CFA].[usp_GetPrintPDFData]
--DECLARE
@BranchId INT,
@CompId INT,
@PrinterType NVARCHAR(50)
--SET @BranchId=1; SET @CompId=1; SET @PrinterType='Sticker'
AS
BEGIN
		SELECT pkId,BranchId,CompId,ISNULL(InvId,0) InvId,ISNULL(GpId,0) GpId,[Type],BoxNo,Flag,AddedBy,LastUpdatedOn 
		FROM CFA.tblPrinterPDFData WHERE BranchId=@BranchId AND CompId=@CompId AND UPPER([Type])=UPPER(@PrinterType)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetPrintPDFDataWithPrinter]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- [CFA].[usp_GetPrintPDFDataWithPrinter] 0,0,0
CREATE PROC [CFA].[usp_GetPrintPDFDataWithPrinter]
--DECLARE
@BranchId INT,
@CompId INT,
@UtilityNo INT=0
--SET @BranchId=0; SET @CompId=0; SET @UtilityNo=0;
AS
BEGIN

	SELECT pd.pkId,pd.BranchId,pd.CompId,ISNULL(pd.InvId,0) InvId,ISNULL(pd.GpId,0) GpId,pd.[Type],pd.BoxNo,pd.Flag,
	pd.LastUpdatedOn,p.PrinterId,p.PrinterIPAddress,p.PrinterName,p.PrinterPortNumber,pd.AddedBy,pd.PrintCount,ISNULL(p.UtilityNo,0) AS UtilityNo
	FROM CFA.tblPrinterPDFData pd left outer join CFA.tblPrinterDetails p on pd.BranchId=p.BranchId and pd.CompId=p.CompId and UPPER(pd.[Type])=UPPER(p.PrinterType)
	WHERE (pd.BranchId=@BranchId OR @BranchId=0) AND (pd.CompId=@CompId OR @CompId=0) and cast(pd.LastUpdatedOn as date)=cast(getdate() as date)
	      AND pd.Flag IN ('Pending', 'Queued') and (p.UtilityNo=@UtilityNo OR @UtilityNo=0)
	ORDER BY pd.LastUpdatedOn 

END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetProductDataList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[CFA].[usp_GetProductDataList] 1,1
CREATE PROCEDURE [CFA].[usp_GetProductDataList]
--DECLARE
@BranchId INT,
@CompId INT
AS
BEGIN
	 SELECT BranchId,CompId,Division,BatchNo,ProductName,code,EXP_Date,Addedby
	 FROM CFA.tblProductBatchHeader 
	 --WHERE (BranchId=@BranchId or BranchId=0 )  AND (CompId=@CompId or CompId=0)
END




GO
/****** Object:  StoredProcedure [CFA].[usp_GetProductDetailsByBatchNo]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_GetProductDetailsByBatchNo]--'01B047'
@BatchNo nvarchar(50)
AS

BEGIN
	SELECT pm.ProductName,pm.EXP_Date,pm.Division,pm.Code
	FROM CFA.tblProductBatchHeader pm 
	WHERE pm.BatchNo=@BatchNo
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetRaiseConcernListforMob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_GetRaiseConcernListforMob] 1,2
CREATE PROC [CFA].[usp_GetRaiseConcernListforMob]
-- DECLARE
@BranchId INT,
@CompId INT
-- SET @BranchId=1; SET @@CompId=2;
AS 
BEGIN
	SELECT tdr.RaieseReqId,tdr.BranchId,tdr.CompId,tdr.LrNo,tdr.InvoiceNo,tdr.Remark,tdr.AddedBy,tdr.AddedOn,tdr.ResolvedBy,tdr.ResolvedOn,tih.TransitId
	FROM  CFA.tblTransitDataRaiseConcern as tdr left outer join CFA.tblTransitInvoiceHeader as tih on tdr.RaieseReqId=tih.RaiseConcernId
    WHERE tdr.BranchId=@BranchId AND tdr.CompId=@CompId --AND tih.RaiseConcernId=1
END
 

GO
/****** Object:  StoredProcedure [CFA].[usp_GetRaiseInsuranceClaimList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_GetRaiseInsuranceClaimList] 1,2
CREATE PROC [CFA].[usp_GetRaiseInsuranceClaimList]
--DECLARE  
@BranchId int,  
@CompId int  
--SET @BranchId=1;SET @CompId=2;  
AS  
BEGIN  
	SELECT ic.ClaimId,ic.BranchId,ic.CompId,ic.LRNo,ic.ClaimNo,ic.ClaimDate,ic.ClaimAmount,ic.ClaimTypeId,  
		ic.ClaimStatus,ic.EmailSendDate,ic.Remark,ic.IsEmailSend,ic.AddedBy,ic.AddedOn,gm.MasterName,ic.IsEmail,  
		ic.SANNo,SANApproveBy,ic.ClaimApproveBy,ic.SANDate,ic.SANAmount,mv.IsClaim,MV.IsSAN,
		case when (isnull(ic.ClaimNo,'')='' or isnull(ic.ClaimNo,'')='0') then ic.SANNo else ic.ClaimNo end ClaimSANNo,
		case when (isnull(ic.ClaimNo,'')='' or isnull(ic.ClaimNo,'')='0') then ic.SANDate else ic.ClaimDate end ClaimSANDate,
		case when (isnull(ic.ClaimNo,'')='' or isnull(ic.ClaimNo,'')='0') then ic.SANAmount else ic.ClaimAmount end ClaimSANAmount,
		isnull(CFA.fn_CamelCase(ic.ClaimRemark),ic.SANRemark)+isnull(CFA.fn_CamelCase(ic.SANRemark),ic.ClaimRemark) ApproveRemark,
		isnull(tih.TransitId,0) AS TransitId
	FROM CFA.tblInsuranceClaim AS ic left outer join CFA.tblGeneralMaster as gm on ic.ClaimTypeId=gm.pkId
	--left outer join CFA.tblMapInwardVehicle as mv on mv.LRNo =ic.LRNo
	left outer join CFA.tblMapInwardVehicle as mv on mv.pkId=ic.ClaimId
	left outer join CFA.tblTransitInvoiceHeader as tih on ic.TransitId=tih.TransitId
	where ic.BranchId=@BranchId and ic.CompId=@CompId
END 
GO
/****** Object:  StoredProcedure [CFA].[usp_GetReceivedOpList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--		CFA.usp_GetReceivedOpList  1,1

CREATE proc [CFA].[usp_GetReceivedOpList]
--declare
@BranchId INT,  
@CompId INT  
--set @BranchId=1; set @CompId=1
AS  
BEGIN  
 SELECT g.BranchId, g.CompId,g.LREntryId, g.LREntryNo,g.LREntryDate,g.StockistId, stk.StockistNo, stk.StockistName,  
  g.LRNo, g.LRDate,g.AmountPaid,ct.CityName,t.TransporterId,t.TransporterName,t.TransporterNo, g.OtherTrasport, g.GoodsReceived, 
  g.ClaimFormAvailable,g.GatepassNo,g.ReceiptDate,g.RecvdAtOP,g.RecvdAtOPDate,c.CourierName, p.ConcernDate, p.ResolveConcernDate,
  ISNULL(CFA.fn_CamelCase(t.TransporterName),c.CourierName)+ISNULL(CFA.fn_CamelCase(c.CourierName),t.TransporterName) TransCourName  
 FROM CFA.tblInwardGatepass g LEFT OUTER JOIN CFA.tblCityMaster AS ct ON ct.CityCode = g.City  
  LEFT OUTER JOIN CFA.tblStockistMaster AS stk ON g.StockistId = stk.StockistId   
  LEFT OUTER JOIN CFA.tblTransporterMaster AS t ON g.TransporterId = t.TransporterId 
  LEFT OUTER JOIN CFA.tblCourierMaster AS c ON g.CourierId = c.CourierId 
  LEFT OUTER JOIN CFA.tblSRSHeader s ON g.LREntryId=s.LREntryId  
  LEFT OUTER JOIN CFA.tblPhysicalCheck1 p ON g.LREntryId=p.LREntryId
 WHERE g.BranchId=@BranchId AND g.CompId=@CompId AND (s.SRSId IS NULL or (cast(g.ReceiptDate as date)=cast(getdate() as date)))
 AND ISNULL(GatepassNo,'')<>'' AND ReceiptDate IS NOT NULL AND G.ClaimFormAvailable=1 
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetReimInvNo]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--		CFA.usp_GetReimInvNo 1, '2023-02-25'

CREATE proc [CFA].[usp_GetReimInvNo] 
--declare
@BranchId int,
@InvDate datetime
--set @BranchId=1; set @InvDate='2023-04-26'
as
BEGIN
	declare @InvoiceNo nvarchar(20), @Count int,@yrs nvarchar(20),@FnStrDt nvarchar(20),@FnEndDt nvarchar(20)
	if @InvDate is null set @InvDate=getdate()
	if (datepart(mm,@invDate)<4) select @FnStrDt=convert(nvarchar(4),datepart(yyyy,@invDate)-1)+'-04-01', @FnEndDt=convert(nvarchar(4),datepart(yyyy,@invDate))+'-03-31'
	Else if(datepart(mm,@invDate)>=4) select @FnStrDt=convert(nvarchar(4),datepart(yyyy,@invDate))+'-04-01', @FnEndDt=convert(nvarchar(4),datepart(yyyy,@invDate)+1)+'-03-31' 
	--select @FnStrDt, @FnEndDt
	set @yrs= convert(nvarchar(2), (datepart(YY,@FnStrDt))%100) +'-'+convert(nvarchar(2), (datepart(YY,@FnEndDt))%100)
	--select @yrs

	select @Count=convert(int,isnull(substring(InvNo,12,20),0)) from CFA.tblReimbursementInv 
	where BranchId=@BranchId and InvDate between @FnStrDt and @FnEndDt
	
	set @InvoiceNo= @yrs+'-REIM-'+ REPLICATE('0',4-LEN(RTRIM(CONVERT(varchar(50),isnull(@Count,0))))) + CONVERT(varchar(50),(isnull(@Count,0)+1))

	select @InvoiceNo as InvoiceNo

End
GO
/****** Object:  StoredProcedure [CFA].[usp_GetRoleList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_GetRoleList]
	
AS
BEGIN  
	SELECT [RoleId],cfa.fn_CamelCase([RoleName]) [RoleName],[ActiveStatus] FROM cfa.[tblRoleMaster] where ActiveStatus ='Y'
END

GO
/****** Object:  StoredProcedure [CFA].[usp_GetSRS_CN_MappingCounts]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_GetSRS_CN_MappingCounts] --1,1
--declare
@BranchId int,  
@CompId int  
--set @BranchId=1 set @CompId=1  
as  
  
Begin  
	SELECT s.BranchId, s.CompId,
	sum(case when cast(s.AddedOn as date)=cast(getdate() as date) then 1 else 0 End) TodaysSRSCnt,
	sum(case when cast(cn.CRDRCreationDate as date)=cast(getdate() as date) then 1 else 0 End) TodayCNCnt,
	sum(case when cn.CrDrNoteNo is null then 1 else 0 End) PendingForCNCnt,
	sum(case when (cn.CrDrNoteNo is not null and cn.DestrCertDate is null) then 1 else 0 End) PendingDestrCertCnt	
	FROM CFA.tblSRSHeader s left outer join CFA.tblCNHeader cn on s.SRSId=cn.srsid	
	Where s.BranchId = @BranchId and s.CompId = @CompId   
	group by s.BranchId, s.CompId
End
GO
/****** Object:  StoredProcedure [CFA].[usp_GetSRSClaimListForVerify]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_GetSRSClaimListForVerify]     
--DECLARE            
@BranchId INT,
@CompId INT
AS            
BEGIN            
	SELECT gp.BranchId, gp.CompId, gp.LREntryId, c.ClaimNo, c.ClaimDate, c.ClaimStatus, s.SRSId, s.SRSStatus, s.PONoLRNo, s.SoldtoPartyId, c.ReturnCatId,s.SalesDocNo,s.Netvalue, 
		rcm.MasterName AS ReturnCatName, gp.LRNo, stk.StockistId, stk.StockistName, stk.StockistNo, ISNULL(s.IsVerified, 'N') AS IsVerified, ISNULL(s.IsCorrectionReq, 'N') AS IsCorrectionReq, 
		s.CorrectionReqRemark, 
		s.VerifyCorrectionBy, s.VerifyCorrectionDate,CASE WHEN VerifyCorrectionDate IS NULL THEN DATEDIFF(dd, gp.LREntryDate, getdate()) ELSE 0 END AS AuditChkAgeing
	FROM CFA.tblPhysicalCheck1 AS c INNER JOIN
		CFA.tblSRSHeader AS s ON c.LREntryId = s.LREntryId INNER JOIN
		CFA.tblInwardGatepass AS gp ON c.LREntryId = gp.LREntryId LEFT OUTER JOIN
		CFA.tblCNHeader AS cn ON s.SRSId = cn.SRSId LEFT OUTER JOIN
		CFA.tblGeneralMaster AS rcm ON c.ReturnCatId = rcm.pkId LEFT OUTER JOIN
		CFA.tblStockistMaster AS stk ON s.SoldtoPartyId = stk.StockistId           
 WHERE gp.BranchId=@BranchId AND gp.CompId=@CompId and cn.SRSId is null
END 
GO
/****** Object:  StoredProcedure [CFA].[usp_GetSRSHeaderListForDelayCN]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [CFA].[usp_GetSRSHeaderListForDelayCN]
@BranchId int,			
@CompId int,      
@SRSId int
        
AS        
        
BEGIN        
	SELECT srs.SRSId,srs.CompId,srs.BranchId,srs.SalesDocNo, srs.PONoLRNo, srs.SoldtoPartyId,srs.Netvalue,srs.Division,
		stk.StockistId, stk.StockistName,stk.StockistNo,stk.CityCode,ph.LREntryId,gm.MasterName as DelayReason       
	FROM [CFA].[tblSRSHeader] AS srs 
		LEFT OUTER JOIN CFA.tblStockistMaster AS stk ON srs.SoldtoPartyId = stk.StockistId         
		left outer join CFA.tblPhysicalCheck1 ph on srs.LREntryId=ph.LREntryId   
		left outer join CFA.tblCNHeader cn on srs.SRSId=cn.SRSId
		left outer join CFA.tblGeneralMaster gm on srs.CNDelayReasonId=gm.pkId  
	where srs.BranchId=@BranchId AND srs.CompId=@CompId and (cn.SRSId is null or cn.SRSId =@SRSId)      
	order by ph.LREntryId desc
END 
GO
/****** Object:  StoredProcedure [CFA].[usp_GetStateList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_GetStateList] 
@Flag nvarchar(10)	-- Y, N, ALL

AS  
BEGIN  
	SELECT StateCode,cfa.fn_CamelCase(StateName) StateName,ActiveFlag,LastUpdateBy,LastUpdateTime  
	FROM cfa.tblStateMaster 
	where (ActiveFlag=upper(@Flag) or upper(@Flag)='ALL')	
	ORDER BY StateName   
END  
  
GO
/****** Object:  StoredProcedure [CFA].[usp_GetStkChqDepositDtlsForEmail]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [CFA].[usp_GetStkChqDepositDtlsForEmail]
--declare 
@BranchId int,
@CompId int

--set @BranchId=1; set @CompId=1

as

BEGIN
	SELECT cq.BranchId, cq.CompId, cq.StokistId, s.StockistNo, s.StockistName, cq.AccountNo, cq.ChqNo, cq.ChqStatus,cq.DepositedDate, s.MobNo,
		s.Emailid, 
		--'anilshinde@aadyamconsultant.com' as Emailid, 
		isnull((STUFF((select ',' + convert(nvarchar(50),i.InvNo) from CFA.tblChqBlockedforInv AS cqInv left OUTER JOIN
		CFA.tblInvoiceHeader AS i ON i.InvId = cqInv.InvId  where cqInv.ChqRegId=cq.ChqRegId FOR XML PATH('')),1,1,'')),'') as InvNo 
	FROM CFA.tblChequeRegister AS cq INNER JOIN
	CFA.tblStockistMaster AS s ON cq.StokistId = s.StockistId	
	WHERE  (cq.BranchId=@BranchId or @BranchId=0) and (cq.CompId=@CompId or @CompId=0) and CAST(cq.DepositedDate AS date) = CAST(GETDATE() AS date)

END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetStkOutstandingDtlsForEmail]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_GetStkOutstandingDtlsForEmail] 0,0
CREATE proc [CFA].[usp_GetStkOutstandingDtlsForEmail] 
--declare
@BranchId int,
@CompId int
--set @BranchId=1; set @CompId=1
as
BEGIN
	SELECT s.OSDate, s.BranchId, s.CompId, s.StockistId, s.StockistCode, stk.StockistName,  stk.MobNo, s.PaymentStatus, 
	sum(s.OverdueAmt) TotOverdueAmt, stk.Emailid
	--'anilshinde@aadyamconsultant.com' as Emailid
	FROM CFA.tblStkOutStanding AS s INNER JOIN CFA.tblStockistMaster AS stk ON s.StockistId = stk.StockistId
	WHERE (s.BranchId = @BranchId) AND (s.CompId = @CompId) AND (CAST(s.OSDate AS date) = CAST(getdate() AS date))
	group by s.OSDate, s.BranchId, s.CompId, s.StockistId, s.StockistCode, stk.StockistName, stk.Emailid, stk.MobNo,s.PaymentStatus
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetStockistDtlsClaimMapping]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    
CREATE PROC [CFA].[usp_GetStockistDtlsClaimMapping]    
--DECLARE    
@BranchId INT,    
@CompId INT,    
@StockistId INT    
    
--SET @BranchId = 1;    
--SET @CompId =1;    
--SET @StockistId=12;    
    
AS     
BEGIN    
	SELECT s.BranchId,s.CompId,s.SRSId,s.SalesDocNo, p.PhyChkId,p.ClaimNo, p.ClaimDate,    
	sm.StockistNo, CFA.fn_CamelCase(sm.StockistName) StockistName, sm.Emailid, sm.CityCode, 
	ct.CityName stkCityName    
	FROM  CFA.tblSRSHeader s     
	LEFT OUTER JOIN CFA.tblStockistMaster AS sm ON s.SoldtoPartyId=sm.StockistId    
	left outer join CFA.tblCityMaster ct on sm.CityCode=ct.CityCode    
	left outer join CFA.tblPhysicalCheck1 p on s.LREntryId=p.LREntryId    
	WHERE (s.BranchId=@BranchId AND s.CompId=@CompId ) AND (s.SoldtoPartyId=@StockistId)    
END  
GO
/****** Object:  StoredProcedure [CFA].[usp_GetStockistDtlsForMissingClaim]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 -- [CFA].[usp_GetStockistDtlsForMissingClaim] 0,0,0
CREATE PROC [CFA].[usp_GetStockistDtlsForMissingClaim]
--DECLARE
@BranchId INT,
@CompId INT,
@Flag INT
--SET @BranchId=0; SET @CompId=0; SET @Flag=0;
AS
BEGIN
	SELECT g.BranchId,g.CompId,g.LRDate,g.LRNo,g.ReceiptDate,g.StockistId,g.LREntryId,sm.StockistNo, CFA.fn_CamelCase(sm.StockistName) StockistName, 
	sm.Emailid,
	--'anilshinde@aadyamconsultant.com' AS Emailid,
	tm.TransporterName,tm.TransporterNo,cm.CourierName,
	isnull(CFA.fn_CamelCase(tm.TransporterName),cm.CourierName)+isnull(CFA.fn_CamelCase(cm.CourierName),tm.TransporterName) TransCourName
	FROM [CFA].[tblInwardGatepass] AS g LEFT OUTER JOIN CFA.tblStockistMaster AS sm ON g.StockistId=sm.StockistId
	left outer join CFA.tblTransporterMaster as tm on g.TransporterId = tm.TransporterId
	left outer join CFA.tblCourierMaster as cm on g.CourierId = cm.CourierId
	WHERE (g.BranchId=@BranchId OR @BranchId=0) AND (g.CompId=@CompId OR @CompId=0) AND (g.ClaimFormAvailable=@Flag OR @Flag=0) and g.IsEmailSent=0
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetStockistDtlsForSendEmail]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE PROC [CFA].[usp_GetStockistDtlsForSendEmail]  
--DECLARE  
@BranchId INT,  
@CompId INT,  
@LREntryId INT  
  
--SET @BranchId = 1;  
--SET @CompId =1;  
--SET @LREntryId=1;  
  
AS   
BEGIN  
	 SELECT g.BranchId,g.CompId,g.LRDate,g.LRNo,g.ReceiptDate,g.StockistId,sm.StockistNo, 
	 CFA.fn_CamelCase(sm.StockistName) StockistName, sm.Emailid,tm.TransporterName,tm.TransporterNo,cm.CourierName,g.ClaimFormAvailable,
	 isnull(CFA.fn_CamelCase(tm.TransporterName),cm.CourierName)+isnull(CFA.fn_CamelCase(cm.CourierName),tm.TransporterName) TransCourName
	 FROM [CFA].[tblInwardGatepass] AS g LEFT OUTER JOIN CFA.tblStockistMaster AS sm ON g.StockistId=sm.StockistId
	 left outer join CFA.tblTransporterMaster as tm on g.TransporterId = tm.TransporterId
	 left outer join CFA.tblCourierMaster as cm on g.CourierId = cm.CourierId  
	 WHERE (g.BranchId=@BranchId OR @BranchId=0) AND (g.CompId=@CompId OR @CompId=0) AND (g.LREntryId=@LREntryId)  
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetStockistForNewChqEmail]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--		cfa.usp_GetStockistForNewChqEmail 1,1 
CREATE proc [CFA].[usp_GetStockistForNewChqEmail]
--declare
@BranchId int,
@CompId int

--set @BranchId=1; set @CompId=1;
as
BEGIN
	SELECT        cq.BranchId, cq.CompId, cq.StokistId, s.StockistNo, s.StockistName, 
	s.Emailid, 
	--'anilshinde@aadyamconsultant.com' as Emailid,
	s.MobNo, cq.StockistCity, ct.CityName, count(cq.ChqRegId) UsableChqs
	FROM CFA.tblChequeRegister AS cq WITH (nolock) INNER JOIN
	CFA.tblStockistMaster AS s ON cq.StokistId = s.StockistId INNER JOIN
	CFA.tblCityMaster AS ct ON cq.StockistCity = ct.CityCode
	WHERE (cq.BranchId = @BranchId or @BranchId=0) AND (cq.CompId = @CompId or @CompId=0) AND (cq.ChqStatus = 0)
	group by cq.BranchId, cq.CompId, cq.StokistId, s.StockistNo, s.StockistName, s.Emailid, s.MobNo, cq.StockistCity, 
	ct.CityName
	having count(cq.ChqRegId) < 3
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetStockTransferdashboardFilteredList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [CFA].[usp_GetStockTransferdashboardFilteredList]--1,1
@BranchId int,
@CompId int

AS 
BEGIN
	SELECT inv.InvId,inv.InvNo, inv.InvCreatedDate,inv.InvAmount, inv.InvStatus,inv.PODate,inv.PONo,
		   inv.Addedby, inv.AddedOn, inv.LastUpdatedOn,inv.PackedDate, inv.NoOfBox, inv.InvWeight,inv.PackingRemark,
		    inv.ReadyToDispatchBy, inv.ReadyToDispatchDate,inv.ReadyToDispatchRemark,inv.CancelBy, inv.CancelDate,inv.IsStockTransfer,
			asm.TransportModeId,asm.LRDate,asm.LRBox,asm.LRNo,asm.LastUpdatedDate,asm.OCnfCity
	from  CFA.tblInvoiceHeader inv WITH (NOLOCK)left outer join
	   (
		SELECT DISTINCT a.InvoiceId, a.TransportModeId,a.LRDate,a.LRBox,a.LRNo,a.LastUpdatedDate,a.OCnfCity
		FROM CFA.tblInvoiceHeader i WITH (NOLOCK) left outer join 
		CFA.tblAssignTransportMode a WITH (NOLOCK) ON i.InvId=a.InvoiceId
		WHERE (i.InvStatus not in (8,9,20) or CAST(i.InvCreatedDate AS DATE) =CAST(GETDATE() AS DATE))
	    ) asm ON inv.InvId=asm.InvoiceId
	WHERE (inv.BranchId = @BranchId or @BranchId=0) and (inv.CompId = @CompId or @CompId=0)
END




GO
/****** Object:  StoredProcedure [CFA].[usp_GetStockTransferDashordCountForAllLogin]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--[CFA].[usp_GetStockTransferDashordCountForAllLogin]1,1,'2023-01-01','2022-04-06'
CREATE PROC [CFA].[usp_GetStockTransferDashordCountForAllLogin]
@BranchId INT,
@CompId INT,
@FromDate Datetime,
@ToDate Datetime

--set @BranchId=1 set @CompId=1 SET @FromDate='2022-07-07'; SET @ToDate='2022-07-07';

AS
BEGIN
	DECLARE @TotalPL INT=0, @TodaysBoxes int=0,@CummBoxes int=0,@OperEndPL INT =0;
	SELECT @TotalPL=SUM(CASE WHEN ((p.IsStockTransfer=1)and CAST(p.PicklistDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)) THEN 1 ELSE 0 END)
	FROM CFA.tblPickListHeader p WITH (NOLOCK)  
	SELECT @TodaysBoxes= sum(NoOfBox)FROM CFA.tblInvoiceHeader where InvStatus=3 and(IsStockTransfer = 1) and CAST(PackedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)
	SELECT @CummBoxes = sum(NoOfBox)FROM CFA.tblInvoiceHeader where InvStatus=3 and(IsStockTransfer = 1) and CAST(PackedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)

	--1) Total Invoices and Picklist
	SELECT 
	SUM(CASE WHEN ((cast(i.InvCreatedDate as date)=cast(getdate() as date)) AND(i.IsStockTransfer = 1)) then 1 else 0 END) StockInvoicesDays,
	SUM(case when ((i.IsStockTransfer = 1)and(DATEDIFF(dd,i.InvCreatedDate,GETDATE()) <=30)) then 1 else 0 END)  StockCummInvoicesmonth ,
	@TotalPL AS TotalPicklist,
	SUM(CASE WHEN ((i.InvStatus < 7)and CAST(i.InvCreatedDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date) )then 1 else 0 END) StockPending, --PENDing
	--SUM(CASE WHEN ((i.IsStockTransfer = 1)and(cast(i.InvCreatedDate as date) =cast(getdate() as date))) then 1 else 0 END) StockOperatorend, --Operator end no

	--2) No of Boxes and LR Updation  
	@TodaysBoxes AS StockTodaysBoxes,
	@CummBoxes AS StockCummBoxesmonth,
    SUM(CASE WHEN ((asm.LRDate is null) and (asm.LRNo is null) and(asm.LRBox is null)and(asm.OCnfCity =1)and 
    CAST(asm.LRDate AS DATE) between cast(@FromDate as date) AND cast(@ToDate as date)) THEN 1 ELSE 0 END) StockPendingLRupdation,  --Pending LR updation
	(select SUM(CASE WHEN cast(PicklistDate as date) =cast(getdate() as date) then 1 else 0 END) StockTodayPL from CFA.tblPickListHeader WHERE (BranchId=@BranchId OR @BranchId=0) and (CompId=@CompId  OR @CompId=0) ) StockTodayPL --Total Todays Picklist
	from  CFA.tblInvoiceHeader i WITH (NOLOCK)left outer join
	   (
		SELECT DISTINCT a.InvoiceId, a.TransportModeId,a.LRDate,a.LRBox,a.LRNo,a.LastUpdatedDate,a.OCnfCity
		FROM CFA.tblInvoiceHeader i WITH (NOLOCK) left outer join 
		CFA.tblAssignTransportMode a WITH (NOLOCK) ON i.InvId=a.InvoiceId
		WHERE (i.InvStatus not in (8,9,20) or CAST(i.InvCreatedDate AS DATE) =CAST(GETDATE() AS DATE))
	    ) asm ON i.InvId=asm.InvoiceId 	
    where (i.BranchId=@BranchId OR @BranchId=0) and (i.CompId=@CompId  OR @CompId=0)
END


GO
/****** Object:  StoredProcedure [CFA].[usp_GetStockTransferFilterListNew]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [CFA].[usp_GetStockTransferFilterListNew]
@BranchId int,
@CompId int

AS 
BEGIN
	SELECT inv.InvId,inv.InvNo, inv.InvCreatedDate,inv.InvAmount, inv.InvStatus,inv.PODate,inv.PONo,
		   inv.Addedby, inv.AddedOn, inv.LastUpdatedOn,inv.PackedDate, inv.NoOfBox, inv.InvWeight,inv.PackingRemark,
		    inv.ReadyToDispatchBy, inv.ReadyToDispatchDate,inv.ReadyToDispatchRemark,inv.CancelBy, inv.CancelDate,inv.IsStockTransfer,
			asm.TransportModeId,asm.LRDate,asm.LRBox,asm.LRNo,asm.LastUpdatedDate,asm.OCnfCity,st.StockistNo,st.StockistName,inv.SoldTo_StokistId
	from  CFA.tblInvoiceHeader inv WITH (NOLOCK)left outer join
	CFA.tblStockistMaster st ON st.StockistId=inv.SoldTo_StokistId LEFT OUTER JOIN
	   (
		SELECT DISTINCT a.InvoiceId, a.TransportModeId,a.LRDate,a.LRBox,a.LRNo,a.LastUpdatedDate,a.OCnfCity
		FROM CFA.tblInvoiceHeader i WITH (NOLOCK) left outer join 
		CFA.tblAssignTransportMode a WITH (NOLOCK) ON i.InvId=a.InvoiceId
		WHERE (i.InvStatus not in (8,9,20) or CAST(i.InvCreatedDate AS DATE) =CAST(GETDATE() AS DATE))
	    ) asm ON inv.InvId=asm.InvoiceId
	WHERE (inv.BranchId = @BranchId or @BranchId=0) and (inv.CompId = @CompId or @CompId=0) and inv.IsStockTransfer=1
END





GO
/****** Object:  StoredProcedure [CFA].[usp_GetStockTransferList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- CFA.usp_GetStockTransferList 1,1
CREATE PROC [CFA].[usp_GetStockTransferList]
--DECLARE
@BranchId INT,
@CompId INT
--SET @BranchId=1; SET @CompId=1;
AS
BEGIN
	SELECT inv.BranchId,inv.CompId,inv.InvNo,inv.InvCreatedDate,ocm.CNFId,ISNULL(ocm.CNFName,'') AS CNFName,ISNULL(ocm.CNFCode, '') AS CNFCode,inv.InvId
	FROM  CFA.tblOtherCNFMaster ocm LEFT OUTER JOIN CFA.tblInvoiceHeader inv ON ocm.CNFId=inv.SendToCNFId
	WHERE ocm.BranchId=@BranchId AND ocm.CompId=@CompId AND inv.IsStockTransfer=1 
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetTaxMasterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_GetTaxMasterList]

AS
Begin
select * from CFA.tblTAXMaster 
End
GO
/****** Object:  StoredProcedure [CFA].[usp_GetThresholdSLAMasterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- [CFA].[usp_GetThresholdSLAMasterList] 1,2
CREATE PROC [CFA].[usp_GetThresholdSLAMasterList] --1,2
--DECLARE
@BranchId int,
@CompanyId int
  --SET @BranchId=1;
AS

BEGIN
	select ts.PkId, c.CompanyName, ts.ThresholdValue,ts.RaiseClaimDay,ts.ClaimSettlementDay,ts.InStateAmt,ts.OutStateAmt,
	ts.SaleSettlePeriod,ts.NonSaleSettlePeriod,ts.BranchId,ts.CompanyId,ts.Addedby, ts.AddedOn ,ts.LastUpdatedOn, b.BranchName 
	 from cfa.tblThresholdSLAMaster as ts 
	 left outer join cfa.tblCompanyMaster c on ts.CompanyId = c.CompanyId
	 left outer join cfa.tblBranchMaster b on ts.BranchId = b.BranchId
	 where (ts.BranchId = @BranchId or @BranchId=0) and (ts.CompanyId = @CompanyId or @CompanyId=0)
END 
GO
/****** Object:  StoredProcedure [CFA].[usp_GetTransitDataList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--[CFA].[usp_GetTransitDataList] 1,1
CREATE PROCEDURE [CFA].[usp_GetTransitDataList]
--DECLARE
@BranchId INT,
@CompId INT
AS
BEGIN
	 SELECT tih.BranchId,tih.CompId,tih.DeliveryNo,tih.ActualGIDate,tih.RecPlant,tih.RecPlantDesc,tih.DispPlant,tih.DispPlantDesc,
		 tih.InvNo,tih.InvoiceDate,tih.MaterialNo,tih.MatDesc,tih.UoM,BatchNo,tih.Quantity,tih.TransporterId,tm.TransporterNo,
		 tm.TransporterName,tih.LrNo,tih.LrDate,tih.TotalCaseQty,tih.VehicleNo,tih.AddedBy,tih.AddedOn,
		 ISNULL(tih.IsMapDone,0) AS IsMapDone,ISNULL(miv.IsChecklistDone,0) AS IsChecklistDone
	 FROM CFA.tblTransitInvoiceHeader AS tih LEFT OUTER JOIN CFA.tblTransporterMaster AS tm ON tih.TransporterId=tm.TransporterId
	 --LEFT OUTER JOIN CFA.tblMapInwardVehicle AS miv ON tih.LrNo=miv.LRNo
	 LEFT OUTER JOIN CFA.tblMapInwardVehicle AS miv ON tih.TransitId=miv.pkId
	 WHERE tih.BranchId=@BranchId AND tih.CompId=@CompId --AND CAST(tih.AddedOn AS DATE)=CAST(GETDATE() AS DATE)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetTransitDataListForMob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_GetTransitDataListForMob]
--DECLARE
@BranchId INT,
@CompId INT
AS
BEGIN

	 SELECT tih.TransitId,tih.BranchId,tih.CompId,tih.DeliveryNo,tih.ActualGIDate,tih.RecPlant,tih.RecPlantDesc,tih.DispPlant,tih.DispPlantDesc,
		    tih.InvNo,tih.InvoiceDate,tih.MaterialNo,tih.MatDesc,tih.UOM,BatchNo,tih.Quantity,tih.TransporterId,tm.TransporterNo,
		    tm.TransporterName,tih.LrNo,tih.LrDate,tih.TotalCaseQty,tih.VehicleNo,tih.TransitLRStatus,tih.AddedBy,tih.AddedOn,tih.IsMapDone,
			tih.RaiseConcernId,tih.RaiseConcernBy,tih.RaiseConcernRemarks,tih.RaiseConcernUpdatedOn
	 FROM CFA.tblTransitInvoiceHeader tih LEFT OUTER JOIN CFA.tblTransporterMaster AS tm ON tih.TransporterId=tm.TransporterId
	 WHERE tih.BranchId=@BranchId AND tih.CompId=@CompId 
	 
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetTransporterParentList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [CFA].[usp_GetTransporterParentList] --1,'Y'
--DECLARE
@BranchId INT,
@Status nvarchar(10)
AS
BEGIN
	SELECT Tpid, BranchId,cfa.fn_CamelCase(ParentTranspNo) ParentTranspNo, cfa.fn_CamelCase(ParentTranspName) ParentTranspName,
	ParentTranspEmail,cfa.fn_CamelCase(ParentTranspMobNo) ParentTranspMobNo,IsTDS,TDSPer,IsGST,GSTNumber,IsActive,Addedby,AddedOn,LastUpdatedOn
	FROM CFA.tblTransporterParentMst
	WHERE (BranchId = @BranchId) and (UPPER(IsActive) = UPPER(@Status) OR UPPER(@Status)='ALL')
	ORDER BY Tpid DESC
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetUserDetailsForChangePwd]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE PROCEDURE [CFA].[usp_GetUserDetailsForChangePwd]  
@UserId int  
  
AS  
BEGIN  
 SELECT u.UserId,u.EmpId, u.DisplayName, u.UserName, e.EmpEmail, u.Password, u.EncryptPassword,  
 g.MasterName as Designation, bg.MasterName as BloodGroup, e.AadharNo, e.EmpMobNo, u.IsActive,e.EmpNo  
 FROM CFA.tblUser AS u LEFT OUTER JOIN  
 CFA.tblEmployeeMaster AS e ON u.EmpId = e.EmpId  
 left outer join CFA.tblGeneralMaster g on e.DesignationId=g.pkId  
 left outer join CFA.tblGeneralMaster bg on e.DesignationId=g.pkId  
 where u.userid=@UserId   
END  
  
GO
/****** Object:  StoredProcedure [CFA].[usp_GetUserDeviceDetails]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--	Description		:	To return Active user details

create PROCEDURE [CFA].[usp_GetUserDeviceDetails]
@BranchId int,
@UserId int	
AS
BEGIN
	SELECT BranchId,CompanyId,UserId,EmpId,Username,MobileNo,RoleId,VersionNo,LastSeen,DeviceId
	FROM CFA.tblActiveUsers WITH(NOLOCK) 
	WHERE BranchId=@BranchId and UserId=@UserId
	
END



GO
/****** Object:  StoredProcedure [CFA].[usp_GetUtilityNoById]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_GetUtilityNoById]
--declare
@UtilityNo INT
--set @UtilityNo=1
AS
BEGIN

	SELECT pd.BranchId,b.BranchName,pd.CompId,cm.CompanyName,pd.UtilityNo
	FROM CFA.tblPrinterDetails pd with(nolock) left outer join cfa.tblBranchMaster b with(nolock) on pd.BranchId=b.BranchId
	left outer join cfa.tblCompanyMaster cm with(nolock) on pd.CompId=cm.CompanyId
	where pd.UtilityNo=@UtilityNo

END






GO
/****** Object:  StoredProcedure [CFA].[usp_GetUtilityNoNew]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_GetUtilityNoNew]

as
Begin
SET FMTONLY OFF
	select distinct isnull(UtilityNo,0) UtilityNo, 'Y' Act from cfa.tblPrinterDetails where UtilityNo is not null
	union 
	select isnull(max(UtilityNo),0)+1, 'Y' from cfa.tblPrinterDetails

END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetVehChklistDtls_Mob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_GetVehChklistDtls_Mob] 1,2
CREATE PROC [CFA].[usp_GetVehChklistDtls_Mob]
--declare
@BranchId int,
@CompId int
--set @BranchId=1; set @CompId=2;
AS
BEGIN
	SELECT tih.TransitId,m.BranchId,m.CompId,m.ChkListMstId,m.LREntryId,m.Remarks,m.Img1,m.Img2,m.Img3,m.Img4,
		   m.Status,m.IsApprove,m.IsApproveBy,m.IsApproveOn,m.AddedBy,m.AddedOn,m.LastUpdatedOn,
		   mv.LRNo,mv.LRDate,mv.VehicleNo,mv.TransporterId,tm.TransporterName,tm.TransporterNo,isnull(mv.IsChecklistDone,0) AS IsChecklistDone
	FROM  CFA.tblInvInVehicleChecklistMst AS m 
	left outer join CFA.tblMapInwardVehicle AS mv ON m.LREntryId=mv.pkId
	left outer join CFA.tblTransporterMaster AS tm on mv.TransporterId=tm.TransporterId
	left outer join CFA.tblTransitInvoiceHeader as tih on mv.pkId=tih.TransitId
	WHERE m.BranchId=@BranchId AND m.CompId=@CompId AND tih.IsMapDone=1
END

GO
/****** Object:  StoredProcedure [CFA].[usp_GetVehChklistDtlsQA_Mob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [CFA].[usp_GetVehChklistDtlsQA_Mob]
@BranchId int,
@CompId int
AS
 BEGIN
	SELECT m.BranchId, m.CompId, d.ChkListMstId, d.ChkListDtlsId,d.CLQueId, d.CLQueText, d.FieldType, d.SortId, d.AnsText, d.ExpAnsText
	FROM  CFA.tblInvInVehicleChecklistMst AS m LEFT OUTER JOIN CFA.tblInvInVehicleChecklistDtls AS d on m.ChkListMstId=d.ChkListMstId
	WHERE (m.BranchId = @BranchId AND m.CompId = @CompId)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetVendorMasterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE proc [CFA].[usp_GetVendorMasterList] --1,0,'y'
--Declare
@Branch int,
@CompanyId int,
@Status	nvarchar(10)

As

BEGIN
	SELECT v.VendorId, v.Branch, v.VendorName, v.Email, v.ContactNumber, v.PANNumber,v.IsGST, v.GSTNumber, v.City, c.CityName, v.Address, v.IsActive, v.AddedBy, v.AddedOn, v.LastUpdatedOn
		FROM CFA.tblVendorMaster as v left outer join
		CFA.tblCityMaster as c on v.City = c.CityCode left outer join
		CFA.tblCompanyVendorMapping as cv on v.VendorId = cv.VendorId
		where( UPPER(v.IsActive) = UPPER(@Status) OR UPPER(@Status) = 'ALL') and (Branch = @Branch) and (cv.CompanyId = @CompanyId or @CompanyId=0)
END


GO
/****** Object:  StoredProcedure [CFA].[usp_GetVersionDetails]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_GetVersionDetails]
AS
BEGIN
	 SELECT VersionId,VersionNo,VersionDate,IsActive,AddedOn,LastUpdatedDate
	 FROM CFA.tbl_VersionDetails
END
GO
/****** Object:  StoredProcedure [CFA].[usp_HeadMasterAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_HeadMasterAddEdit]
@pkId int,
@BranchId int,
@HeadName nvarchar(250),
@HeadTypeId int,
@IsActiveStatus	char(1),
@Addedby nvarchar(50),
@AddedOn Datetime,
@Action	nvarchar(10),
@RetValue int output
AS
BEGIN
	set @RetValue=0
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin
		if not exists(select HeadTypeId,HeadName from CFA.tblHeadMaster where HeadTypeId=@HeadTypeId and HeadName=@HeadName)
		Begin
			insert into CFA.tblHeadMaster(BranchId,HeadName,HeadTypeId,IsActiveStatus,Addedby,AddedOn,LastUpdatedOn)
			values(@BranchId,@HeadName,@HeadTypeId,@IsActiveStatus,@Addedby,@AddedOn,getdate())			
			set @RetValue=SCOPE_IDENTITY()
		End
		else 
		begin
			set @RetValue=-1 -- Already Exists!
		end
	End
	else if (upper(ltrim(rtrim(@Action)))='EDIT')
	Begin
		if not exists(select HeadTypeId,HeadName from CFA.tblHeadMaster where HeadTypeId=@HeadTypeId and HeadName=@HeadName)
		Begin
			update CFA.tblHeadMaster
			set BranchId=@BranchId,
				HeadName=@HeadName,
				HeadTypeId=@HeadTypeId,
				IsActiveStatus=@IsActiveStatus,
				Addedby=@Addedby,
				LastUpdatedOn=getdate()
			where pkId=@pkId	
			set @RetValue=@pkId
		End
		else 
		Begin
			set @RetValue=-1
		End
	End
	else if (upper(ltrim(rtrim(@Action)))='STATUS')
	Begin
		update CFA.tblHeadMaster set IsActiveStatus=@IsActiveStatus,Addedby=@Addedby,LastUpdatedOn=getdate() 
		where pkId=@pkId
		set @RetValue=@pkId
	End
	else
	Begin
		set @RetValue=-2
	End	
END

GO
/****** Object:  StoredProcedure [CFA].[usp_ImportChqDepoReceiptData]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_ImportChqDepoReceiptData]
--declare
@BranchId INT,
@CompId INT,
@DepoDate datetime,
@DepoData CFA.ImportChqDepoReceipt READONLY,
@Addedby NVARCHAR(50)

--set @BranchId=1; set @CompId=2;set @addedBY=1; set @DepoDate=getdate(); 

--insert into @DepoData(pkId,StockistName,StockistCode,DepositeDate,BankName,AccountNo,ChequeNo,Amount) values ('1', 'Shri Chaitanya Agencies','10000094','2023-04-20','HDFC BANK','50200012791567','333397','26000')   -- Deposited
--insert into @DepoData(pkId,StockistName,StockistCode,DepositeDate,BankName,AccountNo,ChequeNo,Amount) values ('2', 'Shri Chaitanya Agencies','10000094','2023-04-20','HDFC BANK','50200012791567','333399','26000')  -- Cheque no. not found
--insert into @DepoData(pkId,StockistName,StockistCode,DepositeDate,BankName,AccountNo,ChequeNo,Amount) values ('3', 'Shri Chaitanya Agencies','10000094','2023-04-20','HDFC BANK','50200012791567','333388','26000')  -- Returned
--insert into @DepoData(pkId,StockistName,StockistCode,DepositeDate,BankName,AccountNo,ChequeNo,Amount) values ('4', 'Shri Chaitanya Agencies','10000094','2023-04-20','HDFC BANK','50200012791567','333389','26000')  -- FirstNotice
--insert into @DepoData(pkId,StockistName,StockistCode,DepositeDate,BankName,AccountNo,ChequeNo,Amount) values ('5', 'Shri Chaitanya Agencies','10000094','2023-04-20','HDFC BANK','50200012791567','333387','26000')  -- LegalNotice
--insert into @DepoData(pkId,StockistName,StockistCode,DepositeDate,BankName,AccountNo,ChequeNo,Amount) values ('6', 'Shri Chaitanya Agencies','10000094','2023-04-20','HDFC BANK','50200012791567','010123','26000')  -- Settled
--insert into @DepoData(pkId,StockistName,StockistCode,DepositeDate,BankName,AccountNo,ChequeNo,Amount) values ('7', 'Nitesh','775657','2023-04-20','HDFC BANK','1111123456','123','26000')  -- Discarded

--insert into @DepoData(pkId,StockistName,StockistCode,DepositeDate,BankName,AccountNo,ChequeNo,Amount) values ('1', 'El Enterprises','10013978','2023-04-21','BANK OR BARODA','888205000000013','1','22000')
--insert into @DepoData(pkId,StockistName,StockistCode,DepositeDate,BankName,AccountNo,ChequeNo,Amount) values ('2', 'El Enterprises','10013978','2023-04-21','BANK OR BARODA','888205000000013','2','26000')
--insert into @DepoData(pkId,StockistName,StockistCode,DepositeDate,BankName,AccountNo,ChequeNo,Amount) values ('3', 'El Enterprises','10013978','2023-04-21','BANK OR BARODA','888205000000013','3','19832')
AS
BEGIN

	DECLARE @RetResult NVARCHAR(2000) ='', @RetVal int=0

	truncate table CFA.tblChqDepoReceiptImport

	if exists(SELECT dt.ChequeNo FROM @DepoData dt inner join cfa.tblStockistMaster st on ltrim(rtrim(dt.StockistCode))=ltrim(rtrim(st.StockistNo))
	inner join CFA.tblStockiestBankDetails sb on st.StockistId=sb.StockistId 
	inner join cfa.tblChequeRegister cq on convert(numeric(10,0),dt.ChequeNo)=convert(numeric(10,0), cq.ChqNo) 
	and ltrim(rtrim(cq.AccountNo))=ltrim(rtrim(dt.AccountNo)) where cq.ChqStatus in (5,6,7,8))
	Begin
		SET @RetResult='These Cheques Are Already Processed ' + isnull(STUFF((select ' / ' + convert(nvarchar(10), dt.ChequeNo ) 
		FROM @DepoData dt inner join cfa.tblStockistMaster st on ltrim(rtrim(dt.StockistCode))=ltrim(rtrim(st.StockistNo))
		inner join cfa.tblChequeRegister cq on convert(numeric(10,0),dt.ChequeNo)=convert(numeric(10,0), cq.ChqNo) 
		and cq.StokistId=st.StockistId where cq.ChqStatus in (5,6,7,8) order by dt.ChequeNo FOR XML PATH('')),1,1,'') ,'') 
	End

	-- Cheque No Not Found
	else if exists (select a.StokistId, a.StockistNo,convert(numeric(10,0), a.ChqNo) as ChqNo,convert(numeric(10,0),dt.ChequeNo) as ChequeNo
					from @DepoData dt left outer join (select cq.StokistId,s.StockistNo, cq.ChqRegId, cq.ChqNo from cfa.tblStockistMaster s 
					inner join CFA.tblStockiestBankDetails sb on s.StockistId=sb.StockistId 
					inner join cfa.tblChequeRegister cq on sb.StockistId=cq.StokistId ) a 
					on convert(numeric(10,0),dt.ChequeNo)=convert(numeric(10,0), a.ChqNo) 
					and ltrim(rtrim(dt.StockistCode))=ltrim(rtrim(a.StockistNo)) where a.ChqNo is null)
	Begin
		SET @RetResult='Cheque Number Not Found ' + isnull(STUFF((select ' / ' + convert(nvarchar(10), dt.ChequeNo) 
		from @DepoData dt left outer join (select cq.StokistId,s.StockistNo, cq.ChqRegId, cq.ChqNo from cfa.tblStockistMaster s 
					inner join CFA.tblStockiestBankDetails sb on s.StockistId=sb.StockistId 
					inner join cfa.tblChequeRegister cq on sb.StockistId=cq.StokistId ) a 
					on convert(numeric(10,0),dt.ChequeNo)=convert(numeric(10,0), a.ChqNo) 
					and ltrim(rtrim(dt.StockistCode))=ltrim(rtrim(a.StockistNo)) 
					where a.ChqNo is null order by dt.ChequeNo FOR XML PATH('')),1,1,'') ,'') 
	End

	else
	Begin
		INSERT INTO CFA.tblChqDepoReceiptImport(StockistName, StockistCode,StockistId, DepositeDate, BankName, AccountNo, ChequeNo,ChqRegId, 
			Amount, BranchId, CompId, AddedBy, AddedOn)
		SELECT ltrim(rtrim(dt.StockistName)), ltrim(rtrim(dt.StockistCode)), st.StockistId, dt.DepositeDate, dt.BankName, ltrim(rtrim(dt.AccountNo)), 
		ltrim(rtrim(dt.ChequeNo)), cq.ChqRegId, dt.Amount,@BranchId,@CompId,@Addedby,getdate() 
		FROM @DepoData dt inner join cfa.tblStockistMaster st on ltrim(rtrim(dt.StockistCode))=ltrim(rtrim(st.StockistNo))
			inner join CFA.tblStockiestBankDetails sb on st.StockistId=sb.StockistId 
			inner join cfa.tblChequeRegister cq on convert(numeric(10,0),dt.ChequeNo)=convert(numeric(10,0), cq.ChqNo) 
			and ltrim(rtrim(dt.StockistCode))=ltrim(rtrim(st.StockistNo))


		-- Update cheque Status for deposited cheques	
		Begin
			UPDATE CFA.tblChequeRegister 
			SET ChqStatus=4, 
				ChqAmount=dd.Amount, 
				DepositedBy=@Addedby, 
				DepositedDate=dd.DepositeDate,
				LastUpdatedOn=GetDate()  
			From CFA.tblChequeRegister cr inner join CFA.tblChqDepoReceiptImport dd on dd.ChqRegId=cr.ChqRegId  
			WHERE cr.BranchId=@BranchId and cr.CompId=@CompId
		
			SET @RetVal=@@ROWCOUNT;
		End
		SET @RetResult='No. of Deposited Cheque Imported ' +convert(nvarchar(10), @RetVal)
	End
	SELECT @RetResult as RetResult

END

GO
/****** Object:  StoredProcedure [CFA].[usp_ImportCNData]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [CFA].[usp_ImportCNData]
--DECLARE
@BranchId INT,
@CompId INT,
@ImportCNData CFA.ImportCNData READONLY,
@AddedBy NVARCHAR(50)
AS
BEGIN
	SET FMTONLY OFF
	DECLARE @newId INT=0, @RetResult NVARCHAR(2000) ='';

	TRUNCATE TABLE CFA.tblCNImport
	
	INSERT INTO CFA.tblCNImport(BranchId,CompId,SalesOrderNo,SalesOrderDate,CrDrNoteNo,CRDRCreationDate,
	CrDrAmt,SoldToCode,SoldToName,SoldToCity,OrderReason,OrderReasonDescription,LRNo,LRDate,
	CFAGRDate,BasicAmt,AddedBy,AddedOn)
	
	SELECT @BranchId,@CompId,SalesOrderNo,SalesOrderDate,CrDrNoteNo,CRDRCreationDate,
	CrDrAmt,SoldToCode,SoldToName,SoldToCity,OrderReason,OrderReasonDescription,LRNo,LRDate,
	CFAGRDate,BasicAmt,@AddedBy,GETDATE() FROM @ImportCNData

	------Delete old records imported today
	DELETE FROM CFA.tblCNHeader WHERE BranchId=@BranchId AND CompId=@CompId AND CAST(CRDRCreationDate AS DATE)=CAST(GETDATE() AS DATE)
	---------------------------------

	--- Duplicate records msg check...
	DECLARE @impCnt VARCHAR(20), @DupliNos VARCHAR(2000)

	SET @DupliNos=(SELECT  ISNULL((STUFF((SELECT ',' + CONVERT(NVARCHAR(50),s2.CrDrNoteNo) 
	FROM CFA.tblCNImport s2 INNER JOIN CFA.tblCNHeader inv2 ON s2.CrDrNoteNo=inv2.CrDrNoteNo  
	FOR XML PATH('')),1,1,'')),''))

	SELECT  @impCnt=COUNT(DISTINCT i.CrDrNoteNo) 
	FROM CFA.tblCNImport i LEFT OUTER JOIN CFA.tblCNHeader inv ON i.CrDrNoteNo=inv.CrDrNoteNo
	WHERE inv.CrDrNoteNo IS NULL 
	GROUP BY i.BranchId, i.CompId
	---------------------------------
	
	DECLARE @StkNotInMst VARCHAR(2000)=''
	IF EXISTS(select SoldToCode FROM CFA.tblCNImport WHERE CompId=@CompId AND SoldToCode NOT IN (SELECT StockistNo FROM CFA.tblStockistMaster WHERE CompId=@CompId))
	BEGIN
		SET @StkNotInMst=(SELECT ISNULL((STUFF((SELECT ', ' + convert(NVARCHAR(50),s2.SoldToCode) FROM CFA.tblCNImport s2 
		WHERE s2.CompId=@CompId AND s2.SoldToCode NOT IN (SELECT StockistNo FROM CFA.tblStockistMaster WHERE CompId=@CompId)
		FOR XML PATH('')),1,1,'')),''))
		SET @RetResult='Stockiests Not Exist: '+ @StkNotInMst
	END
	ELSE
	BEGIN
		INSERT INTO CFA.tblCNHeader(BranchId,CompId,SRSId,SalesOrderNo,SalesOrderDate,CrDrNoteNo,
			CRDRCreationDate,CrDrAmt,StockiestId,SoldToCode,OrderReason,LRNo,LRDate,CFAGRDate,BasicAmt,AddedBy,LastUpdateDate)

		SELECT @BranchId,@CompId,srs.SRSId,s.SalesOrderNo,s.SalesOrderDate,s.CrDrNoteNo,
			s.CRDRCreationDate,SUM(s.CrDrAmt) CrDrAmt,st.StockistId,st.StockistNo,s.OrderReason,s.LRNo,s.LRDate,s.CFAGRDate,SUM(s.BasicAmt) BasicAmt,@AddedBy,GETDATE()
		FROM CFA.tblCNImport s LEFT OUTER JOIN CFA.tblStockistMaster st ON s.SoldToCode=st.StockistNo 
		LEFT OUTER JOIN CFA.tblSRSHeader srs ON s.SalesOrderNo=srs.SalesDocNo 
		LEFT OUTER JOIN CFA.tblCNHeader cn ON s.CrDrNoteNo=cn.CrDrNoteNo 
		where cn.CrDrNoteNo is null
		GROUP BY srs.SRSId,s.SalesOrderNo,s.SalesOrderDate,s.CrDrNoteNo,
			s.CRDRCreationDate,st.StockistId,st.StockistNo,s.OrderReason,s.LRNo,s.LRDate,s.CFAGRDate,s.BasicAmt
		SET @newId=SCOPE_IDENTITY()

		SET @RetResult='CN Uploaded SuccessFully.';
	
		IF (LTRIM(RTRIM(ISNULL(@DupliNos,'')))<>'')
		BEGIN
			SET @RetResult='No. of CN Imported: '+CONVERT(NVARCHAR(10),ISNULL(@impCnt,0))+', Duplicate Credit Note Numbers ('+ISNULL(@DupliNos,'')+')'
		END
		ELSE
		BEGIN
			SET @RetResult='No. of CN Imported '+CONVERT(NVARCHAR(10),ISNULL(@impCnt,0))
		END
	END

	IF (@@ERROR<>0) SET @RetResult='-1'

	SELECT @RetResult as RetResult 

END
GO
/****** Object:  StoredProcedure [CFA].[usp_ImportCNDetaForEmail]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_ImportCNDetaForEmail] 0,0
CREATE proc [CFA].[usp_ImportCNDetaForEmail]
--declare
@BranchId int,
@CompId int 
--set @BranchId=0; set @CompId=0;
As
Begin 
	 SELECT CN.BranchId,CN.CompId,CN.CrDrNoteNo,CN.StockiestId,srs.SalesDocNo,srs.PONoLRNo, srs.LREntryId,
	 CN.LRNo,pc.LREntryId AS LREntryIdpc, pc.ClaimNo,pc.ClaimDate,stk.StockistName,stk.StockistNo, stk.Emailid
	 --'anilshinde@aadyamconsultant.com' AS Emailid
	 FROM CFA.tblPhysicalCheck1 AS pc WITH(NOLOCK) LEFT OUTER JOIN CFA.tblSRSHeader AS srs WITH(NOLOCK) ON pc.LREntryId=srs.LREntryId 
	 RIGHT OUTER JOIN CFA.tblCNHeader AS CN WITH(NOLOCK) ON srs.SRSId = CN.SRSId INNER JOIN CFA.tblStockistMaster AS stk WITH(NOLOCK) ON stk.StockistNo=CN.SoldToCode
	 WHERE (CN.BranchId=@BranchId OR @BranchId=0) AND (CN.CompId=@CompId OR @CompId=0) 
End
GO
/****** Object:  StoredProcedure [CFA].[usp_ImportInvoiceData]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_ImportInvoiceData]
@BranchId INT,
@CompId INT,
@ImportInvData CFA.ImportInvData READONLY,
@Addedby NVARCHAR(50)

AS

BEGIN
SET FMTONLY OFF

	declare @newId int=0,  @RetResult NVARCHAR(2000) ='';
	truncate table CFA.tblInvoiceDataImport
	INSERT INTO CFA.tblInvoiceDataImport(InvoiceNo, InvoiceCreateDate, InvoiceAmount, SoldToCode, SoldToName, SoldToCity, BranchId, CompId, AddedBy, AddedOn)
	
	SELECT InvoiceNo, InvoiceCreateDate, InvoiceAmount, SoldToCode, SoldToName, SoldToCity, @BranchId, @CompId, @Addedby, getdate() 
	FROM @ImportInvData

	-- Add stokist if not exists
	If exists(select soldtocode from CFA.tblInvoiceDataImport where SoldToCode not in (select StockistNo from CFA.tblStockistMaster))
		Begin
			insert into CFA.tblStockistMaster (StockistNo,StockistName,CityCode,IsActive) 
			select distinct i.SoldToCode,i.SoldToName,c.CityCode,'Y'
			from CFA.tblInvoiceDataImport i left outer join CFA.tblCityMaster c on lower(ltrim(rtrim(i.SoldToCity)))=lower(ltrim(rtrim(c.CityName)))
			where SoldToCode not in (select StockistNo from CFA.tblStockistMaster)
		End

	-- Add branch relation if not mappped
	If exists(select SoldToCode from CFA.tblInvoiceDataImport where SoldToCode not in (select s.StockistNo from CFA.tblStockistMaster s
				inner join CFA.tblStockiestBranchRelation sb on s.StockistId=sb.StockiestId where sb.BranchId=@BranchId))
		Begin
			insert into CFA.tblStockiestBranchRelation (StockiestId,BranchId,AddedBy,AddedDate,LastUpdatedDate)
			select distinct s.StockistId,@BranchId,@Addedby,getdate(),getdate() 
			from CFA.tblInvoiceDataImport i inner join CFA.tblStockistMaster s on lower(ltrim(rtrim(i.SoldToCode)))=lower(ltrim(rtrim(s.StockistNo)))
			where s.StockistId not in (select StockiestId from CFA.tblStockiestBranchRelation where BranchId=@BranchId)
		End
	-- Add company relation if not mappped
	if exists(select SoldToCode from CFA.tblInvoiceDataImport where SoldToCode not in (select s.StockistNo from CFA.tblStockistMaster s
				inner join CFA.tblStockiestCompanyRelation sb on s.StockistId=sb.StockiestId where sb.CompId=@CompId))
		Begin
			insert into CFA.tblStockiestCompanyRelation (StockiestId,CompId,AddedBy,AddedDate,LastUpdatedDate)
			select distinct s.StockistId,@CompId,@Addedby,getdate(),getdate() 
			from CFA.tblInvoiceDataImport i inner join CFA.tblStockistMaster s on lower(ltrim(rtrim(i.SoldToCode)))=lower(ltrim(rtrim(s.StockistNo)))
			where s.StockistId not in (select StockiestId from CFA.tblStockiestCompanyRelation where CompId=@CompId)
		End

	--- Duplicate invoice msg check...
	declare @impCnt varchar(20), @DupliNos varchar(2000), @stkNos varchar(2000)

	Set @DupliNos=(select  isnull((STUFF((select ',' + convert(nvarchar(50),i2.InvoiceNo) 
	FROM CFA.tblInvoiceDataImport i2 inner join CFA.tblInvoiceHeader inv2 on i2.InvoiceNo=inv2.InvNo  
	FOR XML PATH('')),1,1,'')),'') )

	SELECT  @impCnt=count(distinct i.InvoiceNo) 
	FROM CFA.tblInvoiceDataImport i left outer join CFA.tblInvoiceHeader inv on i.InvoiceNo=inv.InvNo
	where inv.InvNo is null 
	group by i.BranchId, i.CompId
	---------------------------------

	-- the invoice should not get uploaded against the Stockist which is deactivated
	SET @stkNos = (select isnull((STUFF((select ',' + convert(nvarchar(50),SoldToCode) 
				   from CFA.tblInvoiceDataImport where SoldToCode in(select StockistNo from CFA.tblStockistMaster 
				   where isnull(IsActive,'N')='N') FOR XML PATH('')),1,1,'')),''))

	insert into CFA.tblInvoiceHeader(BranchId, CompId, InvNo, InvCreatedDate, IsColdStorage, SoldTo_StokistId, 
		SoldTo_City, InvAmount, InvStatus, Addedby, AddedOn, LastUpdatedOn)

	SELECT @BranchId, @CompId, i.InvoiceNo, i.InvoiceCreateDate, 0 IsColdStorage,st.StockistId, st.CityCode,	
		sum(convert(decimal(10,2),i.InvoiceAmount)) invAmt, 0 Created, @Addedby, getdate(),getdate()
	FROM CFA.tblInvoiceDataImport i left outer join CFA.tblStockistMaster st on i.SoldToCode=st.StockistNo
		left outer join CFA.tblInvoiceHeader inv on i.InvoiceNo=inv.InvNo
	where inv.InvNo is null  and st.IsActive='Y'
	group by i.BranchId, i.CompId, i.InvoiceNo, i.InvoiceCreateDate, i.SoldToCode, st.StockistId, st.CityCode, i.AddedBy
	order by i.InvoiceNo
	
	set @newId=SCOPE_IDENTITY()

	SET @RetResult = 'No. of Invoices Imported ' + convert(nvarchar(10),isnull(@impCnt,0))

	if (ltrim(rtrim(isnull(@DupliNos,'')))<>'')
	Begin
		SET @RetResult = @RetResult + ', Duplicate Invoice Numbers (' + isnull(@DupliNos,'') + ')'
	end
	else if (ltrim(rtrim(isnull(@stkNos,'')))<>'')
	begin
		SET @RetResult = @RetResult + ', These Stockists are Deactivated ' + isnull(@stkNos,'')
	end

	if (@@ERROR<>0) SET @RetResult='-1'

	SELECT @RetResult as RetResult 

	--insert into CFA.tblInvoiceHeader(BranchId, CompId, InvNo, InvCreatedDate, IsColdStorage, SoldTo_StokistId, 
	--	SoldTo_City, InvAmount, InvStatus, Addedby, AddedOn, LastUpdatedOn)

	--SELECT @BranchId, @CompId, i.InvoiceNo, i.InvoiceCreateDate, 0 IsColdStorage,st.StockistId, st.CityCode,	
	--	sum(convert(decimal(10,2),i.InvoiceAmount)) invAmt, 0 Created, @Addedby, getdate(),getdate()
	--FROM CFA.tblInvoiceDataImport i left outer join CFA.tblStockistMaster st on i.SoldToCode=st.StockistNo
	--	left outer join CFA.tblInvoiceHeader inv on i.InvoiceNo=inv.InvNo
	--where inv.InvNo is null
	--group by i.BranchId, i.CompId, i.InvoiceNo, i.InvoiceCreateDate, i.SoldToCode, st.StockistId, st.CityCode, i.AddedBy
	--order by i.InvoiceNo
	--set @newId=SCOPE_IDENTITY()

	--SET @RetResult='Invoice Uploaded SuccessFully.';
	

	--if (ltrim(rtrim(isnull(@DupliNos,'')))<>'')
	--Begin
	--	SET @RetResult='No. of Invoices Imported: '+convert(nvarchar(10),isnull(@impCnt,0))+', Duplicate Invoice Numbers ('+isnull(@DupliNos,'')+')'
	--end
	--else
	--begin
	--	SET @RetResult='No. of Invoices Imported '+convert(nvarchar(10),isnull(@impCnt,0))
	--end

	--if (@@ERROR<>0) SET @RetResult='-1'

	--SELECT @RetResult as RetResult 

END
GO
/****** Object:  StoredProcedure [CFA].[usp_ImportLRData]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_ImportLRData]
--declare
@LRData cfa.ImportLRData readonly,
@Addedby	nvarchar(50)
--@RetValue	nvarchar(10) output
AS
--insert into @lrdata(pkid,lrno,invoiceno,InvoiceDate,lrdate,lrbox)  values(1,3576042734,21121,'5/4/2022 12:00:00 AM',10,20)
--insert into @lrdata(pkid,lrno,invoiceno,InvoiceDate,lrdate,lrbox)  values(2,3576042865,212123,'5/4/2022 12:00:00 AM',10,30)
--select * from @lrdata
begin
	
	declare @RetValue nvarchar(2000)=0, @invNos nvarchar(2000)=''
	
	--select InvId from CFA.tblInvoiceHeader i inner join @LRData lr on i.InvNo=lr.InvoiceNo
	
	set @invNos = (select isnull((STUFF((select ',' + convert(nvarchar(50),i.InvNo) 
				   from CFA.tblInvoiceHeader i inner join @LRData lr on i.InvNo=lr.InvoiceNo
				   where i.InvStatus < 7 FOR XML PATH('')),1,1,'')),''))

	if exists(select * from CFA.tblInvoiceHeader i inner join @LRData lr on i.InvNo=lr.InvoiceNo where i.InvStatus < 7)
	begin
		set @RetValue = 'Gatepass is not generated for these invoices (' + isnull(@invNos,'') + ')'
	end
	else if exists(select InvId from CFA.tblInvoiceHeader i inner join @LRData lr on i.InvNo=lr.InvoiceNo)
	begin
		update CFA.tblAssignTransportMode
		set LRNo=r1.LRno,
			LRDate=r1.LRDate,
			LRBox=r1.LRBox,
			LastUpdatedDate = GETDATE()
		from CFA.tblAssignTransportMode tm 
		inner join ( SELECT lr.pkId,I.InvId,lr.LRNo,lr.InvoiceNo, lr.InvoiceDate,lr.LRDate,lr.LRBox FROM CFA.tblAssignTransportMode tm
		 inner join CFA.tblInvoiceHeader i on tm.InvoiceId=i.InvId inner join @LRData lr on i.InvNo=lr.InvoiceNo
		) r1 on tm.InvoiceId=r1.InvId

		set @RetValue= @@ROWCOUNT
	end
	else
	begin
		set @RetValue=-2
	end

	select isnull(@RetValue, 0) as RetResult

end
GO
/****** Object:  StoredProcedure [CFA].[usp_ImportProductData]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_ImportProductData]
@BranchId INT,
@CompId INT,
@ProdMst CFA.ImportProductMstNew READONLY,
@Addedby NVARCHAR(50)

AS

BEGIN
SET FMTONLY OFF

	declare @newId int=0,  @RetResult NVARCHAR(2000) ='';
	truncate table CFA.tblProductBatchImport
	INSERT INTO CFA.tblProductBatchImport(Division, BatchNo, ProductName, Code, EXP_Date, BranchId, CompId,Addedby, AddedOn)
	SELECT Division, BatchNo, ProductName, Code, ExpiryDate, @BranchId, @CompId, @Addedby,getdate() FROM @ProdMst

	--- Duplicate Batchno msg check...
	declare @impCnt varchar(20), @DupliNos varchar(2000) 

	Set @DupliNos=(select  isnull((STUFF((select ',' + convert(nvarchar(50),i2.BatchNo) 
	FROM CFA.tblProductBatchImport i2 inner join CFA.tblProductBatchHeader inv2 on i2.BatchNo=inv2.BatchNo  
	FOR XML PATH('')),1,1,'')),'') )

	SELECT  @impCnt=count(distinct i.BatchNo) 
	FROM CFA.tblProductBatchImport i left outer join CFA.tblProductBatchHeader inv on i.BatchNo=inv.BatchNo
	where inv.BatchNo is null 
	group by i.BranchId, i.CompId
	---------------------------------

	insert into CFA.tblProductBatchHeader(BranchId, CompId, Division, BatchNo, ProductName, Code, EXP_Date,Addedby, AddedOn)
	SELECT @BranchId, @CompId, i.Division, i.BatchNo, i.ProductName,i.Code,i.EXP_Date,@Addedby,getdate()
	FROM CFA.tblProductBatchImport i left outer join CFA.tblProductBatchHeader inv on i.BatchNo=inv.BatchNo
	where inv.BatchNo is null 
		
	set @newId=SCOPE_IDENTITY()

	SET @RetResult = 'No. of Products Imported ' + convert(nvarchar(10),isnull(@impCnt,0))

	if (ltrim(rtrim(isnull(@DupliNos,'')))<>'')
	Begin
		SET @RetResult = @RetResult + ', Duplicate Products Numbers (' + isnull(@DupliNos,'') + ')'
	end

	if (@@ERROR<>0) SET @RetResult='-1'

	SELECT @RetResult as RetResult 
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ImportSRSData]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_ImportSRSData]
--declare
@BranchId INT,
@CompId INT,
@ImportSRSData CFA.ImportSRSData READONLY,
@Addedby NVARCHAR(50)

AS
BEGIN
SET FMTONLY OFF

	declare @newId int=0,  @RetResult NVARCHAR(2000) ='';
	truncate table CFA.tblSRSDataImport
	INSERT INTO CFA.tblSRSDataImport(SalesDocNo,PONoLRNo,PONo,Soldtoparty,Name1,Netvalue,Division,SalesOrganization,Plant,BranchId,CompId,AddedBy,AddedOn)
	
	SELECT SalesDocNo,PONoLRNo,PONo,Soldtoparty,Name1,Netvalue,Division,SalesOrganization,Plant,@BranchId,@CompId,@Addedby,getdate() 
	FROM @ImportSRSData

	declare @StkNotInMst varchar(2000)=''
	if exists(select Soldtoparty from CFA.tblSRSDataImport where CompId=@CompId and Soldtoparty not in (select StockistNo from CFA.tblStockistMaster where CompId=@CompId))
	Begin
		set @StkNotInMst=( select ISNULL((STUFF((select ', ' + convert(nvarchar(50),s2.Soldtoparty) from CFA.tblSRSDataImport s2 
		where s2.CompId=@CompId and s2.Soldtoparty not in (select StockistNo from CFA.tblStockistMaster where CompId=@CompId)
		FOR XML PATH('')),1,1,'')),''))
		set @RetResult='Stockiests Not Exist: '+ @StkNotInMst
	End
	Else
	Begin
		update CFA.tblSRSHeader
		set SalesDocNo=s.SalesDocNo,
			PONoLRNo=s.PONoLRNo,
			PONo=s.PONo,
			LREntryId=s.LREntryId,		
			SoldtoPartyId=s.StockistId,
			Netvalue=s.Netvalue,	
			SalesOrganization=s.SalesOrganization,
			Plant=s.Plant,
			LastUpdatedDate=getdate()
		from CFA.tblSRSHeader srs inner join 
		(
			SELECT distinct s.SalesDocNo,s.PONoLRNo,PONo,ig.LREntryId,st.StockistId,
			s.Netvalue,s.SalesOrganization,s.Plant
			FROM CFA.tblSRSDataImport AS s LEFT OUTER JOIN CFA.tblStockistMaster AS st ON s.Soldtoparty = st.StockistNo  
			LEFT OUTER JOIN CFA.tblInwardGatepass AS ig ON s.PONoLRNo = ig.LRNo
			GROUP BY s.SalesDocNo,s.PONoLRNo,PONo,ig.LREntryId,st.StockistId,
			s.Netvalue,s.SalesOrganization,s.Plant
		) s on srs.SalesDocNo=s.SalesDocNo 
		where srs.BranchId=@BranchId and srs.CompId=@CompId and srs.SalesDocNo=s.SalesDocNo

		insert into CFA.tblSRSHeader(BranchId, CompId, SalesDocNo, PONoLRNo,LREntryId,
			SoldtoPartyId,Netvalue,SalesOrganization,Plant,AddedBy, AddedOn, LastUpdatedDate)

		SELECT distinct @BranchId, @CompId, s.SalesDocNo, s.PONoLRNo,ig.LREntryId,st.StockistId, max(s.Netvalue),
		 s.SalesOrganization, s.Plant, @Addedby,getdate(),getdate()
		FROM CFA.tblSRSDataImport s left outer join CFA.tblStockistMaster st on s.Soldtoparty=st.StockistNo
			left outer join CFA.tblInwardGatepass ig on s.PONoLRNo=ig.LRNo
			left outer join CFA.tblSRSHeader srs on s.SalesDocNo=srs.SalesDocNo
		where srs.SalesDocNo is null
		GROUP BY s.SalesDocNo,s.PONoLRNo,ig.LREntryId,st.StockistId,s.Netvalue,s.SalesOrganization,s.Plant

		set @newId=SCOPE_IDENTITY()

		update CFA.tblInwardGatepass set RecvdAtOP=1, RecvdAtOPBy=@Addedby, RecvdAtOPDate=getdate()
		where LREntryId in 
		(select ig.LREntryId FROM CFA.tblSRSDataImport s left outer join CFA.tblStockistMaster st on s.Soldtoparty=st.StockistNo
			left outer join CFA.tblInwardGatepass ig on s.PONoLRNo=ig.LRNo left outer join CFA.tblSRSHeader srs on s.SalesDocNo=srs.SalesDocNo
			where srs.SalesDocNo is null
		)

		declare @impCnt varchar(20) 

	SELECT  @impCnt=count(distinct SalesDocNo) FROM CFA.tblSRSDataImport 
	where BranchId=@BranchId and CompId=@CompId and cast(AddedOn as date)=cast(getdate() as date)

		SET @RetResult='SRS Uploaded SuccessFully.';
	
		SET @RetResult='No of SRS Imported '+convert(nvarchar(10),isnull(@impCnt,0))

	End
	if (@@ERROR<>0) SET @RetResult='-1'

	SELECT @RetResult as RetResult 

END
GO
/****** Object:  StoredProcedure [CFA].[usp_ImportStockistOSData]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_ImportStockistOSData]
--declare
@BranchId INT,
@CompId INT,
@OSDate datetime,
@OSData CFA.ImportOSData READONLY,
@Addedby NVARCHAR(50),
@RetVal NVARCHAR(10) OUTPUT
--set @BranchId=0; set @CompId=1;set @addedBY=1

--insert into @OSData(pkId,Div_Cd,CustomerCode,CustomerName,City,DocName,DocDate,DueDate,OpenAmt,ChqNo,DistrChannel,DocTypeDesc,DocType,OverdueAmt) 
--	values('1','29','10032243','NACHIKET ADATIYA','KOLHAPUR	','11/19/2020','11/30/2020','-354','Customer Invoice','DR','-354')

AS
BEGIN

	DECLARE @RetResult NVARCHAR(2000) ='';

	SET @RetVal=0;
	--remove old data from 
	truncate table CFA.tblStockistOSDataImport

	INSERT INTO CFA.tblStockistOSDataImport(Div_Cd,CustomerCode,CustomerName,City,DocName,DocDate,DueDate,OpenAmt,
	ChqNo,DistrChannel,DocTypeDesc,DocType,OverdueAmt,BranchId,CompId,AddedBy,AddedOn)
	SELECT Div_Cd,CustomerCode,CustomerName,City,DocName,DocDate,DueDate,OpenAmt,ChqNo,DistrChannel,DocTypeDesc,DocType,OverdueAmt,
	@BranchId,@CompId,@Addedby,getdate() FROM @OSData

	-- Delete old imported data for same date
	if exists(select StockistId from CFA.tblStkOutStanding where cast(OSDate as date)=cast(@OSDate as date))
		delete from CFA.tblStkOutStanding where cast(OSDate as date)=cast(@OSDate as date)

	-- Insert new data
	insert into CFA.tblStkOutStanding(OSDate,BranchId,CompId,StockistId,StockistCode,CityCode,DocName,DocDate,DueDate,
	OpenAmt,ChqNo,DocType,OverdueAmt,AddedBy,AddedOn,PaymentStatus)
	SELECT getdate(), @BranchId, @CompId, st.StockistId, st.StockistNo, st.CityCode, i.DocName, i.DocDate, i.DueDate, 
	i.OpenAmt, i.ChqNo, i.DocType, i.OverdueAmt, @Addedby, GETDATE(), 0
	FROM CFA.tblStockistOSDataImport AS i LEFT OUTER JOIN CFA.tblStockistMaster AS st ON i.CustomerCode = st.StockistNo
	--where cast(i.DueDate as date)>=cast(getdate() as date)
	
	SET @RetVal=@@ROWCOUNT;

	SET @RetResult='No. of Stockist OutStanding Imported ' + convert(nvarchar(10),@RetVal)

	SELECT @RetResult as RetResult 

END
GO
/****** Object:  StoredProcedure [CFA].[usp_ImportTransitData]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_ImportTransitData]  
--DECLARE  
@BranchId INT,  
@CompId INT,  
@ImpTrDt CFA.ImportTransitData READONLY,  
@Addedby NVARCHAR(50)  
AS  
BEGIN  
 SET FMTONLY OFF  
 DECLARE @newId INT=0, @RetResult NVARCHAR(2000)='';  
 TRUNCATE TABLE CFA.tblTransitDataImport  
  
 INSERT INTO CFA.tblTransitDataImport(BranchId,CompId,DeliveryNo,ActualGIDate,RecPlant,RecPlantDesc,DispPlant,   
 DispPlantDesc,InvoiceNo,InvoiceDate,MaterialNo,MatDesc,UOM,BatchNo,Quantity,TransporterCode,TransporterName, LrNo,LrDate,TotalCaseQty,VehicleNo,AddedBy,AddedOn)  
   
 SELECT @BranchId,@CompId,DeliveryNo,ActualGIDate,RecPlant,RecPlantDesc,DispPlant,DispPlantDesc,InvoiceNo,InvoiceDate,MaterialNo,MatDesc,  
 UoM,BatchNo,Quantity,TransporterCode,TransporterName,LrNo,LrDate,TotalCaseQty,VehicleNo,@Addedby,GETDATE() FROM @ImpTrDt  
  
 ---- Add Transporter if exists  
 IF EXISTS(SELECT TransporterCode FROM CFA.tblTransitDataImport WHERE TransporterCode NOT IN (SELECT TransporterNo FROM CFA.tblTransporterMaster))  
 BEGIN  
  INSERT INTO CFA.tblTransporterMaster (BranchId,TransporterNo,TransporterName,IsActive,Addedby,AddedOn)   
  SELECT DISTINCT @BranchId, TransporterCode,TransporterName,'Y',@Addedby,GETDATE() FROM CFA.tblTransitDataImport    
  WHERE TransporterCode NOT IN (SELECT TransporterNo FROM CFA.tblTransporterMaster)  
 END  
  
 --- Duplicate invoice and LR msg check ------------------------------------------------------------------------------------------------------------------------------  
 DECLARE @impCnt VARCHAR(20)='', @DupliNosInv VARCHAR(2000)=''--, @DupliNosLR VARCHAR(2000)=''  
 SET @DupliNosInv=(SELECT ISNULL((STUFF((SELECT ',' + CONVERT(NVARCHAR(50),i2.InvoiceNo)   
 FROM CFA.tblTransitDataImport i2 INNER JOIN CFA.tblTransitInvoiceHeader inv2 ON i2.InvoiceNo=inv2.InvNo  
 FOR XML PATH('')),1,1,'')),''))  
  
 --SET @DupliNosLR=(SELECT ISNULL((STUFF((SELECT ',' + CONVERT(NVARCHAR(50),i2.LrNo)  
 --FROM CFA.tblTransitDataImport i2 INNER JOIN CFA.tblTransitInvoiceHeader inv2 ON i2.LrNo=inv2.LrNo  
 --FOR XML PATH('')),1,1,'')),''))  
  
 SELECT @impCnt=COUNT(DISTINCT i.InvoiceNo)  
 FROM CFA.tblTransitDataImport i LEFT OUTER JOIN CFA.tblTransitInvoiceHeader inv ON i.InvoiceNo=inv.InvNo  
 WHERE inv.InvNo IS NULL   
 GROUP BY i.BranchId,i.CompId  
 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------  
 DECLARE @TransNotInMst VARCHAR(2000)=''  
 IF EXISTS(SELECT TransporterCode FROM CFA.tblTransitDataImport WHERE TransporterCode NOT IN (SELECT TransporterNo FROM CFA.tblTransporterMaster))  
 BEGIN  
  SET @TransNotInMst=(SELECT ISNULL((STUFF((SELECT ', ' + CONVERT(NVARCHAR(50),t2.TransporterCode)  
  FROM CFA.tblTransitDataImport t2 WHERE TransporterCode NOT IN (SELECT TransporterNo FROM CFA.tblTransporterMaster)  
  FOR XML PATH('')),1,1,'')),''))  
  SET @RetResult='Transporter Not Available: ' + @TransNotInMst  
 END  
 ELSE  
 BEGIN  
  INSERT INTO CFA.tblTransitInvoiceHeader(BranchId,CompId,DeliveryNo,ActualGIDate,RecPlant,RecPlantDesc,DispPlant,DispPlantDesc,InvNo,InvoiceDate,MaterialNo,  
  MatDesc,UOM,BatchNo,Quantity,TransporterId,LrNo,LrDate,TotalCaseQty,VehicleNo,Addedby,AddedOn,LastUpdatedOn)  
  
  SELECT @BranchId,@CompId,i.DeliveryNo,i.ActualGIDate,i.RecPlant,i.RecPlantDesc,i.DispPlant,i.DispPlantDesc,i.InvoiceNo,i.InvoiceDate,i.MaterialNo,i.MatDesc,i.UOM,  
  COUNT(i.BatchNo) NoOfItem,i.Quantity,tm.TransporterId,i.LrNo,i.LrDate,i.TotalCaseQty,i.VehicleNo,@Addedby,GETDATE(),GETDATE()  
  FROM CFA.tblTransitDataImport i LEFT OUTER JOIN CFA.tblTransporterMaster tm ON i.TransporterCode=tm.TransporterNo  
  LEFT OUTER JOIN CFA.tblTransitInvoiceHeader inv ON i.InvoiceNo=inv.InvNo  
  WHERE inv.InvNo IS NULL  
  GROUP BY i.BranchId,i.CompId,i.DeliveryNo,i.ActualGIDate,i.RecPlant,i.RecPlantDesc,i.DispPlant,i.DispPlantDesc,i.InvoiceNo,  
     i.InvoiceDate,i.MaterialNo,i.MatDesc,i.UoM,i.BatchNo,i.Quantity,tm.TransporterId,i.LrNo,i.LrDate,i.TotalCaseQty,i.VehicleNo,i.AddedBy  
  ORDER BY i.InvoiceNo  
    
  SET @newId=SCOPE_IDENTITY()  
  
  SET @RetResult= 'Transit Report Data Uploaded SuccessFully.';  
  
  SET @RetResult= 'No. of Invoices Imported: ' + CONVERT(NVARCHAR(10),ISNULL(@impCnt,0))  
  
  IF (LTRIM(RTRIM(ISNULL(@DupliNosInv,'')))<>'')  
  BEGIN  
   SET @RetResult= @RetResult + ', Duplicate Invoice Numbers (' + ISNULL(@DupliNosInv,'') + ')'  
  END  
  --IF (LTRIM(RTRIM(ISNULL(@DupliNosLR,'')))<>'')  
  --BEGIN  
  -- SET @RetResult= @RetResult + ',  Duplicate LR Numbers with Same Transit (' + ISNULL(@DupliNosLR,'') + ')'  
  --END  
 END  
 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------  
 IF (@@ERROR<>0) SET @RetResult='-1'  
  
 SELECT @RetResult AS RetResult  
  
END  
GO
/****** Object:  StoredProcedure [CFA].[usp_InsuranceClaimAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_InsuranceClaimAddEdit]
--DECLARE
@ClaimId BigInt,
@BranchId INT,
@CompId INT,
@InvoiceId NVARCHAR(20),
@ClaimNo NVARCHAR(20),
@ClaimDate DATETIME,
@ClaimAmount NVARCHAR(20),
@ClaimType NVARCHAR(20),
@DebitNote NVARCHAR(200),
@DebitDate DATETIME,
@DebitAmount NVARCHAR(20),
@Remark NVARCHAR(200),
@AddedBy INT,
@Action  NVARCHAR(10),
@RetValue INT OUTPUT
--SET @ClaimId=1; SET @BranchId=1; SET @CompId=1; SET @InvoiceId='12'; SET @ClaimNo='11011'; SET @ClaimDate='7/26/2022 12:00:00 AM'; SET @ClaimAmount='11011';
--SET @DebitNote='11011'; SET @DebitDate='7/31/2022 12:00:00 AM'; SET @DebitAmount='11011'; SET @ClaimType='1'; SET @AddedBy=2; 
--SET @Action='EDIT'; SET @RetValue=0;
AS
BEGIN
	
	SET @RetValue=0
	IF (UPPER(LTRIM(RTRIM(@Action)))='ADD')
	BEGIN
		IF NOT EXISTS(SELECT InvoiceId FROM CFA.tblInsuranceClaim WHERE InvoiceId=@InvoiceId)
		BEGIN
			INSERT INTO CFA.tblInsuranceClaim(BranchId,CompId,InvoiceId,ClaimNo,ClaimDate,ClaimAmount,ClaimType,DebitNote,DebitDate,DebitAmount,ClaimStatus,Remark,AddedBy,AddedOn,LastUpdatedDate)
			VALUES(@BranchId,@CompId,@InvoiceId,@ClaimNo,@ClaimDate,@ClaimAmount,@ClaimType,@DebitNote,@DebitDate,@DebitAmount,'Started',@Remark,@AddedBy,GETDATE(),GETDATE())
			SET @RetValue=SCOPE_IDENTITY()
		END
		ELSE 
		BEGIN
			set @RetValue=-1
		END
	END
	ELSE IF (UPPER(LTRIM(RTRIM(@Action)))='EDIT')
	BEGIN
		UPDATE CFA.tblInsuranceClaim
		SET InvoiceId=@InvoiceId, -- discussion
			ClaimNo=@ClaimNo,
			ClaimDate=@ClaimDate,
			ClaimAmount=@ClaimAmount,
			ClaimType=@ClaimType,
			DebitNote=@DebitNote,
			DebitDate=@DebitDate,
			DebitAmount=@DebitAmount,
			Remark=@Remark,
			AddedBy=@AddedBy,
			LastUpdatedDate=GETDATE()
		WHERE BranchId=@BranchId AND CompId=@CompId and ClaimId=@ClaimId
		set @RetValue=@ClaimId
	END
	ELSE IF (UPPER(LTRIM(RTRIM(@Action)))='STATUS')
	BEGIN
		DELETE FROM CFA.tblInsuranceClaim WHERE ClaimId=@ClaimId
		set @RetValue=@ClaimId
	END

	return isnull(@RetValue, 0) 
END


GO
/****** Object:  StoredProcedure [CFA].[usp_InvInLRDetailsAddEditForMob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_InvInLRDetailsAddEditForMob]
--DECLARE
@BranchId INT,
@CompId INT,
@InvId BIGINT,
@InvoiceDate DATETIME,
@LRNo NVARCHAR(20),
@LRDate DATETIME,
@NoOfCase NVARCHAR(50),
@ActualNoOfCase NVARCHAR(50),
@Remarks NVARCHAR(200),
@Action NVARCHAR(10),
@AddedBy NVARCHAR(20),
@RetValue INT OUTPUT
--SET @BranchId=1;SET @CompId=1;SET @InvId=1;SET @InvoiceDate='2022-02-25';SET @LRNo=1;
--SET @LRDate='2022-07-29';SET @NoOfCase='10';SET @ActualNoOfCase='20';SET @Remarks='LR Created';SET @Action='ADD';SET @AddedBy='7';
AS
BEGIN
	SET @RetValue=0
	IF (UPPER(LTRIM(RTRIM(@Action)))='ADD')
	BEGIN
		IF NOT EXISTS(SELECT InvId FROM CFA.tblInvInLRDetailsForMobile WHERE InvId=@InvId)
		BEGIN
			INSERT INTO CFA.tblInvInLRDetailsForMobile(BranchId,CompId,InvId,InvoiceDate,LRNo,LRDate,NoOfCase,ActualNoOfCase,Remarks,AddedBy,AddedOn,LastUpdatedOn)
			SELECT @BranchId,@CompId,@InvId,@InvoiceDate,@LRNo,@LRDate,@NoOfCase,@ActualNoOfCase,@Remarks,@AddedBy,GETDATE(),GETDATE()
			SET @RetValue=SCOPE_IDENTITY();
		END
		ELSE
		BEGIN
			SET @RetValue=-1;  ---- Already Exists InvId
		END
	END
	ELSE IF (UPPER(LTRIM(RTRIM(@Action)))='EDIT')
	BEGIN
		UPDATE CFA.tblInvInLRDetailsForMobile
		SET BranchId=@BranchId,
			CompId=@CompId,
			InvId=@InvId,
			InvoiceDate=@InvoiceDate,
			LRNo=@LRNo,
			LRDate=@LRDate,
			NoOfCase=@NoOfCase,
			ActualNoOfCase=@ActualNoOfCase,
			Remarks=@Remarks,
			AddedBy=@AddedBy,
			LastUpdatedOn=GETDATE()
		WHERE BranchId=@BranchId AND CompId=@CompId AND InvId=@InvId
		SET @RetValue=@InvId
	END
	ELSE IF (UPPER(LTRIM(RTRIM(@Action)))='DELETE')
	BEGIN
		DELETE FROM CFA.tblInvInLRDetailsForMobile WHERE InvId=@InvId
		SET @RetValue=@InvId
	END

  RETURN @RetValue

END
GO
/****** Object:  StoredProcedure [CFA].[usp_InvInVehicleChecklistAddEditForMob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_InvInVehicleChecklistAddEditForMob]
--DECLARE
@BranchId INT,
@CompId INT,
@ChecklistTypeId BIGINT,
@ChecklistType NVARCHAR(50),
@InvId BIGINT,
@InvoiceDate DATETIME,
@TransporterId INT,
@VehicleNo NVARCHAR(50),
@IsColdStorage NVARCHAR(1),
@Remarks NVARCHAR(200),
@SealNumber NVARCHAR(200),
@Comments NVARCHAR(50),
@Action NVARCHAR(10),
@AddedBy NVARCHAR(10),
@RetValue INT OUTPUT
--SET @BranchId=1;SET @CompId=1;SET @ChecklistTypeId=1;SET @ChecklistType='Temperature';SET @InvId=1;SET @InvoiceDate='2022-02-25';SET @TransporterId=34;
--SET @VehicleNo='1234567';SET @IsColdStorage='Y';SET @Remarks='TEST';SET @SealNumber='';SET @Comments='Yes';SET @Action='ADD';SET @AddedBy='7';
AS
BEGIN
	SET @RetValue=0
	IF (UPPER(LTRIM(RTRIM(@Action)))='ADD')
	BEGIN
		IF NOT EXISTS(SELECT InvId FROM CFA.tblInvInVehicleChecklist WHERE InvId=@InvId)
		BEGIN
			INSERT INTO CFA.tblInvInVehicleChecklist(BranchId,CompId,ChecklistTypeId,ChecklistType,InvId,InvoiceDate,TransporterId,VehicleNo,IsColdStorage,Remarks,SealNumber,Comments,AddedBy,AddedOn,LastUpdatedOn)
			SELECT @BranchId,@CompId,@ChecklistTypeId,@ChecklistType,@InvId,@InvoiceDate,@TransporterId,@VehicleNo,@IsColdStorage,@Remarks,@SealNumber,@Comments,@AddedBy,GETDATE(),GETDATE()
			SET @RetValue=SCOPE_IDENTITY();
		END
		ELSE
		BEGIN
			SET @RetValue=-1;  ---- Already Exists InvId
		END
	END
	ELSE IF (UPPER(LTRIM(RTRIM(@Action)))='EDIT')
	BEGIN
		UPDATE CFA.tblInvInVehicleChecklist
		SET BranchId=@BranchId,
			CompId=@CompId,
			ChecklistTypeId=@ChecklistTypeId,
			ChecklistType=@ChecklistType,
			InvId=@InvId,
			InvoiceDate=@InvoiceDate,
			TransporterId=@TransporterId,
			VehicleNo=@VehicleNo,
			IsColdStorage=@IsColdStorage,
			Remarks=@Remarks,
			SealNumber=@SealNumber,
			Comments=@Comments,
			AddedBy=@AddedBy,
			LastUpdatedOn=GETDATE()
		WHERE BranchId=@BranchId AND CompId=@CompId AND InvId=@InvId
		SET @RetValue=@InvId
	END
	ELSE IF (UPPER(LTRIM(RTRIM(@Action)))='DELETE')
	BEGIN
		DELETE FROM CFA.tblInvInVehicleChecklist WHERE InvId=@InvId
		SET @RetValue=@InvId
	END

  RETURN @RetValue

END
GO
/****** Object:  StoredProcedure [CFA].[usp_InvInVehicleChecklistMstAdd]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_InvInVehicleChecklistMstAdd]
--declare
@BranchId int,
@CompId int,
@LREntryId int,
@Img1 NVARCHAR(500),
@Img2 NVARCHAR(500),
@Img3 NVARCHAR(500),
@Img4 NVARCHAR(500),
@AddedBy NVARCHAR(10),
@TransitId bigint,
@tblData CFA.VehChkListData readonly
AS
BEGIN
	
	declare @NewChkListId bigint=0, @RetValue int
	
	IF NOT EXISTS(SELECT LREntryId FROM CFA.tblInvInVehicleChecklistMst WHERE LREntryId=@LREntryId and TransitId=@TransitId) 
	BEGIN
		INSERT INTO CFA.tblInvInVehicleChecklistMst(BranchId,CompId,LREntryId,Img1,Img2,Img3,Img4,AddedBy,AddedOn,LastUpdatedOn ,TransitId)
		SELECT @BranchId,@CompId,@LREntryId,@Img1,@Img2,@Img3,@Img4,@AddedBy,GETDATE(),GETDATE(),@TransitId
		SET @NewChkListId=SCOPE_IDENTITY();

		if (@NewChkListId>0)
		Begin
			if exists(select 1 from CFA.tblInvInVehicleChecklistDtls where ChkListMstId=@NewChkListId)
			Begin 
				Delete from CFA.tblInvInVehicleChecklistDtls where ChkListMstId=@NewChkListId
			End
			Else
			Begin
				insert into CFA.tblInvInVehicleChecklistDtls(ChkListMstId, CLQueId, CLQueText, FieldType, SortId, 
				AnsText, ExpAnsText, AddedBy, AddedOn, LastUpdatedOn)	
				select @NewChkListId, dt.CLQueId, cl.QuestionName, cl.ControlType, cl.SeqNo, dt.AnsText, 
				cl.ExpAnsText, @AddedBy, getdate(), getdate() from @tblData dt inner join CFA.tblInvInVehicleChecklistMaster cl on dt.CLQueId=cl.ChecklistTypeId
				Update CFA.tblMapInwardVehicle set IsChecklistDone=1 where pkId=@LREntryId

				set @RetValue=@LREntryId;
				if (@RetValue<=0) 
					set @RetValue= -2
			End
		End
		else
		begin
			set @RetValue= -2
		end
	END
	ELSE
	BEGIN
		SET @RetValue=-1;  ---- Already Exists InvId
	END

	SELECT @RetValue AS RetValue

END
GO
/****** Object:  StoredProcedure [CFA].[usp_InvInwardPageCounts]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CFA.usp_InvInwardPageCounts 1,1
CREATE PROC [CFA].[usp_InvInwardPageCounts]
--DECLARE
@BranchId INT,
@CompId INT
--SET @BranchId=1; SET @CompId=1;
AS
BEGIN
		DECLARE @TodayLR INT,@TodayVehicleMapped INT,@TodayChklistDone INT,@TodayConcernRaised INT,
				@TotalClaimRaised INT,@TotalSANRaised INT,@TodayMapConcernRaised INT,@TodayMapConcernResolved INT,
				@TotalClaimApproved INT,@TotalSANApproved INT,@PendingClaim INT,@PendingSAN INT,@TotalClaimSAN INT,@PendingClaimSANApproved INT,@TotalTodaysMapCnrnRaise INT

		-- Import Transit Data Counts
		SET @TodayLR = (SELECT COUNT(LrNo) FROM CFA.tblTransitInvoiceHeader WHERE BranchId=@BranchId AND CompId=@CompId AND CAST(AddedOn AS DATE)=CAST(GETDATE() AS DATE)) --
		
		SET @TodayVehicleMapped = (SELECT COUNT(LrNo) FROM CFA.tblTransitInvoiceHeader WHERE BranchId=@BranchId AND CompId=@CompId AND IsMapDone=1 AND CAST(LrDate AS DATE)=CAST(GETDATE() AS DATE))
		SET @TodayChklistDone = (SELECT COUNT(LrNo) FROM CFA.tblMapInwardVehicle WHERE BranchId=@BranchId AND CompId=@CompId AND IsChecklistDone=1 AND CAST(LrDate AS DATE)=CAST(GETDATE() AS DATE))

		SET @TodayConcernRaised = (SELECT COUNT(RaieseReqId) FROM CFA.tblTransitDataRaiseConcern WHERE BranchId=@BranchId AND CompId=@CompId)

		-- Resove Vehicle Issue
		SET @TotalClaimRaised = (SELECT COUNT(LrNo) FROM CFA.tblMapInwardVehicle WHERE BranchId=@BranchId AND CompId=@CompId AND IsClaim=1)
		SET @TotalSANRaised = (SELECT COUNT(LrNo) FROM CFA.tblMapInwardVehicle WHERE BranchId=@BranchId AND CompId=@CompId AND IsSAN=1)
		SET @TodayMapConcernRaised = (SELECT COUNT(LrNo) FROM CFA.tblMapInwardVehicle WHERE BranchId=@BranchId AND CompId=@CompId AND IsConcern=1)
		SET @TodayMapConcernResolved = (SELECT COUNT(LrNo) FROM CFA.tblMapInwardVehicle WHERE BranchId=@BranchId AND CompId=@CompId AND ResolvedBy IS NOT NULL)
		SET @TotalTodaysMapCnrnRaise = (SELECT COUNT(*) FROM CFA.tblMapInwardVehicle WHERE BranchId=@BranchId AND CompId=@CompId AND IsConcern=1 or ResolvedBy IS NOT NULL)

		-- Approval Claim List
		SET @TotalClaimApproved = (SELECT COUNT(LrNo) FROM CFA.tblInsuranceClaim WHERE BranchId=@BranchId AND CompId=@CompId AND ClaimApproveBy IS NOT NULL)
		SET @TotalSANApproved = (SELECT COUNT(LrNo) FROM CFA.tblInsuranceClaim WHERE BranchId=@BranchId AND CompId=@CompId AND SANApproveBy IS NOT NULL)
		SET @PendingClaim = (SELECT COUNT(LrNo) FROM CFA.tblInsuranceClaim WHERE BranchId=@BranchId AND CompId=@CompId AND ISNULL(ClaimNo,'')<>'' AND ClaimApproveBy IS NULL )
		SET @PendingSAN = (SELECT COUNT(LrNo) FROM CFA.tblInsuranceClaim WHERE BranchId=@BranchId AND CompId=@CompId AND ISNULL(SANNo,'')<>'' AND SANApproveBy IS NULL)

		 -- Insurance Claim List
		SET @TotalClaimSAN = (SELECT COUNT(*) FROM CFA.tblInsuranceClaim WHERE BranchId=@BranchId AND CompId=@CompId)

		-- Add Approval List
		SET @PendingClaimSANApproved = (SELECT COUNT(LrNo) FROM CFA.tblInsuranceClaim WHERE BranchId=@BranchId AND CompId=@CompId AND ClaimApproveBy IS NULL or ClaimApproveBy IS NOT NULL  AND SANApproveBy IS NULL or SANApproveBy IS NOT NULL)

		SELECT ISNULL(@TodayLR,0) AS TodayLR,ISNULL(@TodayVehicleMapped,0) AS TodayVehicleMapped,ISNULL(@TodayChklistDone,0) AS TodayChklistDone,ISNULL(@TodayConcernRaised,0) AS TodayConcernRaised,
		       ISNULL(@TotalClaimRaised,0) AS TotalClaimRaised,ISNULL(@TotalSANRaised,0) AS TotalSANRaised,ISNULL(@TodayMapConcernRaised,0) AS TodayMapConcernRaised,ISNULL(@TodayMapConcernResolved,0) AS TodayMapConcernResolved,
			   ISNULL(@TotalClaimApproved,0) AS TotalClaimApproved,ISNULL(@TotalSANApproved,0) AS TotalSANApproved,ISNULL(@PendingClaim,0) AS PendingClaim,ISNULL(@PendingSAN,0) AS PendingSAN,
			   ISNULL(@TotalClaimSAN,0) AS TotalClaimSAN, ISNULL(@PendingClaimSANApproved,0) AS PendingClaimSANApproved,ISNULL(@TotalTodaysMapCnrnRaise,0) AS TotalTodaysMapCnrnRaise

END
GO
/****** Object:  StoredProcedure [CFA].[usp_InvoiceDetailsById]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_InvoiceDetailsById]
@InvId	int

AS
BEGIN
	SELECT InvDtlsId, InvId, DivisionId, ProdCode, BatchNo, Addedby, AddedOn, LastUpdatedOn
	FROM CFA.tblInvoiceDetails
	WHERE InvId=@InvId
END
GO
/****** Object:  StoredProcedure [CFA].[usp_InvoiceHeaderList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_InvoiceHeaderList]
--DECLARE
@BranchId INT,
@CompId	INT,
@FromDate datetime,
@ToDate datetime,
@BillDrawerId int=0,
@InvStatus int = null
--SET @BranchId=1; SET @CompId=1; SET @FromDate=null; SET @ToDate=null; SET @BillDrawerId=0;
AS
BEGIN

	if(@FromDate is null and @ToDate is null)
	Begin	----open invoices
		SELECT i.InvId, i.BranchId, i.CompId, i.InvNo, i.InvCreatedDate, i.IsColdStorage, 
			case when IsStockTransfer=1 then SendToCNFId else i.SoldTo_StokistId End SoldTo_StokistId, 
			case when IsStockTransfer=1 then cnf.CNFCode else sm.StockistNo End StockistNo, 
			case when IsStockTransfer=1 then cnf.CNFName else sm.StockistName End StockistName, 
			case when IsStockTransfer=1 then cnf.CityCode else i.SoldTo_City End SoldTo_City, 
			case when IsStockTransfer=1 then c2.CityName else c.CityName End CityName,
			i.InvAmount, i.InvStatus, s.StatusText, 
			i.Addedby, i.AddedOn, i.LastUpdatedOn, sm.CityCode, i.AcceptedBy, BD.DisplayName AS BillDrawerName, i.AcceptedDate, 
			i.BillDrawnDate, i.PackedBy, Pckr.EmpName AS PackedByName, i.PackedDate, i.NoOfBox, i.InvWeight, i.IsCourier, i.PackingConcernDate, 
			i.PackingConcernId, pkcrn.MasterName AS PackingConcernText, i.PackingRemark, i.ReadyToDispatchBy, i.ReadyToDispatchDate,
			i.ReadyToDispatchConcernId, i.ReadyToDispatchRemark, i.CancelBy, i.CancelDate,
			(select count(InvId) from CFA.tblInvoiceHeader where InvStatus in (1,2) and SoldTo_StokistId=i.SoldTo_StokistId) as TotalInv,i.OnPriority
			,ISNULL(i.IsStockTransfer,'') AS IsStockTransfer,
			--(CASE WHEN i.OnPriority = 1 then 'Y' Else 'N' End) as Flag
			(select top 1 Flag from CFA.tblPrinterPDFData where InvId in(
			select case when isnull(a.AttachedInvId,0)>0 then a.AttachedInvId else a.InvoiceId end as InvoiceId 
			from CFA.tblAssignTransportMode a where InvoiceId=i.InvId) order by pkId desc) PrintStatus
		FROM CFA.tblCityMaster AS c RIGHT OUTER JOIN CFA.tblInvoiceHeader AS i LEFT OUTER JOIN
			CFA.tblGeneralMaster AS pkcrn ON i.PackingConcernId = pkcrn.pkId LEFT OUTER JOIN
			CFA.tblEmployeeMaster AS Pckr ON i.PackedBy = Pckr.EmpId LEFT OUTER JOIN
			CFA.tblUser AS BD ON i.AcceptedBy = BD.UserId LEFT OUTER JOIN
			CFA.tblStockistMaster AS sm ON sm.StockistId = i.SoldTo_StokistId LEFT OUTER JOIN
			CFA.tblStatusMaster AS s ON s.id = i.InvStatus AND s.StatusFor = 'INV' ON c.CityCode = sm.CityCode
			left outer join CFA.tblOtherCNFMaster cnf on i.SendToCNFId=cnf.CNFId
			left outer join CFA.tblCityMaster c2 on cnf.CityCode=c2.CityCode
		WHERE (i.BranchId=@BranchId OR @BranchId=0) AND i.CompId=@CompId  and (i.AcceptedBy=@BillDrawerId or @BillDrawerId=0) and (InvStatus=@InvStatus or @InvStatus is NULL)
			and (i.InvStatus not in (8,9,20) or cast(i.InvCreatedDate as date) =cast(getdate() as date))-- Old not Dispatched
		ORDER BY i.InvStatus, i.OnPriority desc, convert(bigint,i.InvNo)
	End
	else
	Begin		-- History
		SELECT        i.InvId, i.BranchId, i.CompId, i.InvNo, i.InvCreatedDate, i.IsColdStorage, 
		case when IsStockTransfer=1 then SendToCNFId else i.SoldTo_StokistId End SoldTo_StokistId, 
			case when IsStockTransfer=1 then cnf.CNFCode else sm.StockistNo End StockistNo, 
			case when IsStockTransfer=1 then cnf.CNFName else sm.StockistName End StockistName, 
			case when IsStockTransfer=1 then cnf.CityCode else i.SoldTo_City End SoldTo_City, 
			case when IsStockTransfer=1 then c2.CityName else c.CityName End CityName,
			i.InvAmount, i.InvStatus, s.StatusText, 
			i.Addedby, i.AddedOn, i.LastUpdatedOn, sm.CityCode, i.AcceptedBy, BD.DisplayName AS BillDrawerName, i.AcceptedDate, 
			i.BillDrawnDate, i.PackedBy, Pckr.EmpName AS PackedByName, i.PackedDate, i.NoOfBox, i.InvWeight, i.IsCourier, i.PackingConcernDate, 
			i.PackingConcernId, pkcrn.MasterName AS PackingConcernText, i.PackingRemark, i.ReadyToDispatchBy, i.ReadyToDispatchDate, 
			i.ReadyToDispatchConcernId, i.ReadyToDispatchRemark, i.CancelBy, i.CancelDate,
			(select count(InvId) from CFA.tblInvoiceHeader where InvStatus in (1,2) and SoldTo_StokistId=i.SoldTo_StokistId) as TotalInv,
			i.OnPriority,ISNULL(i.IsStockTransfer,'') AS IsStockTransfer,
			--(CASE WHEN i.OnPriority = 1 then 'Y' Else 'N' End) as Flag
			(select top 1 Flag from CFA.tblPrinterPDFData where InvId in(
			select case when isnull(a.AttachedInvId,0)>0 then a.AttachedInvId else a.InvoiceId end as InvoiceId 
			from CFA.tblAssignTransportMode a where InvoiceId=i.InvId) order by pkId desc) PrintStatus
		FROM CFA.tblCityMaster AS c RIGHT OUTER JOIN CFA.tblInvoiceHeader AS i LEFT OUTER JOIN
			CFA.tblGeneralMaster AS pkcrn ON i.PackingConcernId = pkcrn.pkId LEFT OUTER JOIN
			CFA.tblEmployeeMaster AS Pckr ON i.PackedBy = Pckr.EmpId LEFT OUTER JOIN
			CFA.tblUser AS BD ON i.AcceptedBy = BD.UserId LEFT OUTER JOIN
			CFA.tblStockistMaster AS sm ON sm.StockistId = i.SoldTo_StokistId LEFT OUTER JOIN
			CFA.tblStatusMaster AS s ON s.id = i.InvStatus AND s.StatusFor = 'INV' ON c.CityCode = sm.CityCode
			left outer join CFA.tblOtherCNFMaster cnf on i.SendToCNFId=cnf.CNFId
			left outer join CFA.tblCityMaster c2 on cnf.CityCode=c2.CityCode	
		WHERE (i.BranchId=@BranchId OR @BranchId=0) AND i.CompId=@CompId and (i.AcceptedBy=@BillDrawerId or @BillDrawerId=0)
			and cast(i.InvCreatedDate as date)>=cast(@FromDate as date) and cast(i.InvCreatedDate as date)<=cast(@ToDate as date)
		ORDER BY Invid DESC
	End
END
GO
/****** Object:  StoredProcedure [CFA].[usp_InvoiceHeaderListForAssignTransMode]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_InvoiceHeaderListForAssignTransMode] 
--DECLARE
@BranchId INT,
@CompId	INT

--SET @BranchId=0; SET @CompId=1;
AS
BEGIN
	----Ready To Dispatch invoices for Assign Transport mode

	SELECT i.InvId, i.BranchId, i.CompId, i.InvNo, i.InvCreatedDate, i.IsColdStorage, i.SoldTo_StokistId, sm.StockistNo, 
		sm.StockistName, i.SoldTo_City, CFA.fn_CamelCase( c.CityName) CityName, i.InvAmount, i.InvStatus, s.StatusText, i.Addedby, i.AddedOn, 
		i.LastUpdatedOn, sm.CityCode,isnull(i.IsCourier,0) IsCourier,i.OnPriority
	FROM CFA.tblInvoiceHeader AS i LEFT OUTER JOIN CFA.tblStockistMaster AS sm ON sm.StockistId = i.SoldTo_StokistId
		left outer join CFA.tblStatusMaster AS s ON s.id = i.InvStatus AND s.StatusFor = 'INV'
		left outer join CFA.tblCityMaster AS c ON c.CityCode = sm.CityCode
		left outer join CFA.tblAssignTransportMode tm on i.InvId=tm.InvoiceId
	WHERE (i.BranchId=@BranchId OR @BranchId=0) AND i.CompId=@CompId 
	and (i.InvStatus in (5) )   -- or cast(i.InvCreatedDate as date) =cast(getdate() as date))-- ReadyToDispatch
	and tm.InvoiceId is null
	ORDER BY Invid DESC
	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_InvoiceHeaderListforMob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROC [CFA].[usp_InvoiceHeaderListforMob]
--DECLARE
@BranchId INT,
@CompId	INT,
@FromDate datetime,
@ToDate datetime,
@BillDrawerId int=0,
@InvStatus int = null
--SET @BranchId=1; SET @CompId=1; SET @FromDate=null; SET @ToDate=null; SET @BillDrawerId=0;
AS
BEGIN

	if(@FromDate is null and @ToDate is null)
	Begin	----open invoices
		SELECT i.InvId, i.BranchId, i.CompId, i.InvNo, i.InvCreatedDate, i.IsColdStorage, 
			case when IsStockTransfer=1 then SendToCNFId else i.SoldTo_StokistId End SoldTo_StokistId, 
			case when IsStockTransfer=1 then cnf.CNFCode else sm.StockistNo End StockistNo, 
			case when IsStockTransfer=1 then cnf.CNFName else sm.StockistName End StockistName, 
			case when IsStockTransfer=1 then cnf.CityCode else i.SoldTo_City End SoldTo_City, 
			case when IsStockTransfer=1 then c2.CityName else c.CityName End CityName,
			i.InvAmount, i.InvStatus, s.StatusText, 
			i.Addedby, i.AddedOn, i.LastUpdatedOn, sm.CityCode, i.AcceptedBy, BD.DisplayName AS BillDrawerName, i.AcceptedDate, 
			i.BillDrawnDate, i.PackedBy, Pckr.EmpName AS PackedByName, i.PackedDate, i.NoOfBox, i.InvWeight, i.IsCourier, i.PackingConcernDate, 
			i.PackingConcernId, pkcrn.MasterName AS PackingConcernText, i.PackingRemark, i.ReadyToDispatchBy, i.ReadyToDispatchDate,
			i.ReadyToDispatchConcernId, i.ReadyToDispatchRemark, i.CancelBy, i.CancelDate,
			(select count(InvId) from CFA.tblInvoiceHeader where InvStatus in (1,2) and SoldTo_StokistId=i.SoldTo_StokistId) as TotalInv,i.OnPriority
			,ISNULL(i.IsStockTransfer,'') AS IsStockTransfer,
			--(CASE WHEN i.OnPriority = 1 then 'Y' Else 'N' End) as Flag
			(select top 1 Flag from CFA.tblPrinterPDFData where InvId in(
			select case when isnull(a.AttachedInvId,0)>0 then a.AttachedInvId else a.InvoiceId end as InvoiceId 
			from CFA.tblAssignTransportMode a where InvoiceId=i.InvId) order by pkId desc) PrintStatus
		FROM CFA.tblCityMaster AS c RIGHT OUTER JOIN CFA.tblInvoiceHeader AS i LEFT OUTER JOIN
			CFA.tblGeneralMaster AS pkcrn ON i.PackingConcernId = pkcrn.pkId LEFT OUTER JOIN
			CFA.tblEmployeeMaster AS Pckr ON i.PackedBy = Pckr.EmpId LEFT OUTER JOIN
			CFA.tblUser AS BD ON i.AcceptedBy = BD.UserId LEFT OUTER JOIN
			CFA.tblStockistMaster AS sm ON sm.StockistId = i.SoldTo_StokistId LEFT OUTER JOIN
			CFA.tblStatusMaster AS s ON s.id = i.InvStatus AND s.StatusFor = 'INV' ON c.CityCode = sm.CityCode
			left outer join CFA.tblOtherCNFMaster cnf on i.SendToCNFId=cnf.CNFId
			left outer join CFA.tblCityMaster c2 on cnf.CityCode=c2.CityCode
		WHERE (i.BranchId=@BranchId OR @BranchId=0) AND i.CompId=@CompId  and (i.AcceptedBy=@BillDrawerId or @BillDrawerId=0) and (InvStatus=@InvStatus or @InvStatus is NULL)
			and (i.InvStatus not in (6,7,8,9,20) or cast(i.InvCreatedDate as date) =cast(getdate() as date))-- Old not Dispatched
		ORDER BY i.InvStatus, i.OnPriority desc, convert(bigint,i.InvNo)
	End
	else
	Begin		-- History
		SELECT        i.InvId, i.BranchId, i.CompId, i.InvNo, i.InvCreatedDate, i.IsColdStorage, 
		case when IsStockTransfer=1 then SendToCNFId else i.SoldTo_StokistId End SoldTo_StokistId, 
			case when IsStockTransfer=1 then cnf.CNFCode else sm.StockistNo End StockistNo, 
			case when IsStockTransfer=1 then cnf.CNFName else sm.StockistName End StockistName, 
			case when IsStockTransfer=1 then cnf.CityCode else i.SoldTo_City End SoldTo_City, 
			case when IsStockTransfer=1 then c2.CityName else c.CityName End CityName,
			i.InvAmount, i.InvStatus, s.StatusText, 
			i.Addedby, i.AddedOn, i.LastUpdatedOn, sm.CityCode, i.AcceptedBy, BD.DisplayName AS BillDrawerName, i.AcceptedDate, 
			i.BillDrawnDate, i.PackedBy, Pckr.EmpName AS PackedByName, i.PackedDate, i.NoOfBox, i.InvWeight, i.IsCourier, i.PackingConcernDate, 
			i.PackingConcernId, pkcrn.MasterName AS PackingConcernText, i.PackingRemark, i.ReadyToDispatchBy, i.ReadyToDispatchDate, 
			i.ReadyToDispatchConcernId, i.ReadyToDispatchRemark, i.CancelBy, i.CancelDate,
			(select count(InvId) from CFA.tblInvoiceHeader where InvStatus in (1,2) and SoldTo_StokistId=i.SoldTo_StokistId) as TotalInv,
			i.OnPriority,ISNULL(i.IsStockTransfer,'') AS IsStockTransfer,
			--(CASE WHEN i.OnPriority = 1 then 'Y' Else 'N' End) as Flag
			(select top 1 Flag from CFA.tblPrinterPDFData where InvId in(
			select case when isnull(a.AttachedInvId,0)>0 then a.AttachedInvId else a.InvoiceId end as InvoiceId 
			from CFA.tblAssignTransportMode a where InvoiceId=i.InvId) order by pkId desc) PrintStatus
		FROM CFA.tblCityMaster AS c RIGHT OUTER JOIN CFA.tblInvoiceHeader AS i LEFT OUTER JOIN
			CFA.tblGeneralMaster AS pkcrn ON i.PackingConcernId = pkcrn.pkId LEFT OUTER JOIN
			CFA.tblEmployeeMaster AS Pckr ON i.PackedBy = Pckr.EmpId LEFT OUTER JOIN
			CFA.tblUser AS BD ON i.AcceptedBy = BD.UserId LEFT OUTER JOIN
			CFA.tblStockistMaster AS sm ON sm.StockistId = i.SoldTo_StokistId LEFT OUTER JOIN
			CFA.tblStatusMaster AS s ON s.id = i.InvStatus AND s.StatusFor = 'INV' ON c.CityCode = sm.CityCode
			left outer join CFA.tblOtherCNFMaster cnf on i.SendToCNFId=cnf.CNFId
			left outer join CFA.tblCityMaster c2 on cnf.CityCode=c2.CityCode	
		WHERE (i.BranchId=@BranchId OR @BranchId=0) AND i.CompId=@CompId and (i.AcceptedBy=@BillDrawerId or @BillDrawerId=0)
			and cast(i.InvCreatedDate as date)>=cast(@FromDate as date) and cast(i.InvCreatedDate as date)<=cast(@ToDate as date)
		ORDER BY Invid DESC
	End
END
GO
/****** Object:  StoredProcedure [CFA].[usp_InvoiceHeaderResolveConcern]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [CFA].[usp_InvoiceHeaderResolveConcern]  
--DECLARE  
@InvId INT,  
@CurrentStatus INT, 
@Remark nvarchar(250),
@Addedby NVARCHAR(20), 
@updateDate datetime, 
@RetVal INT OUTPUT

AS  
BEGIN  
SET @RetVal=0	
	if(@CurrentStatus=4)
	Begin
		UPDATE CFA.tblInvoiceHeader SET InvStatus=1, PCnrnResolveRemark=@Remark, PCnrnResolveBy=@Addedby, 
		PCnrnResolveDate=@updateDate, LastUpdatedOn=@updateDate
		WHERE InvId=@InvId 
	End
	Else if(@CurrentStatus=6)
	Begin
		UPDATE CFA.tblInvoiceHeader SET InvStatus=3, DCnrnResolveRemark=@Remark, DCnrnResolveBy=@Addedby, 
		DCnrnResolveDate=@updateDate, LastUpdatedOn=@updateDate
		WHERE InvId=@InvId 
	End
	SET @RetVal=SCOPE_IDENTITY();  
END
GO
/****** Object:  StoredProcedure [CFA].[usp_InvoiceHeaderStatusPriority]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_InvoiceHeaderStatusPriority]  
--DECLARE  
@InvId INT,  
@PriorityFlag INT, 
@Remark nvarchar(250),
@Addedby NVARCHAR(20), 
@updateDate datetime, 
@RetVal INT OUTPUT  
AS  
BEGIN  
SET @RetVal=0	
	UPDATE CFA.tblInvoiceHeader SET OnPriority=@PriorityFlag,PriorityRemark=@Remark,PrioritiseBy=@Addedby, LastUpdatedOn=@updateDate 
	WHERE InvId=@InvId 
	declare @branch int, @Comp int, @InvNo bigint
	select @branch=branchId, @Comp=CompId, @InvNo=InvNo from CFA.tblInvoiceHeader where InvId=@InvId
	SET @RetVal=SCOPE_IDENTITY(); 

	if exists(select Picklistid from CFA.tblPickListHeader where BranchId=@branch and CompId=@Comp and @InvNo between FromInv and ToInv)
	Begin
		update CFA.tblPickListHeader set OnPriority=@PriorityFlag where BranchId=@branch and CompId=@Comp 
		and @InvNo between isnull(nullif(ltrim(rtrim(frominv)),''),0) and isnull(nullif(ltrim(rtrim(ToInv)),''),0)
	End
	 
END
GO
/****** Object:  StoredProcedure [CFA].[usp_InvoiceHeaderStatusUpdate]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Ready To Dispatch
CREATE PROC [CFA].[usp_InvoiceHeaderStatusUpdate]  
--DECLARE  
@InvId INT,  
@BranchId INT,  
@CompId INT,  
@InvStatus INT, 
@NoOfBox	int,
@InvWeight	numeric(6, 2),
@IsColdStorage	bit,
@IsCourier	int,
@ConcernId int,
@PackedBy int,
@Remark nvarchar(250),
@Addedby NVARCHAR(20), 
@updateDate datetime, 
@RetVal INT OUTPUT  
AS  
BEGIN  
SET @RetVal=0	
--0	Created,	1	Accepted,	2	Invoice Drawn,	3	Packed,	4	Packing Concern,	5	Ready To Dispatch,	
--6	Dispatch Concern,	7	Getpass Generated,	8	Dispatched,	9	LR Updated,	20	Cancel

if(isnull(@InvStatus,0)=1)
Begin
	UPDATE CFA.tblInvoiceHeader SET InvStatus=@InvStatus,AcceptedBy=@Addedby, AcceptedDate=@updateDate,LastUpdatedOn=@updateDate WHERE InvId=@InvId 
End
else if(isnull(@InvStatus,0)=2)
Begin
	UPDATE CFA.tblInvoiceHeader SET InvStatus=@InvStatus, BillDrawnDate=@updateDate,LastUpdatedOn=@updateDate WHERE InvId=@InvId 
End
else if(isnull(@InvStatus,0)=3)
Begin
	UPDATE CFA.tblInvoiceHeader SET InvStatus=@InvStatus,PackedBy=@PackedBy, PackedDate=@updateDate,IsColdStorage=@IsColdStorage,IsCourier=@IsCourier, 
	NoOfBox=@NoOfBox,InvWeight=@InvWeight,LastUpdatedOn=@updateDate WHERE InvId=@InvId 
End
else if(isnull(@InvStatus,0)=4)
Begin
	UPDATE CFA.tblInvoiceHeader SET InvStatus=@InvStatus,PackingConcernId=@ConcernId, PackingRemark=@Remark,PackingConcernDate=@updateDate,
	LastUpdatedOn=@updateDate WHERE InvId=@InvId 
End
else if(isnull(@InvStatus,0)=5)
Begin
	UPDATE CFA.tblInvoiceHeader SET InvStatus=@InvStatus,ReadyToDispatchBy=@Addedby, ReadyToDispatchDate=@updateDate,LastUpdatedOn=@updateDate 
	WHERE (InvId=@InvId OR InvId IN (SELECT InvoiceId FROM CFA.tblAssignTransportMode WHERE AttachedInvId=@InvId and @InvId<>0))
End
else if(isnull(@InvStatus,0)=6)
Begin
	UPDATE CFA.tblInvoiceHeader SET InvStatus=@InvStatus,ReadyToDispatchBy=@Addedby, ReadyToDispatchDate=@updateDate,
		ReadyToDispatchConcernId=@ConcernId, ReadyToDispatchRemark=@Remark,LastUpdatedOn=@updateDate WHERE InvId=@InvId 
End
else if(isnull(@InvStatus,0)=20)
Begin
	UPDATE CFA.tblInvoiceHeader SET InvStatus=@InvStatus,CancelBy=@Addedby, CancelDate=@updateDate,LastUpdatedOn=@updateDate WHERE InvId=@InvId 
End
else 
Begin
	UPDATE CFA.tblInvoiceHeader SET InvStatus=@InvStatus, LastUpdatedOn=@updateDate WHERE InvId=@InvId 
End
SET @RetVal=SCOPE_IDENTITY();  
END
GO
/****** Object:  StoredProcedure [CFA].[usp_InvStatusForMob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [CFA].[usp_InvStatusForMob]
as

BEGIN
 select id, StatusText from cfa.tblStatusMaster where StatusFor= 'INV' and id in( 2,3)
 order by id
END
GO
/****** Object:  StoredProcedure [CFA].[usp_InwardGatepassGenerate]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_InwardGatepassGenerate]
--DECLARE
@LREntryId	int,
@BranchId int,
@CompId	int,
@ReceiptDate datetime,
@AddedBy int,
@RetValue int output

--SET @LREntryId =6;SET @BranchId =1;SET @CompId = 1;SET @ReceiptDate ='2022-08-22';SET @AddedBy =1

AS
BEGIN
	set @RetValue=0 
	declare @GPNo NVARCHAR(20),@Count INT
	 if exists(select LREntryId from CFA.tblInwardGatepass where BranchId=@BranchId and CompId=@CompId 
					and LREntryId=@LREntryId and GatepassNo is not null)
	Begin
		set @RetValue=-1
	End
	if exists(select LREntryId from CFA.tblInwardGatepass where BranchId=@BranchId and CompId=@CompId 
					and LREntryId=@LREntryId and isnull(GoodsReceived,0)=0)
	Begin
		set @RetValue=-2
	End
	else
	Begin
		SELECT @Count=MAX(CONVERT(INT,isnull(GatepassNo,0))) FROM CFA.tblInwardGatepass
		WHERE BranchId=@BranchId AND CompId=@CompId AND DATEPART(YYYY,ReceiptDate)=DATEPART(YYYY,@ReceiptDate) 
		SET @GPNo= REPLICATE('0',5-LEN(RTRIM(CONVERT(VARCHAR(20),ISNULL(@Count,0))))) + CONVERT(VARCHAR(50),(ISNULL(@Count,0)+1))
	--print @GPNo

		update CFA.tblInwardGatePass 
		set GatepassNo=@GPNo,
			ReceiptDate=@ReceiptDate,
			LastUpdatedBy=@AddedBy,
			LastUpdatedOn=getdate()
		where LREntryId=@LREntryId
		set @RetValue=@LREntryId		
	End
	SELECT @RetValue 
END
GO
/****** Object:  StoredProcedure [CFA].[usp_InwardGatepassNewNo]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--		 CFA.usp_InwardGatepassNewNo 1,1,'2022-05-02'

CREATE PROCEDURE [CFA].[usp_InwardGatepassNewNo] 
--DECLARE
@BranchId INT,
@CompId	INT,
@ReceiptDate DATETIME
--SET @BranchId=1; SET @CompId=1; SET @ReceiptDate='2022-05-16';
AS
BEGIN		
	DECLARE @GPNo NVARCHAR(20),@Count INT
	SELECT @Count=MAX(CONVERT(INT,isnull(GatepassNo,0),9)) FROM CFA.tblInwardGatepass
	WHERE BranchId=@BranchId AND CompId=@CompId AND DATEPART(YYYY,ReceiptDate)=DATEPART(YYYY,@ReceiptDate) 

	PRINT @Count
	
	SET @GPNo= REPLICATE('0',5-LEN(RTRIM(CONVERT(VARCHAR(20),ISNULL(@Count,0))))) + CONVERT(VARCHAR(50),(ISNULL(@Count,0)+1))
	SELECT @GPNo as GPNo
END
GO
/****** Object:  StoredProcedure [CFA].[usp_InwardGatepassReceived]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_InwardGatepassReceived]  
--DECLARE  
@LREntryId varchar(max),  
@BranchId int,  
@CompId int,  
@AddedBy int,  
@RetValue int output  
--SET @LREntryId ='3,';SET @BranchId =1;SET @CompId = 1;SET @AddedBy =1  
  
AS  
BEGIN  
	set @RetValue=0   
	update CFA.tblInwardGatePass   
	set RecvdAtOP=1,  
	RecvdAtOPDate=getdate(),  
	RecvdAtOPBy=@AddedBy,  
	LastUpdatedBy=@AddedBy,  
	LastUpdatedOn=getdate()  
	where LREntryId in (select [value] from CFA.fn_StringSplit(@LREntryId,','))  
	set @RetValue=SCOPE_IDENTITY()    
	return @RetValue   
END  
GO
/****** Object:  StoredProcedure [CFA].[usp_InwardSupervisorDashboard_Mob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- cfa.usp_InwardSupervisorDashboard_Mob 1,1
CREATE proc [CFA].[usp_InwardSupervisorDashboard_Mob]
--declare
@BranchId INT,
@CompId INT
--set @BranchId=1; set @CompId=1
as
begin

  select tih.TransitId,tih.BranchId,tih.CompId,tih.InvNo,tih.InvoiceDate,tih.Quantity,tih.TransporterId,tm.TransporterNo,tm.TransporterName,tih.LrNo,tih.LrDate,
    tih.TotalCaseQty,tih.VehicleNo,tih.IsMapDone,miv.pkId as mivpkId,miv.InwardDate as mivInwardDate,miv.VehicleNo as mivVehicleNo,miv.DriverName as mivDriverName,
    miv.MobileNo as mivMobileNo,miv.NoOfCasesQty as mivNoOfCasesQty,miv.ActualNoOfCasesQty as mivActualNoOfCasesQty,miv.ConcernRemark as mivConcernRemark,
    miv.ConcernUpdatedOn as mivConcernUpdatedOn,miv.IsConcern as mivIsConcern,miv.ResolvedBy as mivResolvedBy,miv.IsChecklistDone,miv.ConcernBy,
	cd.ChkListMstId,cd.LREntryId,cd.Remarks,ISNULL(cd.Img1,'')Img1,ISNULL(cd.Img2,'')Img2,ISNULL(cd.Img3,'')Img3,ISNULL(cd.Img4,'')Img4,
	cd.[Status],cd.IsApprove,cd.IsApproveBy,cd.IsApproveOn,cd.AddedBy,cd.AddedOn,cd.LastUpdatedOn
  from CFA.tblTransitInvoiceHeader as tih with(nolock) left outer join CFA.tblMapInwardVehicle as miv with(nolock) on tih.TransitId=miv.TransitId
  left outer join CFA.tblTransporterMaster as tm with(nolock) on tih.TransporterId=tm.TransporterId
  left outer join CFA.tblInvInVehicleChecklistMst cd on miv.TransitId=cd.TransitId
  where tih.BranchId=@BranchId and tih.CompId=@CompId

end

GO
/****** Object:  StoredProcedure [CFA].[usp_LREntryAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_LREntryAddEdit]
--DECLARE
@LREntryId	int,
@BranchId int,
@CompId	int,
@LREntryDate datetime,
@StockistId	int,
@City int,
@TransporterId int,
@CourierId int,
@OtherTrasport varchar(256),
@LRNo nvarchar(50),
@LRDate	datetime,
@NoOfBox int,
@AmountPaid	int,
@CashmemoDate datetime,
@ClaimFormAvailable	int,
@GoodsReceived	int,
@AddedBy int,
@Action	nvarchar(10),
@RetValue int output
		--SET @LREntryId =2;SET @BranchId =1;SET @CompId = 1;SET @StockistId = 7;SET @City = 6;SET @TransporterId = NULL;SET @CourierId = 3;
		--SET @Other = NULL;SET @LRNumber= 'LR04';SET @LRDate= '2022-08-02';SET @ReceiptDate ='2022-08-02';SET @NumberOfBox = 3;SET @AmountPaid = 750;
		--SET @ClaimFormAvailable =0;SET @Action ='DELETE';SET @AddedBy =1;SET @LastUpdatedBy= NULL;

AS
BEGIN
	set @RetValue=0 
	declare @LREntryNoNew NVARCHAR(20),@Count INT
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin
		IF NOT EXISTS(SELECT LRNo FROM CFA.tblInwardGatePass WHERE LRNo=@LRNo)
		BEGIN 
			SELECT @Count=MAX(CONVERT(INT,isnull(LREntryNo,0)))+1 FROM CFA.tblInwardGatepass
			WHERE BranchId=@BranchId AND CompId=@CompId AND DATEPART(YYYY,LREntryDate)=DATEPART(YYYY,@LREntryDate) 
			set @LREntryNoNew=REPLICATE('0',5-LEN(RTRIM(CONVERT(VARCHAR(20),ISNULL(@Count,0))))) + CONVERT(VARCHAR(50),(ISNULL(@Count,0)+1))

			insert into CFA.tblInwardGatePass(BranchId,CompId,LREntryNo,LREntryDate,StockistId,City,TransporterId,CourierId,OtherTrasport,
				LRNo,LRDate,NoOfBox,AmountPaid,CashmemoDate,ClaimFormAvailable,GoodsReceived,IsEmailSent, Addedby,AddedOn)
			values(@BranchId,@CompId,@LREntryNoNew,@LREntryDate,@StockistId,@City,@TransporterId,@CourierId,@OtherTrasport,
				@LRNo,@LRDate,@NoOfBox,@AmountPaid,@CashmemoDate,@ClaimFormAvailable,@GoodsReceived,0,@Addedby,getdate())	
			set @RetValue=SCOPE_IDENTITY()
			END
		ELSE
			BEGIN
			set @RetValue=-1
			END
	End
	else if (upper(ltrim(rtrim(@Action)))='EDIT')
	Begin
		update CFA.tblInwardGatePass 
		set StockistId=@StockistId,
			City=@City,
			TransporterId=@TransporterId,
			CourierId=@CourierId,
			OtherTrasport=@OtherTrasport,
			LRNo=@LRNo,
			LRDate=@LRDate,
			NoOfBox=@NoOfBox,
			AmountPaid=@AmountPaid,
			CashmemoDate=@CashmemoDate,
			ClaimFormAvailable=@ClaimFormAvailable,
			GoodsReceived=@GoodsReceived,
			LastUpdatedBy=@AddedBy,
			LastUpdatedOn=getdate()
		where LREntryId=@LREntryId
		set @RetValue=@LREntryId
		
	End
	else if (upper(ltrim(rtrim(@Action)))='DELETE')
	Begin
		--if it is not present in claim or SRS transaction log
		if not exists(select 1 from CFA.tblPhysicalCheck1 where LREntryId=@LREntryId)
		Begin
			DELETE FROM CFA.tblInwardGatePass where LREntryId=@LREntryId
			set @RetValue=@LREntryId
		End
		Else
			set @RetValue=-1
	End
	else
	Begin
		set @RetValue=-2
	End	

	SELECT @RetValue --FROM CFA.tblInwardGatePass order by 1 desc
END
GO
/****** Object:  StoredProcedure [CFA].[usp_LREntryNewNo]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [CFA].[usp_LREntryNewNo] 
--DECLARE
@BranchId INT,
@CompId	INT,
@LREntryDate DATETIME
--SET @BranchId=1; SET @CompId=1; SET @LREntryDate='2022-05-16';
AS
BEGIN		
	DECLARE @Count NVARCHAR(20)
	SELECT @Count=MAX(CONVERT(INT,isnull(LREntryNo,0),9)) FROM CFA.tblInwardGatepass
	WHERE BranchId=@BranchId AND CompId=@CompId AND DATEPART(YYYY,LREntryDate)=DATEPART(YYYY,@LREntryDate) 
		
	select REPLICATE('0',5-LEN(RTRIM(CONVERT(VARCHAR(20),ISNULL(@Count,0))))) + CONVERT(VARCHAR(50),(ISNULL(@Count,0)+1)) as LREntryNoNew
	--SELECT @GPNo
END
GO
/****** Object:  StoredProcedure [CFA].[usp_MapInwardVehicleWithTransitLRForMobile]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_MapInwardVehicleWithTransitLRForMobile]
--DECLARE
@PkId BIGINT,
@BranchId INT,
@CompId INT,
@TransitId bigint,
@LRNo NVARCHAR(50),
@LRDate DATETIME,
@InwardDate DATETIME,
@TransporterId INT,
@VehicleNo NVARCHAR(50),
@DriverName NVARCHAR(200),
@MobileNo NVARCHAR(10),
@NoOfCasesQty int,
@ActualNoOfCasesQty int,
@IsConcern int,
@ConcernRemark NVARCHAR(50),
@ConcernBy int,
@Addedby NVARCHAR(50),
@Action NVARCHAR(10),
@RetValue INT OUTPUT
--SET @PkId=1; SET @BranchId=1; SET @CompId=1; SET @TransitId = 1; SET @LRNo=1234; SET @LRDate='2022-02-25'; SET @InwardDate='2022-07-29'; SET @TransporterId=34;
-- SET @VehicleNo='MH2010010101'; SET @DriverName='XYZ';SET @MobileNo='9665709402'; SET @NoOfCasesQty =12; SET @ActualNoOfCasesQty=13; SET @IsConcern=1;
-- SET@ConcernRemark='Data Mismatch'; SET @ConcernBy='ConcernBy'; SET @Addedby='1'; @Action='ADD';
AS
BEGIN
		SET @RetValue=0
		IF (UPPER(LTRIM(RTRIM(@Action)))='ADD')
		BEGIN
			
			--IF NOT EXISTS(SELECT LRNo FROM CFA.tblMapInwardVehicle WHERE LRNo=@LRNo)
			
			IF EXISTS(SELECT TransitId,LrNo FROM CFA.tblTransitInvoiceHeader WHERE TransitId=TransitId and LrNo=@LrNo)
			BEGIN
				
				INSERT INTO CFA.tblMapInwardVehicle(BranchId,CompId,LRNo,LRDate,InwardDate,TransporterId,VehicleNo,
				DriverName,MobileNo,NoOfCasesQty,ActualNoOfCasesQty,IsChecklistDone,IsConcern,ConcernRemark,ConcernBy,Addedby,AddedOn,ConcernUpdatedOn,TransitId)
				SELECT @BranchId,@CompId,@LRNo,@LRDate,@InwardDate,@TransporterId,@VehicleNo,@DriverName,@MobileNo,
				@NoOfCasesQty,@ActualNoOfCasesQty,0,@IsConcern,@ConcernRemark,@ConcernBy,@Addedby,GETDATE(),GETDATE(),@TransitId
				
				SET @RetValue=SCOPE_IDENTITY()

				--Update CFA.tblTransitInvoiceHeader SET IsMapDone =1 WHERE LrNo=@LRNo

				Update CFA.tblTransitInvoiceHeader SET IsMapDone=1,LastUpdatedOn=getdate()
				where TransitId=@TransitId and BranchId=@BranchId and CompId=@CompId and LrNo=@LRNo

			END
			ELSE
			BEGIN
				SET @RetValue=-1 -- exists
			END
		END
		ELSE 
		IF (UPPER(LTRIM(RTRIM(@Action)))='EDIT')
		BEGIN
			UPDATE CFA.tblMapInwardVehicle
			SET
				VehicleNo=@VehicleNo,				
				DriverName=@DriverName,
				MobileNo=@MobileNo,
				NoOfCasesQty=@NoOfCasesQty,
				ActualNoOfCasesQty=@ActualNoOfCasesQty,
				LastUpdatedOn=GETDATE(),
				IsConcern=@IsConcern,
				ConcernRemark=@ConcernRemark,
				ConcernBy=@ConcernBy,
				ConcernUpdatedOn=GETDATE(),
				TransitId=@TransitId
			WHERE BranchId=@BranchId AND CompId=@CompId AND pkId=@PkId
			SET @RetValue=@PkId
		END
		ELSE
		BEGIN
			SET @RetValue=-1 -- not updated
		END
		IF (UPPER(LTRIM(RTRIM(@Action)))='DELETE')
		BEGIN
			--DELETE FROM CFA.tblMapInwardVehicle WHERE pkId=@PkId
		
			--DELETE FROM CFA.tblMapInwardVehicle WHERE BranchId=@BranchId and CompId=@CompId and pkId=@PkId

			Update CFA.tblTransitInvoiceHeader SET IsMapDone=0,LastUpdatedOn=getdate()
			where TransitId=@TransitId and BranchId=@BranchId and CompId=@CompId
		
			SET @RetValue=@PkId
		END

	RETURN @RetValue
	 
END
GO
/****** Object:  StoredProcedure [CFA].[usp_OtherCNFMasterAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_OtherCNFMasterAddEdit]
@CNFId	int,
@BranchId	int,
@CompId	int,
@CNFCode	nvarchar(20),
@CNFName	nvarchar(250),
@CityCode	nvarchar(20),
@CNFEmail	nvarchar(100),
@ContactPerson	nvarchar(50),
@ContactNo	nvarchar(50),
@CNFAddress	nvarchar(250),
@IsActive	char(1),
@Addedby	nvarchar(50),
@Action varchar(10),
@RetValue nvarchar(50) output

as

BEGIN
	set @RetValue=0
	if (upper(@Action)='ADD')
	Begin
		if not exists(select * from CFA.tblOtherCNFMaster where CompId=@CompId and CNFCode=@CNFCode)
		Begin
			insert CFA.tblOtherCNFMaster(BranchId,CompId,CNFCode,CNFName,CityCode,CNFEmail,ContactPerson,
			ContactNo,CNFAddress,IsActive,Addedby,AddedOn,LastUpdatedOn)
			values(@BranchId,@CompId,@CNFCode,@CNFName,@CityCode,@CNFEmail,@ContactPerson,
			@ContactNo,@CNFAddress,@IsActive,@Addedby,getdate(),getdate())
			set @RetValue=SCOPE_IDENTITY()
		End
		else
			set @RetValue=-1   -- dupicate CNF number exists for same company
	End
	else if (upper(@Action)='EDIT')
	Begin
		if not exists(select * from CFA.tblOtherCNFMaster where CompId=@CompId and CNFCode=@CNFCode and CNFId<>@CNFId)
		Begin
			update CFA.tblOtherCNFMaster
			set CNFName=@CNFName,
				CityCode=@CityCode,
				CNFEmail=@CNFEmail,
				ContactPerson=@ContactPerson,
				ContactNo=@ContactNo,
				CNFAddress=@CNFAddress,
				LastUpdatedOn=getdate()
			where CNFId=@CNFId
			set @RetValue=@CNFId
		End
		else
			set @RetValue=-1   -- dupicate CNF number exists for same company
	End
	else if (upper(@Action)='STATUS')
	Begin
		update CFA.tblOtherCNFMaster set IsActive=@IsActive, LastUpdatedOn=getdate() where CNFId=@CNFId
		set @RetValue=@CNFId
	End

	return @RetValue
END
GO
/****** Object:  StoredProcedure [CFA].[usp_OtherCNFMasterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [CFA].[usp_OtherCNFMasterList]
@BranchId	int,
@CompId	int,
@Flag varchar(10)

as

BEGIN
	Select oc.CNFId,oc.BranchId,b.BranchCode,b.BranchName,oc.CompId,c.CompanyCode,c.CompanyName,oc.CNFCode,oc.CNFName,
		oc.CityCode,ct.CityName, oc.CNFEmail,oc.ContactPerson,oc.ContactNo,oc.CNFAddress,oc.IsActive,oc.Addedby 
	from CFA.tblOtherCNFMaster oc left outer join CFA.tblCityMaster ct on oc.citycode=ct.CityCode
	left outer join CFA.tblBranchMaster b on oc.BranchId=b.BranchId
	left outer join CFA.tblCompanyMaster c on oc.CompId=c.CompanyId
	where (oc.BranchId=@BranchId OR @BranchId=0) and (oc.CompId=@CompId or @CompId=0) and (upper(oc.IsActive)=upper(@Flag) or upper(@Flag)='ALL')
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ParentCourierMappedList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [CFA].[usp_ParentCourierMappedList]  
--declare
@CPid INT,
@Status nvarchar(10)

 --set @CPid=3; set @Status='ALL'
AS
BEGIN
	SELECT c.CourierId,cfa.fn_CamelCase(c.CourierName) CourierName,c.CityCode,CourierEmail,c.CourierMobNo,
	case when isnull(m.CPid,0) > 0 then 1 else 0 end Checked
    FROM CFA.tblCourierMaster AS c
	left outer join CFA.tblCourierParentMapping m on c.CourierId = m.CourierId
	WHERE (UPPER (c.IsActive) = UPPER(@Status) OR UPPER(@Status) = 'ALL')
	and (m.CPid =@CPid or m.CourierId is null)
	order by checked desc,c.CourierName
END



GO
/****** Object:  StoredProcedure [CFA].[usp_ParentTransporterMappedList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_ParentTransporterMappedList]  
--declare
@Tpid int,  
@Status nvarchar(10)  
 
 --set @Tpid=3; set @Status='ALL'
AS  
  
BEGIN  
	SELECT t.TransporterId, cfa.fn_CamelCase(t.TransporterNo) TransporterNo, cfa.fn_CamelCase(t.TransporterName) TransporterName,  
	case when isnull(m.Tpid,0) >0 then 1 else 0 end Checked  
	FROM CFA.tblTransporterMaster AS t 
	left outer join CFA.tblTransporterParentMapping m on t.TransporterId =m.TransporterId  
	WHERE ( UPPER(t.IsActive) = UPPER(@Status) OR UPPER(@Status) = 'ALL')  
	and (m.Tpid =@Tpid or m.TransporterId is null)
	order by checked desc,t.TransporterName  
END
GO
/****** Object:  StoredProcedure [CFA].[usp_PendingLRList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_PendingLRList]

AS
BEGIN
	select BranchId,CompId, InvStatus,InvNo,InvCreatedDate, IsStockTransfer,OnPriority
	from CFA.tblInvoiceHeader
	where InvStatus in (7,8) 
END


SELECT * FROM CFA.tblInvoiceHeader
GO
/****** Object:  StoredProcedure [CFA].[usp_PhysicalCheck1AddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 --  CFA.usp_PhysicalCheck1AddEdit 0,1,1,3,0,'C123123','2022-08-03',1,'2022-08-05',0,'ADD',0  
CREATE proc [CFA].[usp_PhysicalCheck1AddEdit]  
@PhyChkId int,  
@BranchId int,  
@CompId int,  
@LREntryId int,  
@ReturnCatId int,  
@ClaimNo nvarchar(50),  
@ClaimDate datetime,  
@AddedBy int,  
@AddedOn datetime,  
@ClaimStatus int,  
@Action varchar(20),  
@RetValue nvarchar(50) output  
  
as  
  
BEGIN  
set @RetValue=0  
 if (upper(@Action)='ADD')  
 Begin  
  if not exists(select PhyChkId from CFA.tblPhysicalCheck1 where LREntryId=@LREntryId)  
  Begin  
   insert into CFA.tblPhysicalCheck1(BranchId,CompId,LREntryId,ReturnCatId,ClaimNo,ClaimDate,AddedBy,AddedOn,ClaimStatus)  
   values (@BranchId,@CompId,@LREntryId,@ReturnCatId,@ClaimNo,@ClaimDate,@AddedBy,@AddedOn,@ClaimStatus)  
   set @RetValue=SCOPE_IDENTITY()  
  End  
  else  
   set @RetValue=-1  
 End  
 else if (upper(@Action)='EDIT')  
 Begin  
  if not exists(select PhyChkId from CFA.tblPhysicalCheck1 where LREntryId=@LREntryId and PhyChkId<>PhyChkId)  
  Begin  
   Update CFA.tblPhysicalCheck1  
   Set ReturnCatId=@ReturnCatId,  
    ClaimNo=@ClaimNo,  
    ClaimDate=@ClaimDate,  
    LastUpdatedBy=@AddedBy,  
    LastUpdatedOn=@AddedOn  
   where PhyChkId=@PhyChkId  
  
   set @RetValue=@PhyChkId  
  End  
  else  
   set @RetValue=-1  
 End  
 else   
 Begin  
  set @RetValue=-2  
 End  
END
GO
/****** Object:  StoredProcedure [CFA].[usp_PhysicalCheck1Concern]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
  
CREATE proc [CFA].[usp_PhysicalCheck1Concern]  
--declare  
@PhyChkId int,  
@LREntryId int,  
@ClaimStatus int,  
@ConcernId int,  
@ConcernRemark nvarchar(250),  
@ConcernDate datetime,  
@ConcernBy int,  
@ResolveConcernBy int,  
@ResolveConcernDate datetime,  
@ResolveRemark nvarchar(250),  
@Action varchar(20),  
@RetValue nvarchar(50) output  
--set @PhyChkId= 2; set @LREntryId= 4; set @ClaimStatus= 0;set @ConcernId= 0;  
--set @ConcernRemark= null; set @ConcernDate= null; set @ConcernBy= 0; set @ResolveConcernBy= 2;  
--set @ResolveConcernDate= '06/08/2022 4:17:43'; set @ResolveRemark= 'Resolved'; set @Action= 'RESOLVECONCERN'; set @PhyChkId= 0;  
as  
  
BEGIN  
set @RetValue=0  
 if (upper(@Action)='RAISECONCERN')  
 Begin  
  if exists(select PhyChkId from CFA.tblPhysicalCheck1 where PhyChkId=@PhyChkId and LREntryId=@LREntryId )  
  Begin  
   Update CFA.tblPhysicalCheck1  
   Set ClaimStatus=1,  
    ConcernId=@ConcernId,  
    ConcernRemark=@ConcernRemark,  
    ConcernDate=@ConcernDate,  
    ConcernBy=@ConcernBy,  
    LastUpdatedBy=@ConcernBy,  
    LastUpdatedOn=@ConcernDate  
   where PhyChkId=@PhyChkId  
   set @RetValue=@PhyChkId  
  End  
  else  
   set @RetValue=-1  
 End  
 else if (upper(@Action)='RESOLVECONCERN')  
 Begin  
  if exists(select PhyChkId from CFA.tblPhysicalCheck1 where PhyChkId=@PhyChkId and LREntryId=@LREntryId)  
  Begin  
   Update CFA.tblPhysicalCheck1  
   Set ClaimStatus=2,  
    ResolveConcernBy=@ResolveConcernBy,  
    ResolveConcernDate=@ResolveConcernDate,  
    ResolveRemark=@ResolveRemark,  
    LastUpdatedBy=@ResolveConcernBy,      
    LastUpdatedOn=@ResolveConcernDate  
   where PhyChkId=@PhyChkId  
   set @RetValue=@PhyChkId  
  End  
  else  
   set @RetValue=-1  
 End  
 else  
 Begin  
  set @RetValue=-2  
 End  
END
GO
/****** Object:  StoredProcedure [CFA].[usp_PhysicalCheck1List]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
  
CREATE PROCEDURE [CFA].[usp_PhysicalCheck1List] 
@BranchId int,  
@CompId int  
as  
  
Begin  
	SELECT pc.PhyChkId, pc.BranchId, pc.CompId, pc.LREntryId, igp.GatepassNo, igp.ReceiptDate, igp.StockistId, 
		stk.StockistNo, stk.StockistName, pc.ReturnCatId, rc.MasterName AS RetCatName,   
		pc.ClaimNo, pc.ClaimDate, pc.ClaimStatus, pc.ConcernId, crn.MasterName AS ConcernText, pc.ConcernRemark, 
		pc.ConcernDate, pc.ConcernBy, cbn.DisplayName AS ConcernByName, pc.ResolveConcernBy,  
		rcbn.DisplayName AS ResolveConcernByName, pc.ResolveConcernDate, pc.ResolveRemark, ct.CityName, 
		igp.LRNo, igp.LRDate, igp.NoOfBox, igp.AmountPaid, igp.ClaimFormAvailable  
	FROM CFA.tblGeneralMaster AS rc RIGHT OUTER JOIN  
		CFA.tblCityMaster AS ct RIGHT OUTER JOIN  
		CFA.tblPhysicalCheck1 AS pc INNER JOIN  
		CFA.tblInwardGatepass AS igp ON pc.LREntryId = igp.LREntryId ON ct.CityCode = igp.City LEFT OUTER JOIN  
		CFA.tblGeneralMaster AS crn ON pc.ConcernId = crn.pkId ON rc.pkId = pc.ReturnCatId LEFT OUTER JOIN  
		CFA.tblStockistMaster AS stk ON igp.StockistId = stk.StockistId LEFT OUTER JOIN  
		CFA.tblUser AS cbn ON pc.ConcernBy = cbn.UserId LEFT OUTER JOIN   
		CFA.tblUser AS rcbn ON pc.ResolveConcernBy = rcbn.UserId  
	Where pc.BranchId = @BranchId and pc.CompId = @CompId   
End  
GO
/****** Object:  StoredProcedure [CFA].[usp_PicklistAllotmentAdd]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_PicklistAllotmentAdd]
--declare
@BranchId	int,
@CompId	int,
@Picklistid	int,
@PicklistDtlsId	int=0,
@ProductCode	nvarchar(25)='',
@BatchNo	nvarchar(25)='',
@PickerId	varchar(500),
@AllottedBy	int,
@RetValue	int output

--set @BranchId=1; set @CompId=1; set @Picklistid=3;set @PickerId='8,9,' set @AllottedBy=1
AS

BEGIN
	set @RetValue=0
	--declare @pkid table (pkrid int) 

	insert into CFA.tblPicklistAllotment(BranchId,CompId,Picklistid,PickerId,AllottedBy,AllottedDate,AllotmentStatus,LastUpdatedDate)
	select @BranchId,@CompId,@Picklistid,[value],@AllottedBy,getdate(),3, getdate()	
	from CFA.fn_StringSplit(@PickerId,',')
	where [value] not in (select PickerId from CFA.tblPicklistAllotment where CompId=@CompId and Picklistid=@Picklistid 
	and PickerId in (select [value] from CFA.fn_StringSplit(@PickerId,',')))		 

	set @RetValue=SCOPE_IDENTITY()
	if (@RetValue>0)
	begin
		update CFA.tblPickListHeader set PicklistStatus=3,AllottedBy=@AllottedBy,AllottedDate=getdate() where Picklistid=@Picklistid
	end

END
GO
/****** Object:  StoredProcedure [CFA].[usp_PicklistAllotmentStatus]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [CFA].[usp_PicklistAllotmentStatus]  
--declare
@AllotmentId int,  
@Picklistid int,  
@BranchId int,  
@AllotmentStatus int,  
@ReasonId int=0,  
@RejectRemark nvarchar(500)='',  
@UserId int, 
@StatusTime datetime, 
@RetValue int output  
  
as  
  
Begin  
declare @AllotedCnt int=0, @REallotedCnt int=0

if (isnull(@AllotmentStatus,0) in (4,5,7))  -- Accepted, Allot-rejected, Reallot-Rejected
Begin
	 update CFA.tblPicklistAllotment set AllotmentStatus=@AllotmentStatus, AcceptedDate=@StatusTime, ReasonId=@ReasonId,RejectRemark=@RejectRemark,LastUpdatedDate=getdate()   
	where AllotmentId=@AllotmentId and PickerId=@UserId 

	--update CFA.tblPicklistreAllotment set ReAllotmentStatus=@AllotmentStatus, AcceptedDate=@StatusTime, ReasonId=@ReasonId, RejectRemark=@RejectRemark,LastUpdatedDate=getdate()   
	--where reAllotmentId=@AllotmentId and PickerId=@UserId  

	if (@AllotmentStatus in (5,7))
		update CFA.tblPickListHeader set PicklistStatus=@AllotmentStatus, LastUpdatedOn=getdate() where Picklistid=@Picklistid
	else if not exists(select p.Picklistid from CFA.tblPickListHeader p left outer join CFA.tblPicklistAllotment a on p.Picklistid=a.Picklistid
	--left outer join CFA.tblPicklistreAllotment r on p.Picklistid=r.Picklistid 
	where p.Picklistid=@Picklistid and (AllotmentStatus in (0,1,2,3,5,6,7)) )-- or reAllotmentStatus in (0,1,2,3,5,6,7)) )
		update CFA.tblPickListHeader set PicklistStatus=@AllotmentStatus, LastUpdatedOn=getdate() where Picklistid=@Picklistid
End
else if (isnull(@AllotmentStatus,0)in (8,9))  -- Picked, picker concern
Begin
	 update CFA.tblPicklistAllotment set AllotmentStatus=@AllotmentStatus, PickedDate=@StatusTime, PickerConcernId=@ReasonId, 
	 PickerConcernRemark=@RejectRemark, PickerConcernDate=@StatusTime, LastUpdatedDate=getdate()   
	 where AllotmentId=@AllotmentId --and PickerId=@UserId  

	 --update CFA.tblPicklistReAllotment set ReAllotmentStatus=@AllotmentStatus, PickedDate=@StatusTime, PickerConcernId=@ReasonId, 
	 --PickerConcernRemark=@RejectRemark, PickerConcernDate=@StatusTime, LastUpdatedDate=getdate()   
	 --where ReAllotmentId=@AllotmentId and PickerId=@UserId 
	 
	if (isnull(@AllotmentStatus,0)=9)
		update CFA.tblPickListHeader set PicklistStatus=@AllotmentStatus, LastUpdatedOn=getdate() where Picklistid=@Picklistid
	else if not exists(select p.Picklistid from CFA.tblPickListHeader p left outer join CFA.tblPicklistAllotment a on p.Picklistid=a.Picklistid
	--left outer join CFA.tblPicklistreAllotment r on p.Picklistid=r.Picklistid 
	where p.Picklistid=@Picklistid and (AllotmentStatus not in (8,10)))-- or reAllotmentStatus not in (8,10)) )
		update CFA.tblPickListHeader set PicklistStatus=8, LastUpdatedOn=getdate() where Picklistid=@Picklistid

End
else if (isnull(@AllotmentStatus,0) in (11))  --  completed verified by concern
Begin
	 update CFA.tblPicklistAllotment set AllotmentStatus=@AllotmentStatus,  VerifiedConcernId=@ReasonId, 
	 VerifiedConcernRemark=@RejectRemark, VerifiedConcernDate=@StatusTime, VerifiedBy=@UserId, LastUpdatedDate=getdate()   
	 where AllotmentId=@AllotmentId --and PickerId=@UserId  

	 --update CFA.tblPicklistReAllotment set ReAllotmentStatus=@AllotmentStatus, VerifiedConcernId=@ReasonId, 
	 --VerifiedConcernRemark=@RejectRemark, VerifiedConcernDate=@StatusTime, VerifiedBy=@UserId, LastUpdatedDate=getdate()   
	 --where ReAllotmentId=@AllotmentId --and PickerId=@UserId  

	 if (isnull(@AllotmentStatus,0) =11)
		update CFA.tblPickListHeader set PicklistStatus=11, LastUpdatedOn=getdate() where Picklistid=@Picklistid 

End
Else if (isnull(@AllotmentStatus,0)in (10))  -- Completed Verified
Begin
	 update CFA.tblPicklistAllotment set AllotmentStatus=@AllotmentStatus, VerifiedDate=@StatusTime, VerifiedBy=@UserId, 
	 LastUpdatedDate=getdate()  where AllotmentId=@AllotmentId --and PickerId=@UserId verification done by other picker

	 --update CFA.tblPicklistReAllotment set ReAllotmentStatus=@AllotmentStatus, VerifiedDate=@StatusTime, VerifiedBy=@UserId, 
	 --LastUpdatedDate=getdate()  where ReAllotmentId=@AllotmentId --and PickerId=@UserId verification done by other picker 

	if not exists(select p.Picklistid from CFA.tblPickListHeader p left outer join CFA.tblPicklistAllotment a on p.Picklistid=a.Picklistid
	--left outer join CFA.tblPicklistreAllotment r on p.Picklistid=r.Picklistid 
	where p.Picklistid=@Picklistid and (AllotmentStatus<>10))-- or reAllotmentStatus<>10) )
		update CFA.tblPickListHeader set PicklistStatus=10, LastUpdatedOn=getdate() where Picklistid=@Picklistid  

End

 set @RetValue=@AllotmentId  
  
End
GO
/****** Object:  StoredProcedure [CFA].[usp_PickListGenerateNewNo]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_PickListGenerateNewNo]
--declare
@BranchId	int,
@CompId	int,
@PicklistDate datetime
as

BEGIN
	--set @RetValue=0

	declare @PLNo nvarchar(20), @TodayCount int
	select @TodayCount=max(convert(int,isnull( replace(picklistno,'PL/',''),0))) from CFA.tblPickListHeader pl 
	where BranchId=@BranchId and CompId=@CompId and cast(PicklistDate as date)=cast(@PicklistDate as date) 

	print @TodayCount
	set @PLNo= 'PL/'+ REPLICATE('0',2-LEN(RTRIM(CONVERT(varchar(50),isnull(@TodayCount,0))))) + CONVERT(varchar(50),(isnull(@TodayCount,0)+1))
	select @PLNo
End
GO
/****** Object:  StoredProcedure [CFA].[usp_PickListHeaderAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_PickListHeaderAddEdit]
@Picklistid	int,
@BranchId	int,
@CompId	int,
@PicklistDate	datetime,
@FromInv	nvarchar(20),
@ToInv	nvarchar(20),
@PicklistStatus	int,
@VerifiedBy	int,
@RejectReason nvarchar(500),
@IsStockTransfer int,
@Addedby	nvarchar(50),
@Action	nvarchar(10),
@RetValue	int output

AS
BEGIN
	set @RetValue=0 
	declare @PLNo nvarchar(20), @TodayCount int
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin 
		select @TodayCount=max(convert(int,isnull( replace(picklistno,'PL/',''),0))) from CFA.tblPickListHeader pl 
		where BranchId=@BranchId and CompId=@CompId and cast(PicklistDate as date)=cast(@PicklistDate as date)
		set @PLNo= 'PL/'+ REPLICATE('0',2-LEN(RTRIM(CONVERT(varchar(50),isnull(@TodayCount,0))))) + CONVERT(varchar(50),(isnull(@TodayCount,0)+1))
		print @PLNo

		insert into CFA.tblPickListHeader(BranchId,CompId,PicklistNo,PicklistDate,FromInv,ToInv,PicklistStatus,IsStockTransfer,Addedby,AddedOn,LastUpdatedOn)
		values(@BranchId,@CompId,@PLNo,@PicklistDate,@FromInv,@ToInv,0,@IsStockTransfer,@Addedby,getdate(),getdate())
		set @RetValue=SCOPE_IDENTITY()

		if exists(select InvNo from cfa.tblInvoiceHeader where OnPriority=1 and InvNo between @FromInv and @ToInv)
			update CFA.tblPickListHeader set OnPriority=1 where BranchId=@BranchId and CompId=@CompId and Picklistid=@RetValue

	End
	else if (upper(ltrim(rtrim(@Action)))='EDIT')
	Begin
		update CFA.tblPickListHeader set PicklistDate=@PicklistDate,FromInv=@FromInv,ToInv=@ToInv,Addedby=@Addedby,LastUpdatedOn=getdate()
		where Picklistid=@Picklistid
		set @RetValue=@Picklistid

		if exists(select InvNo from tblInvoiceHeader where OnPriority=1 and InvNo between @FromInv and @ToInv)
			update CFA.tblPickListHeader set OnPriority=1 where BranchId=@BranchId and CompId=@CompId and Picklistid=@Picklistid

	End
	else if (upper(ltrim(rtrim(@Action)))='Verify')
	Begin
		update CFA.tblPickListHeader set PicklistStatus=@PicklistStatus, VerifiedBy=@VerifiedBy,VerifiedDate=getdate(),
		RejectReason=@RejectReason, LastUpdatedOn=getdate() where Picklistid=@Picklistid
		set @RetValue=@Picklistid
	End
	else
	Begin
		set @RetValue=-2
	End	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_PickListHeaderDelete]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE PROC [CFA].[usp_PickListHeaderDelete]  
--declare  
@Picklistid int,  
@RetValue int output  
--set @Picklistid= 32;  
AS  
BEGIN  
 set @RetValue=0   
 if exists (select PicklistStatus from CFA.tblPickListHeader where Picklistid = @Picklistid and isnull(PicklistStatus,0) = 0)  
  Begin  
  delete from CFA.tblPickListHeader where Picklistid=@Picklistid  
   set @RetValue=@Picklistid  
  End  
 else  
  set @RetValue=-1  
END
GO
/****** Object:  StoredProcedure [CFA].[usp_PicklistReAllotmentAdd]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_PicklistReAllotmentAdd]
--declare
@BranchId	int,
@CompId	int,
@Picklistid	int,
@PicklistDtlsId	int=0,
@AllotmentId int,
@ProductCode	nvarchar(25)='',
@BatchNo	nvarchar(25)='',
@PickerId	varchar(500),
@ReAllottedBy	int,
@RetValue	int output

AS

BEGIN
	set @RetValue=0
	--  Save Reallotment in Allotment table 
	
	--If realloted to picker whome it is already alloted
	update CFA.tblPicklistAllotment 
	set AllottedBy=AllottedBy,
		AllottedDate=GETDATE(),
		AllotmentStatus=6,
		AcceptedDate= null,
		ReasonId= null,RejectRemark= null,PickedDate= null,
		PickerConcernId= null,PickerConcernRemark= null,PickerConcernDate= null,
		VerifiedBy= null,VerifiedDate= null,VerifiedConcernId= null,VerifiedConcernRemark= null,VerifiedConcernDate= null,
		LastUpdatedDate=getdate()
	from CFA.tblPicklistAllotment a inner join CFA.fn_StringSplit(@PickerId,',') b on a.PickerId=b.[value]
	and Picklistid=@Picklistid
	
	-- If Realloted to new person then insert...
	insert into CFA.tblPicklistAllotment(BranchId,CompId,Picklistid,PickerId,AllottedBy,AllottedDate,AllotmentStatus,LastUpdatedDate)
	select @BranchId,@CompId,@Picklistid,[value],@ReAllottedBy,getdate(),6, getdate()	
	from CFA.fn_StringSplit(@PickerId,',')
	where [value] not in (select PickerId from CFA.tblPicklistAllotment where CompId=@CompId and Picklistid=@Picklistid 
	and PickerId in (select [value] from CFA.fn_StringSplit(@PickerId,',')))		 

	-- Delete from picker Id...
	Delete from CFA.tblPicklistAllotment where Picklistid=@Picklistid and AllotmentId=@AllotmentId

	set @RetValue=SCOPE_IDENTITY()
	if (@RetValue>0)
	begin
		update CFA.tblPickListHeader set PicklistStatus=6,AllottedBy=@ReAllottedBy,AllottedDate=getdate() where Picklistid=@Picklistid
	end

	-- Old Reallotment Code-----------------
	--set @RetValue=0
	--insert into CFA.tblPicklistReAllotment(BranchId,CompId,Picklistid,PickerId,ReAllottedBy,ReAllottedDate,ReAllotmentStatus,LastUpdatedDate)
	--select @BranchId,@CompId,@Picklistid,[value],@ReAllottedBy,getdate(),6, getdate()	from CFA.fn_StringSplit(@PickerId,',')
	--where [value] not in (select PickerId from CFA.tblPicklistReAllotment where CompId=@CompId and Picklistid=@Picklistid 
	--and PickerId in (select [value] from CFA.fn_StringSplit(@PickerId,',')))		 

	--set @RetValue=SCOPE_IDENTITY()
	--if (@RetValue>0)
	--begin
	--	update CFA.tblPickListHeader set PicklistStatus=6,ReAllottedBy=@ReAllottedBy,ReAllotedDate=getdate() where Picklistid=@Picklistid
	--	Update CFA.tblPicklistAllotment set AllotmentStatus=6 where Picklistid=@Picklistid and AllotmentId=@AllotmentId
	--end
	-------------------------------------------------

END
GO
/****** Object:  StoredProcedure [CFA].[usp_PicklistResolveConcern]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [CFA].[usp_PicklistResolveConcern]  
--declare
@AllotmentId int,  
@Picklistid int,  
@BranchId int,  
@CurrentStatus int,
@ResolveRemark nvarchar(250)='',
@StatusTime datetime,  
@UpdatedBy int,
@RetValue int output  
  
as  
  
BEGIN  
	if (isnull(@CurrentStatus,0)=9)  -- picker concern
	Begin
		 update CFA.tblPicklistAllotment set AllotmentStatus=4, PConcernResolveRemark=@ResolveRemark, PConcernResolveBy=@UpdatedBy, 
			PConcernResolveDate=@StatusTime, LastUpdatedDate=getdate() where AllotmentId=@AllotmentId  

		 --update CFA.tblPicklistReAllotment set ReAllotmentStatus=4, PConcernResolveRemark=@ResolveRemark, PConcernResolveBy=@UpdatedBy, 
			--PConcernResolveDate=@StatusTime, LastUpdatedDate=getdate() where ReAllotmentId=@AllotmentId 
	 
		 update CFA.tblPickListHeader set PicklistStatus=4, LastUpdatedOn=getdate() where Picklistid=@Picklistid
	End
	else if (isnull(@CurrentStatus,0) in (11))  --  verifier concern
	Begin
		update CFA.tblPicklistAllotment set AllotmentStatus=8, VConcernResolveRemark=@ResolveRemark, VConcernResolveBy=@UpdatedBy, 
			VConcernResolveDate=@StatusTime, LastUpdatedDate=getdate() where AllotmentId=@AllotmentId   

		 --update CFA.tblPicklistReAllotment set ReAllotmentStatus=8, VConcernResolveRemark=@ResolveRemark, VConcernResolveBy=@UpdatedBy, 
			--VConcernResolveDate=@StatusTime, LastUpdatedDate=getdate() where ReAllotmentId=@AllotmentId  
	 
		 update CFA.tblPickListHeader set PicklistStatus=8, LastUpdatedOn=getdate() where Picklistid=@Picklistid
	End

	set @RetValue=@AllotmentId  
  
End
GO
/****** Object:  StoredProcedure [CFA].[usp_PrintDetailsAdd]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_PrintDetailsAdd]
--DECLARE
@PrinterId INT,
@BranchId int,
@CompId INT,
@PrinterType NVARCHAR(100),
@PrinterIPAddress NVARCHAR(100),
@PrinterPortNumber INT,
@PrinterName NVARCHAR(100),
@Action NVARCHAR(10),
@UtilityNo INT,
@RetValue INT OUTPUT
AS
BEGIN
	 SET @RetValue=0
	 IF (UPPER(LTRIM(RTRIM(@Action)))='ADD')
	 BEGIN
		IF NOT EXISTS(SELECT 1 FROM CFA.tblPrinterDetails WHERE BranchId=@BranchId AND CompId=@CompId AND PrinterType=@PrinterType AND UtilityNo=@UtilityNo)
		BEGIN
			INSERT INTO CFA.tblPrinterDetails(BranchId,CompId,PrinterType,PrinterIPAddress,PrinterName,PrinterPortNumber,AddedBy,LastUpdatedOn,UtilityNo) 
			VALUES(@BranchId,@CompId,@PrinterType,@PrinterIPAddress,@PrinterName,@PrinterPortNumber,'Admin',GETDATE(),@UtilityNo)
			SET @RetValue=SCOPE_IDENTITY()
		END
		ELSE
		BEGIN
			SET @RetValue=-1  -- Same Branch and Company Exists
		END
	 END
	 ELSE IF (UPPER(LTRIM(RTRIM(@Action)))='EDIT')
	 BEGIN
		UPDATE CFA.tblPrinterDetails
		SET PrinterType=@PrinterType,
			PrinterIPAddress=@PrinterIPAddress,
			PrinterPortNumber=@PrinterPortNumber,
			PrinterName=@PrinterName,
			LastUpdatedOn=GETDATE()
		WHERE PrinterId=@PrinterId AND BranchId=@BranchId AND CompId=@CompId
		SET @RetValue=@PrinterId
	 END
	 ELSE IF (UPPER(LTRIM(RTRIM(@Action)))='DELETE')
	 BEGIN
		DELETE FROM CFA.tblPrinterDetails WHERE PrinterId=@PrinterId AND BranchId=@BranchId AND CompId=@CompId
		SET @RetValue=@PrinterId
	 END

  RETURN @RetValue

END
GO
/****** Object:  StoredProcedure [CFA].[usp_PrintDetailsAddDelete]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [CFA].[usp_PrintDetailsAddDelete]
    @BranchId INT,
    @CompId INT,
    @Action NVARCHAR(10),
    @UtilityNo INT,
    @RetValue INT OUTPUT
AS
BEGIN
    SET @RetValue = 0

    IF (UPPER(LTRIM(RTRIM(@Action))) = 'ADD')
    BEGIN
        IF NOT EXISTS (SELECT 1 FROM CFA.tblPrinterDetails WHERE BranchId = @BranchId AND CompId = @CompId AND UtilityNo = @UtilityNo)
        BEGIN
            INSERT INTO CFA.tblPrinterDetails (BranchId, CompId, UtilityNo)
            VALUES (@BranchId, @CompId, @UtilityNo)
            SET @RetValue = SCOPE_IDENTITY()
        END
        ELSE
        BEGIN
            SET @RetValue = -1  -- Same Branch and Company Exists
        END
    END
    ELSE IF (UPPER(LTRIM(RTRIM(@Action))) = 'DELETE')
    BEGIN
        DELETE FROM CFA.tblPrinterDetails WHERE BranchId = @BranchId AND CompId = @CompId AND UtilityNo = @UtilityNo
        SET @RetValue = 1 -- You can set any value for @RetValue here as an indication of the successful delete
    END

    RETURN @RetValue
END
GO
/****** Object:  StoredProcedure [CFA].[usp_PrinterLogAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**************************************************************											
--	Stored Procedure Name	: usp_PrinterLogAddEdit
--	Description		:		  To Insert log in database
--	Author			:	      Anil Shinde
--	Date Modified		Modified By	     Modifications
--	19-May-2022		       Anil            Created
**************************************************************/
CREATE PROCEDURE [CFA].[usp_PrinterLogAddEdit]
@PrinterLogID NUMERIC(17,0),
@PrinterLogFor NVARCHAR(150),
@PrinterLogData NVARCHAR(MAX),
@PrinterLogStatus NVARCHAR(50),
@PrinterLogDatetime DATETIME,
@PrinterLogException NVARCHAR(MAX)
AS
BEGIN
	DECLARE @IdentityId NUMERIC(17,0)
	IF(@PrinterLogID = 0)
	BEGIN		
		INSERT INTO CFA.tblPrinterLog(PrinterLogFor,PrinterLogData,PrinterLogStatus,PrinterLogDatetime,PrinterLogException,PrinterUpdatedDatetime)
		VALUES(@PrinterLogFor,@PrinterLogData,@PrinterLogStatus,@PrinterLogDatetime,@PrinterLogException,GETDATE())	
		SET @IdentityId = @@IDENTITY
	END
	IF(@PrinterLogID > 0)
	BEGIN
		UPDATE CFA.tblPrinterLog SET PrinterLogStatus=@PrinterLogStatus,PrinterLogException=@PrinterLogException,PrinterUpdatedDatetime=GETDATE() 
		WHERE PrinterLogID=@PrinterLogID
	END
	SELECT @IdentityId AS IdentityId
END



GO
/****** Object:  StoredProcedure [CFA].[usp_queryBuilder]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_queryBuilder]
@tbl nvarchar(500)='tblUser'

as

exec('select * from CFA.'+@tbl)
GO
/****** Object:  StoredProcedure [CFA].[usp_RaiseInsuranceClaimAndSAN]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_RaiseInsuranceClaimAndSAN]  
--DECLARE 
@TransitId BigInt,
@ClaimId BigInt,  
@BranchId INT,  
@CompId INT,  
@LRNo NVARCHAR(20),  
@ClaimNo NVARCHAR(20),  
@ClaimDate DATETIME,  
@ClaimAmount NVARCHAR(20),  
@ClaimTypeId bigint,  
@EmailSendDate DATETIME,
@SANNo NVARCHAR(20),
@SANDate  DATETIME,
@SANAmount  NVARCHAR(20),    
@IsEmailSend int,  
@Remark NVARCHAR(200),  
@AddedBy INT,  
@Action  NVARCHAR(10),  
@RetValue INT OUTPUT  
--SET @TransitId=1; SET @ClaimId=1; SET @BranchId=1; SET @CompId=1; SET @LRNo='12345'; SET @ClaimNo='11011'; SET @ClaimDate='2022-09-16'; 
--SET @ClaimAmount='11011';SET @ClaimType='1';  
--SET @EmailSendDate='2022-09-16'; SET @Remark='ClaimRaised';SET @IsEmailSend=1; SET @AddedBy=2;SET @Action='ADD';  
AS  
BEGIN

	 SET @RetValue=0  
	 IF (UPPER(LTRIM(RTRIM(@Action)))='ADD')  
	 BEGIN  

		  --IF NOT EXISTS(SELECT LRNo FROM CFA.tblInsuranceClaim WHERE LRNo=@LRNo)
	 
		  IF NOT EXISTS(SELECT ClaimId FROM CFA.tblInsuranceClaim WHERE ClaimId=@ClaimId)
		  BEGIN  
			   INSERT INTO CFA.tblInsuranceClaim(BranchId,CompId,LRNo,ClaimNo,ClaimDate,ClaimAmount,ClaimTypeId,ClaimStatus,IsEmailSend,EmailSendDate,SANNo,SANDate,SANAmount,Remark,AddedBy,AddedOn,TransitId)  
			   VALUES(@BranchId,@CompId,@LRNo,@ClaimNo,@ClaimDate,@ClaimAmount,@ClaimTypeId,'Started',@IsEmailSend,@EmailSendDate,@SANNo,@SANDate,@SANAmount,@Remark,@AddedBy,GETDATE(),@TransitId)  
				-- LR No against Is Claim flag=1 because entry added in Raise Claim 
				if(isnull(@ClaimNo,'')<>'') 
				begin
				
					--UPDATE CFA.tblMapInwardVehicle SET IsClaim=1,IsSAN=0 WHERE BranchId=@BranchId AND CompId=@CompId and LRNo=@LRNo 

					UPDATE CFA.tblMapInwardVehicle SET IsClaim=1,IsSAN=0,LastUpdatedOn=GETDATE()
					WHERE BranchId=@BranchId AND CompId=@CompId AND TransitId=@TransitId

				end
				else
				begin

					--UPDATE CFA.tblMapInwardVehicle SET IsClaim=0,IsSAN=1 WHERE BranchId=@BranchId AND CompId=@CompId and LRNo=@LRNo 

					UPDATE CFA.tblMapInwardVehicle SET IsClaim=0,IsSAN=1,LastUpdatedOn=GETDATE()
					WHERE BranchId=@BranchId AND CompId=@CompId AND TransitId=@TransitId

				end		   
			   SET @RetValue=@ClaimId  
		  END  
		  ELSE   
		  BEGIN  
				set @RetValue=-1  
		  END  
	 END  
	 ELSE IF (UPPER(LTRIM(RTRIM(@Action)))='EDIT')  
		 BEGIN  
			  UPDATE CFA.tblInsuranceClaim  
			  SET  TransitId=@TransitId,
				   ClaimNo=@ClaimNo,  
				   ClaimDate=@ClaimDate,  
				   ClaimAmount=@ClaimAmount,  
				   ClaimTypeId=@ClaimTypeId,     
				   EmailSendDate=@EmailSendDate,  
				   SANNo =@SANNo,
				   SANDate = @SANDate,
				   SANAmount = @SANAmount,
				   IsEmailSend =@IsEmailSend,  
				   Remark=@Remark,  
				   AddedBy=@AddedBy,  
				   LastUpdatedDate=GETDATE()  
			  WHERE BranchId=@BranchId AND CompId=@CompId and ClaimId=@ClaimId AND TransitId=@TransitId
			  ---- LR No against Is Claim flag=1 because entry added in Raise Claim  
			  --UPDATE CFA.tblMapInwardVehicle SET IsClaim=1,IsSAN=1 WHERE BranchId=@BranchId AND CompId=@CompId and LRNo=@LRNo    
			  set @RetValue=@ClaimId  
		 END  
	 ELSE IF (UPPER(LTRIM(RTRIM(@Action)))='DELETE')  
		 BEGIN
			  -- LR No against Is Claim flag=1 because entry added in Raise Claim  
			  UPDATE CFA.tblMapInwardVehicle SET IsClaim=0,IsSAN=0 WHERE BranchId=@BranchId AND CompId=@CompId 
			  and LRNo=(select @LRNo from CFA.tblInsuranceClaim where ClaimId=@ClaimId)
  
			  DELETE FROM CFA.tblInsuranceClaim WHERE ClaimId=@ClaimId -- AND TransitId=@TransitId
			  set @RetValue=@ClaimId  
		 END  
  
END  
  
GO
/****** Object:  StoredProcedure [CFA].[usp_RaiseRequestForTransitData]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_RaiseRequestForTransitData]
--DECLARE
@BranchId INT,
@CompId INT,
@LrNo NVARCHAR(200) ,
@InvoiceNo NVARCHAR(200),
@Remark NVARCHAR(200),
@AddedBy NVARCHAR(50),
@RetValue INT OUTPUT
--SET @BranchId=1; SET @CompId=1; SET @LrNo=11234;SET @InvoiceNo=1256; SET @Remark='Raise Request - Transit Data In SAP'; SET @AddedBy='2';
AS
BEGIN

	SET @RetValue=0
	if not exists(select LrNo,InvoiceNo from CFA.tblTransitDataRaiseConcern where LrNo=@LrNo and InvoiceNo=@InvoiceNo)
	begin
		INSERT INTO CFA.tblTransitDataRaiseConcern(BranchId,CompId,LrNo,InvoiceNo,Remark,AddedBy,AddedOn)
		values(@BranchId,@CompId,@LrNo,@InvoiceNo,@Remark,@AddedBy,GETDATE())

		--UPDATE CFA.tblTransitInvoiceHeader set RaiseConcernId=@RaiseConcernId,RaiseConcernBy=@AddedBy,RaiseConcernRemarks=@Remark,RaiseConcernUpdatedOn=GETDATE()
		--WHERE BranchId=@BranchId and CompId=@CompId and LrNo=@LrNo and InvNo=@InvoiceNo
		SET @RetValue=SCOPE_IDENTITY()
	end
	else
	BEGIN
		set @RetValue = -1
	END
END
GO
/****** Object:  StoredProcedure [CFA].[usp_RefreshTokenAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [CFA].[usp_RefreshTokenAddEdit]
@ClientKey	nvarchar(MAX),
@RefreshValue	nvarchar(MAX),
@CreatedDate	datetime,
@UserId	bigint,
@LastUpdateDate	datetime,
@ExpiryTime	datetime,
@Action nvarchar(25)

as

declare @RtnValue bigint = 0
if(upper(@action)='ADD')
Begin
	if exists(select 1 from cfa.tblRefreshToken where UserId=@UserId)
	Begin
		delete from CFA.tblRefreshToken  where UserId=@UserId 
	End

	insert into CFA.tblRefreshToken (ClientKey,RefreshValue,CreatedDate,UserId,LastUpdateDate,ExpiryTime)
	values (@ClientKey,@RefreshValue,@CreatedDate,@UserId,getdate(),@ExpiryTime)
	set @RtnValue=SCOPE_IDENTITY()
	
	select @RtnValue RtnValue, ClientKey, RefreshValue, CreatedDate, UserId, LastUpdateDate, ExpiryTime from CFA.tblRefreshToken where UserId=@UserId
End
else if (upper(@action)='GET')
Begin
	select @RtnValue as RtnValue, ClientKey, RefreshValue, CreatedDate, UserId, LastUpdateDate, ExpiryTime from CFA.tblRefreshToken where UserId=@UserId
End

GO
/****** Object:  StoredProcedure [CFA].[usp_ReimbursementInvAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_ReimbursementInvAddEdit]
--declare
@ReimId	int,
@BranchId int,
@CompId	int,
@InvDate datetime,
@ExpInvIdstr varchar(max),
@TaxableAmt	int,
@CGST float,
@SGST float,
@TotalAmt float,
@ExpHeadId int,
@TDS int,
@Remark	nvarchar(500),
@Addedby nvarchar(50),
@Action	nvarchar(20),
@RetValue int OUTPUT
-- set @ReimId=0; set @BranchId=1; set @CompId=1; set @InvDate='2023-05-06'; set @ExpInvIdstr='1,' set @TaxableAmt=1000;
-- set @CGST=90; set @SGST=90; set @TotalAmt=1180; set @ExpHeadId=134; set @Remark='Reimbursement Remark Added'; set @Addedby='1' set @Action='ADD'
as
BEGIN
	set @RetValue=0
	If(@Action='ADD')
	Begin
		declare @InvoiceNo nvarchar(20); declare @tblNo table(InvNoNew nvarchar(20))
		insert into @tblNo(InvNoNew) exec cfa.usp_GetReimInvNo @BranchId,@InvDate
		select @InvoiceNo =InvNoNew from @tblNo
		print @InvoiceNo

		declare @expId table(id int, expid bigint)	

		if (@CompId>0 and @ExpHeadId>0 and @TaxableAmt>0 and isnull(@ExpInvIdstr,'')<>'')
		Begin
			insert into @expId(id,expid) select id,[value] from CFA.fn_StringSplit(@ExpInvIdstr,',')

			insert into CFA.tblReimbursementInv(BranchId,CompId,InvNo,InvDate,TaxableAmt,CGST,SGST,TotalAmt,ExpHeadId,TDS,Remark,Addedby,AddedOn,LastUpdatedOn)
			values (@BranchId,@CompId,@InvoiceNo,@InvDate,@TaxableAmt,@CGST,@SGST,@TotalAmt,@ExpHeadId,@TDS,@Remark,@Addedby,getdate(),getdate())
			set @RetValue=SCOPE_IDENTITY()			
			if(@RetValue>0)
			Begin
				insert into cfa.tblReimbursementInvDtls(ReimId,BranchId,CompId,ExpInvId,TaxableAmt,CGST,SGST,TotalAmt,AddedBy,AddedOn,LastUpdatedOn)
				select @RetValue,@BranchId,@CompId,e.expid,er.TaxableAmt,er.CGST,er.SGST,er.TotalAmt,@Addedby,getdate(),getdate() 
				from @expId e inner join CFA.tblExpenseRegister er on e.expid=er.ExpInvId 
				left outer join CFA.tblReimbursementInvDtls rm on e.expid=rm.ExpInvId
				where er.BranchId=@BranchId and er.CompId=@CompId and rm.ExpInvId is null 
			End
		End
		else
		Begin
			set @RetValue=-1
		End
	End
	If(@Action='EDIT')
	Begin
		if (@CompId>0 and @ExpHeadId>0 and @TaxableAmt>0 and @ReimId>0 and isnull(@ExpInvIdstr,'')<>'')
		Begin
			insert into @expId(id,expid) select id,[value] from CFA.fn_StringSplit(@ExpInvIdstr,',')
			
			Update CFA.tblReimbursementInv 
			set CompId=@CompId,InvDate=@InvDate,TaxableAmt=@TaxableAmt,CGST=@CGST,SGST=@SGST,
				TotalAmt=@TotalAmt,ExpHeadId=@ExpHeadId,TDS=@TDS,Remark=@Remark,LastUpdatedOn=GETDATE()
			where ReimId=@ReimId

			-- Delete unticked first
			delete from CFA.tblReimbursementInvDtls 
			where BranchId=@BranchId and CompId=@CompId and ReimId=@ReimId and ExpInvId not in (select expid from @expId)

			insert into cfa.tblReimbursementInvDtls(ReimId,BranchId,CompId,ExpInvId,TaxableAmt,CGST,SGST,TotalAmt,AddedBy,AddedOn,LastUpdatedOn)
			select @ReimId,@BranchId,@CompId,e.expid,er.TaxableAmt,er.CGST,er.SGST,er.TotalAmt,@Addedby,getdate(),getdate() 
			from @expId e inner join CFA.tblExpenseRegister er on e.expid=er.ExpInvId 
			left outer join CFA.tblReimbursementInvDtls rm on e.expid=rm.ExpInvId
			where er.BranchId=@BranchId and er.CompId=@CompId and rm.ExpInvId is null 
							
			set @RetValue=@ReimId
		End
		else
		Begin
			set @RetValue=-1
		End
	End
	If(@Action='DELETE')
	Begin
		if not exists(select ReimId from CFA.tblReimbursementPaymentDtls where ReimId=@ReimId)
		Begin
			Delete from CFA.tblReimbursementInvDtls where ReimId=@ReimId and BranchId=@BranchId and CompId=@CompId
			Delete from CFA.tblReimbursementInv where ReimId=@ReimId and BranchId=@BranchId and CompId=@CompId
			set @RetValue=@ReimId
		End
		else
		Begin
			set @RetValue=-1
		End
	End
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ReimbursementInvById]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- CFA.usp_ReimbursementInvById 1,1,0
CREATE procedure [CFA].[usp_ReimbursementInvById]
--declare
@BranchId int,
@CompId int,
@ReimId int
--set @BranchId=1; set @CompId=1; set @ReimId=0
as
begin
	SELECT e.ExpInvId,e.ExpInvNo,e.InvDate,e.NoOfBox,e.CompId,
	CASE WHEN e.VendorId > 0 THEN v.VendorName WHEN e.CourierId > 0 THEN c.CourierName ELSE t .TransporterName END AS BillFromName, 
	e.BranchId,e.InvFromDt,e.InvToDt,e.TaxableAmt,e.CGST,e.SGST,e.TotalAmt,e.IsReimbursable,e.ExpInvStatus,rd.ReimId
	FROM CFA.tblExpenseRegister AS e WITH(NOLOCK) 
	LEFT OUTER JOIN CFA.tblVendorMaster AS v WITH(NOLOCK) ON v.VendorId=e.VendorId 
	LEFT OUTER JOIN CFA.tblTransporterMaster AS t WITH(NOLOCK) ON t.TransporterId=e.TransId 
	LEFT OUTER JOIN CFA.tblCourierMaster AS c WITH(NOLOCK) ON c.CourierId=e.CourierId
	LEFT OUTER JOIN CFA.tblReimbursementInvDtls rd WITH(NOLOCK) ON e.ExpInvId=rd.ExpInvId
	where (e.BranchId=@BranchId or @BranchId=0) and e.CompId=@CompId and (rd.ExpInvId is null or rd.ReimId=@ReimId)
end

GO
/****** Object:  StoredProcedure [CFA].[usp_ReimbursementInvList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_ReimbursementInvList] 1,1  
CREATE proc [CFA].[usp_ReimbursementInvList]  
--declare  
@BranchId int
--set @BranchId=1; set @CompanyId=1;  
as  
begin
	 select r.ReimId,r.BranchId,r.CompId,c.CompanyName,r.InvNo,r.InvDate,r.TaxableAmt,r.CGST,r.SGST,r.TDS,r.TotalAmt,
			r.ExpHeadId as ExpeHeadId,g.MasterName as ExpeHeadName,r.Remark,ISNULL(sum(rp.PaymentAmt),0) as PaymentAmt
	 from CFA.tblReimbursementInv as r with(nolock)
	 left outer join CFA.tblCompanyMaster c with(nolock) on c.CompanyId=r.CompId
	 left outer join CFA.tblGeneralMaster as g with(nolock) on r.ExpHeadId=g.pkId
	 left outer join CFA.tblReimbursementPaymentDtls as rp with(nolock) on rp.ReimId=r.ReimId
	 where (r.BranchId=@BranchId)
	 group by r.ReimId,r.BranchId,r.CompId,c.CompanyName,r.InvNo,r.InvDate,r.TaxableAmt,r.CGST,r.SGST,r.TDS,r.TotalAmt,r.ExpHeadId,g.MasterName,r.Remark
end
GO
/****** Object:  StoredProcedure [CFA].[usp_ReimbursementPaymentDtlsAdd]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [CFA].[usp_ReimbursementPaymentDtlsAdd]
--declare
@ReimPaymentId int,
@ReimId int,
@PaymentDate datetime,
@TDS float,
@PaymentAmt float,
@PaymentModeId int,
@UTRNo int,
@Remark nvarchar(200),
@Addedby nvarchar(50),
@Action	nvarchar(20),
@RetValue int OUTPUT
as
BEGIN
	set @RetValue=0
	If(@Action='ADD')
	Begin
		if (@PaymentAmt>0 and @ReimId>0)
		Begin
			insert into CFA.tblReimbursementPaymentDtls(ReimId,PaymentDate,TDS,PaymentAmt,PaymentModeId,UTRNo,Remark,Addedby,LastUpdatedOn)
			values (@ReimId,@PaymentDate,@TDS,@PaymentAmt,@PaymentModeId,@UTRNo,@Remark,@Addedby,getdate())
			set @RetValue=SCOPE_IDENTITY()
		End
		else
		Begin
			set @RetValue=-1
		End
	End
	If(@Action='DELETE')
	Begin
		Delete from CFA.tblReimbursementPaymentDtls where ReimPaymentId=@ReimPaymentId
		set @RetValue=@ReimPaymentId
	End
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ReimbursementPaymentList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- [CFA].[usp_ReimbursementPaymentList] 1
CREATE proc [CFA].[usp_ReimbursementPaymentList]
@ReimId int

as
BEGIN
	select rd.ReimPaymentId,rd.ReimId,r.InvNo,rd.PaymentDate,rd.TDS,rd.PaymentModeId,g.MasterName as PaymentMode,rd.PaymentAmt,rd.Remark,rd.UTRNo
	from CFA.tblReimbursementPaymentDtls as rd with(nolock) 
	left outer join CFA.tblReimbursementInv as r with(nolock) on rd.ReimId=r.ReimId 
	left outer join CFA.tblGeneralMaster as g with(nolock) on rd.PaymentModeId=g.pkId
	where rd.ReimId=@ReimId
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ResolveRaisedConcernAtOpLevel]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_ResolveRaisedConcernAtOpLevel]
@RaieseReqId int,
@BranchId int,
@CompId int,
@AddedBy int,
@RetValue int output
AS
BEGIN
	 SET @RetValue=0
	 UPDATE CFA.tblTransitDataRaiseConcern SET ResolvedBy=@AddedBy,ResolvedOn=GETDATE()
	 WHERE RaieseReqId=@RaieseReqId AND BranchId=@BranchId AND CompId=@CompId
	 SET @RetValue=@RaieseReqId
	 RETURN @RetValue
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ResolveVehicleIssue]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE PROC [CFA].[usp_ResolveVehicleIssue]      
--DECLARE      
@pkId BIGINT,      
@BranchId INT,      
@CompId INT,      
@IsConcern int,    
@ActualNoOfCasesQty int,    
@NoOfCasesQty int,      
@ResolveVehicleRemark nvarchar(250),    
@AddedBy int,      
@RetValue INT OUTPUT      
--SET @pkId=1;SET @BranchId=1;SET @CompId=1;SET @IsConcern=1;SET @AddedBy='4';      
AS      
BEGIN      
 SET @RetValue=0;      
 UPDATE CFA.tblMapInwardVehicle SET IsConcern=@IsConcern,ActualNoOfCasesQty=@ActualNoOfCasesQty,NoOfCasesQty = @NoOfCasesQty,    
 ResolveVehicleRemark=@ResolveVehicleRemark,ResolvedBy=@AddedBy,ResolvedOn=GETDATE()
 WHERE BranchId=@BranchId AND CompId=@CompId AND pkId=@pkId      
 SET @RetValue=@pkId       
 RETURN @RetValue      
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ResolveVehicleLRIssue]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [CFA].[usp_ResolveVehicleLRIssue]
--DECLARE
@pkId BIGINT,
@BranchId INT,
@CompId INT,
@IsConcern int,
@IsApproveBy NVARCHAR(20),
@RetValue INT output

--SET @pkId=1;SET @BranchId=1;SET @CompId=1;SET @IsApprove='Y';SET @IsApproveBy='2';

AS
BEGIN
	SET @RetValue=0;
	UPDATE CFA.tblMapInwardVehicle SET IsConcern=@IsConcern,IsApproveBy=@IsApproveBy,IsApproveOn=GETDATE()
	WHERE BranchId=@BranchId AND CompId=@CompId AND pkId=@pkId
	SET @RetValue=@pkId
	
	RETURN @RetValue

END


GO
/****** Object:  StoredProcedure [CFA].[usp_RptChqRegisterSummary]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--		cfa.usp_RptChqRegisterSummary 1,1 
CREATE proc [CFA].[usp_RptChqRegisterSummary] 
--declare
@BranchId int,
@CompId int

--set @BranchId=1; set @CompId=1;
as
SELECT cq.StokistId, st.StockistNo, st.StockistName, b.MasterName AS BankName, cq.BankId, cq.IFSCCode, cq.AccountNo, 
COUNT(cq.ChqRegId) AS TotalChqCount, 
SUM(CASE WHEN cq.ChqStatus = 0 THEN 1 ELSE 0 END) AS BlankChqs, 
SUM(CASE WHEN cq.ChqStatus = 1 THEN 1 ELSE 0 END) AS UtilisedChqs, 
SUM(CASE WHEN cq.ChqStatus = 2 THEN 1 ELSE 0 END) AS PrepareChqs, 
SUM(CASE WHEN cq.ChqStatus = 3 THEN 1 ELSE 0 END) AS DiscardedChqs, 
SUM(CASE WHEN cq.ChqStatus = 4 THEN 1 ELSE 0 END) AS DepositedChqs, 
SUM(CASE WHEN cq.ChqStatus = 5 THEN 1 ELSE 0 END) AS ReturnedChqs, 
SUM(CASE WHEN cq.ChqStatus = 8 THEN 1 ELSE 0 END) AS SettledChqs
FROM            CFA.tblChequeRegister AS cq INNER JOIN
CFA.tblStatusMaster AS s ON cq.ChqStatus = s.id AND s.StatusFor = 'CHQ' LEFT OUTER JOIN
CFA.tblStockistMaster AS st ON cq.StokistId = st.StockistId LEFT OUTER JOIN
CFA.tblStockiestBankDetails AS sb ON st.StockistId = sb.StockistId and cq.BankId=sb.BankId LEFT OUTER JOIN
CFA.tblGeneralMaster AS b ON sb.BankId = b.pkId
WHERE cq.BranchId = @BranchId  AND cq.CompId = @CompId 
GROUP BY cq.StokistId, st.StockistNo, st.StockistName, b.MasterName, cq.BankId, cq.IFSCCode, cq.AccountNo
GO
/****** Object:  StoredProcedure [CFA].[usp_RptChqSummaryForSalesTeam]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_RptChqSummaryForSalesTeam] 0,0
CREATE proc [CFA].[usp_RptChqSummaryForSalesTeam]
@BranchId int,
@CompId int
as

BEGIN

	select c.StokistId, s.StockistNo, s.StockistName,ct.CityName, count(c.ChqRegId) TotalChqCount,
	sum(case when c.ChqStatus=0 then 1 else 0 end) as BlankChqs,s.Emailid
	--'anilshinde@aadyamconsultant.com' AS Emailid
	from CFA.tblChequeRegister c inner join CFA.tblStockistMaster s on c.StokistId=s.StockistId
	left outer join CFA.tblCityMaster ct on s.CityCode=ct.CityCode
	where (c.BranchId=@BranchId or @BranchId=0) and (c.CompId=@CompId or @CompId=0)
	group by c.StokistId, s.StockistNo, s.StockistName,ct.CityName,s.Emailid
END
GO
/****** Object:  StoredProcedure [CFA].[usp_SANApproveAdd]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [CFA].[usp_SANApproveAdd]    Script Date: 2023-04-29 11:29:27 AM ******/
CREATE procedure [CFA].[usp_SANApproveAdd]
--DECLARE
@TransitId BIGINT,
@ClaimId INT,
@BranchId INT,
@CompId INT,
@SANNo NVARCHAR(50),
@SANApproveBy NVARCHAR(200),
@SANDate DATETIME,
@SANRemark NVARCHAR(200),
@RetValue INT OUTPUT 
--SET @TransitId=1; SET @ClaimId=1; SET @BranchId=1; SET @CompId=1; SET @SANNo='102'; SET @SANApproveBy='pranita' SET @SANDate='2022-09-22'; SET @SANRemark='Approve SAN';
AS
BEGIN
	SET @RetValue=0;
	IF EXISTS(SELECT TransitId FROM CFA.tblInsuranceClaim WHERE TransitId=@TransitId)
	BEGIN
		UPDATE CFA.tblInsuranceClaim SET SANNo=@SANNo,SANApproveBy=@SANApproveBy,SANDate=@SANDate,SANRemark=@SANRemark,ClaimStatus='SAN Approved'
		WHERE BranchId=@BranchId AND CompId=@CompId AND ClaimId=@ClaimId AND TransitId=@TransitId
		SET @RetValue=@TransitId
	END
	ELSE
	BEGIN
		SET @RetValue=-1
	END
END





	
GO
/****** Object:  StoredProcedure [CFA].[usp_SaveOCRTextData]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_SaveOCRTextData]
--DECLARE
@pkId INT,
@BranchId INT,
@CompId INT,
@StockistId INT,
@LR_ClaimNo nvarchar(50),
@BatchNo nvarchar(50),
@Quantity INT,
@Unit nvarchar(10),
@Code nvarchar (50),
@ProductName nvarchar(150),
@ReturnType nvarchar(50),
@Division INT,
@Plant INT,
@MFG_Date nvarchar (20),
@EXP_Date nvarchar (20),
@MRP_Price nvarchar (20),
@Action nvarchar (10),
@RetVal INT OUTPUT

AS 
BEGIN 
	SET @RetVal=0
	IF (UPPER(LTRIM(RTRIM(@Action))) = 'ADD')
	BEGIN
	IF NOT EXISTS(SELECT BatchNo FROM CFA.tblOCRTextData WHERE BatchNo=@BatchNo)
		BEGIN
			INSERT INTO CFA.tblOCRTextData(BranchId,CompId,StockistId,LR_ClaimNo,BatchNo,Quantity,Unit,Code,ProductName,ReturnType,Division,Plant,MFG_Date,EXP_Date,MRP_Price,AddedOn,LastUpdateOn)
			SELECT @BranchId,@CompId,@StockistId,@LR_ClaimNo,@BatchNo,@Quantity,@Unit,@Code,@ProductName,@ReturnType,@Division,@Plant,@MFG_Date,@EXP_Date,@MRP_Price,GETDATE(),GETDATE()
		SET @RetVal=SCOPE_IDENTITY()
		END
		ELSE
		BEGIN
			SET @RetVal=-1
		END
	END	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_SavePrintBoxNoForMob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_SavePrintBoxNoForMob]
--DECLARE
@BranchId INT,
@CompId INT,
@InvId BIGINT,
@Type NVARCHAR(50),
@BoxNo NVARCHAR(200),
@AddedBy NVARCHAR(50),
@Action NVARCHAR(10),
@RetValue INT OUTPUT
--SET @BranchId=1; SET @CompId=1; SET @InvId=27; SET @Type='Sticker' SET @BoxNo=5; SET @Action ='ADD'
AS
BEGIN
	SET @RetValue=0
	IF (UPPER(LTRIM(RTRIM(@Action)))='ADD')
	BEGIN
		IF NOT EXISTS(SELECT InvId,BoxNo FROM CFA.tblPrinterPDFData WHERE InvId=@InvId AND BoxNo=@BoxNo)
		BEGIN
			INSERT INTO CFA.tblPrinterPDFData(BranchId,CompId,InvId,[Type],BoxNo,AddedBy,LastUpdatedOn)
			SELECT @BranchId,@CompId,@InvId,@Type,@BoxNo,@AddedBy,GETDATE()
			SET @RetValue=SCOPE_IDENTITY(); 
		END
		ELSE
		BEGIN
			SET @RetValue=-1;  -- Already exists InvId wise BoxNo
		END
	END

  RETURN @RetValue

END  
  
GO
/****** Object:  StoredProcedure [CFA].[usp_SavePrintPDFData]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [CFA].[usp_SavePrintPDFData]
--DECLARE
@pkId INT,
@BranchId INT,
@CompId INT,
@InvId BIGINT,
@GpId INT,
@Type NVARCHAR(50),
@BoxNo NVARCHAR(200),
@Flag NVARCHAR(50),
@AddedBy NVARCHAR(50),
@Action NVARCHAR(10),
@RetValue INT OUTPUT
--SET @BranchId=1; SET @CompId=2; SET @InvId ='3708'; SET @GpId=0; SET @Type='Sticker'; SET @BoxNo=1; SET @Flag='Pending'; SET @AddedBy ='6' SET @Action ='ADD';
AS
BEGIN
	SET @RetValue=0
	Declare @PrintCount int, @AttachedInvId int = 0;
	IF (UPPER(LTRIM(RTRIM(@Action)))='ADD')
	BEGIN
	Set @AttachedInvId = ((select AttachedInvId from CFA.tblAssignTransportMode where InvoiceId = @InvId) );
	IF NOT EXISTS(SELECT InvId,BoxNo,[Type],Flag FROM CFA.tblPrinterPDFData WHERE InvId = @InvId AND BoxNo = @BoxNo AND [Type] = @Type AND UPPER(Flag)='PENDING')
	BEGIN
	    set @PrintCount = (select count(InvId) from CFA.tblPrinterPDFData where (InvId = @InvId OR InvId = @AttachedInvId) AND [Type] = 'Sticker');
			IF(ISNULL(@AttachedInvId, 0) != 0)
				Begin
					INSERT INTO CFA.tblPrinterPDFData(BranchId,CompId,InvId,GpId,[Type],BoxNo,Flag,PrintCount,AddedBy,LastUpdatedOn)
					SELECT @BranchId,@CompId,@AttachedInvId,@GpId,@Type,@BoxNo,@Flag,@PrintCount,@AddedBy,GETDATE()
					SET @RetValue=SCOPE_IDENTITY();
				End
			Else
				Begin
					INSERT INTO CFA.tblPrinterPDFData(BranchId,CompId,InvId,GpId,[Type],BoxNo,Flag,PrintCount,AddedBy,LastUpdatedOn)
					SELECT @BranchId,@CompId,@InvId,@GpId,@Type,@BoxNo,@Flag,@PrintCount,@AddedBy,GETDATE()
					SET @RetValue=SCOPE_IDENTITY();
				End
	END
	END
	ELSE IF (UPPER(LTRIM(RTRIM(@Action)))='EDIT')
	BEGIN
		UPDATE CFA.tblPrinterPDFData SET Flag=@Flag,LastUpdatedOn=GETDATE()
		WHERE pkId = @pkId

		SET @RetValue=@InvId

		UPDATE CFA.tblGenerateGatepass SET IsPrinted=1 WHERE GatepassId=@GpId
	END
  RETURN @RetValue
END  
GO
/****** Object:  StoredProcedure [CFA].[usp_ScannedInvDataAddUpdate]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_ScannedInvDataAddUpdate]
--declare
@BranchId int,
@CompId int,
@AddedBy int,
@tblData CFA.ScannedInvData readonly

--insert into @tblData(pkId,InvId,ScannedBoxes) values (1,123123,1)
--insert into @tblData(pkId,InvId,ScannedBoxes) values (1,123123,1)
--insert into @tblData(pkId,InvId,ScannedBoxes) values (1,123123,1)
--insert into @tblData(pkId,InvId,ScannedBoxes) values (1,123123,1)
--insert into @tblData(pkId,InvId,ScannedBoxes) values (1,2,2)
--insert into @tblData(pkId,InvId,ScannedBoxes) values (1,2,3)
--insert into @tblData(pkId,InvId,ScannedBoxes) values (1,2,4)
--insert into @tblData(pkId,InvId,ScannedBoxes) values (1,1,8)
AS

BEGIN
	declare @RetValue int = 0;
	if exists(SELECT dt.InvId from @tblData as dt left outer join CFA.tblScannedInvData sc with (nolock) 
		on dt.InvId=sc.InvId and dt.ScannedBoxes=sc.ScannedBoxes where sc.InvId is null)
	BEGIN
		INSERT INTO CFA.tblScannedInvData(InvId,BranchId,CompId,ScannedBoxes,AddedBy,AddedOn)
		SELECT distinct dt.InvId,@BranchId b ,@CompId cm ,dt.ScannedBoxes,@AddedBy,GETDATE() 
		from @tblData as dt left outer join CFA.tblScannedInvData sc with (nolock) on dt.InvId=sc.InvId and dt.ScannedBoxes=sc.ScannedBoxes
		where sc.InvId is null
		SET @RetValue=SCOPE_IDENTITY();	
	END
	else
		set @RetValue=-1

	SELECT isnull(@RetValue,-1) AS RetValue
END
GO
/****** Object:  StoredProcedure [CFA].[usp_SRSHeaderList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_SRSHeaderList]
--DECLARE
@BranchId INT,
@CompId INT,
@Date datetime
--SET @BranchId = 1; SET @CompId =1; SET @Date='2022-08-10';

AS 

BEGIN
	SELECT s.BranchId, s.CompId, s.SRSId, s.SalesDocNo,CFA.fn_CamelCase(sm.StockistName) AS StockistName, 
		s.SoldtoPartyId, sm.StockistNo, sm.CityCode, CFA.fn_CamelCase(ct.CityName) CityName, s.Netvalue, s.PONoLRNo,
		s.Division,s.SalesOrganization, s.Plant,s.SRSStatus
	FROM CFA.tblSRSHeader AS s LEFT OUTER JOIN CFA.tblStockistMaster AS sm ON s.SoldtoPartyId = sm.StockistId 
		LEFT OUTER JOIN CFA.tblCityMaster AS ct ON sm.CityCode = ct.CityCode
WHERE s.BranchId=@BranchId AND s.CompId=@CompId AND cast(s.AddedOn as date)=cast(@Date as date)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_StockiestBranchRelationAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_StockiestBranchRelationAddEdit]
@pkid int,
@StockiestIdstr	varchar(max),
@BranchId	int,
@AddedBy	int,
@Action	nvarchar(10),
@RetValue	int output

AS
BEGIN
	set @RetValue=0
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin
		if  exists(select pkid from CFA.tblStockiestBranchRelation where BranchId=@BranchId)
		Begin
			delete from CFA.tblStockiestBranchRelation where BranchId=@BranchId
		End

		insert into CFA.tblStockiestBranchRelation(BranchId,StockiestId,AddedBy,AddedDate,LastUpdatedDate) 
		select @BranchId,[value],@AddedBy,getdate(),getdate() from CFA.fn_StringSplit(@StockiestIdstr,',')
		set @RetValue=SCOPE_IDENTITY()
	End
	else if (upper(ltrim(rtrim(@Action)))='DELETE')
	Begin
		if  exists(select pkid from CFA.tblStockiestCompanyRelation where pkid=@pkid)
		Begin
			delete from CFA.tblStockiestBranchRelation where pkid=@pkid
			set @RetValue=@pkid
		End
	End
	else
	Begin
		set @RetValue=-2
	End	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_StockiestCompanyRelationAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_StockiestCompanyRelationAddEdit]
@pkid int,
@StockiestStr	varchar(max),
@CompId	int,
@AddedBy	int,
@Action	nvarchar(10),
@RetValue	int output

AS
BEGIN
	set @RetValue=0
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin
		if  exists(select pkid from CFA.tblStockiestCompanyRelation where CompId=@CompId)
		Begin
			delete from CFA.tblStockiestCompanyRelation where CompId=@CompId
		End

		insert into CFA.tblStockiestCompanyRelation(CompId,StockiestId,AddedBy,AddedDate,LastUpdatedDate) 
		select @CompId,[value],@AddedBy,getdate(),getdate() from CFA.fn_StringSplit(@StockiestStr,',')
		set @RetValue=SCOPE_IDENTITY()
	End
	else if (upper(ltrim(rtrim(@Action)))='DELETE')
	Begin
		if  exists(select pkid from CFA.tblStockiestCompanyRelation where pkid=@pkid)
		Begin
			delete from CFA.tblStockiestCompanyRelation where pkid=@pkid
			set @RetValue=@pkid
		End
	End
	else
	Begin
		set @RetValue=-2
	End	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_StockistBankListById]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [CFA].[usp_StockistBankListById] 
--declare
@StockistId int
--set @StockistId=37; 

AS

BEGIN
	SELECT sb.StkBankId, sb.StockistId, sb.BranchId, sb.CompId, sb.BankId, b.MasterName AS BankName, sb.IFSCCode, 
	sb.AccountNo, sb.AddedBy, sb.LastUpdatedDate
	FROM CFA.tblStockiestBankDetails AS sb LEFT OUTER JOIN CFA.tblGeneralMaster AS b ON sb.BankId = b.pkId
	WHERE sb.StockistId=@StockistId 
		
END
GO
/****** Object:  StoredProcedure [CFA].[usp_StockistBranchRelationList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [CFA].[usp_StockistBranchRelationList]
@BranchId int

as
BEGIN
	SELECT c.PkId, c.StockiestId, ct.StockistNo, ct.StockistName, c.BranchId, bm.BranchName, bm.BranchCode, c.AddedBy, c.AddedDate, c.LastUpdatedDate
	FROM CFA.tblStockiestBranchRelation AS c LEFT OUTER JOIN CFA.tblStockistMaster AS ct ON c.StockiestId = ct.StockistId 
	LEFT OUTER JOIN CFA.tblBranchMaster AS bm ON c.BranchId = bm.BranchId
	where (c.BranchId = @BranchId or ISNULL(@BranchId,0) = 0)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_StockistCompRelationList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [CFA].[usp_StockistCompRelationList] 

@CompId int

as
BEGIN
	SELECT c.PkId, c.StockiestId, ct.StockistNo, ct.StockistName, c.CompId, cm.CompanyCode, cm.CompanyName, c.AddedBy, c.AddedDate, c.LastUpdatedDate
	FROM CFA.tblStockiestCompanyRelation AS c LEFT OUTER JOIN CFA.tblStockistMaster AS ct ON c.StockiestId = ct.StockistId 
	LEFT OUTER JOIN CFA.tblCompanyMaster AS cm ON c.CompId = cm.CompanyId
	where (c.CompId = @CompId or ISNULL(@CompId,0) = 0)
END
GO
/****** Object:  StoredProcedure [CFA].[usp_StockistMasterAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_StockistMasterAddEdit]
@StockistId	int,
@StockistNo	nvarchar(20),
@StockistName	nvarchar(100),
@StockistPAN	nvarchar(10),
@Emailid	nvarchar(100),
@MobNo	nvarchar(30),
@StockistAddress	nvarchar(250),
@CityCode	nvarchar(20),
@GSTNo	nvarchar(50),
@Pincode	varchar(10),
@DLNo	nvarchar(50),
@DLExpDate	datetime= null,
@FoodLicNo	nvarchar(50),
@FoodLicExpDate	datetime=null,
@IsActive	char(1),
@Addedby	nvarchar(50),
@BnkDtls cfa.StkBankDtls readonly,
@Action	nvarchar(10),
@RetValue	int output

AS

BEGIN
	set @RetValue=0
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin
		if not exists(select StockistId from CFA.tblStockistMaster where StockistNo=@StockistNo)
		Begin
			insert into CFA.tblStockistMaster(StockistNo, StockistName, StockistPAN, Emailid, MobNo, StockistAddress, 
				CityCode, GSTNo, Pincode, DLNo, DLExpDate, FoodLicNo, FoodLicExpDate,IsActive, Addedby, AddedOn, LastUpdatedOn)
			values(@StockistNo, @StockistName, @StockistPAN, @Emailid, @MobNo, @StockistAddress, 
				@CityCode, @GSTNo, @Pincode, @DLNo, @DLExpDate, @FoodLicNo, @FoodLicExpDate, 'Y', @Addedby, getdate(), getdate())
				
			set @RetValue=SCOPE_IDENTITY()
			if (@RetValue>0)
			Begin
			-- remove old entries and then add new 
				delete from CFA.tblStockiestBankDetails where StockistId=@StockistId 
				insert into CFA.tblStockiestBankDetails(StockistId,BankId,IFSCCode,AccountNo,AddedBy,LastUpdatedDate)
				select @RetValue,BankId,IFSCCode,AccountNo,@AddedBy,getdate() from @BnkDtls
			End
		End
		else 
			set @RetValue=-1	-- Stockist with same code and company already exists
	End
	else if (upper(ltrim(rtrim(@Action)))='EDIT')
	Begin
		if not exists(select StockistId from CFA.tblStockistMaster where StockistNo=@StockistNo and StockistId<>StockistId)
		Begin
			update CFA.tblStockistMaster
			set StockistNo=@StockistNo,
				StockistName=@StockistName,
				StockistPAN=@StockistPAN,
				Emailid=@Emailid,
				MobNo=@MobNo,
				StockistAddress=@StockistAddress,
				CityCode=@CityCode,
				GSTNo=@GSTNo,
				Pincode=@Pincode,
				DLNo=@DLNo,
				DLExpDate=@DLExpDate,
				FoodLicNo=@FoodLicNo,
				FoodLicExpDate=@FoodLicExpDate,
				Addedby=@Addedby,
				LastUpdatedOn=getdate()
			where StockistId=@StockistId
			
			set @RetValue=@StockistId
			if (@StockistId>0)
			Begin
			-- remove old entries and then add new 
				delete from CFA.tblStockiestBankDetails where StockistId=@StockistId 
				insert into CFA.tblStockiestBankDetails(StockistId,BankId,IFSCCode,AccountNo,AddedBy,LastUpdatedDate)
				select @RetValue,BankId,IFSCCode,AccountNo,@AddedBy,getdate() from @BnkDtls
			End
		End
		else 
		Begin
			set @RetValue=-1	-- -- Stockist with same code and company already exists
		End
	End
	else if (upper(ltrim(rtrim(@Action)))='STATUS')
	Begin
		update CFA.tblStockistMaster set IsActive = isnull(@IsActive, 'Y'), LastUpdatedOn=getdate() where StockistId=@StockistId
		set @RetValue=@StockistId
	End
	else
	Begin
		set @RetValue=-2
	End	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_StockistMasterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------[CFA].[usp_StockistMasterList] 1,2,'ALL'
CREATE PROCEDURE [CFA].[usp_StockistMasterList] 
--declare
@BranchId int,
@CompanyId int,
@Status	nvarchar(10)
--set @BranchId=2;set @CompanyId=2;set @Status='ALL'

AS

BEGIN
	SELECT s.StockistId, cfa.fn_CamelCase(s.StockistNo) StockistNo, cfa.fn_CamelCase(s.StockistName) StockistName, upper(s.StockistPAN) StockistPAN, 
	lower(s.Emailid) Emailid, s.MobNo, cfa.fn_CamelCase(s.StockistAddress) StockistAddress,s.CityCode, cfa.fn_CamelCase(ct.CityName) CityName, upper(s.GSTNo) GSTNo, 
	s.LocationId, s.BankId, s.IFSCCode, s.BankAccountNo, cfa.fn_CamelCase(gm.MasterName) LocationName, s.Pincode, s.DLNo, isnull(s.DLExpDate, '') as DLExpDate,
	 s.FoodLicNo, isnull(s.FoodLicExpDate, '') as FoodLicExpDate,s.IsActive, s.Addedby, s.AddedOn, s.LastUpdatedOn,
	CASE WHEN (CAST(s.DLExpDate AS DATE) <=CAST(dateadd(dd,10,GETDATE()) AS DATE)) THEN 1 ELSE 0 END DLExpDateCount,
    CASE WHEN (CAST(s.FoodLicExpDate AS DATE) <=CAST(dateadd(dd,10,GETDATE()) AS DATE)) THEN 1 ELSE 0 END FoodLicExpDateCount
	FROM CFA.tblStockistMaster AS s LEFT OUTER JOIN CFA.tblCityMaster AS ct ON s.CityCode = ct.CityCode LEFT OUTER JOIN
	CFA.tblGeneralMaster AS gm ON s.LocationId = gm.pkId
	WHERE ( UPPER(s.IsActive) = UPPER(@Status) OR UPPER(@Status) = 'ALL')
	and s.StockistId in (select StockiestId from CFA.tblStockiestBranchRelation where BranchId=@BranchId or @BranchId=0)
	and s.StockistId in (select StockiestId from CFA.tblStockiestCompanyRelation where CompId=@CompanyId or @CompanyId=0)
	order by s.StockistName
END


GO
/****** Object:  StoredProcedure [CFA].[usp_StockistMasterListByBranchId]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_StockistMasterListByBranchId] 
--declare
@BranchId int,
@Status	nvarchar(10)
--set @BranchId=42; set @Status='Y'

AS

BEGIN
SELECT sb.PkId,sb.BranchId, s.StockistId, cfa.fn_CamelCase(s.StockistNo) StockistNo, cfa.fn_CamelCase(s.StockistName) StockistName,c.CityName,
case when sb.BranchId =@BranchId then 1 else 0 end Checked	
FROM CFA.tblStockistMaster AS s left outer join CFA.tblStockiestBranchRelation sb on s.StockistId=sb.StockiestId and sb.BranchId=@BranchId
left outer join CFA.tblCityMaster c on s.CityCode=c.CityCode
WHERE UPPER(s.IsActive) = UPPER(@Status)
order by Checked desc, s.StockistName
END
GO
/****** Object:  StoredProcedure [CFA].[usp_StockistMasterListByCompanyId]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_StockistMasterListByCompanyId] 42,'Y'
CREATE PROCEDURE [CFA].[usp_StockistMasterListByCompanyId] --42,'Y'
--declare
@CompanyId int,
@Status	nvarchar(10)
--set @CompanyId=1; set @Status='ALL'

AS

BEGIN
	SELECT s.StockistId,sc.CompId,c.CityName, cfa.fn_CamelCase(s.StockistNo) StockistNo, cfa.fn_CamelCase(s.StockistName) StockistName, 
	case when sc.CompId =@CompanyId then 1 else 0 end Checked	
	FROM CFA.tblStockistMaster AS s left outer join CFA.tblStockiestCompanyRelation sc on s.StockistId=sc.StockiestId and sc.CompId=@CompanyId
	left outer join CFA.tblCityMaster c on c.CityCode = s.CityCode
	WHERE UPPER(s.IsActive) = UPPER(@Status)
	order by Checked desc, s.StockistName
END
GO
/****** Object:  StoredProcedure [CFA].[usp_StockistMasterListForTransMapping]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------[CFA].[usp_StockistMasterList] 1,2,'ALL'
CREATE PROCEDURE [CFA].[usp_StockistMasterListForTransMapping] 
--declare
@BranchId int,
@CompanyId int,
@Status	nvarchar(10)
--set @BranchId=2;set @CompanyId=2;set @Status='ALL'

AS

BEGIN
SELECT s.StockistId, cfa.fn_CamelCase(s.StockistNo) StockistNo, cfa.fn_CamelCase(s.StockistName) StockistName, upper(s.StockistPAN) StockistPAN, 
	lower(s.Emailid) Emailid, s.MobNo, cfa.fn_CamelCase(s.StockistAddress) StockistAddress,s.CityCode, cfa.fn_CamelCase(ct.CityName) CityName, upper(s.GSTNo) GSTNo, 
	s.LocationId, s.BankId, s.IFSCCode, s.BankAccountNo, cfa.fn_CamelCase(gm.MasterName) LocationName, s.Pincode, s.DLNo, isnull(s.DLExpDate, '') as DLExpDate,
	 s.FoodLicNo, isnull(s.FoodLicExpDate, '') as FoodLicExpDate,s.IsActive, s.Addedby, s.AddedOn, s.LastUpdatedOn,
	CASE WHEN (CAST(s.DLExpDate AS DATE) <=CAST(dateadd(dd,10,GETDATE()) AS DATE)) THEN 1 ELSE 0 END DLExpDateCount,
    CASE WHEN (CAST(s.FoodLicExpDate AS DATE) <=CAST(dateadd(dd,10,GETDATE()) AS DATE)) THEN 1 ELSE 0 END FoodLicExpDateCount
	FROM CFA.tblStockistMaster AS s LEFT OUTER JOIN CFA.tblCityMaster AS ct ON s.CityCode = ct.CityCode LEFT OUTER JOIN
	CFA.tblGeneralMaster AS gm ON s.LocationId = gm.pkId  LEFT OUTER JOIN CFA.tblStokistTransportMapping AS stm on
	s.StockistId=stm.StockistId
	WHERE ( UPPER(s.IsActive) = UPPER(@Status) OR UPPER(@Status) = 'ALL')
	and s.StockistId in (select StockiestId from CFA.tblStockiestBranchRelation where BranchId=@BranchId or @BranchId=0)
	and s.StockistId in (select StockiestId from CFA.tblStockiestCompanyRelation where CompId=@CompanyId or @CompanyId=0) and stm.StockistId is null
	order by s.StockistName
END





GO
/****** Object:  StoredProcedure [CFA].[usp_StockistOSDocTypeWiseList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_StockistOSDocTypeWiseList] 
--declare
@BranchId int,
@CompId int,
@OSDate datetime
--set @BranchId=1 set @CompId=2; set @OSDate='2023-04-17' 

as
BEGIN
	SET FMTONLY OFF
	declare @DocTypetbl table (id int identity,colName nvarchar(50))
	create table #Result(BranchId int, CompId int,City  Nvarchar(50), StockistCode Nvarchar(50), 
	StockistName  Nvarchar(250), DocName Nvarchar(50), DocDate Nvarchar(50), 
		DueDate Nvarchar(50), OpenAmt Nvarchar(50), DistrChannel Nvarchar(50), Addedby Nvarchar(50), AddedOn datetime,
		RV float, AB float,CD float,CC float,DG float,DR float,DZ float, Other float)
	
	insert into #Result(BranchId, CompId, City, StockistCode, StockistName, DocName, DocDate, DueDate,  
	DistrChannel, Addedby, AddedOn,OpenAmt,RV, AB, CD, CC, DG, DR, DZ, Other)
	
	Select i.BranchId, i.CompId,i.City,i.CustomerCode, s.StockistName, --i.DocName, i.DocDate,i.DueDate,i.DistrChannel, 
		'','','', '' , i.Addedby, i.AddedOn, sum(convert(decimal(10,2),i.OpenAmt)) OpenAmt,
		sum(isnull((case when DocType = 'RV' then convert(float, OverdueAmt) end),0)) 'RV',
		sum(isnull((case when DocType = 'AB' then convert(float, OverdueAmt) end),0)) 'AB',
		sum(isnull((case when DocType = 'CD' then convert(float, OverdueAmt) end),0)) 'CD',
		sum(isnull((case when DocType = 'CC' then convert(float, OverdueAmt) end),0)) 'CC',
		sum(isnull((case when DocType = 'DG' then convert(float, OverdueAmt) end),0)) 'DG',
		sum(isnull((case when DocType = 'DR' then convert(float, OverdueAmt) end),0)) 'DR',
		sum(isnull((case when DocType = 'DZ' then convert(float, OverdueAmt) end),0)) 'DZ',
		sum(isnull((case when DocType not in('AB','CD','CC','DG','DR','DZ') then convert(float, OverdueAmt) end),0)) 'Other'
	FROM CFA.tblStockistOSDataImport AS i LEFT OUTER JOIN cfa.tblStockistMaster s on i.CustomerCode=s.StockistNo
	WHERE i.BranchId=@BranchId and i.CompId=@CompId and cast(i.AddedOn as date)=cast(@OSDate as date)
	group by i.BranchId, i.CompId,i.City,i.CustomerCode, s.StockistName, i.Addedby, i.AddedOn
	
	select BranchId, CompId, City, StockistCode, StockistName, DocName, DocDate, DueDate, OpenAmt, 
	DistrChannel, Addedby, AddedOn, RV, AB, CD, CC, DG, DR, DZ, Other
	from #Result
	order by StockistCode

	drop table #Result
END
GO
/****** Object:  StoredProcedure [CFA].[usp_StockistOSDocTypeWiseList_Old]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [CFA].[usp_StockistOSDocTypeWiseList_Old]
--declare
@BranchId int,
@CompId int,
@OSDate datetime
--set @BranchId=1 set @CompId=1; set @OSDate='2022-06-17 06:55:57.497' 

as
BEGIN
	SET FMTONLY OFF
	declare @DocTypetbl table (id int identity,colName nvarchar(50))
	insert into @DocTypetbl select Distinct DocType from CFA.tblStkOutStanding os
	where os.BranchId=@BranchId and os.CompId=@CompId and cast(os.OSDate as date)=cast(@OSDate as date)
	--select * from @DocTypetbl
	create table #Result(Div_Cd Nvarchar(50), BranchId int, CompId int,City  Nvarchar(50), StockistCode Nvarchar(50), 
	StockistName  Nvarchar(250), DocName Nvarchar(50), DocDate Nvarchar(50), 
		DueDate Nvarchar(50), OpenAmt Nvarchar(50), ChqNo Nvarchar(50), DistrChannel Nvarchar(50), Addedby Nvarchar(50), AddedOn datetime,
		AB float,CD float,CC float,DG float,DR float,DZ float, Column1 float, Column2 float, Column3 float, Column4 float, Column5 float)
		--select * from #Result
	declare @str1 varchar(max)='', @str2 varchar(max)='', @ColStr varchar(max)=''

	set @str1=' insert into #Result(Div_Cd, BranchId, CompId, City, StockistCode, StockistName, DocName, DocDate, DueDate, OpenAmt, 
	ChqNo, DistrChannel, Addedby, AddedOn, AB, CD, CC, DG, DR, DZ, Column1, Column2, Column3, Column4, Column5)
	
	Select i.Div_Cd, i.BranchId, i.CompId,i.City,i.CustomerCode, s.StockistName, i.DocName, i.DocDate, 
		i.DueDate, i.OpenAmt, i.ChqNo, i.DistrChannel, i.Addedby, i.AddedOn '
	
	set @str2=' FROM CFA.tblStockistOSDataImport AS i LEFT OUTER JOIN cfa.tblStockistMaster s on i.CustomerCode=s.StockistNo
		WHERE i.BranchId='+convert(nvarchar(10),@BranchId)+' and i.CompId='+convert(nvarchar(10),@CompId)+' 
		and cast(i.AddedOn as date)=cast('''+convert(nvarchar(50),@OSDate)+''' as date)
		group by i.Div_Cd, i.BranchId, i.CompId,i.City,i.CustomerCode, s.StockistName, i.DocName, i.DocDate, 
		i.DueDate, i.OpenAmt, i.ChqNo, i.DistrChannel, i.Addedby, i.AddedOn	'

	declare @c int, @c1 int, @cname nvarchar(50)=''
	set @c=1;  select @c1=max(id) from @DocTypetbl

	while (@c<=@c1)
	Begin
		set @cname=''; select @cname=Colname from @DocTypetbl where id=@c
		set @ColStr=@ColStr+', sum(isnull((case when DocType = '''+@cname+''' then convert(float, OverdueAmt) end),0)) '''+@cname+''' '

	set @c=@c+1
	End
	set @ColStr=@ColStr+',0,0,0,0,0'
	print (@str1+ @ColStr+@str2)

	execute(@str1+ @ColStr+@str2)

	select Div_Cd, BranchId, CompId, City, StockistCode, StockistName, DocName, DocDate, DueDate, OpenAmt, 
	ChqNo, DistrChannel, Addedby, AddedOn, AB, CD, CC, DG, DR, DZ, Column1, Column2, Column3, Column4, Column5 
	from #Result

	drop table #Result
END

GO
/****** Object:  StoredProcedure [CFA].[usp_StockistOSList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_StockistOSList]
--DECLARE
@BranchId int,
@CompId	int
--SET @BranchId=0; SET @CompId=0; SET @FromDate=''; SET @ToDate=''; SET @BillDrawerId=0;
AS

BEGIN
		SELECT i.Div_Cd, i.BranchId, i.CompId,i.City,i.CustomerCode, s.StockistName, i.DocName, i.DocDate, 
		i.DueDate, i.OpenAmt, i.ChqNo, i.DistrChannel, i.DocType, i.OverdueAmt, i.Addedby, i.AddedOn
		FROM CFA.tblStockistOSDataImport AS i LEFT OUTER JOIN cfa.tblStockistMaster s on i.CustomerCode=s.StockistNo
		
		WHERE i.BranchId=@BranchId and i.CompId=@CompId and cast(i.AddedOn as date)=CAST(GETDATE() as date)

	End


GO
/****** Object:  StoredProcedure [CFA].[usp_StokistTransportMappingAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_StokistTransportMappingAddEdit]
@BranchId	int,
@CompanyId	int,
@StockistId	int,
@TransporterId	int,
@TransitDays	int,
@SupplyTypeId	int,
@Addedby	nvarchar(50),
@AddedOn	datetime,	
@Action varchar(10),
@RetValue	int output

AS
BEGIN
	set @RetValue=0
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin
		if exists(select StockistId from CFA.tblStokistTransportMapping where StockistId=@StockistId and TransporterId=@TransporterId and BranchId=@BranchId and CompanyId=@CompanyId)
		Begin
			update CFA.tblStokistTransportMapping set TransitDays=@TransitDays,SupplyTypeId=@SupplyTypeId,Addedby=@Addedby,AddedOn=getdate()
			where StockistId=@StockistId and TransporterId=@TransporterId and BranchId=@BranchId and CompanyId=@CompanyId
			set @RetValue=@BranchId
		End
		else
		Begin
			insert into CFA.tblStokistTransportMapping(BranchId,CompanyId,StockistId,TransporterId,TransitDays,SupplyTypeId,Addedby,AddedOn)
			values(@BranchId,@CompanyId,@StockistId,@TransporterId,@TransitDays,@SupplyTypeId,@Addedby, getdate())
			set @RetValue=SCOPE_IDENTITY()
		End		
	End
	else if (upper(ltrim(rtrim(@Action)))='DELETE')
	Begin
		if exists(select StockistId from CFA.tblStokistTransportMapping where StockistId=@StockistId and TransporterId=@TransporterId and BranchId=@BranchId and CompanyId=@CompanyId)
		Begin
			delete from CFA.tblStokistTransportMapping where StockistId=@StockistId and TransporterId=@TransporterId and BranchId=@BranchId and CompanyId=@CompanyId
			set @RetValue=@StockistId
		End
	End
	else
		set @RetValue=-2
END
GO
/****** Object:  StoredProcedure [CFA].[usp_StokistTransportMappingList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [CFA].[usp_StokistTransportMappingList]
@BranchId int,
@CompanyId int

as
BEGIN
	SELECT st.Mappingid, st.BranchId, st.CompanyId, st.StockistId, cfa.fn_CamelCase(s.StockistNo) StockistNo, cfa.fn_CamelCase(s.StockistName) StockistName, s.Emailid, s.MobNo, 
     s.CityCode,s.LocationId, st.TransporterId, cfa.fn_CamelCase(t.TransporterNo) TransporterNo, cfa.fn_CamelCase(t.TransporterName) TransporterName, st.TransitDays,
	 st.Addedby, st.AddedOn,st.SupplyTypeId, g.MasterName
	FROM CFA.tblStokistTransportMapping AS st LEFT OUTER JOIN
		CFA.tblStockistMaster AS s ON st.StockistId = s.StockistId LEFT OUTER JOIN
		CFA.tblTransporterMaster AS t ON st.TransporterId = t.TransporterId LEFT OUTER JOIN
		CFA.tblGeneralMaster AS g ON st.SupplyTypeId = g.pkId
	where  (st.BranchId=@BranchId or @BranchId=0) and (st.CompanyId=@CompanyId or @CompanyId=0)
	order by Mappingid desc
END
GO
/****** Object:  StoredProcedure [CFA].[usp_TAXMasterAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [CFA].[usp_TAXMasterAddEdit]
--declare
@TaxId	int,
@GSTType nvarchar(20),
@CGST int,
@SGST int,
@AddedBy nvarchar(50),
@Action	nvarchar(20),
@RetValue int OUTPUT

as
BEGIN
set @RetValue=0
	If(@Action='ADD')
	Begin
		if not exists(select GSTType from CFA.tblTAXMaster where GSTType=@GSTType)
		Begin
			insert into CFA.tblTAXMaster(GSTType,CGST,SGST,AddedBy,LastUpdatedOn)
			values (@GSTType,@CGST,@SGST,@AddedBy,getdate())
			set @RetValue=SCOPE_IDENTITY()
		End
		else
		BEGIN
			set @RetValue=-1
		END
	End
	If(@Action='EDIT')
	Begin
		--if not exists(select TAXName from CFA.tblTAXMaster where TAXName=@TAXName and TaxId<>@TaxId)
		Begin
			Update CFA.tblTAXMaster set CGST=@CGST,SGST=@SGST,LastUpdatedOn=getdate() where TaxId=@TaxId
			set @RetValue=@TaxId
		End
		--else
		--	set @RetValue=-1
	End
	If(@Action='DELETE')
	Begin
		Delete from CFA.tblTAXMaster where TaxId=@TaxId
		set @RetValue=@TaxId
	End

	RETURN @RetValue
END
GO
/****** Object:  StoredProcedure [CFA].[usp_ThresholdValueAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [CFA].[usp_ThresholdValueAddEdit]
--DECLARE 
@PkId int,
@BranchId int,
@CompanyId int,
@ThresholdValue int,
@RaiseClaimDay int,
@ClaimSettlementDay int,
@InStateAmt bigint,
@OutStateAmt bigint,
@SaleSettlePeriod int,
@NonSaleSettlePeriod int,
@Addedby nvarchar(50),
@Action nvarchar(10),
@RetValue int output 

--set @BranchId = 1; set @CompanyId = 1; set @ThresholdValue = 93; set @RaiseClaimDay = 93; SET @ClaimSettlementDay = 93; 
--SET @Addedby = 2; 
--SET @Action = 'EDIT'; 

As
BEGIN
	set @RetValue = 0; 
	if (upper(ltrim(rtrim(@Action)))='ADD')  
	Begin
	  if not exists(select CompanyId from CFA.tblThresholdSLAMaster where CompanyId=@CompanyId)  
		Begin
			insert into CFA.tblThresholdSLAMaster(BranchId,CompanyId,ThresholdValue,
			RaiseClaimDay,ClaimSettlementDay,InStateAmt,OutStateAmt,SaleSettlePeriod,NonSaleSettlePeriod,Addedby, AddedOn) 
			values(@BranchId,@CompanyId,@ThresholdValue,@RaiseClaimDay,
			@ClaimSettlementDay,@InStateAmt,@OutStateAmt,@SaleSettlePeriod,@NonSaleSettlePeriod,@Addedby, getdate())  
			set @RetValue=SCOPE_IDENTITY()  
		End
		else   
		Begin  
			set @RetValue=-1 
		End
	End  
	else if (upper(ltrim(rtrim(@Action)))='EDIT')  
	Begin  
		update CFA.tblThresholdSLAMaster
			set ThresholdValue=@ThresholdValue,
			RaiseClaimDay=@RaiseClaimDay,
			ClaimSettlementDay=@ClaimSettlementDay,
			InStateAmt=@InStateAmt,
			OutStateAmt=@OutStateAmt,
			SaleSettlePeriod=@SaleSettlePeriod,
			NonSaleSettlePeriod=@NonSaleSettlePeriod,
			LastUpdatedBy=@Addedby,
			LastUpdatedOn=getdate()
			where PkId=@PkId
			set @RetValue=@PkId
	End
	else if (upper(ltrim(rtrim(@Action)))='DELETE')
	Begin
			delete from CFA.tblThresholdSLAMaster WHERE PkId=@PkId
			 set @RetValue=@PkId
	END
End
			






GO
/****** Object:  StoredProcedure [CFA].[usp_TransitVhcleChkLstForViewImg]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_TransitVhcleChkLstForViewImg]
--DECLARE
@BranchId INT,
@CompId INT,
@FromDate DATETIME,
@ToDate DATETIME

--SET  @BranchId=1; SET @CompId=1;  SET @FromDate='2022-07-07'; SET @ToDate='2022-07-07';

AS
BEGIN
	SELECT mv.pkId,mv.BranchId,mv.CompId,mv.LRNo,mv.LRDate,mv.InwardDate,mv.TransporterId,mv.VehicleNo,
		mv.DriverName,mv.MobileNo,mv.NoOfCasesQty,mv.ActualNoOfCasesQty,mv.ConcernRemark,mv.AddedOn,
		mv.AddedBy,mv.ConcernBy,mv.ConcernUpdatedOn,mv.IsConcern,tm.TransporterNo,tm.TransporterName,
		mv.IsClaim,mv.IsSAN,mv.ResolvedBy,tih.TransitId,ISNULL(ivc.Img1,'')Img1,ISNULL(ivc.img2,'')Img2,
		ISNULL(ivc.Img3,'')Img3,ISNULL(ivc.Img4,'')Img4
	FROM CFA.tblMapInwardVehicle AS mv LEFT OUTER JOIN 
		CFA.tblTransporterMaster AS tm on mv.TransporterId = tm.TransporterId LEFT OUTER JOIN 
		CFA.tblTransitInvoiceHeader as tih on mv.TransitId=tih.TransitId LEFT OUTER JOIN 
		CFA.tblInvInVehicleChecklistMst as ivc on mv.TransitId = ivc.TransitId
	WHERE mv.BranchId =@BranchId AND mv.CompId= @CompId
	    AND CAST(tih.LrDate AS DATE) BETWEEN CAST(@FromDate AS DATE) AND CAST(@ToDate AS DATE) and mv.IsChecklistDone=1
END
GO
/****** Object:  StoredProcedure [CFA].[usp_TransporterById]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_TransporterById]
--declare
@TransporterId INT

AS

BEGIN
	SELECT t.TransporterId, t.BranchId, t.TransporterNo, t.TransporterName, t.TransporterEmail, t.TransporterMobNo, t.TransporterAddress, 
	t.CityCode, ct.CityName, t.StateCode, st.StateName, t.DistrictCode, t.IsActive, t.Addedby, t.AddedOn, t.LastUpdatedOn, dt.DistrictName
	FROM CFA.tblTransporterMaster AS t LEFT OUTER JOIN CFA.tblStateMaster AS st ON t.StateCode = st.StateCode LEFT OUTER JOIN
	CFA.tblCityMaster AS ct ON t.CityCode = ct.CityCode LEFT OUTER JOIN CFA.tbldistrictMaster AS dt ON t.DistrictCode = dt.DistrictCode
	WHERE t.TransporterId=@TransporterId
END
GO
/****** Object:  StoredProcedure [CFA].[usp_TransporterMasterAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_TransporterMasterAddEdit]
@TransporterId	int,
@BranchId int,
@TransporterNo nvarchar(20),
@TransporterName nvarchar(100),
@TransporterEmail nvarchar(250),
@TransporterMobNo nvarchar(30),
@TransporterAddress	nvarchar(250),
@CityCode nvarchar(20),
@StateCode nvarchar(20),
@DistrictCode nvarchar(20),
@IsActive char(1),
@RatePerBox int,
@Addedby nvarchar(50),
@Action	nvarchar(10),
@RetValue int output

AS

BEGIN
	set @RetValue=0
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin
		if not exists(select * from CFA.tblTransporterMaster where TransporterNo=@TransporterNo)
		Begin
			insert into CFA.tblTransporterMaster(BranchId, TransporterNo, TransporterName, TransporterEmail, TransporterMobNo, TransporterAddress, 
			CityCode, StateCode, DistrictCode,IsActive,RatePerBox, Addedby, AddedOn, LastUpdatedOn)
			values(@BranchId, @TransporterNo, @TransporterName, @TransporterEmail, @TransporterMobNo, @TransporterAddress, 
			@CityCode, @StateCode, @DistrictCode,'Y',@RatePerBox, @Addedby, getdate(), getdate())
				
			set @RetValue=SCOPE_IDENTITY()
		End
		else 
			set @RetValue=-1	-- Transporter with same code
	End
	else if (upper(ltrim(rtrim(@Action)))='EDIT')
	Begin
		if not exists(select TransporterId from CFA.tblTransporterMaster where TransporterNo=@TransporterNo and TransporterId<>@TransporterId)
		Begin
			update CFA.tblTransporterMaster
			set BranchId=@BranchId,
				TransporterNo=@TransporterNo,
				TransporterName=@TransporterName,
				TransporterEmail=@TransporterEmail,
				TransporterMobNo=@TransporterMobNo,
				TransporterAddress=@TransporterAddress,
				CityCode=@CityCode,
				StateCode=@StateCode,
				DistrictCode=@DistrictCode,
				RatePerBox = @RatePerBox,
				Addedby=@Addedby,
				LastUpdatedOn=getdate()
			where TransporterId=@TransporterId
			
			set @RetValue=@TransporterId
		End
		else 
		Begin
			set @RetValue=-1	-- Branch with samecode or name exists
		End
	End
	else if (upper(ltrim(rtrim(@Action)))='STATUS')
	Begin
		update CFA.tblTransporterMaster set IsActive=@IsActive, LastUpdatedOn=getdate() where TransporterId=@TransporterId
		set @RetValue=@TransporterId
	End
	else
	Begin
		set @RetValue=-2
	End	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_TransporterMasterList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [CFA].[usp_TransporterMasterList] --'ALL',0
--declare
@DistrictCode nvarchar(20),
@Status	nvarchar(10),
@BranchId int

AS

BEGIN
	SELECT t.TransporterId, t.BranchId,br.BranchName,cfa.fn_CamelCase(t.TransporterNo) TransporterNo, cfa.fn_CamelCase(t.TransporterName) TransporterName, t.TransporterEmail, 
	cfa.fn_CamelCase(t.TransporterMobNo) TransporterMobNo, cfa.fn_CamelCase(t.TransporterAddress) TransporterAddress,t.CityCode, 
	cfa.fn_CamelCase(ct.CityName) CityName,t.StateCode, cfa.fn_CamelCase(st.StateName) StateName,t.DistrictCode,
	 t.IsActive,t.RatePerBox,t.Addedby, t.AddedOn, t.LastUpdatedOn, cfa.fn_CamelCase(dt.DistrictName) DistrictName,u.DisplayName
	FROM CFA.tblTransporterMaster AS t LEFT OUTER JOIN CFA.tblStateMaster AS st ON t.StateCode = st.StateCode LEFT OUTER JOIN
	CFA.tblCityMaster AS ct ON t.CityCode = ct.CityCode LEFT OUTER JOIN CFA.tbldistrictMaster AS dt ON t.DistrictCode = dt.DistrictCode
	LEFT OUTER JOIN [CFA].[tblBranchMaster] AS br ON t.BranchId = br.BranchId left outer join
	CFA.tblUser as u ON u.UserId=t.Addedby
	WHERE (t.BranchId = @BranchId or @BranchId=0) and ( UPPER(t.IsActive) = UPPER(@Status) OR UPPER(@Status) = 'ALL')
	and (t.DistrictCode = @DistrictCode or isnull(@DistrictCode,'ALL')='ALL')
	order by t.TransporterId desc
END
GO
/****** Object:  StoredProcedure [CFA].[usp_TransporterMasterListForBranch]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_TransporterMasterListForBranch] --'ALL','ALL',1
--declare
@DistrictCode nvarchar(20),
@Status	nvarchar(10),
@BranchId int

AS

BEGIN
	SELECT t.TransporterId, t.BranchId,br.BranchName,cfa.fn_CamelCase(t.TransporterNo) TransporterNo, cfa.fn_CamelCase(t.TransporterName) TransporterName, t.TransporterEmail, 
	cfa.fn_CamelCase(t.TransporterMobNo) TransporterMobNo, cfa.fn_CamelCase(t.TransporterAddress) TransporterAddress,t.CityCode, 
	cfa.fn_CamelCase(ct.CityName) CityName,t.StateCode, cfa.fn_CamelCase(st.StateName) StateName,t.DistrictCode,
	 t.IsActive,t.RatePerBox,t.Addedby, t.AddedOn, t.LastUpdatedOn, cfa.fn_CamelCase(dt.DistrictName) DistrictName,u.DisplayName
	FROM CFA.tblTransporterMaster AS t LEFT OUTER JOIN CFA.tblStateMaster AS st ON t.StateCode = st.StateCode LEFT OUTER JOIN
	CFA.tblCityMaster AS ct ON t.CityCode = ct.CityCode LEFT OUTER JOIN CFA.tbldistrictMaster AS dt ON t.DistrictCode = dt.DistrictCode
	LEFT OUTER JOIN [CFA].[tblBranchMaster] AS br ON t.BranchId = br.BranchId left outer join
	CFA.tblUser as u ON u.UserId=t.Addedby
	WHERE ( UPPER(t.IsActive) = UPPER(@Status) OR UPPER(@Status) = 'ALL')
	and (t.DistrictCode = @DistrictCode or isnull(@DistrictCode,'ALL')='ALL') and (t.BranchId=@BranchId or ISNULL(@BranchId,0)=0)
	order by t.TransporterId desc
END
GO
/****** Object:  StoredProcedure [CFA].[usp_TransporterParentAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [CFA].[usp_TransporterParentAddEdit]
@Tpid int,
@BranchId int,
@ParentTranspNo nvarchar(20),
@ParentTranspName nvarchar(100),
@ParentTranspEmail nvarchar(50),
@ParentTranspMobNo nvarchar(30),
@IsTDS char(1),
@TDSPer int,
@IsGST char(1),
@GSTNumber nvarchar(30),
@IsActive char(1),
@Addedby nvarchar(50),
@Action	nvarchar(10),
@RetValue int output
AS
BEGIN
	set @RetValue=0
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin
		if not exists(select * from CFA.tblTransporterParentMst where ParentTranspNo=@ParentTranspNo)
		Begin
			insert into CFA.tblTransporterParentMst(BranchId, ParentTranspNo, ParentTranspName, ParentTranspEmail, ParentTranspMobNo,IsTDS,TDSPer,IsGST, GSTNumber,IsActive, Addedby, AddedOn, LastUpdatedOn)
			values(@BranchId, @ParentTranspNo, @ParentTranspName, @ParentTranspEmail, @ParentTranspMobNo,@IsTDS,@TDSPer,@IsGST, @GSTNumber,'Y',@Addedby, getdate(), getdate())
				
			set @RetValue=SCOPE_IDENTITY()
		End
		else 
			set @RetValue=-1
	End
	else if (upper(ltrim(rtrim(@Action)))='EDIT')
	Begin
		if not exists(select Tpid from CFA.tblTransporterParentMst where Tpid=@Tpid and Tpid<>@Tpid)
		Begin
			update CFA.tblTransporterParentMst
			set	ParentTranspNo=@ParentTranspNo,
				ParentTranspName=@ParentTranspName,
				ParentTranspEmail=@ParentTranspEmail,
				ParentTranspMobNo=@ParentTranspMobNo,
				IsTDS=@IsTDS,
				TDSPer=@TDSPer,
				IsGST=@IsGST,
				GSTNumber=@GSTNumber,
				Addedby=@Addedby,
				LastUpdatedOn=getdate()
			where Tpid=@Tpid
			
			set @RetValue=@Tpid
		End
		else 
		Begin
			set @RetValue=-1	-- Branch with samecode or name exists
		End
	End
	else if (upper(ltrim(rtrim(@Action)))='STATUS')
	Begin
		update CFA.tblTransporterParentMst set IsActive=@IsActive, LastUpdatedOn=getdate() where Tpid=@Tpid
		set @RetValue=@Tpid
	End
	else
	Begin
		set @RetValue=-2
	End	
END
GO
/****** Object:  StoredProcedure [CFA].[usp_TransporterParentMapping]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_TransporterParentMapping]
--DECLARE
@BranchId int,
@Tpid INT,
@TransporterId VARCHAR(Max),
@Addedby nvarchar(50),
@RetValue int output
AS
--set @BranchId=1 ;set @Tpid=1;set @TransporterId='1,2,4';set @AddedBy='1' ;
BEGIN

	set @RetValue=0
	-- Delete unticked first
	delete from CFA.tblTransporterParentMapping 
	where BranchId=@BranchId and Tpid=@Tpid and TransporterId not in (select [value] from CFA.fn_StringSplit(@TransporterId,','))
	
	-- Insert new ticked old ticked are already added
	if exists(SELECT [value] from CFA.fn_StringSplit(@TransporterId,',') tn
		left outer join CFA.tblTransporterParentMapping tpm on tn.[value]=tpm.TransporterId and  tpm.BranchId=@BranchId
		where tpm.TransporterId is null)
	begin
		insert into CFA.tblTransporterParentMapping(BranchId,Tpid,TransporterId,Addedby,AddedOn,LastUpdatedOn)
		select @BranchId,@Tpid,[value],@AddedBy,getdate(),getdate() from CFA.fn_StringSplit(@TransporterId,',') tn 
		left outer join CFA.tblTransporterParentMapping tpm on tn.[value]=tpm.TransporterId and  tpm.BranchId=@BranchId
		where tpm.TransporterId is null
		set @RetValue = SCOPE_IDENTITY()
	end
	else
	begin
		set @RetValue=1
	end

	select @RetValue as RetValue, @BranchId as BranchId

END
GO
/****** Object:  StoredProcedure [CFA].[usp_UpdateCNDelayReason]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_UpdateCNDelayReason]  
--DECLARE  
@BranchId int,  
@CompId int,  
@SRSId int,  
@CNDelayReasonId int,  
@CNDelayRemark nvarchar(500),  
@AddedBy int,  
@RetValue int output  
  
AS  
--SET @BranchId= 1; SET @CompId= 1; SET @SRSId=2;SET @CNDelayReason=''  
BEGIN  
	update [CFA].[tblSRSHeader]  
	set CNDelayReasonId=@CNDelayReasonId,  
		CNDelayRemark=@CNDelayRemark,  
		CNReasonAddedBy = @AddedBy,  
		CNReasonUpdatedOn = getdate()  
	where SRSId=@SRSId and BranchId=@BranchId and CompId=@CompId 
	set @RetValue=@SRSId  
END
GO
/****** Object:  StoredProcedure [CFA].[usp_UpdateInsuranceClaimByIdApprovalEmail]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_UpdateInsuranceClaimByIdApprovalEmail]
--DECLARE
@BranchId INT,
@CompId INT,
@ClaimId BIGINT,
@IsEmail BIT,
@RetValue INT OUTPUT
--SET @BranchId=1; SET @CompId=1; SET @ClaimId=11
AS
BEGIN
	  SET @RetValue=0
	  IF NOT EXISTS(SELECT ClaimId,IsEmail FROM CFA.tblInsuranceClaim WHERE ClaimId=@ClaimId AND IsEmail=@IsEmail)
	  BEGIN
			UPDATE CFA.tblInsuranceClaim SET IsEmail=@IsEmail WHERE ClaimId=@ClaimId
			SET @RetValue=@ClaimId
	  END
	  ELSE
	  BEGIN
			SET @RetValue=-1 -- Exists
	  END
	  RETURN @RetValue
END
GO
/****** Object:  StoredProcedure [CFA].[usp_UpdateInvInVerifyApproveVehicleIssue]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- CFA.usp_UpdateInvInVerifyApproveVehicleIssue 1,1,1,'Y','4',0
CREATE PROC [CFA].[usp_UpdateInvInVerifyApproveVehicleIssue]
--DECLARE
@pkId BIGINT,
@BranchId INT,
@CompId INT,
@IsApprove NVARCHAR(1),
@IsApproveBy NVARCHAR(20),
@RetValue INT OUTPUT
--SET @pkId=1;SET @BranchId=1;SET @CompId=1;SET @IsApprove='Y';SET @IsApproveBy='4';
AS
BEGIN
	SET @RetValue=0;
	UPDATE CFA.tblInvInVehicleChecklist SET IsApprove=@IsApprove,IsApproveBy=@IsApproveBy,IsApproveOn=GETDATE()
	WHERE BranchId=@BranchId AND CompId=@CompId AND pkId=@pkId
	SET @RetValue=@pkId
	
	RETURN @RetValue

END
GO
/****** Object:  StoredProcedure [CFA].[usp_UpdateInvoiceDetailsForStickerById]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_UpdateInvoiceDetailsForStickerById]
--DECLARE
@BranchId INT,
@CompId INT,
@InvId BIGINT,
@NoOfBox INT,
@RetValue INT OUTPUT
AS
BEGIN
		SET @RetValue=0
		UPDATE CFA.tblInvoiceHeader SET NoOfBox=@NoOfBox WHERE InvId=@InvId
		SET @RetValue=SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [CFA].[usp_UploadDesCertificate]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC  [CFA].[usp_UploadDesCertificate]
--DECLARE
@CNIdStr NVARCHAR(max),
@BranchId INT,
@CompId INT,
@DestrCertFile NVARCHAR(500),
@AddedBy int,
@RetValue NVARCHAR(20) OUTPUT
--SET @BranchId=1; SET @CompId=1; SET @CNIdStr='1,2,' SET @DestrCertFile='download.jpg'; SET @AddedBy=1;
AS
BEGIN
	 SET @RetValue=0
	 update CFA.tblCNHeader
	 set DestrCertFile=@DestrCertFile,
		DestrCertDate=getdate(),
		DestrCertAddedBy=@AddedBy
	where BranchId=@BranchId and CompId=@CompId and CNId in (select [value] FROM CFA.fn_StringSplit(@CNIdStr,',')) 
	SET @RetValue=SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [CFA].[usp_UserActivate]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [CFA].[usp_UserActivate]
@UserId	int,
@IsActive	char(1),
@Addedby	nvarchar(50),
@RetValue	int output

AS
BEGIN
	set @RetValue=0
	update CFA.tblUser set IsActive=@IsActive,Addedby=@Addedby,LastUpdatedOn=getdate() where UserId=@UserId
	if (@@ERROR=0)	set @RetValue=@UserId
END
GO
/****** Object:  StoredProcedure [CFA].[usp_UserActiveDeactive]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_UserActiveDeactive]  
@EmpId int,
@IsActive char(1), 
@Addedby nvarchar(50),  
@RetValue int output
AS  
BEGIN  
 set @RetValue=0  
 UPDATE CFA.tblUser SET IsActive=@IsActive,Addedby=@Addedby,LastUpdatedOn=GETDATE() WHERE EmpId=@EmpId  
 set @RetValue=@EmpId  
END
GO
/****** Object:  StoredProcedure [CFA].[usp_UserAdd]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CFA].[usp_UserAdd]  
--declare
@BranchId int,  
@EmpId int,  
@RoleIdStr nvarchar(max),
@Username nvarchar(50),  
@Password nvarchar(50),   
@EncryptPassword nvarchar(1000),  
@Addedby nvarchar(50),  
@RetValue int output  

--set @BranchId =1  ; set @EmpId=49; set @Addedby ='2'; set @RoleIdStr ='2,3'; set @Username ='Arun';
--set @Password =''; set @EncryptPassword =''
  
AS  
BEGIN  
	set @RetValue=0  
  
	if exists(select EmpId from CFA.tblUser where UserName=@Username and EmpId<>@EmpId)  
		set @RetValue=-2 --- username already exists  
	else  
	Begin  -- Add User   
		If not exists(select EmpId from CFA.tblUser where EmpId=@EmpId)
		Begin
			insert into CFA.tblUser(BranchId,RoleId,EmpId,DisplayName,UserName,Password,EncryptPassword,IsActive,Addedby,AddedOn,LastUpdatedOn)  
			select BranchId,0, @EmpId, EmpName, @Username, @Password, @EncryptPassword, 'Y', @Addedby, getdate(), getdate()
			from CFA.tblEmployeeMaster where EmpId=@EmpId
			 
			set @RetValue=SCOPE_IDENTITY()
		
			update tblEmployeeMaster set IsUser='Y' where EmpId=@EmpId
		End
		else
			select @RetValue=Userid from CFA.tblUser where EmpId=@EmpId

		if (@RetValue>0 and isnull(@RoleIdStr,'')<>'') -- Add User-Role mapping  
		Begin  
			delete from CFA.tblUserRoleMapping where UserId=@RetValue   -- delete old records, then insert new  
			insert into CFA.tblUserRoleMapping(UserId,RoleId,Addedby,AddedOn,LastUpdatedOn)   
			select @RetValue,value,@Addedby,getdate(),getdate() from CFA.fn_StringSplit(@RoleIdStr,',') 

			set @RetValue=SCOPE_IDENTITY() 
		End
	End  
	return @RetValue
END
GO
/****** Object:  StoredProcedure [CFA].[usp_UserListByRole]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--		cfa.usp_UserListByRole 2,2,5

CREATE PROC [CFA].[usp_UserListByRole] 
--DECLARE
@BranchId int,
@CompId int,
@RoleId INT
--SET @RoleId=5  set @BranchId=2 set @compId=2
AS  
BEGIN  
  
	SELECT u.UserId,u.EmpId, e.BranchId, ec.CompanyId, e.EmpNo, e.EmpName, e.EmpEmail, ur.RoleId, e.EmpMobNo  
	FROM CFA.tblUser AS u inner join CFA.tblEmployeeMaster AS e ON u.EmpId = e.EmpId 
		inner join CFA.tblEmployeeCompanyMapping ec on e.EmpId=ec.EmpId 
		inner join CFA.tblUserRoleMapping ur on u.UserId=ur.UserId
	WHERE ur.RoleId=@RoleId and e.BranchId = @BranchId and ec.CompanyId=@CompId and u.IsActive= 'Y'
  
END
GO
/****** Object:  StoredProcedure [CFA].[usp_UserLoginCheck]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 --		[CFA].[usp_UserLoginCheck] 'BranchAdmin','I7x0dlGGfp3UiD5Qy/BhSw==',0,1,10

CREATE PROCEDURE [CFA].[usp_UserLoginCheck]
@UserName nvarchar(50),
@Password nvarchar(1000),
@CompId int,
@BranchId int,
@RoleId int

AS

BEGIN
	If(@RoleId = 10)
		Begin
			SELECT u.UserId, ur.RoleId, u.EmpId, CFA.fn_CamelCase( u.DisplayName) DisplayName, CFA.fn_CamelCase(u.UserName) UserName, 
				u.Password, u.EncryptPassword, u.IsActive, isnull(u.BranchId,0) BranchId, CFA.fn_CamelCase(br.BranchCode)BranchCode, 
				CFA.fn_CamelCase(br.BranchName) BranchName, br.City, CFA.fn_CamelCase(brct.CityName) BranchCity, CFA.fn_CamelCase(r.RoleName) RoleName, CFA.fn_CamelCase(e.EmpNo) EmpNo, 
				CFA.fn_CamelCase(e.EmpName) EmpName, e.EmpMobNo, 0 As CompanyId, '' As CompanyCode, 
				'' As CompanyName, '' As CompCityName,br.StateCode
			FROM CFA.tblUser AS u WITH (nolock) LEFT OUTER JOIN
				CFA.tblEmployeeMaster AS e WITH (nolock) ON e.EmpId = u.EmpId LEFT OUTER JOIN
				CFA.tblBranchMaster AS br WITH (NOLock) ON br.BranchId = u.BranchId Left outer join
				CFA.tblCityMaster brct on br.City=brct.CityCode 
				--Left outer join CFA.tblStateMaster st on br.StateCode = st.StateCode
				inner join CFA.tblUserRoleMapping ur on u.UserId=ur.UserId 
				left outer join CFA.tblRoleMaster AS r WITH (nolock) on ur.RoleId=r.RoleId
			WHERE u.UserName = @UserName AND u.EncryptPassword = @Password 
			 and ur.RoleId=@RoleId and (u.BranchId = @BranchId)
		End
	Else
		Begin
			SELECT u.UserId, ur.RoleId, u.EmpId, CFA.fn_CamelCase( u.DisplayName) DisplayName, CFA.fn_CamelCase(u.UserName) UserName, 
				u.Password, u.EncryptPassword, u.IsActive, isnull(u.BranchId,0) BranchId, CFA.fn_CamelCase(br.BranchCode)BranchCode, 
				CFA.fn_CamelCase(br.BranchName) BranchName, br.City, CFA.fn_CamelCase(brct.CityName) BranchCity, CFA.fn_CamelCase(r.RoleName) RoleName, CFA.fn_CamelCase(e.EmpNo) EmpNo, 
				CFA.fn_CamelCase(e.EmpName) EmpName, e.EmpMobNo, isnull(ec.CompanyId,0) CompanyId,CFA.fn_CamelCase(c.CompanyCode) CompanyCode, 
				CFA.fn_CamelCase(c.CompanyName) CompanyName, CFA.fn_CamelCase(ct.CityName) CompCityName,br.StateCode
			FROM CFA.tblUser AS u WITH (nolock) LEFT OUTER JOIN
				CFA.tblEmployeeMaster AS e WITH (nolock) ON e.EmpId = u.EmpId LEFT OUTER JOIN
				CFA.tblBranchMaster AS br WITH (NOLock) ON br.BranchId = u.BranchId
				left outer join CFA.tblEmployeeCompanyMapping ec WITH (NOLock) ON ec.EmpId = u.EmpId
				left outer join CFA.tblCompanyMaster c WITH (NOLock) ON c.CompanyId = ec.CompanyId left outer join 
				CFA.tblCityMaster ct on c.CompanyCity=ct.CityCode left outer join
				CFA.tblCityMaster brct on br.City=brct.CityCode 
				--Left outer join	CFA.tblStateMaster st on br.StateCode = st.StateCode
				inner join CFA.tblUserRoleMapping ur on u.UserId=ur.UserId 
				left outer join CFA.tblRoleMaster AS r WITH (nolock) on ur.RoleId=r.RoleId
			WHERE u.UserName = @UserName AND u.EncryptPassword = @Password 
			 and ur.RoleId=@RoleId and (ec.CompanyId =@CompId or ur.RoleId=1)
		End
END
GO
/****** Object:  StoredProcedure [CFA].[usp_UserRoleDetails]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [CFA].[usp_UserRoleDetails]
@EmpId int

AS
BEGIN
	SELECT e.EmpId, ur.RoleId, cfa.fn_CamelCase(r.RoleName) RoleName
	FROM CFA.tblEmployeeMaster e left outer join 
		CFA.tblUser u on e.EmpId=u.EmpId left outer join
		CFA.tblUserRoleMapping AS ur on u.UserId=ur.UserId 
		left outer join CFA.tblRoleMaster r on ur.RoleId=r.RoleId
	where e.EmpId=@EmpId and e.IsActive='Y'
END

GO
/****** Object:  StoredProcedure [CFA].[usp_VehicleChecklistMstImgUpdate]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_VehicleChecklistMstImgUpdate]
@ChkListMstId bigint,
@BranchId int,
@CompId int,
@img1 NVARCHAR(250),
@img2 NVARCHAR(250),
@img3 NVARCHAR(250),
@img4 NVARCHAR(250),
@RetValue INT OUTPUT

AS

BEGIN
	IF EXISTS(SELECT LREntryId FROM CFA.tblInvInVehicleChecklistMst WHERE ChkListMstId=@ChkListMstId)
	BEGIN
		update CFA.tblInvInVehicleChecklistMst set img1=@img1, img2=@img2, img3=@img3, img4=@img4, LastUpdatedOn=getdate()
		where BranchId=@BranchId and CompId=@CompId and ChkListMstId=@ChkListMstId

		SET @RetValue=SCOPE_IDENTITY();
	END
	ELSE
	BEGIN
		SET @RetValue=-1;  ---- Master Data Not Saved Yet
	END
END
GO
/****** Object:  StoredProcedure [CFA].[usp_VendorMasterAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE PROC [CFA].[usp_VendorMasterAddEdit]  
--Declare  
@VendorId int,  
@Branch int,  
@VendorName nvarchar(556),  
@Email nvarchar(50),  
@ContactNumber nvarchar(50),  
@PANNumber nvarchar(50),  
@IsGST char(1),  
@GSTNumber nvarchar(50),  
@City int,  
@Address nvarchar(500),  
@IsActive char(1),  
@AddedBy int,  
@Action nvarchar(20),  
@RetValue int OUTPUT  
  
As  
  
BEGIN  
set @RetValue=0  
 If(@Action='ADD')  
 Begin  
  if not exists(select * from CFA.tblVendorMaster where VendorName=@VendorName)  
  Begin  
   insert into CFA.tblVendorMaster(Branch,VendorName,Email,ContactNumber,PANNumber,IsGST,GSTNumber,City,Address,IsActive,AddedBy,AddedOn)  
   values (@Branch,@VendorName,@Email,@ContactNumber,@PANNumber,@IsGST,@GSTNumber,@City,@Address,'Y',@AddedBy,getdate())  
   set @RetValue=SCOPE_IDENTITY()  
  End  
  else  
   set @RetValue=-1  
 End  
 If(@Action='EDIT')  
 Begin  
  Begin  
   Update CFA.tblVendorMaster set VendorName=@VendorName,Email=@Email,ContactNumber=@ContactNumber, PANNumber=@PANNumber,IsGST=@IsGST, GSTNumber=@GSTNumber,  
   City=@City, Address=@Address, LastUpdatedOn=getdate() where VendorId=@VendorId  
   set @RetValue=@VendorId  
  End  
 End  
END
GO
/****** Object:  StoredProcedure [CFA].[usp_VendorMasterDeleteDeactivate]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE proc [CFA].[usp_VendorMasterDeleteDeactivate]
--Declare
@VendorId int,
@IsActive char,
@AddedBy int,
@Action	nvarchar(20),
@RetValue int OUTPUT

As

BEGIN
set @RetValue=0
	If(@Action='Status')
	Begin
		Update CFA.tblVendorMaster 
		set IsActive = @IsActive, AddedBy = @AddedBy, LastUpdatedOn = GETDATE()
		 where VendorId=@VendorId
		set @RetValue=@VendorId
	End
	If(@Action='Delete')
	Begin
		Delete from CFA.tblVendorMaster where VendorId=@VendorId
		set @RetValue=@VendorId
	End
END

GO
/****** Object:  StoredProcedure [CFA].[usp_VendorMasterListByBranch]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_VendorMasterListByBranch]
@BranchId int,
@Status nvarchar(10)

AS
BEGIN	
	 SELECT v.VendorId,v.VendorName,v.Email,v.ContactNumber,
	 CASE WHEN isnull(bv.BranchId,0) =@BranchId then 1 else 0 end Checked
	 FROM CFA.tblVendorMaster AS v left outer join CFA.tblBranchVendorMapping bv on v.VendorId=bv.VendorId and bv.BranchId=@BranchId
	 WHERE UPPER(v.IsActive) = 'Y'
	 order by checked desc,v.VendorName
END


GO
/****** Object:  StoredProcedure [CFA].[usp_VendorMasterListByCompany]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CFA].[usp_VendorMasterListByCompany]
@CompanyId int,
@Status nvarchar(10)

AS
BEGIN
	
	 SELECT v.VendorId,v.VendorName,v.Email,v.ContactNumber,
	 CASE WHEN isnull(cv.CompanyId,0) =@CompanyId then 1 else 0 end Checked
	 FROM CFA.tblVendorMaster AS v left outer join CFA.tblCompanyVendorMapping cv on v.VendorId=cv.VendorId and cv.CompanyId=@CompanyId
	 WHERE UPPER(v.IsActive) = 'Y'
	 order by checked desc,v.VendorName
END


GO
/****** Object:  StoredProcedure [CFA].[uspGetInsuranceClaimTypeList]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[CFA].[uspGetInsuranceClaimTypeList] 1,1
CREATE PROCEDURE [CFA].[uspGetInsuranceClaimTypeList] 
@BranchId INT,
@CompanyId INT
AS
BEGIN
	SELECT BranchId,CompanyId,ClaimTypeId,ClaimType 
	FROM CFA.tblInsClaimType
	WHERE BranchId=@BranchId AND CompanyId=@CompanyId
END

GO
/****** Object:  StoredProcedure [dbo].[ClearInv]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ClearInv]
@id int
as

select * from cfa.tblInvoiceDataImport
select * from cfa.tblInvoiceHeader
select * from cfa.tblAssignTransportMode
select * from cfa.tblChqBlockedforInv
select * from CFA.tblGenerateGatepass
select * from CFA.tblGenerateGatepassDetails

select * from CFA.tblPrinterLog
select * from CFA.tblPrinterPDFData

select * from CFA.tblStockistOSDataImport
select * from CFA.tblChqDepoReceiptImport
select * from cfa.tblChqBlockedforInv
select * from CFA.tblChequeRegister

select * from CFA.tblPicklistAllotment
select * from CFA.tblPickListHeader
select * from CFA.tblPicklistReAllotment
select * from CFA.tblStkOutStanding






GO
/****** Object:  StoredProcedure [NIU].[usp_GetInvInVehicleCheckListForMob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CFA.usp_GetInvInVehicleCheckListForMob 1,1
CREATE PROC [NIU].[usp_GetInvInVehicleCheckListForMob]
--DECLARE
@BranchId INT,
@CompId INT
--SET @BranchId=1;SET @CompId=1;
AS
BEGIN
	SELECT vc.pkId,vc.BranchId,vc.CompId,vc.ChecklistTypeId,vc.ChecklistType,vc.InvId,tih.InvNo,vc.InvoiceDate,vc.TransporterId,tm.TransporterNo,tm.TransporterName, vc.VehicleNo,vc.IsColdStorage,
		   CASE WHEN vc.IsColdStorage='Y' THEN 'OK' ELSE 'Despute' END AS [Status],vc.Remarks,vc.SealNumber,vc.Comments,vc.AddedBy,vc.AddedOn,vc.LastUpdatedOn,vc.IsApprove
	FROM CFA.tblInvInVehicleChecklist vc LEFT OUTER JOIN CFA.tblTransitInvoiceHeader tih ON vc.InvId=tih.InvId
	     LEFT OUTER JOIN CFA.tblTransporterMaster tm ON vc.TransporterId=tm.TransporterId
	WHERE vc.BranchId=@BranchId AND vc.CompId=@CompId
END
GO
/****** Object:  StoredProcedure [NIU].[usp_GetMapInwardVehicleListForMob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[CFA].[usp_GetMapInwardVehicleListForMob] 1,1
CREATE PROC [NIU].[usp_GetMapInwardVehicleListForMob]
--DECLARE
@BranchId INT,
@CompId INT
--SET @BranchId=1; SET @CompId=1;
AS
BEGIN
	 SELECT miv.BranchId,miv.CompId,miv.InvId,tih.InvNo,miv.InvoiceDate,miv.InwardDate,miv.TransporterId,tm.TransporterNo,tm.TransporterName,miv.MobileNo,miv.DriverName,miv.VehicleNo,miv.Addedby,miv.AddedOn,miv.LastUpdatedOn
	 FROM CFA.tblMapInwardVehicle miv LEFT OUTER JOIN CFA.tblTransitInvoiceHeader tih ON miv.LRNo=tih.LrNo
	 LEFT OUTER JOIN CFA.tblTransporterMaster tm ON miv.TransporterId=tm.TransporterId
	 WHERE miv.BranchId=@BranchId AND miv.CompId=@CompId
END

GO
/****** Object:  StoredProcedure [NIU].[usp_InvoiceAllotmentAdd]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [NIU].[usp_InvoiceAllotmentAdd]
--declare
@BranchId	int,
@CompId	int,
@InvId	int,
@InvDtlsId	int=0,
@ProductCode	nvarchar(25)='',
@BatchNo	nvarchar(25)='',
@BillDrawerId	varchar(500),
@AllottedBy	int,
@RetValue	int output

--set @BranchId=1; set @CompId=1; set @Picklistid=3;set @PickerId='8,9,' set @AllottedBy=1
AS

BEGIN
	set @RetValue=0
	--declare @pkid table (pkrid int) 

	insert into CFA.tblInvoiceAllotment(BranchId,CompId,InvId,BillDrawerId,AllottedBy,AllottedDate,AllotmentStatus,LastUpdatedDate)
	select @BranchId,@CompId,@InvId,[value],@AllottedBy,getdate(),0, getdate()	
	from CFA.fn_StringSplit(@BillDrawerId,',')
	where [value] not in (select BillDrawerId from CFA.tblInvoiceAllotment where CompId=@CompId and InvId=@InvId 
	and BillDrawerId in (select [value] from CFA.fn_StringSplit(@BillDrawerId,',')))		 

	set @RetValue=SCOPE_IDENTITY()
	if (@RetValue>0)
	begin
		update CFA.tblInvoiceHeader set InvStatus=1,AllottedBy=@AllottedBy,AllottedDate=getdate() where InvId=@InvId
	end

END
GO
/****** Object:  StoredProcedure [NIU].[usp_InvoiceHeaderAddEdit]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [NIU].[usp_InvoiceHeaderAddEdit]
@InvId	int,
@BranchId	int,
@CompId	int,
@InvNo	nvarchar(20),
@InvPostingDate	datetime,
@InvCreatedDate	datetime,
@ItemCategory	int,
@IsColdStorage	bit,
@divisonStr varchar(max),
@SoldTo_StokistId	int,
@SoldTo_City	varchar(10),
@InvAmount	float,
@BilingType	int,
@SONo	varchar(25),
@SODate	datetime,
@Addedby	nvarchar(50),
@Action	nvarchar(10),
@RetValue	int output

AS
BEGIN
	set @RetValue=0
	
	if (upper(ltrim(rtrim(@Action)))='ADD')
	Begin 
		if not exists(select invId from CFA.tblinvoiceHeader where branchid=@BranchId and compId=@CompId and InvNo=@InvNo)
		Begin
			insert into CFA.tblInvoiceHeader(BranchId,CompId,InvNo,InvPostingDate,InvCreatedDate,ItemCategory,IsColdStorage,
				SoldTo_StokistId,SoldTo_City,InvAmount,BiilingType,SONo,SODate,InvStatus,Addedby,AddedOn,LastUpdatedOn)
			values(@BranchId,@CompId,@InvNo,@InvPostingDate,@InvCreatedDate,@ItemCategory,@IsColdStorage,
				@SoldTo_StokistId,@SoldTo_City,@InvAmount,@BilingType,@SONo,@SODate,0,@Addedby,getdate(),getdate())
			set @RetValue=SCOPE_IDENTITY()

			if(isnull(@RetValue,0)>0)
			Begin
				insert into CFA.tblInvoiceDetails(InvId,DivisionId,Addedby,AddedOn,LastUpdatedOn)
				select @RetValue,[value],@Addedby,getdate(),getdate() from CFA.fn_StringSplit(@divisonStr,',')
			End
		End
		else 
			set @RetValue=-1
	End
	else if (upper(ltrim(rtrim(@Action)))='EDIT')
	Begin
		if not exists(select invId from CFA.tblinvoiceHeader where branchid=@BranchId and compId=@CompId and InvNo=@InvNo and InvId<>@InvId)
		Begin
			update CFA.tblInvoiceHeader 
			set InvPostingDate=@InvPostingDate,
				InvCreatedDate=@InvCreatedDate,
				ItemCategory=@ItemCategory,
				IsColdStorage=@IsColdStorage,
				SoldTo_StokistId=@SoldTo_StokistId,
				SoldTo_City=@SoldTo_City,
				InvAmount=@InvAmount,
				BiilingType=@BilingType,
				SONo=@SONo,
				SODate=@SODate,
				Addedby=@Addedby,
				LastUpdatedOn=getdate()
			where InvId=@InvId
			set @RetValue=@InvId
		
			delete from CFA.tblInvoiceDetails WHERE InvId=@InvId --and DivisionId not in (select [value] from CFA.fn_StringSplit(@divisonStr,','))
			insert into CFA.tblInvoiceDetails(InvId,DivisionId,Addedby,AddedOn,LastUpdatedOn)
			select @RetValue,[value],@Addedby,getdate(),getdate() from CFA.fn_StringSplit(@divisonStr,',')
		End
		else 
			set @RetValue=-1
	End
	else
	Begin
		set @RetValue=-2
	End	
END
GO
/****** Object:  StoredProcedure [NIU].[usp_MapInwardVehicleAddEditForMob]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROC [NIU].[usp_MapInwardVehicleAddEditForMob]
--DECLARE
@BranchId INT,
@CompId INT,
@InvId BIGINT,
@InvoiceDate DATETIME,
@InwardDate DATETIME,
@TransporterId INT,
@MobileNo NVARCHAR(10),
@DriverName NVARCHAR(200),
@VehicleNo NVARCHAR(50),
@Addedby NVARCHAR(50),
@Action NVARCHAR(10),
@RetValue INT OUTPUT
--SET @BranchId=1; SET @CompId=1; SET @InvId=1; SET @InvoiceDate='2022-02-25'; SET @InwardDate='2022-07-29'; SET @TransporterId=34; SET @MobileNo='9665709402';
--SET @DriverName='XYZ'; SET @VehicleNo='MH2010010101'; SET @Action='ADD'; SET @Addedby='7';
AS
BEGIN
		SET @RetValue=0
		IF (UPPER(LTRIM(RTRIM(@Action)))='ADD')
		BEGIN
			IF NOT EXISTS(SELECT InvId FROM CFA.tblMapInwardVehicle WHERE InvId=@InvId)
			BEGIN
				INSERT INTO CFA.tblMapInwardVehicle(BranchId,CompId,InvId,InvoiceDate,InwardDate,TransporterId,MobileNo,DriverName,VehicleNo,Addedby,AddedOn,LastUpdatedOn)
				SELECT @BranchId,@CompId,@InvId,@InvoiceDate,@InwardDate,@TransporterId,@MobileNo,@DriverName,@VehicleNo,@Addedby,GETDATE(),GETDATE()
			END
			ELSE
			BEGIN
				SET @RetValue=-1 ---- Already InvoiceId Exists
			END
		END
		ELSE IF (UPPER(LTRIM(RTRIM(@Action)))='EDIT')
		BEGIN
			UPDATE CFA.tblMapInwardVehicle
			SET BranchId=@BranchId,
				CompId=@CompId,
				InvId=@InvId,
				InvoiceDate=@InvoiceDate,
				InwardDate=@InwardDate,
				TransporterId=@TransporterId,
				MobileNo=@MobileNo,
				DriverName=@DriverName,
				VehicleNo=@VehicleNo,
				Addedby=@Addedby,
				LastUpdatedOn=GETDATE()
			WHERE BranchId=@BranchId AND CompId=@CompId AND InvId=@InvId
			SET @RetValue=@InvId
		END
		ELSE IF (UPPER(LTRIM(RTRIM(@Action)))='DELETE')
		BEGIN
			DELETE FROM CFA.tblMapInwardVehicle WHERE InvId=@InvId
			SET @RetValue=@InvId
		END

	RETURN @RetValue
	 
END

GO
/****** Object:  StoredProcedure [NIU].[usp_PickListDetailsById]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [NIU].[usp_PickListDetailsById]
@Picklistid	int

AS
BEGIN
	 SELECT PicklistDtlsId,PicklistId,DivisionId,Addedby,AddedOn,LastUpdatedOn
	 FROM CFA.tblPickListDetails
	 WHERE PicklistId=@Picklistid
END
GO
/****** Object:  StoredProcedure [NIU].[usp_StockistById]    Script Date: 29-07-2023 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [NIU].[usp_StockistById]
--declare
@StockistId int

AS

BEGIN
	SELECT s.StockistId, s.BranchId, s.CompanyId, s.StockistNo, s.StockistName, s.StockistPAN, s.Emailid, s.MobNo, 
	s.StockistAddress, s.CityCode, ct.CityName, s.GSTNo, s.LocationId, gm.MasterName, s.Pincode, s.DLNo, s.DLExpDate, 
	s.FoodLicNo, s.FoodLicExpDate, s.IsActive, s.Addedby, s.AddedOn, s.LastUpdatedOn
	FROM CFA.tblStockistMaster AS s LEFT OUTER JOIN
	CFA.tblCityMaster AS ct ON s.CityCode = ct.CityCode LEFT OUTER JOIN
	CFA.tblGeneralMaster AS gm ON s.LocationId = gm.pkId
	WHERE  s.StockistId=@StockistId
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[60] 4[1] 2[22] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cq"
            Begin Extent = 
               Top = 15
               Left = 241
               Bottom = 323
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "s"
            Begin Extent = 
               Top = 215
               Left = 503
               Bottom = 328
               Right = 673
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sb"
            Begin Extent = 
               Top = 13
               Left = 800
               Bottom = 182
               Right = 979
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "st"
            Begin Extent = 
               Top = 5
               Left = 559
               Bottom = 210
               Right = 735
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 4
               Left = 1033
               Bottom = 134
               Right = 1204
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ChqRegisterSummaryReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ChqRegisterSummaryReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ChqRegisterSummaryReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[61] 4[30] 2[1] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[34] 2[38] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 2
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "c"
            Begin Extent = 
               Top = 159
               Left = 1121
               Bottom = 347
               Right = 1292
            End
            DisplayFlags = 344
            TopColumn = 0
         End
         Begin Table = "sk"
            Begin Extent = 
               Top = 244
               Left = 851
               Bottom = 509
               Right = 1027
            End
            DisplayFlags = 344
            TopColumn = 0
         End
         Begin Table = "i"
            Begin Extent = 
               Top = 98
               Left = 511
               Bottom = 482
               Right = 746
            End
            DisplayFlags = 344
            TopColumn = 0
         End
         Begin Table = "atm"
            Begin Extent = 
               Top = 0
               Left = 883
               Bottom = 226
               Right = 1063
            End
            DisplayFlags = 344
            TopColumn = 0
         End
         Begin Table = "t"
            Begin Extent = 
               Top = 63
               Left = 1136
               Bottom = 301
               Right = 1327
            End
            DisplayFlags = 344
            TopColumn = 0
         End
         Begin Table = "gp"
            Begin Extent = 
               Top = 11
               Left = 256
               Bottom = 300
               Right = 427
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "gpd"
            Begin Extent = 
               Top = 22
               Left = 489
               Bottom = 170
               Right = 659
            End
            DisplayFlags = 344
            TopColumn = 0
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_GetGatepassDtlsForPDF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      End
         Begin Table = "g"
            Begin Extent = 
               Top = 15
               Left = 58
               Bottom = 175
               Right = 165
            End
            DisplayFlags = 344
            TopColumn = 0
         End
         Begin Table = "tm"
            Begin Extent = 
               Top = 4
               Left = 1146
               Bottom = 134
               Right = 1317
            End
            DisplayFlags = 344
            TopColumn = 0
         End
         Begin Table = "cp"
            Begin Extent = 
               Top = 321
               Left = 0
               Bottom = 583
               Right = 146
            End
            DisplayFlags = 344
            TopColumn = 4
         End
         Begin Table = "br"
            Begin Extent = 
               Top = 95
               Left = 23
               Bottom = 408
               Right = 154
            End
            DisplayFlags = 344
            TopColumn = 0
         End
         Begin Table = "bct"
            Begin Extent = 
               Top = 259
               Left = 0
               Bottom = 389
               Right = 141
            End
            DisplayFlags = 344
            TopColumn = 0
         End
         Begin Table = "ct"
            Begin Extent = 
               Top = 144
               Left = 850
               Bottom = 274
               Right = 1024
            End
            DisplayFlags = 344
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
         Begin ParameterName = "@BranchId"
            ParameterValue = "1"
         End
         Begin ParameterName = "@CompId"
            ParameterValue = "1"
         End
         Begin ParameterName = "@GPid"
            ParameterValue = "1"
         End
      End
      Begin ColumnWidths = 65
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_GetGatepassDtlsForPDF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane3', @value=N' 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_GetGatepassDtlsForPDF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_GetGatepassDtlsForPDF'
GO
USE [master]
GO
ALTER DATABASE [CFADB] SET  READ_WRITE 
GO
