#!/bin/env bash

apps=(
  "https://repo.steampowered.com/steam/archive/precise/steam_latest.deb"
  )

echo "============================================"
echo "🚀 Iniciando instalação de pacotes .deb..."
echo "============================================"

sleep 1

echo "============================================"
echo "📦 Instalando pacotes .deb..."
echo "============================================"

cd /tmp

for app in "${apps[@]}"; do
  filename=$(basename "$app")
  filepath=~/Downloads/"$filename"
  
  echo "🔄 Baixando $filename..."
  wget -q "$app" -O "$filepath"
  
  if [ $? -eq 0 ]; then
    echo "🔄 Instalando $filename..."
    sudo dpkg -i "$filepath"
    
    if [ $? -eq 0 ]; then
      echo "✅ $filename instalado com sucesso!"
    else
      echo "❌ Erro ao instalar $filename. Tentando corrigir dependências..."
      sudo apt-get install -f -y
    fi
  else
    echo "❌ Erro ao baixar $filename."
  fi
done

echo "============================================"
echo "✅ Todos os pacotes .deb foram instalados com sucesso!"
echo "============================================"