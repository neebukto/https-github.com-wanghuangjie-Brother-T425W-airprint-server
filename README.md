# Brother T425W with Airpirint support
![image](https://support.brother.com/g/b/img/product/dcpt425w_eu_cn.jpg)


- git clone https://github.com/wanghuangjie/Brother-T425W-airprint-server
- cd Brother-T425W-airprint-server
- docker-compose up -d
- http://dockerserver_url:631 
   - default username&password both "admin"
- setup your printer
```
新建打印机
(for Network Connection)
 
Open a web browser and go to "http://localhost:631/printers".
Click "Modify Printer" and set following parameters.
- "LPD/LPR Host or Printer" or "AppSocket/HP JetDirect"	    	for Device
- lpd://(Your printer's IP address)/binary_p1	    	for Device URI
- Brother	    	for Make/Manufacturer Selection
- Your printer's name	    	for Model/Driver Selection
```
