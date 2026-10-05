#!/bin/fish

set name "quasar"
set age 25
set job 'developer'

echo "my name is $name"
echo "my age is $age"
echo "my job is $job"

# Boucle fish
echo "Loop test:"
for item in apple banana cherry
    echo "  Fruit: $item"
end