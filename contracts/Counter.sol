// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
   
    uint256 public total;
    uint256 public subtracted;
    uint256 public multiplied;
    uint256 public divided;

    
    // Toplama fonksiyonu
    function add(uint256 _value,uint256 _value2) public {
        total = _value+ _value2;
    }

    // Çıkarma fonksiyonu
    function subtract(uint256 _value,uint256 _value2) public {
        subtracted = _value - _value2;
    }

    // Çarpma fonksiyonu
    function multiply(uint256 _value,uint256 _value2) public {
        multiplied = _value * _value2;
    }

    // Bölme fonksiyonu
    function divide(uint256 _value,uint256 _value2) public {
        require(_value2 != 0, "Divisor cannot be zero!"); // Sıfıra bölme hatasını kontrol etmek için gereken kontrolü yapın
        divided =_value / _value2;
    }

   
    // Toplam değeri döndüren görünüm fonksiyonu
    function getTotal() public view returns (uint256) {
        return total;
    }

    // Çıkarılmış değeri döndüren görünüm fonksiyonu
    function getSubtracted() public view returns (uint256) {
        return subtracted;
    }

    // Çarpılmış değeri döndüren görünüm fonksiyonu
    function getMultiplied() public view returns (uint256) {
        return multiplied;
    }

    // Bölünmüş değeri döndüren görünüm fonksiyonu
    function getDivided() public view returns (uint256) {
        return divided;
    }

    // Tüm değerleri aynı anda döndüren görünüm fonksiyonu
    function getAllValues() public view returns (uint256, uint256, uint256, uint256) {
        return (total, subtracted, multiplied, divided);
    }
}
