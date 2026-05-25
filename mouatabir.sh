mkdir Mouatabir
mkdir Mouatabir/Verifica
mkdir Mouatabir/Verifica/log
mkdir Mouatabir/backup
mv web.log  Mouatabir/Verifica/log/
cp Mouatabir/Verifica/log/web.log Mouatabir/backup/web.bck
sort Mouatabir/verifica/log/web.log > Mouatabir/verifica/websort.log
grep " 200 " Mouatabir/verifica/websort.log > Mouatabir/verifica/success.log
grep "192.168.1.10" Mouatabir/verifica/websort.log | sort > Mouatabir/verifica/log_192.168.1.10.log
(head -n 3 Mouatabir/verifica/log/web.log && tail -n 3 Mouatabir/verifica/log/web.log) > Mouatabir/verifica/
echo "Numero righe web.log:" > Mouatabir/verifica/conteggi.log
wc -l Mouatabir/verifica/log/web.log >> Mouatabir/verifica/conteggi.log
echo "" >> Mouatabir/verifica/conteggi.log
echo "Numero righe success.log:" >> Mouatabir/verifica/conteggi.log
wc -l Mouatabir/verifica/success.log >> Mouatabir/verifica/conteggi.log
