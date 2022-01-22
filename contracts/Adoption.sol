pragma solidity ^0.5.0;

contract Adoption {
  address[16] public adopters;
  uint income = 0;

  // Adopting a pet
  function adopt(uint petId) public payable returns (uint) {
    require(petId >= 0 && petId <= 15);
    income += msg.value;
    adopters[petId] = msg.sender;
    return petId;
  }

  // Rent a pet
  function rent(uint petId) public payable returns (uint) {
    require(petId >= 0 && petId <= 15);
    income += msg.value;
    adopters[petId] = msg.sender;
    return petId;
  }

  // Retrieving the adopters
  function getAdopters() public view returns (address[16] memory) {
    return adopters;
  }

}
