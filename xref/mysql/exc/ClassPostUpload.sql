select ctptTitle, ctptContent,ctptWriter,regDateTime from ctPost where ctboSeq = 1;

-- 등록  
insert into ctPost (ctptTitle, ctptContent, ctptWriter, ctptTag,regDateTime)
select
	ctptTitle,
	ctptContent,
    ctptWriter,
    ctptTag,
    regDateTime

    from ctPost
    where ctboSeq = 1;




-- 수정
