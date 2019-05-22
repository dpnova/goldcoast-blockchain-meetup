Q. 
How can the following contract have it's funds drained?
~~~~
contract Phishable {
       address public owner;
   
       constructor (address _owner) {
           owner = _owner;
       }
   
       function () public payable {} // collect ether
   
       function withdrawAll(address _recipient) public {
           require(tx.origin == owner);
           _recipient.transfer(this.balance);
       }
   }
~~~~
   .<br>
A. Phishing and Reentry<br>
B. DelegateCall and Reentry<br>
C. Phishing and DelegateCall<br/>
D. Phishing and Unexpected Ether<br/>
<br/>
Q. A smart contract with time locks is particularly vulnerable to what type of exploit?<br/>
A. Arithmetic Over/Underflows<br/>
B. Reentry<br/>
C. DELEGATECALL<br/>
<br/>
Q. A contract address can be determined before it is created<br/>
A. False<br/>
B. True<br/>
<br/>
Q. Ether can be forcibly sent to a contract using what method(s)?<br/>
A. Present Ether<br/>
B. Reentry<br/>
C. Entropy Illusion<br/>
B. Self destruct / Suicide<br/>
