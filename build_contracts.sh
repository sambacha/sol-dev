#!/usr/bin/env bash
rm -rf build

BUILDDIR=./build
BUILDDIRO=./build/optimize
BUILDDIRN=./build/normal
CONTRACTSDIR=contracts


# compiling one file also compiles its dependendencies, so we overwrite to avoid the related warnings.
solc $CONTRACTSDIR/${CONTRACT_1}.sol --allow-paths . --asm --asm-json --hashes --userdoc  --devdoc  --metadata --opcodes --bin --abi --optimize -o $BUILDDIRO --overwrite
solc $CONTRACTSDIR/${CONTRACT_2}.sol --allow-paths . --asm --asm-json --hashes --userdoc  --devdoc  --metadata --opcodes --bin --abi --optimize -o $BUILDDIRO --overwrite
solc $CONTRACTSDIR/${CONTRACT_3}.sol --allow-paths . --asm --asm-json --hashes --userdoc  --devdoc  --metadata --opcodes --bin --abi --optimize -o $BUILDDIRO --overwrite
solc $CONTRACTSDIR/${CONTRACT_4}.sol --allow-paths . --asm --asm-json --hashes --userdoc  --devdoc  --metadata --opcodes --bin --abi --optimize -o $BUILDDIRO --overwrite
solc $CONTRACTSDIR/${CONTRACT_5}l --allow-paths . --asm --asm-json --hashes --userdoc  --devdoc  --metadata --opcodes --bin --abi --optimize -o $BUILDDIRO --overwrite


solc $CONTRACTSDIR/${OZ_1}.sol --allow-paths . --asm --asm-json --hashes --userdoc  --devdoc  --metadata --opcodes --bin --abi --optimize -o $BUILDDIRO --overwrite
solc $CONTRACTSDIR/${OZ_2}.sol --allow-paths . --asm --asm-json --hashes --userdoc  --devdoc  --metadata --opcodes --bin --abi --optimize -o $BUILDDIRO --overwrite
solc $CONTRACTSDIR/${OZ_3}.sol --allow-paths . --asm --asm-json --hashes --userdoc  --devdoc  --metadata --opcodes --bin --abi --optimize -o $BUILDDIRO --overwrite



solc $CONTRACTSDIR/${CONTRACT_1}.sol--allow-paths . --asm --asm-json --hashes --userdoc  --devdoc  --metadata --opcodes --bin --abi -o $BUILDDIRN --overwrite
# solc $CONTRACTSDIR/${CONTRACT_2}.sol --allow-paths . --asm --asm-json --hashes --userdoc  --devdoc  --metadata --opcodes --bin --abi -o $BUILDDIRN --overwrite
ls $BUILDDIRO

exit 0
