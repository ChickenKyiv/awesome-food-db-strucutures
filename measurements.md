- https://stackoverflow.com/questions/12413705/parsing-natural-language-ingredient-quantities-for-recipes/12426038
- https://stackoverflow.com/questions/10909433/efficient-regex-to-split-ingredient-measures-and-units

---
#### packages. Fractions. how covert 1 spoon, 2/5 spoon, 1/8 spoon to one number

http://mathjs.org/docs/datatypes/fractions.html
https://www.npmjs.com/browse/keyword/fraction
https://www.npmjs.com/package/fractional-arithmetic
https://www.npmjs.com/package/fractions
https://www.npmjs.com/package/mathjs
https://github.com/yisibl/num2fraction


------

http://www.chefolicious.com/conversion/

http://github.extramaster.net/measurementsConverters/
https://www.npmjs.com/package/convert-units


Examples: 
http://www.mykitchencalculator.com/kitchencalculator.html
http://mykitchencalculator.com/recipeconverter.html

https://www.convert-me.com/en/convert/cooking/

http://www.calcul.com/show/calculator/cooking-conversion **(!)**

http://www.kitchencalculator.net/
https://www.webstaurantstore.com/recipe_resizer.html

http://spiekermann.com/en/wp-content/uploads/2008/11/US_liquidconversion589.jpg

http://kinja-labs.com/ingredient-cutter/

http://www.free-online-calculator-use.com/recipe-conversion-calculator.html
![image](https://user-images.githubusercontent.com/1469198/31828130-1aa4e234-b5c2-11e7-8a76-879a2d36bfcc.png)


---

![wnjcc](https://user-images.githubusercontent.com/1469198/31823732-b9f006a0-b5b5-11e7-8250-a1cbbff211d7.png)
Nice Image, I want it on Readme
https://gist.github.com/atherdon/3240cc17ffdcbff6533829d4d0811fda

```
create table Measure (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	name VARCHAR(30)) 
	ENGINE=InnoDB DEFAULT CHARSET=utf8; 
```

`INSERT INTO Measure (name) VALUES('CUP'), ('TEASPOON'), ('TABLESPOON');`


'Food Categories'

```
Appetizers
Breads
Fish
Beef
Poultry
Pork
Soup
Pastas
Sides
Desserts
```


---------
Directions
```
id
recipes_id
direction
prep_time
cook_time
```

Measurements
```
id
ingredients_id
name
```

QUANTITIES
```
id
recipe_id -- links to recipes table
ingredient_id -- links to ingredients table
quantity
```

https://stackoverflow.com/questions/13882738/designing-a-recipe-database-that-needs-to-include-ingredients-as-well-as-sub-rec

![image](https://user-images.githubusercontent.com/1469198/31826428-b3a7f76e-b5bd-11e7-9914-845b05499ef1.png)

![image](https://user-images.githubusercontent.com/1469198/31826457-c6042504-b5bd-11e7-8fd2-a9e313b32c01.png)

![image](https://user-images.githubusercontent.com/1469198/31826493-e2cbbe54-b5bd-11e7-8fe0-6538903bfd17.png)

![image](https://user-images.githubusercontent.com/1469198/31826507-ece7958e-b5bd-11e7-97a2-e871eacd9f5d.png)


![image](https://user-images.githubusercontent.com/1469198/31826530-fdb9f028-b5bd-11e7-8c41-af0f55a6fe5a.png)
![image](https://user-images.githubusercontent.com/1469198/31826537-02ef1122-b5be-11e7-8735-1fc2166ed582.png)

![image](https://user-images.githubusercontent.com/1469198/31826552-0d1bdacc-b5be-11e7-9cd9-120275a06ead.png)

![image](https://user-images.githubusercontent.com/1469198/31826568-1965cacc-b5be-11e7-8db9-3d5779ec9cd9.png)

https://stackoverflow.com/questions/38463361/creating-a-recipe-database
![image](https://user-images.githubusercontent.com/1469198/31826626-3960d196-b5be-11e7-8ad3-229d7c6a6ce9.png)

![image](https://user-images.githubusercontent.com/1469198/31826646-49825f68-b5be-11e7-87e3-d820b852d801.png)

![image](https://user-images.githubusercontent.com/1469198/31826663-51672e34-b5be-11e7-8516-2d2ecd52c7d2.png)


https://stackoverflow.com/questions/17651424/bill-of-materials-database-model

![image](https://user-images.githubusercontent.com/1469198/31826706-6fc015e4-b5be-11e7-9039-1d25ed5e383a.png)


https://forum.codeigniter.com/post-7676.html

read: https://fmforums.com/topic/43537-recipe-database-using-kitchen-inventory/

![image](https://user-images.githubusercontent.com/1469198/31827162-d10d68aa-b5bf-11e7-8011-667bf1a41236.png)


----

GS7 release
