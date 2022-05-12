select ctptTitle, ctptContent,ctptWriter,ctptTag from ctPost where ctboSeq = 1;

-- 등록  
insert into ctPost (
    ctptTitle,
	ctptContent,
    ctptWriter,
    ctptTag
    )
select
	ctptTitle,
	ctptContent,
    ctptWriter,
    ctptTag 

    from ctPost
    where ctboSeq = 1;

-- 수정
update 