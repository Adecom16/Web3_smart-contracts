// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProductContract {
    struct Product {
        uint256 productId;
        string name;
        string description;
        uint256 price;
        address owner;
    }

    mapping(uint256 => Product) private products;
    uint256 private productIdCounter;

    
    function addProduct(string memory _name, string memory _description, uint256 _price) external {
        productIdCounter++;
        products[productIdCounter] = Product(productIdCounter, _name, _description, _price, msg.sender);
    }

  
    function getProduct(uint256 _productId) external view returns (string memory, string memory, uint256, address) {
        Product memory product = products[_productId];
        return (product.name, product.description, product.price, product.owner);
    }

   

}
