# README

Aunty has_many Advices.
Aunty has_many Rants through Advices.

User has_many Rants.

Advices belongs_to an Aunty and a Rant.

Rants belongs_to a User.
Rant has_many Advices.
Rant has_many Aunties through Advices.
