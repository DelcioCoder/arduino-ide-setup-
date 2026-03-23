# 🚀 Arduino IDE Setup (Ubuntu)

Guia simples e direto para instalar o **Arduino IDE** no Ubuntu usando AppImage.

---

## 📦 Requisitos

- Ubuntu (testado em Ubuntu 25.10)
- Acesso ao terminal
- Permissões `sudo`
- `wget` instalado (geralmente já vem no Ubuntu)

---

## ⬇️ 1. Baixar o Arduino IDE

### Opção A — Usando o script `download.sh` (Recomendado)

Este repositório inclui um script que faz o download automático do Arduino IDE para a pasta `~/Transferências`.

**Primeiro, dê permissão de execução ao script:**

```bash
chmod +x download.sh
```

**Depois, execute:**

```bash
./download.sh
```

> O arquivo `.AppImage` será salvo em `~/Transferências`.

### Opção B — Download manual

Acesse o site oficial e baixe o `.AppImage`:

🔗 [https://www.arduino.cc/en/software](https://www.arduino.cc/en/software)

---

## 📂 2. Ir para a pasta de download

```bash
cd ~/Transferências
```

---

## 🔐 3. Tornar executável

```bash
chmod +x arduino-ide_*.AppImage
```

---

## 📦 4. Mover para `/opt` (organização do sistema)

```bash
sudo mv arduino-ide_*.AppImage /opt/arduino-ide.AppImage
```

---

## 🔧 5. Garantir permissão de execução

```bash
sudo chmod +x /opt/arduino-ide.AppImage
```

---

## ⚠️ 6. Resolver erro de sandbox (IMPORTANTE)

O Arduino IDE pode falhar com erro de sandbox no Linux.

Execute com:

```bash
/opt/arduino-ide.AppImage --no-sandbox
```

---

## ⚡ 7. Criar alias (opcional, recomendado)

Adicione ao `~/.bashrc`:

```bash
alias arduino='/opt/arduino-ide.AppImage --no-sandbox'
```

Depois rode:

```bash
source ~/.bashrc
```

Agora basta usar:

```bash
arduino
```

---

## 🔌 8. Permissão para USB (Arduino)

```bash
sudo usermod -aG dialout $USER
```

Reinicie a sessão:

```bash
reboot
```

---

## ✅ 9. Teste

1. Abra o Arduino IDE
2. Vá em **Tools → Port**
3. Conecte o Arduino

Deve aparecer algo como:

```
/dev/ttyUSB0
```

---

## 🧠 Dicas

- Use `/opt` para manter o sistema organizado
- Evite rodar AppImage direto da pasta Downloads
- Para uso avançado, considere [Arduino CLI](https://arduino.github.io/arduino-cli/)

---

## 🛠️ Autor

**Dercio** 🚀
