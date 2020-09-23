echo Highest earner
cat wages.csv | sort -t , -k 4 -n -r | head -n 1 | cut -d , -f 1,2,4
echo Lowest earner
cat wages.csv | sort -t , -k 4 -n | head -n 2 | tail -n 1 | cut -d , -f 1,2,4
echo Number of females in the top 10 earners
cat wages.csv | sort -t , -k 4 -n -r | head -n 10 | grep "female" | wc -l
