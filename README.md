# Pivotree
Pivotree Functional Test

Casos a destacar:

En ocasiones el test "TestTramitarPedido" puede fallar por dos motivos. El primero es por un error al principio provocado por Mouse Down, se recomienda relanzar el test y se soluciona. El segundo motivo es debido a que los botones + - y Eliminar dentro del carrito son DINAMICOS y hay veces que cambian su xpath, por lo que su actual configuracion deja de funcionar. Se recomienda pausar durante un minuto y obtener el Xpath de dichos botones.

Ambos test estan pensado para ser ejecutados una ÚNICA vez, tanto el TestRegUs.robot como TestTramitarPedido.robot, ya que al registrar un usuario el correo queda guardado en el sistema, por lo que se deberá cambiar su valor en SignPage.robot. A su vez, en TestTramitarPedido.robot se añade por primera vez una dirección en ShoppingCart.robot al seleccionar que ambas direcciones no son la misma. Sin embargo una vez introducida una nueva alternativa el boton desaparece, por lo que debera eliminarse dentro menú del usuario, en el apartado "My address". 

Para la realización de este proyecto se ha empleado SeleniumLibrary y Robot Framework, junto con el plugin de ayuda  Intellibot SeleniumLibrary.
