# TableUtils

## Reference
- `void table.copy(a,b)`
> Copies **all** the key with values **from a to b**.

- `bool table.contains(table, name, value)`
> Returns true if **contains** the **name** or **value**. (For searching only name or value, make the other nil) 

- `int table.indexOf(table, value)`
> Returns the **index** or the **key** of the value in table.

- `T table.findFirst(prediction)`
> - `prediction` - **bool function(index,value)**
> - `T` - type of elements in array
>
> Finds **first** element that correspond to **prediction**.

- `<T>[] table.findAll(prediction)`
> - `prediction` - **bool function(index,value)**
> - `T` - type of elements in array
> 
> Finds **all** element that correspond to **prediction**.

- `void table.constTable(table)`
> - `table` - table where you want to place your constant
>
> Adds `void addConst(key,value)` **to** your table. **Constant will not be editable.**
