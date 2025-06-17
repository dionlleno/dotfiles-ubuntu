#!/bin/env bash

echo "============================================"
echo "🚀 Iniciando instalação de aplicativos Flatpak..."
echo "============================================"
sleep 1

echo "📁 Verificando se o repositório Flathub está adicionado..."
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sleep 1

echo "============================================"
echo "📦 Aplicativos principais..."
echo "============================================"

apps=(
  app.zen_browser.zen
  com.discordapp.Discord
  com.getpostman.Postman
  com.spotify.Client
  com.usebottles.bottles
  io.dbeaver.DBeaverCommunity
  io.github.flattool.Warehouse
  it.mijorus.gearlever
  md.obsidian.Obsidian
  org.telegram.desktop
)

for app in "${apps[@]}"; do
  echo "🔄 Instalando $app..."
  flatpak install -y flathub "$app"
done

echo "============================================"
echo "🔧 Instalando runtimes e dependências..."
echo "============================================"

runtimes=()

for runtime in "${runtimes[@]}"; do
  echo "🔄 Instalando $runtime..."
  flatpak install -y flathub "$runtime"
done

echo "============================================"
echo "✅ Todos os aplicativos e runtimes foram reinstalados com sucesso!"
echo "============================================"
