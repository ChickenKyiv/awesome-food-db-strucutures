

- https://dba.stackexchange.com/questions/145222/structure-a-database-for-a-blog
- https://dba.stackexchange.com/search?q=recipe+database

- https://dba.stackexchange.com/questions/3808/most-effificient-way-to-store-ingredients-in-a-food-database?rq=1

- https://dba.stackexchange.com/questions/158751/when-to-add-another-lookup-table-for-the-same-field

=========
I need to have a plan about how we'll store "completed/used grocery lists". and how it will looks from frontend side
All items will be purchased and we can just display a list - without any status and without a price.
Find out where i keep data about favorites and display them back

---



```

 Ingredient
 Field	Type	Description
 uri	string	Ontology identifier
 quantity	float	Quantity of specified measure
 measure	Measure	Measure
 weight	float	Total weight, g
 food	Food	Food
 ```
---
```
 NutrientInfo
 Field	Type	Description
 uri	string	Ontology identifier
 label	string	Display label
 quantity	float	Quantity of specified units
 unit	string	Units

 Measure
 Field	Type	Description
 uri	string	Ontology identifier
 label	string	Common name

 Food
 Field	Type	Description
 uri	string	Ontology identifier
 label	string	Common name
 ```
 
