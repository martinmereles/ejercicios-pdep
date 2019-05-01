data Cliente = Cliente {
    nombre :: String,
    resistencia :: Int,
    amigos :: [Cliente]
} deriving (Show)

rodri = Cliente {
    nombre = "rodri",
    resistencia = 150,
    amigos = []
}
marcos = Cliente {
    nombre = "marcos",
    resistencia = 40,
    amigos = [rodri]
}

jarraLoca :: Cliente -> Cliente
jarraLoca cliente = cliente {
resistencia = resistencia cliente - 10,
amigos = map saca10 (amigos cliente)}

saca10 :: Cliente -> Cliente
saca10 cliente = cliente {resistencia = resistencia cliente - 10}

grogXD :: Cliente -> Cliente
grogXD cliente = cliente { resistencia = 0}

klusener :: String -> Cliente -> Cliente
klusener tipo cliente = cliente {
    resistencia = resistencia cliente - length tipo
}