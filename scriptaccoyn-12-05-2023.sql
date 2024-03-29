USE [CFADB]
GO
/****** Object:  Table [CFA].[tblExpenseRegister]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  Table [CFA].[tblExpenseRegisterDtls]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  Table [CFA].[tblExpenseRegisterPayment]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  Table [CFA].[tblHeadMaster]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  Table [CFA].[tblReimbursementInv]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  Table [CFA].[tblReimbursementInvDtls]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  Table [CFA].[tblReimbursementPaymentDtls]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  Table [CFA].[tblTAXMaster]    Script Date: 12-05-2023 16:42:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CFA].[tblTAXMaster](
	[TaxId] [int] IDENTITY(1,1) NOT NULL,
	[TAXName] [nvarchar](20) NULL,
	[TaxPer] [int] NULL,
	[AddedBy] [nvarchar](50) NULL,
	[LastUpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblTAXMaster] PRIMARY KEY CLUSTERED 
(
	[TaxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CFA].[tblVendorMaster]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  StoredProcedure [CFA].[usp_CommissionInvAddEdit]    Script Date: 12-05-2023 16:42:52 ******/
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
			insert into CFA.tblCommssionInv(BranchId,CompanyId,InvNo,InvDate,InvTypeId,Discription,TaxableAmt,
				CGST,SGST,TotalAmt,Addedby,AddedOn,LastUpdatedOn)
			values (@BranchId,@CompanyId,@InvoiceNo,@InvDate,@InvTypeId,@Discription,@TaxableAmt,
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
/****** Object:  StoredProcedure [CFA].[usp_CommissionInvList]    Script Date: 12-05-2023 16:42:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [CFA].[usp_CommissionInvList] 
--declare
@BranchId	int,
@CompanyId	int

as

BEGIN
	SELECT i.ComInvId, i.BranchId, i.CompanyId, i.InvNo, i.InvDate, i.InvTypeId, g.MasterName InvType,
		i.Discription, i.TaxableAmt, i.CGST, i.SGST, i.TotalAmt, i.Addedby, i.AddedOn, i.LastUpdatedOn, 
		c.CompanyCode, c.CompanyName, c.CompanyCity, cm.CityName, c.CompanyAddress, SUM(p.PaymentAmt) AS PaymentAmt
	FROM CFA.tblCommssionInv AS i WITH (nolock) 
		INNER JOIN CFA.tblCompanyMaster AS c WITH (nolock) ON i.CompanyId = c.CompanyId 
		LEFT OUTER JOIN CFA.tblCityMaster AS cm ON c.CompanyCity = cm.CityCode 
		LEFT OUTER JOIN CFA.tblCommissionInvPaymentDtls AS p WITH (nolock) ON i.ComInvId = p.ComInvId 
		LEFT OUTER JOIN CFA.tblGeneralMaster AS g WITH (nolock) ON i.InvTypeId = g.pkId
	WHERE i.BranchId = @BranchId  AND i.CompanyId = @CompanyId
	GROUP BY i.ComInvId, i.BranchId, i.CompanyId, i.InvNo, i.InvDate, i.InvTypeId, g.MasterName, i.Discription, i.TaxableAmt, 
		i.CGST, i.SGST, i.TotalAmt, i.Addedby, i.AddedOn, i.LastUpdatedOn, c.CompanyCode, c.CompanyName, c.CompanyCity, cm.CityName, c.CompanyAddress 
END
GO
/****** Object:  StoredProcedure [CFA].[usp_CommissionInvPaymentDtlsAdd]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  StoredProcedure [CFA].[usp_CommissionInvPaymentDtlsList]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  StoredProcedure [CFA].[usp_CourierParentAddEdit]    Script Date: 12-05-2023 16:42:52 ******/
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
		insert into CFA.tblCourierParentMst(BranchId, ParentCourierName, ParentCourierEmail, ParentCourierMobNo,TDSPer,IsGST, GSTNumber,IsActive, Addedby, AddedOn, LastUpdatedOn)
		values(@BranchId,@ParentCourierName, @ParentCourierEmail, @ParentCourierMobNo,@TDSPer,@IsGST, @GSTNumber,'Y',@Addedby, getdate(), getdate())

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
/****** Object:  StoredProcedure [CFA].[usp_CourierParentMappingAdd]    Script Date: 12-05-2023 16:42:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [CFA].[usp_CourierParentMappingAdd]
@BranchId INT,
@CPid INT,
@CourierId NVARCHAR(500),
@Addedby NVARCHAR(50),
@RetValue int output
AS

BEGIN
SET @RetValue=0
    -- Delete unticked first
	delete from CFA.tblCourierParentMapping
	where BranchId=@BranchId and CPid=@CPid and CourierId not in (select [value] from CFA.fn_StringSplit(@CourierId,','))

	-- Insert new ticked old ticked are already added
	insert into CFA.tblCourierParentMapping(BranchId,CPid,CourierId,Addedby,AddedOn,LastUpdatedOn)
	SELECT @BranchId,@CPid,[value],@Addedby,GETDATE(),GETDATE() from CFA.fn_StringSplit(@CourierId,',')	tn
	left outer join CFA.tblCourierParentMapping cpm on tn.[value]=cpm.CourierId and cpm.BranchId=@BranchId
	where cpm.CourierId is null 

	set @RetValue = SCOPE_IDENTITY()

END



GO
/****** Object:  StoredProcedure [CFA].[usp_ExpenseRegisterAddEdit]    Script Date: 12-05-2023 16:42:52 ******/
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
				ExpHeadId, NoOfBox, InvFromDt, InvToDt, IsGSTApply, TaxableAmt, CGST, SGST, TotalAmt, IsReimbursable, 
				ExpInvStatus, AddedBy, AddedOn, LastUpdatedOn)
			values (@BranchId, @InvTypeId, @VendorId, @TransId, @CourierId, @ExpInvNo, @InvDate, @CompId, 
				@ExpHeadId, @NoOfBox, @InvFromDt, @InvToDt, @IsGSTApply, @TaxableAmt, @CGST, @SGST, @TotalAmt, @IsReimbursable, 
				0, @AddedBy,getdate(),getdate())  -- 0 For Pending while adding new Expense invoice
			set @RetValue=SCOPE_IDENTITY()
			if (@RetValue>0)
			Begin
				if (isnull(@TransId,0)>0)
				Begin
					insert into CFA.tblExpenseRegisterDtls(ExpInvId, GPDate, GatepassId, NoOfInv, GPNoOfBox, TranspNoOfBox, 
						CityCode, Rate, FreightAmt, DtlsStatus, AddedBy, LastUpdatedOn)
					select @RetValue, cast(g.GatepassDate as date) GPDate, g.GatepassId,sum(isnull(gd.InvId,0)) GPInv,sum(isnull(i.NoOfBox,0)) GPBox,
						sum(isnull(i.NoOfBox,0)) TPBox,isnull(t.CityCode,0) CityCode,isnull(t.RatePerBox,0) RatePerBox,
						sum(isnull(i.NoOfBox,0)) * isnull(t.RatePerBox,0)FreightAmt, 0, @AddedBy, getdate()
					From CFA.tblGenerateGatepass g inner join CFA.tblGenerateGatepassDetails gd on g.GatepassId=gd.GatepassId
						inner join CFA.tblInvoiceHeader i on gd.InvId=i.InvId
						inner join CFA.tblAssignTransportMode tm on gd.InvId=tm.InvoiceId
						inner join CFA.tblTransporterMaster t on tm.TransporterId=t.TransporterId
						inner join CFA.tblTransporterParentMapping tpm on t.TransporterId=tpm.TransporterId
					where g.CompId=@CompId and g.BranchId=@BranchId and tpm.TPId=@TransId
						and cast(g.GatepassDate as date) between cast(@InvFromDt as date) and cast(@InvToDt as date)
					group by cast(g.GatepassDate as date),g.GatepassId,t.CityCode,t.RatePerBox
				End
				else if (isnull(@CourierId,0)>0)
				Begin
					insert into CFA.tblExpenseRegisterDtls(ExpInvId, GPDate, GatepassId, NoOfInv, GPNoOfBox, TranspNoOfBox, 
						CityCode, Rate, FreightAmt, DtlsStatus, AddedBy, LastUpdatedOn)
					select @RetValue, cast(g.GatepassDate as date) GPDate, g.GatepassId,sum(isnull(gd.InvId,0)) GPInv,sum(isnull(i.NoOfBox,0)) GPBox,
						sum(isnull(i.NoOfBox,0)) TPBox,isnull(c.CityCode,0) CityCode,isnull(c.RatePerBox,0) RatePerBox,
						sum(isnull(i.NoOfBox,0)) * isnull(c.RatePerBox,0)FreightAmt, 0, @AddedBy, getdate()
					From CFA.tblGenerateGatepass g inner join CFA.tblGenerateGatepassDetails gd on g.GatepassId=gd.GatepassId
						inner join CFA.tblInvoiceHeader i on gd.InvId=i.InvId
						inner join CFA.tblAssignTransportMode tm on gd.InvId=tm.InvoiceId
						inner join CFA.tblCourierMaster c on tm.CourierId=c.CourierId
						inner join CFA.tblCourierParentMapping cpm on c.CourierId=cpm.CourierId
					where g.CompId=@CompId and g.BranchId=@BranchId and cpm.CPid=@CourierId
						and cast(g.GatepassDate as date) between cast(@InvFromDt as date) and cast(@InvToDt as date)
					group by cast(g.GatepassDate as date),g.GatepassId,c.CityCode,c.RatePerBox
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
				TotalAmt=@TotalAmt, 
				IsReimbursable=@IsReimbursable, 
				LastUpdatedOn=getdate() 
			where ExpInvId=@ExpInvId
			if (@ExpInvId>0)
			Begin
				delete from CFA.tblExpenseRegisterDtls where ExpInvId=@ExpInvId
				insert into CFA.tblExpenseRegisterDtls(ExpInvId, GPDate, GatepassId, NoOfInv, GPNoOfBox, TranspNoOfBox, 
					Rate, FreightAmt, DtlsStatus, AddedBy, LastUpdatedOn)
				select @RetValue, cast(g.GatepassDate as date) GPDate, g.GatepassId,sum(isnull(gd.InvId,0)) GPNoOfInv,
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
/****** Object:  StoredProcedure [CFA].[usp_ExpenseRegisterDtlsAdd]    Script Date: 12-05-2023 16:42:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [CFA].[usp_ExpenseRegisterDtlsAdd]
--Declare
@ExpInvId	int,
@AddedBy	int,
@SummDt CFA.AcBillSumm READONLY,
@RetValue nvarchar(50) output

as
BEGIN
	set @RetValue=0

	if not exists(select ExpInvId from CFA.tblExpenseRegisterDtls where ExpInvId=@ExpInvId)
	Begin
		insert into CFA.tblExpenseRegisterDtls(ExpInvId, InvDate, NoOfInv, GPNoOfBox, ActualNoOfBox, Rate, FreightAmt, 
			Remark, DtlsStatus, AddedBy, LastUpdatedOn)
		select @ExpInvId, InvDate, NoOfInv, GPNoOfBox, ActualNoOfBox, Rate, FreightAmt, Remark,DtlsStatus, @AddedBy, getdate()
		From @SummDt 
		SET @RetValue=SCOPE_IDENTITY()
	End
	else
		set @RetValue=-1
	
END
	
GO
/****** Object:  StoredProcedure [CFA].[usp_ExpenseRegisterList]    Script Date: 12-05-2023 16:42:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [CFA].[usp_ExpenseRegisterList] 
@BranchId int

As

Begin
	Select Er.ExpInvId, Er.BranchId, InvTypeId, ExpInvNo, InvDate, CompId, cm.CompanyName, ExpHeadId, H.HeadName, NoOfBox, TaxableAmt, 
		CGST, SGST, TotalAmt, IsReimbursable, Er.AddedBy, Er.VendorId, V.VendorName, TransId, T.ParentTranspName, CourierId, C.ParentCourierName,
		case when isnull(Er.TransId,0)>0  then T.ParentTranspName  
			 when isnull(Er.CourierId,0)>0  then C.ParentCourierName else V.VendorName End BillFromName,
		(TotalAmt - sum(ISNULL(Erp.PaymentAmt,0))) as Balance, 
        Er.InvFromDt, Er.InvToDt, Er.IsGSTApply, Er.ExpInvStatus, s.StatusText as ExpInvStatusText
	from CFA.tblExpenseRegister as Er Left Outer Join
		CFA.tblExpenseRegisterPayment as Erp on  Er.ExpInvId = Erp.ExpInvId Left Outer Join
		CFA.tblVendorMaster as V on Er.VendorId = V.VendorId Left Outer Join
		CFA.tblTransporterParentMst as T on Er.TransId = T.Tpid Left Outer Join
		CFA.tblCourierParentMst as C on Er.CourierId = C.Cpid Left Outer Join
		CFA.tblCompanyMaster as cm on Er.CompId = cm.CompanyId Left Outer Join
		CFA.tblHeadMaster as H on Er.ExpHeadId = H.pkId LEFT OUTER JOIN
        CFA.tblStatusMaster AS s ON Er.ExpInvStatus = s.id and s.StatusFor='ExpInv'
	where Er.BranchId=@BranchId
	group by Er.ExpInvId, Er.BranchId, InvTypeId, ExpInvNo, InvDate, CompId, cm.CompanyName, ExpHeadId, H.HeadName, NoOfBox, TaxableAmt, 
		CGST, SGST, TotalAmt, IsReimbursable, Er.AddedBy, Er.VendorId, V.VendorName, TransId, T.ParentTranspName, CourierId, C.ParentCourierName,
		Er.InvFromDt, Er.InvToDt, Er.IsGSTApply, Er.ExpInvStatus, s.StatusText
End

GO
/****** Object:  StoredProcedure [CFA].[usp_ExpenseRegisterPaymentAdd]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  StoredProcedure [CFA].[usp_ExpenseRegisterPaymentList]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  StoredProcedure [CFA].[usp_GetCommInvNo]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  StoredProcedure [CFA].[usp_GetExpRegisterListForCheckInv]    Script Date: 12-05-2023 16:42:52 ******/
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
		CASE WHEN ISNULL(Er.vendorId,0)=0 THEN T.ParentTranspName ELSE V.VendorName END BillFromName,
		(TotalAmt - SUM(ISNULL(Erp.PaymentAmt,0))) AS Balance, 
        Er.InvFromDt, Er.InvToDt, Er.IsGSTApply, Er.ExpInvStatus, s.StatusText AS ExpInvStatusText
	FROM CFA.tblExpenseRegister AS Er LEFT OUTER JOIN
		CFA.tblExpenseRegisterPayment AS Erp ON  Er.ExpInvId = Erp.ExpInvId LEFT OUTER JOIN
		CFA.tblVendorMaster AS V ON Er.VendorId = V.VendorId LEFT OUTER JOIN
		CFA.tblTransporterParentMst AS T ON Er.TransId = T.Tpid LEFT OUTER JOIN
		CFA.tblCompanyMaster AS cm ON Er.CompId = cm.CompanyId LEFT OUTER JOIN
		CFA.tblHeadMaster AS H ON Er.ExpHeadId = H.pkId LEFT OUTER JOIN
        CFA.tblStatusMaster AS s ON Er.ExpInvStatus = s.id and s.StatusFor='ExpInv'
	WHERE Er.BranchId=@BranchId and InvTypeId=1		-- 1 for Transporter Bill
	GROUP BY Er.ExpInvId, Er.BranchId, InvTypeId, ExpInvNo, InvDate, CompId, cm.CompanyName, ExpHeadId, H.HeadName, NoOfBox, TaxableAmt, 
		CGST, SGST, TotalAmt, IsReimbursable, Er.AddedBy, Er.VendorId, V.VendorName, TransId, T.ParentTranspName, 
		Er.InvFromDt, Er.InvToDt, Er.IsGSTApply, Er.ExpInvStatus, s.StatusText
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetHeadMasterList]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  StoredProcedure [CFA].[usp_GetParentTransporter]    Script Date: 12-05-2023 16:42:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [CFA].[usp_GetParentTransporter]
--DECLARE
@Tpid INT

