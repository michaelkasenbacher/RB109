nested data structure
retrieve element
use [] to retrieve the inner hash

Variable `my_hash` points to the nested data structure `{a: 1, b: {d: 3, e: 5}, c: 7}`

A hash is a data structure that stores items by associated keys. Entries in a hash are often referred to as key-value pairs. This creates an associative representation of data.

A hash maps each of its unique keys to a specific value: `my_hash[:b]` is the unique key for value `{:d=>3, :e=>5}` and `my_hash[:b][:d]` is the unique key for value `3`.
