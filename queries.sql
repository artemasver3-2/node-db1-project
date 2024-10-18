-- Database Queries

-- Find all customers with postal code 1010
`
12 	Cactus Comidas para llevar 	Patricio Simpson 	Cerrito 333 	Buenos Aires 	1010 	Argentina 
54 	Océano Atlántico Ltda. 	Yvonne Moncada 	Ing. Gustavo Moncada 8585 Piso 20-A 	Buenos Aires 	1010 	Argentina 
64 	Rancho grande 	Sergio Gutiérrez 	Av. del Libertador 900 	Buenos Aires 	1010 	Argentina 
`
-- Find the phone number for the supplier with the id 11
`
(010) 9984510 
`
-- List first 10 orders placed, sorted descending by the order date
`
10443 	66 	8 	2/12/1997 	1 
10442 	20 	3 	2/11/1997 	2 
10441 	55 	3 	2/10/1997 	2 
10440 	71 	4 	2/10/1997 	2 
10439 	51 	6 	2/7/1997 	3 
10438 	79 	3 	2/6/1997 	2 
10437 	87 	8 	2/5/1997 	1 
10436 	7 	3 	2/5/1997 	2 
10435 	16 	8 	2/4/1997 	2 
10434 	24 	3 	2/3/1997 	2 
10433 	60 	3 	2/3/1997 	3 
`
-- Find all customers that live in London, Madrid, or Brazil
`
4 	Around the Horn 	Thomas Hardy 	120 Hanover Sq. 	London 	WA1 1DP 	UK 
8 	Bólido Comidas preparadas 	Martín Sommer 	C/ Araquil, 67 	Madrid 	28023 	Spain 
11 	B's Beverages 	Victoria Ashworth 	Fauntleroy Circus 	London 	EC2 5NT 	UK 
16 	Consolidated Holdings 	Elizabeth Brown 	Berkeley Gardens 12 Brewery  	London 	WX1 6LT 	UK 
19 	Eastern Connection 	Ann Devon 	35 King George 	London 	WX3 6FW 	UK 
22 	FISSA Fabrica Inter. Salchichas S.A. 	Diego Roel 	C/ Moralzarzal, 86 	Madrid 	28034 	Spain 
53 	North/South 	Simon Crowther 	South House 300 Queensbridge 	London 	SW7 1RZ 	UK 
69 	Romero y tomillo 	Alejandra Camino 	Gran Vía, 1 	Madrid 	28001 	Spain 
72 	Seven Seas Imports 	Hari Kumar 	90 Wadhurst Rd. 	London 	OX15 4NB 	UK 
`

-- Add a customer record for "The Shire", the contact name is "Bilbo Baggins" the address is -"1 Hobbit-Hole" in "Bag End", postal code "111" and the country is "Middle Earth"

-- Update Bilbo Baggins record so that the postal code changes to "11122"

-- (Stretch) Find a query to discover how many different cities are stored in the Customers table. Repeats should not be double counted

-- (Stretch) Find all suppliers who have names longer than 20 characters. You can use `length(SupplierName)` to get the length of the name
