CHAPTER 9
==========

Reentrancy
----------


Arithmetic Over/Underflows
--------------------------



Unexpected Ether
----------------

this.balance - can be changed
    - Self-destruct/suicide
    - Pre-sent ether - by calculating address of contract before it is created.


Workaround - use variable to keep track of ether deposited to contract


DELEGATECALL
------------

Standard external message calls to contracts are handled by the CALL opcode, whereby code is run in the context of the external contract/function.  

The DELEGATECALL opcode is almost identical, except that the code executed at the targeted address is run in the context of the calling contract, and msg.sender and msg.value remain unchanged. 



Don't use delegateCall. Use library instead.

Default Visibilities
--------------------
The default visibility for functions is public.  


Prevent - always specify the visibility of all functions.


Entropy Illusion
----------------
Things like block numbers - controlled by the miner who mines the block, and as such are not truly random.

Prevent - The source of entropy (randomness) must be external to the blockchain.

External Contract Referencing
-----------------------------
Can change contract reference to one that does something different than original ref.  

Or calling function that does not exist will result in fallback function being called (for external contract).

Prevent:
- use the new keyword to create contracts
- hardcode external contract addresses
- if a contract has a private variable contract address it can be a sign of someone behaving maliciously 

Short Address/Parameter Attack
------------------------------

third-party applications that interact with smart contracts.

Prevent - All input parameters in external applications should be validated before sending them to the blockchain.

Unchecked CALL Return Values
----------------------------
The call and send functions return a Boolean indicating whether the call succeeded or failed.


Prevent - Whenever possible, use the transfer function rather than send, as transfer will revert if the external transaction reverts. If send is required, always check the return value.  
A more robust recommendation is to adopt a withdrawal pattern.

Race Conditions/Front Running
-----------------------------
An attacker can watch the transaction pool for transactions that may contain solutions to problems, and modify or revoke the solver’s permissions or change state in a contract detrimentally to the solver. The attacker can then get the data from this transaction and create a transaction of their own with a higher gasPrice so their transaction is included in a block before the original.

Prevent - 
One method is to place an upper bound on the gasPrice. 


Denial of Service (DoS)
-----------------------


Block Timestamp Manipulation
----------------------------


Constructors with Care
----------------------

Uninitialized Storage Pointers
------------------------------


Floating Point and Precision
----------------------------


Tx.Origin Authentication
------------------------
phishing attack can be used to get account to call contract with fall back function that calls vulnerable contract.

Prevent - tx.origin should not be used for authorization in smart contracts.