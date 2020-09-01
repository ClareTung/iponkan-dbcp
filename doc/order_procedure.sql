
CREATE PROCEDURE Get_Order_By_Uuid(
IN piUuid varchar(32),
OUT poNumber varchar(32),
OUT poName varchar(255),
OUT poErrMsg varchar(255)
) 
BEGIN
	DECLARE notfound INT DEFAULT 0;    #定义一个辅助变量用于判断
	DECLARE cur1 CURSOR FOR SELECT number,name FROM iponkan_dbcp.order where uuid = piUuid;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET notfound = 1;

	OPEN cur1;
	FETCH cur1 INTO poNumber,poName;

	if notfound = 1 then
		set poErrMsg = 'uuid='+ piUuid +'的单据信息不存在';
  end if;

	CLOSE cur1;
	
END;
GO;

CREATE PROCEDURE Get_ALL_Order()
BEGIN
	SELECT number,name FROM iponkan_dbcp.order;
END;