--死亡除戶
--ESERVICE_ADM.dbo.PARAMETER
INSERT ESERVICE_ADM.dbo.PARAMETER
    (
	PARAMETER_ID
	, SYSTEM_ID
	, PARAMETER_CODE
	, PARAMETER_NAME
	, PARAMETER_VALUE
	, PARAMETER_CATEGORY_ID
	, SORT_NO
	, REMARK
	, STATUS
	, ENCRYPT_TYPE
	, PARENT_PARAMETER_ID
	, CREATE_DATE
	, CREATE_USER
	, UPDATE_DATE
	, UPDATE_USER
	)
VALUES
   (
   (select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER)
	, N'eservice'
	, N'DNS_ALLIANCE'
	, N'死亡除戶'
	, N'DNS_ALLIANCE'
	, (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='ONLINE_CHANGE')
	, NULL
	, NULL
	, 1
	, NULL
	, NULL
	, getdate()
	, N'system'
	, NULL
	, NULL
	)
go


-----------公會聯盟鏈回報狀態-------
INSERT ESERVICE_ADM.dbo.PARAMETER_CATEGORY (PARAMETER_CATEGORY_ID, SYSTEM_ID, CATEGORY_CODE, CATEGORY_NAME, STATUS, CREATE_DATE, CREATE_USER)
VALUES ((select max(PARAMETER_CATEGORY_ID)+1 from ESERVICE_ADM.dbo.PARAMETER_CATEGORY), 'eservice_adm', 'ALLIANCE_RETURNS_CODE', '公會聯盟鏈回報狀態', 1, getdate(), 'admin')
go
INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'ALLIANCE_RETURNS_01', N'公會聯盟鏈回報狀態', N'', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='ALLIANCE_RETURNS_CODE'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL)
go
INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'ALLIANCE_RETURNS_02', N'公會聯盟鏈回報狀態0', N'0', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='ALLIANCE_RETURNS_CODE'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL)
go
INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'ALLIANCE_RETURNS_03', N'公會聯盟鏈回報狀態1', N'1', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='ALLIANCE_RETURNS_CODE'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL)
go


