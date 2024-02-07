pragma solidity ^0.8.0;

contract MyContract {
    // Define a struct for representing a Person
    struct Person {
        string name;
        uint age;
    }
    
    // Array of Person structs
    Person[] public people;
    
    // Function to add a new person
    function addPerson(string memory _name, uint _age) public {
        // Create a new Person struct
        Person memory newPerson = Person(_name, _age);
        
        // Add the new Person struct to the array
        people.push(newPerson);
    }
    
    // Function to get the name and age of a person by index
    function getPerson(uint index) public view returns (string memory, uint) {
        // Ensure index is within bounds
        require(index < people.length, "Index out of bounds");
        
        // Return the name and age of the person at the specified index
        return (people[index].name, people[index].age);
    }
}
