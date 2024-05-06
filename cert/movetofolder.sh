
#!/bin/bash
mv a*.nl_data.out lettera
mv b*.nl_data.out letterb
mv c*.nl_data.out letterc
mv d*.nl_data.out letterd
mv e*.nl_data.out lettere
mv f*.nl_data.out letterf
mv g*.nl_data.out letterg
mv h*.nl_data.out letterh
mv i*.nl_data.out letteri
mv j*.nl_data.out letterj
mv k*.nl_data.out letterk
mv l*.nl_data.out letterl
mv m*.nl_data.out letterm
mv n*.nl_data.out lettern
mv o*.nl_data.out lettero
mv p*.nl_data.out letterp
mv q*.nl_data.out letterq
mv r*.nl_data.out letterr
mv s*.nl_data.out letters
mv t*.nl_data.out lettert
mv u*.nl_data.out letteru
mv v*.nl_data.out letterv
mv w*.nl_data.out letterw
mv x*.nl_data.out letterxyz
mv y*.nl_data.out letterxyz
mv z*.nl_data.out letterxyz
mv *.nl_data.out numbers

mkdir lettera
mkdir letterb
mkdir letterc
mkdir letterd
mkdir lettere
mkdir letterf
mkdir letterg
mkdir letterh
mkdir letteri
mkdir letterj
mkdir letterk
mkdir letterl
mkdir letterm
mkdir lettern
mkdir lettero
mkdir letterp
mkdir letterq
mkdir letterr
mkdir letters
mkdir lettert
mkdir letteru
mkdir letterv
mkdir letterw
mkdir letterxyz
mkdir numbers

zip -r lettera.zip lettera
zip -r letterb.zip letterb
zip -r letterc.zip letterc
zip -r letterd.zip letterd
zip -r lettere.zip lettere
zip -r letterf.zip letterf
zip -r letterg.zip letterg
zip -r letterh.zip letterh
zip -r letteri.zip letteri
zip -r letterj.zip letterj
zip -r letterk.zip letterk
zip -r letterl.zip letterl
zip -r letterm.zip letterm
zip -r lettern.zip lettern
zip -r lettero.zip lettero
zip -r letterp.zip letterp
zip -r letterq.zip letterq
zip -r letterr.zip letterr
zip -r letters.zip letters
zip -r lettert.zip lettert
zip -r letteru.zip letteru
zip -r letterv.zip letterv
zip -r letterw.zip letterw
zip -r letterxyz.zip letterxyz
zip -r numbers.zip numbers


scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/lettera.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letterb.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letterc.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letterd.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/lettere.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letterf.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letterg.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letterh.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letteri.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letterj.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letterk.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letterl.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letterm.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/lettern.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/lettero.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letterp.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letterq.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letterr.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letters.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/lettert.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letteru.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letterv.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letterw.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/letterxyz.zip .
scp -i LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/numbers.zip .
