## Data Types

Like other programming languages, Ruby has the ability to store different types of input and categorize it by data-type.
Some common data-types in ruby are:

- Strings
- Integers (these are called Fixnum in Ruby)
- Floats
- Booleans
- Arrays

As these are common in most programming languages, let's look at some data-types that are not necessarily exclusive in
Ruby, but yet quite unique in their usability when it comes to Ruby.

- Ranges
- [Hashes](http://ruby-doc.org/core-2.4.2/Hash.html)
- Symbols

All these can be explored in IRB. In order to find out the data type of an object, just put the [.class](http://ruby-doc.org/core-2.4.2/Object.html#method-i-class) method on it:

```bash
[1] pry(main)> a = []
=> []
[2] pry(main)> a.class
=> Array
[3] pry(main)> b = :city
=> :city
[4] pry(main)> b.class
=> Symbol
[5] pry(main)> c = (3..18)
=> 3..18
[6] pry(main)> c.class
=> Range
[7] pry(main)> d = { :city => "New York" }
=> {:city=>"New York"}
[8] pry(main)> d.class
=> Hash
```

Try using some of these new data types in an example.

You could write a function that asks for an input and then searches a hash you created to give a value back, kinda
like a stupid dictionary that only knows a couple of words.

### Extra Fun

Try writing a calculator that converts whole numbers into binary, octal and hex.

### Even more Fun

Use the hash in this folder to write a guessing game that asks for a state capital, then compares the answer.
You can read from a hash like this:

```bash
[1] pry(main)> d = { :city => "New York" }
=> {:city=>"New York"}
[2] pry(main)> d[:city]
=> "New York"
```

This should be all you need to complete this assignment...since you don't want to read the docs.

Don't forget to clean up your code.
