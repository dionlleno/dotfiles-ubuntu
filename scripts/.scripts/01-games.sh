#!/bin/bash

echo "📁 Verificando se o diretório de games existe..."

if [ ! -d ~/Games ]; then
  echo "❌ Diretório de games não encontrado. Criando..."
fi

mkdir -p ~/Games

echo "📁 Diretório de games verificado."

cd /tmp

echo "============================================"
echo "📦 Instalando tibia..."
echo "============================================"

tibia="https://static.tibia.com/download/tibia.x64.tar.gz"

wget -q "$tibia" -O tibia.tar.gz

if [ $? -ne 0 ]; then
  echo "❌ Erro ao baixar o arquivo Tibia."
  exit 1
fi

echo "🔄 Extraindo o arquivo Tibia..."
mkdir -p ~/Games/tibia
if [ $? -ne 0 ]; then
  echo "❌ Erro ao criar o diretório Tibia."
  exit 1
fi

tar -xzf tibia.tar.gz -C ~/Games/tibia --strip-components=1

if [ $? -ne 0 ]; then
  echo "❌ Erro ao extrair o arquivo Tibia."
  exit 1
fi

rm tibia.tar.gz

echo "============================================"
echo "✅ Tibia instalado com sucesso em ~/Games/tibia!"
echo "============================================"