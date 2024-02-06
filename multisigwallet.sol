// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MultiSig{
    event Deposit(address indexed sender, uint amount);
    event Submit(uint indexed txID);
    event Approve(address indexed owner,uint indexed txID);
    event Revoke(address indexed owner,uint indexed txID);
    event Execute(uint indexed txID);
    
    address public owner; // owner of the contract
    uint public count; // signers count
    uint public required; // required number of approvals
    
    struct Transaction{ // struct to make our transaction object
        address to;
        uint value;
        bytes data;
        bool executed;
    }

    mapping(address=>bool) public signer; // Tells us weather the address is signer or not
    address[] public signers; // list of signers
    Transaction[] public transactionlist; // holds all the transactions
    mapping(uint=>mapping(address=>bool)) public approved; // mapping to show status of txn approval 

    
    
    constructor(address[] memory _owners, uint _required) {
    owner = msg.sender;
    require(_owners.length > 0,"No Signers Specified");
    require(_required > 0 && _required >= _owners.length, "Invalid required value");

    for (uint i = 0; i < _owners.length; i++) {
        address si = _owners[i];
        signers.push(si);
        signer[si] = true;
        count++;
    }
    required = _required;
    }


     modifier Oowner{  // set the owner
        require(msg.sender == owner,"You are not the owner");
        _;
    }
    modifier notapporved(uint _txID){ // check for approval
        require(!approved[_txID][msg.sender],"txn was already approved");
        _;
    }
    modifier notexecuted(uint _txID){ // check for execution
        require(!transactionlist[_txID].executed,"txn was already executed");
        _;
    }
    modifier signerss{ // check for signers
        require(signer[msg.sender],"You are not a signer");
        _;
    }
    modifier txexists(uint _txID){ // check for txn existance
        require(_txID<transactionlist.length,"This Txn Does not Exist");
        _;
    }

  function registerassiner(address _signer) external Oowner { // Add more signers
    require(!signer[_signer], "Signer already registered");
    signer[_signer] = true;
    signers.push(_signer);
    count++;
}

    function revokesigner(address _signer) external Oowner { //Remove signers
    require(signer[_signer], "Signer not registered");
    signer[_signer] = false;

    for (uint i = 0; i < signers.length; i++) {
        if (signers[i] == _signer) {
            signers[i] = signers[count - 1];
            signers.pop();
            count--;
            break;
        }
    }
}

    function deposittx() external payable signerss { // deposit eteher
        require(msg.value>0,"No ether sent");
    }

    function submittx(address _to, uint _value, bytes calldata _data) external { // submit your txn
        require(signer[msg.sender] || msg.sender == owner,"You are not the signer/owner");
        transactionlist.push(Transaction({
            to  : _to,
            value   : _value,
            data : _data,
            executed : false
        }));
        emit Submit(transactionlist.length - 1);

    }


    function approvetx(uint _txID) external txexists(_txID) notapporved(_txID) notexecuted(_txID) signerss{ //approve txn
        approved[_txID][msg.sender]= true;

        emit Approve(msg.sender, _txID);
    }

    function revoketx(uint _txID) external txexists(_txID) notexecuted(_txID) signerss{ // remove your approval from txn
        require(approved[_txID][msg.sender]);
        approved[_txID][msg.sender]= false;

        emit Revoke(msg.sender, _txID);
    }

    function execute(uint _txID) external txexists(_txID) signerss notexecuted(_txID){ //execte the txn
        require(required <= getapprovalcount(_txID),"Required Number of approval Not met");
        (bool sucess,) = transactionlist[_txID].to.call{value: transactionlist[_txID].value}(transactionlist[_txID].data);
        require(sucess);
        transactionlist[_txID].executed = true;

        emit Execute(_txID);
    }

    function getapprovalcount(uint _txID) private view returns(uint mio) { //get the count of approvals
        for(uint k;k<signers.length;k++){
            if(approved[_txID][signers[k]]){
                mio++;
            }
        }
    }

    receive() external payable { emit Deposit(msg.sender, msg.value); } // allows you to store ether into the contract

}
