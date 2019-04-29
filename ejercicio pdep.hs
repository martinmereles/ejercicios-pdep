{- El dominio
Un amigo nuestro es encargado de un boliche, necesita modelar su negocio para
mejorar la forma en que lo administra. En el relevamiento surgieron las siguientes
entidades:
● Los clientes son personas mayores de edad. Al ingresar se registra su
nombre, la resistencia y quiénes son sus amigos (que también sean clientes,
claro).
● En el bar se venden tragos, que suelen afectar de forma diferente a un cliente:
○ la jarra loca baja 10 puntos de resistencia al cliente y a todos sus
amigos.
○ el Grog XD deja sin resistencia a un cliente.
○ el Klusener tiene tres variantes: “Huevo”, “Chocolate” y “Frutilla”, y
descuentan tanta resistencia como la cantidad de letras que tenga el
gusto del Klusener. Ej: Alguien pide Klusener de Huevo, eso le baja la
resistencia 5 puntos.
● Pero como no es todo jarana, los clientes pueden decidir “rescatarse” un
cierto tiempo medido en horas. Eso le devuelve 200 puntos de resistencia si
son más de 3 horas o 100 en caso contrario. -}



data Cliente = Cliente {
   nombre :: String,
   resistencia :: Int,
   amigos :: [Cliente] } deriving (Show)

data Trago = Trago {    
nombreTrago ::String,
efecto :: Int
} deriving (Show)

{-  Requerimientos. Parte I.
1) Modelar un cliente genérico. -}
jean = Cliente {
nombre = "Jean Joel",
resistencia = 20,
amigos = [marcos,rodri]
}
{-
2) Modelar a Rodri, que tiene 150 puntos de resistencia y no considera a nadie
como amigo. También modelar a Marcos, un cliente que tiene 40 puntos de
resistencia, y considera a Rodri como su único amigo.
-}
{-
3) Representar con la abstracción que crea conveniente a la Jarra Loca, el Grog
XD y el Klusener.
4) Definir el concepto de rescatarse. -}

rodri = Cliente {
nombre = "Rodri",
resistencia = 150,
amigos = []
}
marcos = Cliente {
nombre = "Marcos",
resistencia = 40,
amigos = [rodri]
}


efectoJarraloca:: Cliente -> Int
efectoJarraloca cliente = (resistencia cliente ) - 10
sinResistencia :: Int -> Bool
sinResistencia resistencia = resistencia ==0
efectoGrogXd :: Cliente ->Bool
efectoGrogXd cliente = (sinResistencia cliente)
{-
grogXd = Trago {
nombreTrago = "grog xd",
efecto = (/resistencia)
}

klusenerHuevo = Trago {
nombreTrago = "Huevo",
efecto = length "Huevo"
}
-}