AS
BEGIN
	SELECT Tpid, BranchId,cfa.fn_CamelCase(ParentTranspNo) ParentTranspNo, cfa.fn_CamelCase(ParentTranspName) ParentTranspName,
	ParentTranspEmail,cfa.fn_CamelCase(ParentTranspMobNo) ParentTranspMobNo,TDSPer,IsGST,GSTNumber,IsActive,Addedby,AddedOn,LastUpdatedOn
	FROM CFA.tblTransporterParentMst
	WHERE Tpid = @Tpid
END
GO
/****** Object:  StoredProcedure [CFA].[usp_GetReimInvNo]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  StoredProcedure [CFA].[usp_GetTaxMasterList]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  StoredProcedure [CFA].[usp_GetVendorMasterList]    Script Date: 12-05-2023 16:42:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [CFA].[usp_GetVendorMasterList]
--Declare
@Branch int

As

BEGIN
	SELECT VendorId, Branch, VendorName, Email, ContactNumber, PANNumber,IsGST, GSTNumber, City, c.CityName, Address, IsActive, AddedBy, AddedOn, LastUpdatedOn
		FROM CFA.tblVendorMaster as v left outer join
		CFA.tblCityMaster as c on v.City = c.CityCode
		where Branch = @Branch
END
GO
/****** Object:  StoredProcedure [CFA].[usp_HeadMasterAddEdit]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  StoredProcedure [CFA].[usp_ParentCourierMappedList]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  StoredProcedure [CFA].[usp_ParentTransporterMappedList]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  StoredProcedure [CFA].[usp_ReimbursementInvAddEdit]    Script Date: 12-05-2023 16:42:52 ******/
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

			insert into CFA.tblReimbursementInv(BranchId,CompId,InvNo,InvDate,TaxableAmt,CGST,SGST,TotalAmt,ExpHeadId,Remark,Addedby,AddedOn,LastUpdatedOn)
			values (@BranchId,@CompId,@InvoiceNo,@InvDate,@TaxableAmt,@CGST,@SGST,@TotalAmt,@ExpHeadId,@Remark,@Addedby,getdate(),getdate())
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
				TotalAmt=@TotalAmt,ExpHeadId=@ExpHeadId,Remark=@Remark,LastUpdatedOn=GETDATE()
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
/****** Object:  StoredProcedure [CFA].[usp_ReimbursementInvById]    Script Date: 12-05-2023 16:42:52 ******/
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
	e.BranchId,e.InvFromDt,e.InvToDt,e.TaxableAmt,e.CGST,e.SGST,e.TotalAmt,e.IsReimbursable,e.ExpInvStatus
	FROM CFA.tblExpenseRegister AS e WITH(NOLOCK) 
	LEFT OUTER JOIN CFA.tblVendorMaster AS v WITH(NOLOCK) ON v.VendorId=e.VendorId 
	LEFT OUTER JOIN CFA.tblTransporterMaster AS t WITH(NOLOCK) ON t.TransporterId=e.TransId 
	LEFT OUTER JOIN CFA.tblCourierMaster AS c WITH(NOLOCK) ON c.CourierId=e.CourierId
	LEFT OUTER JOIN CFA.tblReimbursementInvDtls rd WITH(NOLOCK) ON e.ExpInvId=rd.ExpInvId
	where (e.BranchId=@BranchId or @BranchId=0) and e.CompId=@CompId and (rd.ExpInvId is null or rd.ReimId=@ReimId)
