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

## 🚀 Instalar suporte para ESP32 (DevKit V1)

### 🧠 1. Adicionar URL do ESP32

1. Abra o **Arduino IDE**.
2. Vá em: **File → Preferences**.
3. Procure por: **“Additional Board Manager URLs”**.
4. Cole isto:
   `https://raw.githubusercontent.com/espressif/arduino-esp32/gh-pages/package_esp32_index.json`

👉 *Se já tiver algo lá, separa com vírgula.*

### 📦 2. Instalar o pacote ESP32

1. Vá em: **Tools → Board → Boards Manager**.
2. Pesquisa por: **esp32**.
3. Instala: **“ESP32 by Espressif Systems”** (este é o oficial).

### ⚙️ 3. Selecionar a placa correta

Depois de instalar:
1. Vá em: **Tools → Board**.
2. Escolhe: **ESP32 Dev Module** (serve perfeitamente para o ESP32 DevKit V1).

### 🔌 4. Conectar o ESP32

Liga via USB e verifica no terminal:

```bash
ls /dev/tty*
```

Deve aparecer algo como:
`/dev/ttyUSB0` ou `/dev/ttyACM0`

### ⚠️ 5. Se não aparecer a porta

Instala drivers comuns e bibliotecas necessárias:

```bash
sudo apt install python3-serial
```

E confirma se você está no grupo `dialout`:

```bash
groups
```

> **Nota:** Certifique-se de que `dialout` aparece na lista. Se você acabou de adicionar o grupo no passo 8, lembre-se que o reinício é necessário.

---

## 🧠 Dicas

- Use `/opt` para manter o sistema organizado
- Evite rodar AppImage direto da pasta Downloads
- Para uso avançado, considere [Arduino CLI](https://arduino.github.io/arduino-cli/)

---

## 🛠️ Autor

**Dercio** 🚀
