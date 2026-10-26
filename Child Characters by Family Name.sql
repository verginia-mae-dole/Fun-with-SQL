-- Child Characters by Family Name
SELECT FamilyName, GivenName, Surname, Age, Gender, Heroes.BirthCity, BirthState, BirthCountry, Nationality, FirstLanguage, SecondLanguage, Religion, Denomination, MartialArt
FROM Heroes
LEFT JOIN Birthplaces
ON Heroes.BirthCity = Birthplaces.BirthCity
WHERE Age < 18
UNION
SELECT FamilyName, GivenName, Surname, Age, Gender, Students.BirthCity, BirthState, BirthCountry, Nationality, FirstLanguage, SecondLanguage, Religion, Denomination, MartialArt
FROM Students
LEFT JOIN Birthplaces
ON Students.BirthCity = Birthplaces.BirthCity
WHERE Age < 18
ORDER BY FamilyName ASC, Age DESC