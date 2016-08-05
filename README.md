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
