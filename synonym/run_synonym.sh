ts=$(date +%s%N)
result=$(synonym -p=$1 -m=synonym $2)
tt=$((($(date +%s%N) - $ts)/1000000))
file=$(echo `basename "$2"`)
obeys="F"
if echo "$result" | grep -q "OBEYS"; then
        obeys="Y"
fi
if echo "$result" | grep -q "VIOLATES"; then
        obeys="N"
fi
echo "$file ; $tt; $obeys" >> table

