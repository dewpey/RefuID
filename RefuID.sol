pragma solidity ^0.4.19;

contract RefuID {
    
struct identity {
    address publicKey;
    string firstName;
    string middleName;
    string lastName;
    uint DOB;
    string nationality;
    uint sex;
  }
  
    mapping (address => identity) identities;
    
    function newIdentity(address _publicKey, string _firstName, string _middleName, string _lastName, uint _DOB, string _nationality, uint _sex){
        identities[_publicKey] = identity(_publicKey, _firstName, _middleName, _lastName, _DOB, _nationality, _sex);
    }
    
    function getIdentity(address _address) constant returns (address _publicKey, string _firstName, string _middleName, string _lastName, uint _DOB, string _nationality, uint _sex) {
    return (identities[_address].publicKey,identities[_address].firstName,identities[_address].middleName,identities[_address].lastName,identities[_address].DOB,identities[_address].nationality,identities[_address].sex);
  }
    
    
}
