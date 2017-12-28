## More fun with Hashes

Hashes are a great tool to store and retrieve data. Sometimes we just want to know if a certain key or
value is inside a hash or not. There are a few ways to find this out. When we have an array we can call the [.include](https://ruby-doc.org/core-2.2.0/Array.html#method-i-include-3F)
method which returns a boolean that lets us know if the value is in the array or not.

### Goal

Write a method that searches the keys of a hash for the "required" keys given in the array.
If one of the "required" keys from inside the array is missing in the hash, return a message
that reads: "The key: <name of the key> is missing in the hash".
