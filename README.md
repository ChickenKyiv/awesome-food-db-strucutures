# awesome-food-db-strucutures

[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/ChickenKyiv/awesome-food-db-strucutures) [![Made With Love](https://img.shields.io/badge/Made%20With-Love-orange.svg)](https://github.com/ChickenKyiv/awesome-food-db-strucutures)


<p align="center"><img src="https://raw.githubusercontent.com/GroceriStar/creative/master/website-illustrations/astronaut.svg?sanitize=true" alt="astronaut" width="200" /></p>



#### attrib

```
attributes :
course : An array of the cources associated with this recipe.
cuisine : An array of the cuisines associated with this recipe.
holiday : An array of the holidays associated with this recipe.
flavors : The flavor scores for this recipe.
salty : Saltiness on a range of 0 to 1.
sour : Sourness on a range of 0 to 1.
sweet : Sweetness on a range of 0 to 1.
bitter : Bitterness on a range of 0 to 1.
meaty : Savoryness on a range of 0 to 1.
piquant : Spiciness on a range of 0 to 1.
```

-----------

#### nutritional attributes

```
Supported Nutrition Attributes (ATTR_NAME):

"Nutrition value to pass to the API"	    "Description"	       "Implied Units"

K	                                         Potassium, K     	            gram
NA	                                       Sodium, Na	                    gram
CHOLE	                                     Cholesterol	                  gram
FATRN	                                     Fatty acids, total trans	      gram
FASAT	                                     Fatty acids, total saturated	  gram
CHOCDF	                                   Carbohydrate, by difference	  gram
FIBTG	                                     Fiber, total dietary	          gram
PROCNT	                                   Protein	                      gram
VITC	                                     Vitamin C, total ascorbic acid	gram
CA	                                       Calcium, Ca	         gram
FE	                                       Iron, Fe	            gram
SUGAR	                                     Sugars, total	       gram
ENERC_KCAL	                               Energy	              kcal
FAT	                                       Total lipid (fat)	    gram
VITA_IU	                                   Vitamin A, IU	      IU
```

#### types

```
Types
Composite types are described in terms of their JSON representation.

Throughout descriptions, the following notation is used:
boolean, integer, float, and string stand for the JavaScript primitive types Boolean, integer, float, and string, respectively enum stands for a string field that only takes on values from a pre-defined range (the range is specified where essential) T[] stands for an array of objects of type T
T[] stands for an object (associative map) whose every field (element) is of type T.

Hits
Field	      Type	   Description
q	string	Query text, as submitted
from	integer	First result index, as submitted
to	integer	Last result index, as submitted
params	String[][]	Effective parameters
count	integer	Number of results found
more	boolean	More that the maximum allowed number of results found
hits	Hit[]	Matching results (Hit objects)

Hit
Field	      Type	   Description
recipe	    Recipe	 Matching recipe (Recipe object)
bookmarked	boolean	 Is this recipe bookmarked by the searching user?
bought	   boolean	     Is this recipe bought by the searching user?
Recipe
Note: Only a subset of the fields may be present, depending on the interface through which the recipe is obtained. Refer to the specific interface description for details
```


---

```
Field	  Type	   Description
uri	     string	Ontology identifier
label	   string	Recipe title
image	   string	Image URL
source	 string	Source site identifier
url	     string	Original recipe URL
yield	   integer	Number of servings
level	    enum	Difficulty level
calories	 float	Total energy, kcal
totalWeight	float	Total weight, g
ingredients	Ingredient[]	Ingredients list

totalNutrients	NutrientInfo[]	Total nutrients per serving

totalDaily	NutrientInfo[]	% daily value per serving

dietLabels	enum[]	Diet labels: “balanced”, “high-protein”, “high-fiber”, “low-fat”, “low-carb”, “low-sodium”

healthLabels	enum[]	Health labels: “vegan”, “vegetarian”, “paleo”, “dairy-free”, “gluten-free”, “wheat-free”, “fat-free”, “low-sugar”, “egg-free”, “peanut-free”, “tree-nut-free”, “soy-free”, “fish-free”, “shellfish-free”
```

---

```
Ingredient
Field	Type	Description
uri	string	Ontology identifier
quantity	float	Quantity of specified measure
measure	Measure	Measure
weight	float	Total weight, g
food	Food	Food

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

#### Diet and Health Labels

```

Diet and Health Labels
Type	Web Label	   API Parameter	Definition
"Diet"	"Balanced"	"balanced"	   "Protein/Fat/Carb values in 15/35/50 ratio"
"Diet"	"High-Fiber"	"high-fiber"	    "More than 5g fiber per serving"
"Diet"	"High-Protein"	"high-protein"	   "More than 50% of total calories from proteins"
"Diet"	"Low-Carb"	"low-carb"	     "Less than 20% of total calories from carbs"
"Diet"	"Low-Fat"	"low-fat"	        "Less than 15% of total calories from fat"
"Diet"	"Low-Sodium"	"low-sodium"	  "Less than 140mg Na per serving"
"Health"	"Alcohol"	"alcohol-free"	  "No alcohol used or contained in the recipe"
"Health"	"Alcohol-free"	"alcohol-free"	   "No alcohol used or contained"
"Health"	"Celery-free"	"celery-free"	         "does not contain celery or derivatives"
"Health"	"Crustcean-free"	"crustacean-free"	    "does not contain crustaceans (shrimp, lobster etc.) or derivatives"
"Health"	"Dairy"	"dairy-free"	               "No dairy; no lactose"
"Health"	"Eggs"	"egg-free"	                "No eggs or products containing eggs"
"Health"	"Fish"	"fish-free"	                "No fish or fish derivatives"
"Health"	"Gluten"	"gluten-free"	             "No ingredients containing gluten"
"Health"	"Kidney friendly"	"kidney-friendly"	         "per serving – phosphorus less than 250 mg AND potassium less than 500 mg AND sodium: less than 500 mg"
"Health"	"Kosher"	"kosher"	                  "contains only ingredients allowed by the kosher "Diet". However it does not guarantee kosher preparation of the ingredients themselves"
"Health"	"Low potassium"	"low-potassium"	            "Less than 150mg per serving"
"Health"	"Lupine-free"	"lupine-free"	            "does not contain lupine or derivatives"
"Health"	"Mustard-free"	"mustard-free"	           "does not contain mustard or derivatives"
"Health"	"n/a"	"low-fat-abs"	               "Less than 3g of fat per serving"
"Health"	"No oil added"	"No-oil-added"	     "No oil added except to what is contained in the basic ingredients"
"Health"	"No-sugar"	"low-sugar"	             "No simple sugars – glucose, dextrose, galactose, fructose, sucrose, lactose, maltose"
"Health"	"Paleo"	"paleo"	                     "Excludes what are perceived to be agricultural products; grains, legumes, dairy products, potatoes, refined salt, refined sugar, and processed oils"
"Health"	"Peanuts"	"peanut-free"	             "No peanuts or products containing peanuts"
"Health"	"Pescatarian"	"pecatarian"	        "Does not contain meat or meat based products, can contain dairy and fish"
"Health"	"Pork-free"	"pork-free"	             "does not contain pork or derivatives"
"Health"	"Red meat-free"	"red-meat-free"	    "does not contain beef, lamb, pork, duck, goose, game, horse, and other types of red meat or products containing red meat."
"Health"	"Sesame-free"	"sesame-free"	         "does not contain sesame seed or derivatives"
"Health"	"Shellfish"	"shellfish-free"	       "No shellfish or shellfish derivatives"
"Health"	"Soy"	"soy-free"	                   "No soy or products containing soy"
"Health"	"Sugar-conscious"	"sugar-conscious"   	"Less than 4g of sugar per serving"
"Health"	"Tree Nuts"	"tree-nut-free"	            "No tree nuts or products containing tree nuts"
"Health"	"Vegan"	"vegan"	                        "No meat, poultry, fish, dairy, eggs or honey"
"Health"	"Vegetarian"	"vegetarian"	            "No meat, poultry, or fish"
"Health"	"Wheat-free"	"wheat-free"	            "No wheat, can have gluten though"

```

- https://github.com/schollz/parseingredient
- https://raw.githubusercontent.com/tabatkins/recipe-db/master/db-recipes.json


Great datasets here: https://github.com/foodopendata/food-datasets/blob/master/data/food-datasets.csv



Additional collections:
- [awesome-food-collection-machine-learning](https://github.com/ChickenKyiv/awesome-food-collection-machine-learning)
- [awesome-food-open-source](https://github.com/ChickenKyiv/awesome-food-open-source)
- [awesome-food-tech-projects](https://github.com/ChickenKyiv/awesome-food-tech-projects)
- [awesome-recipe-app-templates](https://github.com/ChickenKyiv/awesome-recipe-app-templates)
- [awesome-recipe-websites](https://github.com/ChickenKyiv/awesome-recipe-websites)
- [awesome-recipe-apis](https://github.com/ChickenKyiv/awesome-recipe-apis)
