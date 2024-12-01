#include <string>

class Bear
{
    Bear(std::string species, std::string color) : m_species{species}, m_color{color} {};

    std::string m_species;
    std::string m_color;

    void move() {}
    void eat() {}
    void roar() {}
    void sleep() {}
};
