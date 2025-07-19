# TableUtilities
[![PDD](https://img.shields.io/badge/LPCX01-white?logo=googledocs)](https://docs.google.com/document/d/1hqyJxjJS13CjTQ4bT9UbYy7BaQCj0XmwsxE7TUx7wrU/edit?usp=drivesdk)

### Installation
1. Download `TableUtils.lua` from the files above.
2. Add `require("TableUtils")` to the top of your script in lua.

### Documentation
- `table.copy(a,b)`  **nil**
> Copies **all** the key with values **to b**.
- `table.contains(table, name, value)`  **bool**
> Returns true if **contains** the **name** or **value**. (For searching only name or value, make the other nil)
- `table.indexOf(table, value)`  **int**
> Returns the **index** or the **key** of the value in table.
- `table.findFirst(prediction)`  **dynamic** (predicted value)
> `prediction` - **void function(index,value)** \
> Finds **first** element that correspond to **prediction**.
- `table.findAll(prediction)`  **array<dynamic>** (predicted values)
> `prediction` - **void function(index,value)** \
> Finds **all** element that correspond to **prediction**.
