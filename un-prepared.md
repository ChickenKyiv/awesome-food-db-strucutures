

- https://dba.stackexchange.com/questions/145222/structure-a-database-for-a-blog
- https://dba.stackexchange.com/search?q=recipe+database

- https://dba.stackexchange.com/questions/3808/most-effificient-way-to-store-ingredients-in-a-food-database?rq=1

- https://dba.stackexchange.com/questions/158751/when-to-add-another-lookup-table-for-the-same-field

=========
план как хранить в базе уже использованные листы и как это сделать со стороны фронтенда

все айтемы станут purchased и выводить их потом уже без purchased или без цены

разобраться где я спрятал фавориты и отобразить их обратно на дев версии проекта

------

Если говорить о будущем расширении функционала -
то это Measurements & Unit Convertion и автоматический гросерились
- это то что интересно делать картинки и их поддержку мы пока не добавляем,
 но loopback имеет хороший туториал на эту тему

-----



```

 Ingredient
 Field	Type	Description
 uri	string	Ontology identifier
 quantity	float	Quantity of specified measure
 measure	Measure	Measure
 weight	float	Total weight, g
 food	Food	Food
 ```
--
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
 ====
