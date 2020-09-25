# subtracts the minimum wages for those that had 12 years of school from the minimum wage of those that had 16 years of school (regardless of gender)
# Usage: step3.sh (no input needed)

hs=$(sed 's/\r$//' wages.csv | cut -d , -f 3,4 | tr "," " " | grep -w "12" | sort -k 2 -n | head -n 1 | cut -d " " -f 2)
col=$(sed 's/\r$//' wages.csv | cut -d , -f 3,4 | tr "," " " | grep -w "16" | sort -k 2 -n | head -n 1 | cut -d " " -f 2)
echo "$col-$hs" | bc
