# Pivotree
Pivotree Functional Test

Casos a destacar:

En ocasiones el test "TestTramitarPedido" puede fallar por dos motivos. El primero es por un error al principio provocado por Mouse Down, se recomienda relanzar el test y se soluciona. El segundo motivo es debido a que los botones + - y Eliminar dentro del carrito son DINAMICOS y hay veces que cambian su xpath, por lo que su actual configuracion deja de funcionar. Se recomienda pausar durante un minuto y obtener el Xpath de dichos botones.

Para la realización de este proyecto se ha empleado SeleniumLibrary y Robot Framework, junto con el plugin de ayuda  Intellibot SeleniumLibrary.
