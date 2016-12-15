gshuf src/OS_ORDER.txt | head -n5100 | awk -F" " '{printf("%s,%s,%s,%s,%s,%s\n", $1, $2, $3, $4, $5, $6)}' > src/OS_ORDER.csv
gshuf src/OS_ORDER_ITEMS.txt | head -n5100 | awk -F" " '{printf("%s,%s,%s,%s,%s,%s,%s\n", $1, $2, $3, $4, $5, $6, $7)}' > src/OS_ORDER_ITEMS.csv