end

GO
/****** Object:  StoredProcedure [CFA].[usp_ReimbursementInvList]    Script Date: 12-05-2023 16:42:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [CFA].[usp_ReimbursementInvList] 1,1  
CREATE proc [CFA].[usp_ReimbursementInvList]  
--declare  
@BranchId int,  
@CompanyId int  
--set @BranchId=1; set @CompanyId=1;  
as  
begin
	 select r.ReimId,r.BranchId,r.CompId,c.CompanyName,r.InvNo,r.InvDate,r.TaxableAmt,r.CGST,r.SGST,r.TotalAmt,
			r.ExpHeadId as ExpeHeadId,g.MasterName as ExpeHeadName,r.Remark,ISNULL(sum(rp.PaymentAmt),0) as PaymentAmt
	 from CFA.tblReimbursementInv as r with(nolock)
	 left outer join CFA.tblCompanyMaster c with(nolock) on c.CompanyId=r.CompId
	 left outer join CFA.tblGeneralMaster as g with(nolock) on r.ExpHeadId=g.pkId
	 left outer join CFA.tblReimbursementPaymentDtls as rp with(nolock) on rp.ReimId=r.ReimId
	 where r.BranchId=@BranchId and r.CompId=@CompanyId  
	 group by r.ReimId,r.BranchId,r.CompId,c.CompanyName,r.InvNo,r.InvDate,r.TaxableAmt,r.CGST,r.SGST,r.TotalAmt,r.ExpHeadId,g.MasterName,r.Remark
end
GO
/****** Object:  StoredProcedure [CFA].[usp_ReimbursementPaymentDtlsAdd]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  StoredProcedure [CFA].[usp_ReimbursementPaymentList]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  StoredProcedure [CFA].[usp_TAXMasterAddEdit]    Script Date: 12-05-2023 16:42:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [CFA].[usp_TAXMasterAddEdit]
--declare
@TaxId	int,
@TAXName nvarchar(20),
@TaxPer	int,
@AddedBy nvarchar(50),
@Action	nvarchar(20),
@RetValue int OUTPUT

as
BEGIN
set @RetValue=0
	If(@Action='ADD')
	Begin
		if not exists(select TAXName from CFA.tblTAXMaster where TAXName=@TAXName)
		Begin
			insert into CFA.tblTAXMaster(TAXName,TaxPer,AddedBy,LastUpdatedOn)
			values (@TAXName,@TaxPer,@AddedBy,getdate())
			set @RetValue=SCOPE_IDENTITY()
		End
		else
			set @RetValue=-1
	End
	If(@Action='EDIT')
	Begin
		if not exists(select TAXName from CFA.tblTAXMaster where TAXName=@TAXName and TaxId<>@TaxId)
		Begin
			Update CFA.tblTAXMaster set TAXName=@TAXName,TaxPer=@TaxPer,LastUpdatedOn=getdate() where TaxId=@TaxId
			set @RetValue=@TaxId
		End
		else
			set @RetValue=-1
	End
	If(@Action='DELETE')
	Begin
		Delete from CFA.tblTAXMaster where TaxId=@TaxId
		set @RetValue=@TaxId
	End
END
GO
/****** Object:  StoredProcedure [CFA].[usp_VendorMasterAddEdit]    Script Date: 12-05-2023 16:42:52 ******/
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
/****** Object:  StoredProcedure [CFA].[usp_VendorMasterDeleteDeactivate]    Script Date: 12-05-2023 16:42:52 ******/
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