/*
-----------角色類型-------
INSERT ESERVICE_ADM.dbo.PARAMETER_CATEGORY (PARAMETER_CATEGORY_ID, SYSTEM_ID, CATEGORY_CODE, CATEGORY_NAME, STATUS, CREATE_DATE, CREATE_USER)
VALUES ((select max(PARAMETER_CATEGORY_ID)+1 from ESERVICE_ADM.dbo.PARAMETER_CATEGORY), 'eservice_adm', 'ROLE_CODE', '角色類型', 1, getdate(), 'admin')
go
INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'ROLE_CODE_00', N'保服操作員', N'5DB18E53-B1AA-40EA-9FEE-DC3C03856404', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='ROLE_CODE'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL)
go
INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'ROLE_CODE_01', N'保服審核', N'A0912C75-736B-4F32-9FF8-BA5CFA06E058', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='ROLE_CODE'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL)
go
INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'ROLE_CODE_02', N'保服覆核', N'35F2B78E-D3DD-4E7E-81CB-C8AE5F2658F3', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='ROLE_CODE'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL)
go

-----------覆核狀態類型-------
INSERT ESERVICE_ADM.dbo.PARAMETER_CATEGORY (PARAMETER_CATEGORY_ID, SYSTEM_ID, CATEGORY_CODE, CATEGORY_NAME, STATUS, CREATE_DATE, CREATE_USER)
VALUES ((select max(PARAMETER_CATEGORY_ID)+1 from ESERVICE_ADM.dbo.PARAMETER_CATEGORY), 'eservice_adm', 'REVIEW_STATUS_CODE', '覆核狀態類型', 1, getdate(), 'admin')
go
INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'REVIEW_NON', N'無狀態', N'NON', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='REVIEW_STATUS_CODE'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL)
go
INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'REVIEW_WAIT', N'等待覆核(覆核中)', N'WAIT', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='REVIEW_STATUS_CODE'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL)
go
INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'REVIEW_OK', N'覆核通過', N'OK', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='REVIEW_STATUS_CODE'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL)
go
INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'REVIEW_NO', N'覆核拒絕', N'NO', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='REVIEW_STATUS_CODE'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL)
go

--異常件異常件通知訊息--
INSERT ESERVICE_ADM.dbo.PARAMETER_CATEGORY (PARAMETER_CATEGORY_ID, SYSTEM_ID, CATEGORY_CODE, CATEGORY_NAME, STATUS, CREATE_DATE, CREATE_USER)
VALUES ((select max(PARAMETER_CATEGORY_ID)+1 from ESERVICE_ADM.dbo.PARAMETER_CATEGORY), 'eservice_adm', 'ABNORMAL_REASON_MSG', '異常件異常件通知訊息', 1, getdate(), 'admin')
go

INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'NOT_RETURN_PAPER_IN_10DAYS', N'十天內未寄回紙本文件', N'${NAME}保戶會員您好：</br>您於${TRANS_CREATEDATE}透過理賠聯盟鏈申請(案件${TRANS_NUM})理賠，因未於十天內收到您寄回的紙本文件，依理賠聯盟鏈規範將限制您未來再次使用本服務。</br>', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='ABNORMAL_REASON_MSG'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL);

INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'UPLOAD_PAPER_NOTCLEAR', N'上傳文件影像不清楚', N'${NAME} 保戶會員您好：</br>您於${TRANS_CREATEDATE}透過理賠聯盟鏈申請理賠，因您上傳的附件影像不清無法判別，請確認後再次重新申請。</br>', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='ABNORMAL_REASON_MSG'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL);

INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'NOT_RESEND_CONSENT_TO_FORWARD', N'轉送同意書未回傳', N'${NAME} 保戶會員您好：</br>您於${TRANS_CREATEDATE}透過理賠聯盟鏈申請(案件${TRANS_NUM})理賠，因您未上傳理賠申請轉送暨個資蒐集同意書，本次無法以理賠聯盟鏈方式轉送您的理賠申請文件，請向本公司客服中心0800011966或各地分公司洽詢辦理。', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='ABNORMAL_REASON_MSG'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL);

INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'NOT_UNION_CLAIMS', N'不屬可申請聯盟理賠的商品', N'臺端本次申請經審核後不適用理賠聯盟鏈方式申請理賠，如有疑問請電洽本公司客服中心0800011966或各地分公司。', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='ABNORMAL_REASON_MSG'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL);
go

--異常件異常件通知主題--
INSERT ESERVICE_ADM.dbo.PARAMETER_CATEGORY (PARAMETER_CATEGORY_ID, SYSTEM_ID, CATEGORY_CODE, CATEGORY_NAME, STATUS, CREATE_DATE, CREATE_USER)
VALUES ((select max(PARAMETER_CATEGORY_ID)+1 from ESERVICE_ADM.dbo.PARAMETER_CATEGORY), 'eservice_adm', 'ABNORMAL_REASON_SUB', '異常件異常件通知主題', 1, getdate(), 'admin')
go

INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'NOT_RETURN_PAPER_IN_10DAYS', N'十天內未寄回紙本文件', N'十天內未寄回紙本文件', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='ABNORMAL_REASON_SUB'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL);

INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'UPLOAD_PAPER_NOTCLEAR', N'上傳文件影像不清楚', N'上傳文件影像不清楚', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='ABNORMAL_REASON_SUB'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL);

INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'NOT_RESEND_CONSENT_TO_FORWARD', N'轉送同意書未回傳', N'轉送同意書未回傳', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='ABNORMAL_REASON_SUB'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL);

INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'NOT_UNION_CLAIMS', N'不屬可申請聯盟理賠的商品', N'不屬可申請聯盟理賠的商品', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='ABNORMAL_REASON_SUB'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL);
go

--保單理賠已完成訊息 fro mail content--
INSERT ESERVICE_ADM.dbo.PARAMETER_CATEGORY (PARAMETER_CATEGORY_ID, SYSTEM_ID, CATEGORY_CODE, CATEGORY_NAME, STATUS, CREATE_DATE, CREATE_USER)
VALUES ((select max(PARAMETER_CATEGORY_ID)+1 from ESERVICE_ADM.dbo.PARAMETER_CATEGORY), 'eservice_adm', 'INS_CLAIM_COMPLETED_MSG', '保單理賠已完成訊息', 1, getdate(), 'admin')
go

INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'INS_CLAIM_COMPLETED', N'保單理賠已完成', N'${NAME}保戶會員您好：</br>您於${TRANS_CREATEDATE}申請的理賠聯盟鏈申請(案件${TRANS_NUM})已完成。</br>', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='INS_CLAIM_COMPLETED_MSG'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL);
go

--保單理賠已完成主旨 for mail title--
INSERT ESERVICE_ADM.dbo.PARAMETER_CATEGORY (PARAMETER_CATEGORY_ID, SYSTEM_ID, CATEGORY_CODE, CATEGORY_NAME, STATUS, CREATE_DATE, CREATE_USER)
VALUES ((select max(PARAMETER_CATEGORY_ID)+1 from ESERVICE_ADM.dbo.PARAMETER_CATEGORY), 'eservice_adm', 'INS_CLAIM_COMPLETED_SUB', '保單理賠已完成主旨', 1, getdate(), 'admin')
go

INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'INS_CLAIM_COMPLETED', N'保單理賠已完成', N'保單理賠已完成', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='INS_CLAIM_COMPLETED_SUB'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL);
go


--系統收件人MAIL主題--
INSERT ESERVICE_ADM.dbo.PARAMETER_CATEGORY (PARAMETER_CATEGORY_ID, SYSTEM_ID, CATEGORY_CODE, CATEGORY_NAME, STATUS, CREATE_DATE, CREATE_USER)
VALUES ((select max(PARAMETER_CATEGORY_ID)+1 from ESERVICE_ADM.dbo.PARAMETER_CATEGORY), 'eservice_adm', 'SYS_SENDER_MAIL_SUB', '系統收件人MAIL主題', 1, getdate(), 'admin')
go

INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'SYS_MAIL_SUB', N'保單理賠已完成', N'保單理賠已完成', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='SYS_SENDER_MAIL_SUB'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL);
go

--系統收件人MAIL內容--
INSERT ESERVICE_ADM.dbo.PARAMETER_CATEGORY (PARAMETER_CATEGORY_ID, SYSTEM_ID, CATEGORY_CODE, CATEGORY_NAME, STATUS, CREATE_DATE, CREATE_USER)
VALUES ((select max(PARAMETER_CATEGORY_ID)+1 from ESERVICE_ADM.dbo.PARAMETER_CATEGORY), 'eservice_adm', 'SYS_SENDER_MAIL_MSG', '系統收件人MAIL內容', 1, getdate(), 'admin')
go

INSERT ESERVICE_ADM.dbo.PARAMETER (PARAMETER_ID, SYSTEM_ID, PARAMETER_CODE, PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_CATEGORY_ID, SORT_NO, REMARK, STATUS, ENCRYPT_TYPE, PARENT_PARAMETER_ID, CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER)
VALUES ((select max(parameter_id)+1 from ESERVICE_ADM.dbo.PARAMETER), N'eservice_adm', N'SYS_MAIL_MSG', N'保單理賠已完成', N'您好：</br>您於${TRANS_CREATEDATE}申請的${TYPE}申請(案件${TRANS_NUM})已完成。</br>', (select PARAMETER_CATEGORY_ID from ESERVICE_ADM.dbo.PARAMETER_CATEGORY where CATEGORY_CODE='SYS_SENDER_MAIL_MSG'), NULL, NULL, 1, NULL, NULL, getdate(), N'admin', NULL, NULL);
go

*/
