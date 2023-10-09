--создаём таблицы
CREATE TABLE #Region(
RegId varchar(2) PRIMARY KEY,
CitiIdName varchar(200),
RegCenter varchar(200)
);
create table #Citi(
CitiId varchar(5) PRIMARY KEY,
RegId varchar(2),
CitiName varchar(200),
CitiPopulation int,
CitiCoord geography
);
--заполняем таблицы
insert into #Region values
(15,'Республика Северная Осетия – Алания', 'Владикавказ'),
(23,'Краснодарский край','Краснодар'),
(26,'Ставропольский край','Ставрополь'),
(53,'Новгородская область','Великий Новгород'),
(60,'Псковская область ','Псков'),
(78,'Санкт-Петербург','Санкт-Петербург')
select * from #Region
insert into #Citi values
(812,78,'Санкт-Петербург',5191690,geography::Point(59.95,30.316666667,4200)),
(8162,53,'Великий Новгород',221954,geography::Point(58.525,31.275, 4200)),
(81153, 60, 'Великие Луки', 95606, geography::Point(56.35,30.51666667, 4200)),
(8112, 60, 'Псков', 207571, geography::Point(57.8166666667,28.3333333333,4200)),
(8672, 15, 'Владикавказ', 308190, geography::Point(43.0166666667,44.65, 4200)),
(86736, 15, 'Моздок', 40042, geography::Point(43.75,44.65, 4200)),
(8793, 26, 'Пятигорск', 145971, geography::Point(44.05,43.06, 4200)),
(861, 23, 'Краснодар', 829677, geography::Point(45.033333333,38.983333333333,4200))
select CitiId,RegId,CitiName,CitiPopulation, CitiCoord.ToString() from #Citi

