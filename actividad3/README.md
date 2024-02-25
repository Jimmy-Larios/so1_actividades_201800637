### Jimmy Daniel Larios Martínez
### 201800637

### Script 
Imprime un saludo con la fecha actual infinitamente con una pausa de un minuto.

```sh
#!/bin/bash

while true; do
  echo "¡Hola! Son las $(date)"
  sleep 1
done
```

Ejecutar el script
```sh
chmod +x saludo_infinito.sh
./saludo_infinito.sh
```

### Creación del archivo de unidad
```sh
[Unit]
Description=Ejecuta un saludo y la fecha actual infinitamente

[Service]
Type=simple
ExecStart=/bin/bash /Users/jimmylarios/Desktop/1S2024/SO1/actividades github/actividad3/saludo_infinito.sh
Restart=always

[Install]
WantedBy=multi-user.target
```

### Se guardo el archivo
```sh
saludo_infinito.service
```
en la siguiente runta
```sh
/etc/systemd/system/
```

### Habilitación del servicio
```sh
sudo systemctl enable saludo_infinito.service
```

### Inicialización del servicio
```sh
sudo systemctl start saludo_infinito.service
```
### Verificación del servicio
```sh
sudo systemctl status saludo_infinito.service
```