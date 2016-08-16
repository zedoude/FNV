# FNV
Swift implementation of Fowler/Noll/Vo hash

See the reference page [here](http://www.isthe.com/chongo/tech/comp/fnv/)

Only the 64 bits versions of fnv1 and fnv1a are implemented as an exercise in Swift.

# Excerpt from Original README

##Fowler/Noll/Vo hash

The basis of this hash algorithm was taken from an idea sent as reviewer comments to the IEEE POSIX P1003.2 committee by:

* Phong Vo [http://www.research.att.com/info/kpv](http://www.research.att.com/info/kpv)
* Glenn Fowler [http://www.research.att.com/~gsf/](http://www.research.att.com/~gsf/)

In a subsequent ballot round:

* Landon Curt Noll [http://www.isthe.com/chongo](http://www.isthe.com/chongo)

improved on their algorithm.  Some people tried this hash and found that it worked rather well.  In an EMail message to Landon, they named it the Fowler/Noll/Vo'' or FNV hash.

FNV hashes are designed to be fast while maintaining a low collision rate. The FNV speed allows one to quickly hash lots of data while maintaining a reasonable collision rate.  See:

* (http://www.isthe.com/chongo/tech/comp/fnv/index.html)

for more details as well as other forms of the FNV hash.
Comments, questions, bug fixes and suggestions welcome at
the address given in the above URL.

# FNV with Swift
This Swift implementation of Fowler/Noll/Vo hash was primarily meant as an exercise to get acquainted with Swift. Notice that around 65 lines of code do the job, blank lines and comments included :p

I was delighted to see that Swift is definitely suitable to do "low-level" stuff and mix them with higher level code. For example, I use the Swift overflow operators; if some operation, a multiplication for example, exceeds the maximum value for the type, this triggers a runtime error. While people with a C background may find this annoying, the good side is the enticement to handle every possible case, ultimately leading to solid and safer code. Swift seems to make it harder to unintentionally put random and hard to diagnostic stupid bugs.

Another cool stuff is the possibility to use the same function name with different argument sets. Combined with the default values for arguments, you get very compact code with a lot of flexibility. It's easy to code and easy to use.

So I use only two function names, FNV_64_hash and FNVa_64_hash. They can process String or [UInt8] (an Array of UInt8 values). At some point I tried to use generics but never managed to handle correctly both scalars and arrays in the same generic function. 

The recommended default seed is defined as the default value for the 'seed' parameter. Notice that in Swift, a String value and its conversion in an Array of UTF8 bytes return the same hash, because String is way more complex than the simplistic convention of NULL terminated "strings" in C.