--Самый южный город 
declare @tmp geography;
declare @south geography;
set @south = (select CitiCoord from #Citi where CitiId = 8112)
declare crs cursor for
select CitiCoord from #Citi
open crs
fetch next from crs into @tmp
while @@FETCH_STATUS = 0
	begin
		if(@tmp.Lat < @south.Lat)
			set @south = @tmp
		fetch next from crs into @tmp
	end
close crs
deallocate crs
select CitiId,RegId,CitiName,CitiPopulation, CitiCoord.ToString() 'CitiCoord' 
from #Citi
where CitiCoord.STEquals(@south) = 1
--самый западный южнее великих лук
declare @tmp geography;
declare @south geography;
declare @west geography;
set @south = (select CitiCoord from #Citi where CitiId = 81153)
set @west = (select CitiCoord from #Citi where CitiId = 8672)
declare crs cursor scroll for
select CitiCoord from #Citi
open crs
fetch last from crs into @tmp
while @@FETCH_STATUS = 0
	begin
		if(@south.Lat > @tmp.Lat and @west.Long > @tmp.Long)
			set @west = @tmp
		fetch prior from crs into @tmp
	end
close crs
deallocate crs
select CitiId,RegId,CitiName,CitiPopulation, CitiCoord.ToString() 'CitiCoord' 
from #Citi
where CitiCoord.STEquals(@west) = 1
select CitiId,RegId,CitiName,CitiPopulation, CitiCoord.ToString() 'CitiCoord' 
from #Citi
--площадь в кв. километрах треугольника с вершинами в Санкт-Петербурге, Великом Новгороде и Пскове,
--а также суммарное население этих городов.
declare @SPb geography;
declare @Nov geography;
declare @Psk geography;
set @SPb = (select CitiCoord from #Citi where CitiName = 'Санкт-Петербург')
set @Nov = (select CitiCoord from #Citi where CitiName = 'Великий Новгород')
set @Psk = (select CitiCoord from #Citi where CitiName = 'Псков')
declare @triangle geography;
set @triangle = geography::STPolyFromText('POLYGON (('
+(select cast(@SPb.Long as varchar(200))) + ' ' + (select cast(@SPb.Lat as varchar(200))) + ','
+(select cast(@Nov.Long as varchar(200))) + ' ' + (select cast(@Nov.Lat as varchar(200))) + ','
+(select cast(@Psk.Long as varchar(200))) + ' ' + (select cast(@Psk.Lat as varchar(200))) + ','	
+(select cast(@SPb.Long as varchar(200))) + ' ' + (select cast(@SPb.Lat as varchar(200))) + '))',4200	)
select @triangle.STArea()/100000 'Площадь', 
((select CitiPopulation from #Citi where CitiName = 'Санкт-Петербург')
+( select CitiPopulation from #Citi where CitiName = 'Великий Новгород')
+( select CitiPopulation from #Citi where CitiName = 'Псков')) 'Население'
select @triangle.STLength()/1000--периметр
--маршрут
declare @SPb geography;
declare @Nov geography;
declare @Psk geography;
declare @Vdk geography;
declare @Krd geography;
set @SPb = (select CitiCoord from #Citi where CitiName = 'Санкт-Петербург')
set @Nov = (select CitiCoord from #Citi where CitiName = 'Великий Новгород')
set @Psk = (select CitiCoord from #Citi where CitiName = 'Псков')
set @Vdk = (select CitiCoord from #Citi where CitiName = 'Владикавказ')
set @Krd = (select CitiCoord from #Citi where CitiName = 'Краснодар')

declare @Route geography;
set @Route = geography::STLineFromText('LINESTRING ('
+(select cast(@SPb.Lat as varchar(200))) + ' ' + (select cast(@SPb.Long as varchar(200))) + ','
+(select cast(@Nov.Lat as varchar(200))) + ' ' + (select cast(@Nov.Long as varchar(200))) + ','
+(select cast(@Vdk.Lat as varchar(200))) + ' ' + (select cast(@Vdk.Long as varchar(200))) + ','
+(select cast(@Krd.Lat as varchar(200))) + ' ' + (select cast(@Krd.Long as varchar(200))) + ','
+(select cast(@Psk.Lat as varchar(200))) + ' ' + (select cast(@Psk.Long as varchar(200))) + ','	
+(select cast(@SPb.Lat as varchar(200))) + ' ' + (select cast(@SPb.Long as varchar(200))) + ')',4200)

select 'Санкт-Петербург - Великий Новгород - Псков - Владикавказ - Краснодар' 'Route', 
@Route.STAsText(),
@Route.STLength()/1000 'Расстояние'
--с курсором

CREATE TABLE #CenterCiti (
CitiId varchar(5) PRIMARY KEY,
RegId varchar(2),
CitiName varchar(200),
CitiPopulation int,
CitiCoord geography
);

insert into #CenterCiti select CitiId,#Citi.RegId, CitiName, CitiPopulation, CitiCoord
from #Citi INNER JOIN #Region 
ON #Citi.CitiName = #Region.RegCenter 
ORDER BY CitiName; 
 
DELETE FROM #CenterCiti WHERE CitiId = 'Санкт-Петербург'; 

 
 
declare @coord varchar(200)
declare @routeName varchar(200)
DECLARE crs CURSOR FOR 
SELECT CitiName 
FROM #CenterCiti
order by CitiName
 

declare @routeVarChar varchar(2000) 
set @routeVarChar = 'LINESTRING (' 
+(SELECT cast(CitiCoord.Lat as varchar(15)) from #Citi where CitiName = 'Санкт-Петербург') + ' '
+(SELECT cast(CitiCoord.Long as varchar(15)) from #Citi where CitiName = 'Санкт-Петербург')+', ' 
 set @routeName = 'Санкт-Петербург-'
OPEN crs 
FETCH NEXT FROM crs INTO @coord 
 
WHILE @@FETCH_STATUS = 0 
  
	BEGIN
		if(@coord != 'Санкт-Петербург')
			begin
 				set @routeVarChar = @routeVarChar 
				+(SELECT cast(CitiCoord.Lat as varchar(15)) from #Citi where CitiName = @coord) 
				+ ' ' +(SELECT cast(CitiCoord.Long as varchar(15)) from #Citi where CitiName = @coord)+', ' 
				set @routeName = @routeName + @coord +'-'
				FETCH NEXT FROM crs INTO @coord
			end
		else
			begin
				set @routeVarChar = @routeVarChar
				+(SELECT cast(CitiCoord.Lat as varchar(15)) from #Citi where CitiName = @coord) 
				+ ' ' +(SELECT cast(CitiCoord.Long as varchar(15)) from #Citi where CitiName = @coord)+')' 
				set @routeName = @routeName + @coord 
				FETCH NEXT FROM crs INTO @coord
			end
	END 
CLOSE crs 
DEALLOCATE crs 
print @routeVarChar 
print @routeName

declare @route geography;
set @route = geography::STLineFromText(@routeVarChar,4200)
select @routeName 'Маршрут', @route.ToString() 'Ломаная', @route.STLength()/1000 'Расстояние'

