
select * from dbo.athlete_events
select * from dbo.noc_regions
Select COUNT (distinct Games) as Total_Olympic_Games FROM dbo.athlete_events;
SELECT  distinct Year, Season, City From dbo.athlete_events order by Year;
SELECT Count(distinct NOC) as Total_Country, Games  FROM dbo.athlete_events Group BY Games;
SELECT COUNT(distinct Games) AS Total__Games,Team From  dbo.athlete_events 
SELECT name, COUNT(1) as total_medals from dbo.athlete_events WHERE medal='Gold' group by Name ORDER by count(1) Desc
Select distinct Games, count(distinct sport) as no_of_Sports From dbo.athlete_events GROUP by games order by no_of_Sports DESC
SELECT COUNT(DISTINCT games) AS no_of_years, team FROM dbo.athlete_events GROUP BY team ORDER BY no_of_years DESC
SELECT team, Games, SUM(Case WHEN medal='Gold' then 1 else 0 end)gold,SUM(Case WHEN medal='Silver' then 1 else 0 end)Silver,
SUM(Case WHEN medal='Bronze' then 1 else 0 end)Bronze, COUNT(Team) AS total_medals FROM dbo.athlete_events GROUP BY team,Games
ORDER BY total_medals DESC
Select team, sport, games, count(1) as total_medals from dbo.athlete_events WHERE medal <>'NA' and team = 'India' and sport = 'Hockey' 
group by team, Games,sport order by total_medals DESC

