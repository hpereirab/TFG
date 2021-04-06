#!/bin/bash
echo ""
echo "apagando el servicio de guacamole..."
echo ""
docker-compose -f lab-compose.yaml -f guacamole-compose.yml down
echo ""
echo "apagando los puestos de trabajo..."
echo ""
echo "Entorno de trabajo apagado."