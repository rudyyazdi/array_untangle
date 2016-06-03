# array_untangle

An awesome method which flattens your array in a different way.

## Use case

Imagine you have an array of t-shirts with different colors and sizes and they are grouped by their name in an array and you want to store all different sizes as a simple array:

```ruby
shirts = ["king_monkey", ["red", "blue", "white"], ["sm", "md", "lg"]]
```
Now call `#untangle` on it and watch what happens:
```ruby
shirts.untangle 
=> [
    ["king_monkey", "red", "sm"],
    ["king_monkey", "red", "md"],
    ["king_monkey", "red", "lg"],
    ["king_monkey", "blue", "sm"],
    ["king_monkey", "blue", "md"],
    ["king_monkey", "blue", "lg"],
    ["king_monkey", "white", "sm"],
    ["king_monkey", "white", "md"],
    ["king_monkey", "white", "lg"]
 ]
```
