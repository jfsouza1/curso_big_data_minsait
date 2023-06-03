#!/bin/bash

DATE="$(date --date="-0 day""+%Y%m%d")"

TABLES=("cidade" "estado" "Filial" "parceiro" "Cliente" "subcategoria" "categoria" "item_pedido" "produto")
TABLE_CLIENTE="TBL_CLIENTE"

PARTICAO=""