pragma solidity ^0.5.0;

contract ExpensiveFactory{
    SimpleContract [] public myContracts;
    
    //This costs over 200k gas when numContracts=1.
    function createContracts(uint256 numContracts) public{
        for(uint256 i = 0; i<numContracts;i++){
            myContracts.push(new SimpleContract(i,i,i,i,i,i,i,i,i,i));
        }
    }
    
    //This costs 1.7 million gas
    function works() public{
       createContracts(5);
    }
    
    //This costs too much run
    function fails() public{
       createContracts(20);
    }
}

contract SimpleContract{
    uint256 public a;
    uint256 public b;
    uint256 public c;
    uint256 public d;
    uint256 public e;
    uint256 public f;
    uint256 public g;
    uint256 public h;
    uint256 public i;
    uint256 public j;
    uint256 public k;
    constructor(uint256 a_,
    uint256 b_,
    uint256 c_,
    uint256 d_,
    uint256 e_,
    uint256 f_,
    uint256 g_,
    uint256 h_,
    uint256 i_,
    uint256 j_) public{
        a = a_;
        b = b_;
        c = c_;
        d = d_;
        e = e_;
        f = f_;
        g = g_;
        h = h_;
        i = i_;
        j = j_;
    }
}
