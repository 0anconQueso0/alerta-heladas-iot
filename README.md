# alerta-heladas-iot
# Sistema de Alerta de Heladas basado en IoT ❄️🌡️

Este repositorio contiene el código de un sistema de alerta temprana de heladas, diseñado para comunidades rurales altoandinas de la región Puno. Usa sensores de temperatura, microcontroladores ESP32 y servicios en la nube (ThingSpeak y Pushbullet) para enviar alertas climáticas.

## 📁 Estructura

- `wokwi-simulacion/`: contiene el código de simulación del ESP32 con sensor DHT22, buzzer y LED, usando Wokwi.
- `thingspeak-pushbullet/`: contiene el script en MATLAB para enviar alertas desde ThingSpeak a Pushbullet.

## 🔧 Componentes utilizados

- ESP32
- DHT22 (sensor de temperatura y humedad)
- LED (alerta visual)
- Buzzer (alerta sonora)
- Wokwi (simulación del hardware)
- ThingSpeak (nube para registrar datos)
- Pushbullet (notificación a dispositivos)

## 📡 ¿Cómo funciona?

1. El ESP32 simulado lee la temperatura.
2. Si detecta una helada (T < 0 °C), enciende LED y buzzer.
3. Los datos se envían a ThingSpeak.
4. ThingSpeak activa una alerta Pushbullet cuando se detecta una helada.

## 📬 Contacto

Hecho por estudiantes de la Universidad Nacional del Altiplano, Puno.


