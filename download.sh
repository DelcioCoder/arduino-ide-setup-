#!/bin/bash

# ===================================================
# Script de Download - Arduino IDE 2.3.8 (Linux 64bit)
# ===================================================

URL="https://downloads.arduino.cc/arduino-ide/arduino-ide_2.3.8_Linux_64bit.AppImage"
DESTINO="$HOME/Transferências"
ARQUIVO="arduino-ide_2.3.8_Linux_64bit.AppImage"

echo "📦 Baixando Arduino IDE 2.3.8..."
echo "   De: $URL"
echo "   Para: $DESTINO/$ARQUIVO"
echo ""

mkdir -p "$DESTINO"

wget -O "$DESTINO/$ARQUIVO" "$URL"

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Download concluído com sucesso!"
    echo "📂 Arquivo salvo em: $DESTINO/$ARQUIVO"
else
    echo ""
    echo "❌ Erro ao baixar o Arduino IDE."
    echo "   Verifique sua conexão com a internet e tente novamente."
    exit 1
fi
