IF EXISTS (
    SELECT * FROM sysobjects WHERE id = object_id(N'[SystemAdmin].[InitCap]') 
    AND xtype IN (N'FN', N'IF', N'TF')
)
    DROP FUNCTION [SystemAdmin].[InitCap]
GO
