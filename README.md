# Raunty
An advice-sharing platform for women to encourage intergenerational learning (a term aptly given by Rekha Tenjarla).

## Motivation
We have generations of women behind us that have been leading us. With ageism and media, we rarely have spaces for older women to contribute their knowledge and this was a prototype of what that solution could look like. 

## Usage
Run npm start.

## Code
Aunty has_many Advices.
Aunty has_many Rants through Advices.

User has_many Rants.

Advices belongs_to an Aunty and a Rant.

Rants belongs_to a User.
Rant has_many Advices.
Rant has_many Aunties through Advices.

## Tech/Framework
Built with: Ruby on Rails
            React
            Redux

## License
MIT
