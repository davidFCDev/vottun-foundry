# Vottun Project - Bank Contract

Proyecto que contiene un contrato inteligente de ejemplo (`Bank.sol`) desarrollado con Foundry para Vottun Ecosystem. El contrato permite que los usuarios depositen y retiren fondos, y consulten su balance.

## Funcionalidades del Contrato

- **Depositar fondos**: Los usuarios pueden depositar Ether en el contrato.
- **Retirar fondos**: Los usuarios pueden retirar su balance disponible.
- **Consultar balance**: Los usuarios pueden consultar su balance actual.

## Instalación del Proyecto

1. Clona este repositorio:
   ```bash
   git clone https://github.com/davidFCDev/vottun-foundry.git
   cd vottun-foundry
   ```

2. Instala Foundry:
   ```bash
   curl -L https://foundry.paradigm.xyz | bash
   foundryup
   ```

3. Instala dependencias:
   ```bash
   forge install
   ```

## Pruebas

1. Ejecuta las pruebas para validar el contrato:
   ```bash
   forge test
   ```

2. Las pruebas incluyen Fuzz testing para generar entrada de datos aleatorios.

## Despliegue en Sepolia

1. Configuración del foundry.toml | Configura tu archivo foundry.toml con la URL RPC de Sepolia (desde Infura o Alchemy) y tu clave privada:
   ```toml
   [rpc_endpoints]
   sepolia = "https://sepolia.infura.io/v3/YOUR_INFURA_KEY"

   [profile.sepolia]
   private_key = "YOUR_PRIVATE_KEY"
   ```

2. Despliega el contrato
   ```bash
   forge script script/DeployBank.sol --rpc-url sepolia --broadcast
   ```

3. Verifica el despliegue en Sepolia Etherscan
