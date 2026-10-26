-- All Characters by Birthplace
SELECT BirthCountry, BirthState, Heroes.BirthCity, FamilyName, GivenName, Surname, Age, Gender, Nationality, FirstLanguage, SecondLanguage, Religion, Denomination, MartialArt
FROM Heroes
LEFT JOIN Birthplaces
ON Heroes.BirthCity = Birthplaces.BirthCity
UNION
SELECT BirthCountry, BirthState, Students.BirthCity, FamilyName, GivenName, Surname, Age, Gender, Nationality, FirstLanguage, SecondLanguage, Religion, Denomination, MartialArt
FROM Students
LEFT JOIN Birthplaces
ON Students.BirthCity = Birthplaces.BirthCity
ORDER BY BirthCountry ASC, BirthState ASC, BirthCity ASC, Age DESC, GivenName ASC
