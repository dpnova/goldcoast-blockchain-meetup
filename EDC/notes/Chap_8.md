CHAPTER 8
==========

Vyper is designed to make it easier to write secure code.

- no modifiers
- no inheritance
- no inline assembly
- no function overloading
- variable typecasting - no implicit conversion. explicit conversion uses lib to ensure no data can be lost.


Differences:
- Decorators 
    Decorators supported:
    - @private
    - @public
    - @constant
    - @payable
    
    These are enforced at compile time so you cannot mix incompatible decorators like private and public.

- Function and Variable Ordering
- Compilation
    - has it's own online editor and compiler (vyper.online)
    - .vy file for contract
- Protecting Against Overflow Errors at the Compiler Level
    


Doubts:

better understand - Preconditions and Postconditions
no inheritance - really? this will lead to bunch of tooling on top of vyper to reduce DRY. this could undo some of the safety of vyper.

## Installing Vyper

- Ensure you have python3.6 installed
- Install vyper in a virtualenv

```
mkvirtualenv -p `which python3.6` vyper
workon vyper
git clone https://github.com/ethereum/vyper.git
cd vyper
make
make test
```
