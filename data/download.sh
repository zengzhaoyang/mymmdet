#https://drive.google.com/file/d/1006g9GcixffAisW1KOHEx-2vHPaZHoH6/view?usp=sharing
#https://drive.google.com/file/d/16BDmHoa1zF9kATirUq0RcwAnKDtJjslk/view?usp=sharing
filename="laji.zip"
file_id="16BDmHoa1zF9kATirUq0RcwAnKDtJjslk"
query=`curl -c ./cookie.txt -s -L "https://drive.google.com/uc?export=download&id=${file_id}" \
| perl -nE'say/uc-download-link.*? href="(.*?)\">/' \
| sed -e 's/amp;//g' | sed -n 2p`
url="https://drive.google.com$query"
curl -b ./cookie.txt -L -o ${filename} $url
