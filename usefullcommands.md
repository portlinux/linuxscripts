
# df çıktısını, kullanım oranına göre sıralar.
df -hP | awk 'NR==1;NR>1{print|"sort -k5rn"}'
# deneme.txt dosyasındaki en uzun satırı yazdırır.
awk 'length > max { max=length;maxline=$0 } END { print maxline; }' deneme.txt
