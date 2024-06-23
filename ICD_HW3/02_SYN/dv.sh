source ~/.cshrc_icd
cp ../01_RTL/IOTDF.v ../02_SYN/IOTDF.v
openssl enc -d -aes-256-cbc -in tsmc13.enc -out tsmc13.v -pass pass:AYIvO23
openssl enc -d -aes-256-cbc -in synopsys_dc.enc -out .synopsys_dc.setup -pass pass:AYIvO23
dv &