# Esse código recebe um número via linha de comando, faz um cálculo simples (valor * 2.5) e retorna o resultado em JSON.

import sys
import json
# recebe um valor passado pelo php
try:
    valor = float(sys.argv[1]) 
except:
    valor = 0
# Calculo simples
previsao = valor * 2.5
# Retorna a resposta em json
resultado = {"Temperatura predita: ": previsao}
print(json.dumps(resultado))