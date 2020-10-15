<%-- 
    Document   : Empleados
    Created on : sep 30, 2020, 5:31:59 p.m.
    Author     : eriki
--%>
<%
      HttpSession actual =request.getSession(true);
      String usuario = (String) actual.getAttribute("Logueado");
      String nombres=(String) actual.getAttribute("nom");
      String email=(String) actual.getAttribute("em");
      String profile=(String) actual.getAttribute("Ft");
      String tipo=(String) actual.getAttribute("T");
          HashMap<String,String> Menu=(HashMap)actual.getAttribute("Men");
      session.setMaxInactiveInterval(900);
      if((actual.getAttribute("Logueado")!=null)&&(tipo.equals("ADMIN"))){
        %>
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="Modelo.Empleado"%>
<%@page import="java.util.HashMap"%>
<%@page import="Modelo.Puesto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="JS/AllInOne.js"></script>
        <title>Empleados</title>
    </head>
    <body>
        <div class="pos-f-t">
  <div class="collapse" id="navbarToggleExternalContent">
    <div class="bg-dark p-4">
        <h4 class="text-white">Herramientas</h4>
        <!--<form action="sr_login" method="post">
            <h6 class="text-muted"><input type="submit" value="Cerrar Sesion" class="btn btn-dark" id="cerrarsesion" name="cerrarsesion"/></h6>
        </form>-->
    </div>

  </div>
  <nav class="navbar navbar-dark baner" style="background-color: #2A2A1E">
      <div class="dropdown">
          <button type="button" class="btn btn-outline-light dropdown-toggle" style="border:none;" data-toggle="dropdown">
    <img src="sources/<%=profile%>" style="width: 60px; height: 60px; border-radius: 2em;"/>   <span class="navbarr-brand"><%=nombres%></span>
  </button>
  <div class="dropdown-menu text-center" style="font-size: 22px;">

    <span class="dropdown-item"><%=usuario%></span>
    <span class="dropdown-item"><%=email%></span>
    <form action="sr_login" method="post">
            <h6 class="text-muted"><input type="submit" value="Cerrar Sesion" class="btn btn-dark" id="cerrarsesion" name="cerrarsesion"/></h6>
        </form>
  </div>
</div>
   <!-- <button class="navbar-toggler btn btn-secondary" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
<img src="sources/<%=profile%>" style="width: 60px; height: 60px; border-radius: 2em;"/>
      <span class="navbarr-brand"><%=nombres%></span>
<span class="navbarr-brand"><%=usuario%></span>
-->
  </button>
  <% 

                         for (String i:Menu.keySet()){
                             out.println("<a href='" + Menu.get(i) + "'>" + i + "</a><br>");
                         }
                         
                    
                    %>
  </nav>
</div>
        <h1>Empleados</h1>
          <h1>Formulario Empleados</h1>
        <div class="container">
            <form action="sr_empleado" method="post" class="form-group">
               <label for="lbl_id" ><b>ID</b></label>
                <input type="text" name="txt_id" id="txt_id" class="form-control" value="0" readonly> 
                <label for="lbl_nombres" ><b>Nombres</b></label>
                <input type="text" name="txt_nombres" id="txt_nombres" class="form-control" placeholder="Ejemplo: Nombre1 Nombre2" onkeypress="return text(event);" required>
                <label for="lbl_apellidos" ><b>Apellidos</b></label>
                <input type="text" name="txt_apellidos" id="txt_apellidos" class="form-control" placeholder="Ejemplo: Apellido1 Apellido2" onkeypress="return text(event);" required>
                <label for="lbl_direccion" ><b>Direccion</b></label>
                <input type="text"  name="txt_direccion" id="txt_direccion" class="form-control" placeholder="Ejemplo: #Casa calle zona ciudad" required>
                <label for="lbl_telefono" ><b>Telefono</b></label>
                <input type="text" name="txt_telefono" id="txt_telefono" class="form-control" placeholder="Ejemplo: 5555555" maxlength="8" onkeypress="return entero(event);"  required>
                <label for="lbl_DPI" ><b>DPI</b></label>
                <input type="text" name="txt_DPI" id="txt_DPI" class="form-control" placeholder="Ejemplo: 521312321"  maxlength="13" onkeypress="return entero(event);" required>
               <br>
                 <br>
                <label for="lbl_genero" style="font-size: 18px;">Genero: &ensp;</label>
                <div class="form-check-inline">
                  <label class="form-check-label" for="Masculino">
                      <input type="radio" class="form-check-input" id="txt_genero" name="txt_genero" value="1" style="width: 1.2em;height: 1.2em;">Masculino
                  </label>
                </div>
                <div class="form-check-inline">
                  <label class="form-check-label" for="Femenino">
                    <input type="radio" class="form-check-input" id="txt_genero2" name="txt_genero" value="2" style="width: 1.2em;height: 1.2em;">Femenino
                  </label>
                </div>
<br>
                <br>
                <label for="lbl_fn" ><b>Fecha de Nacimiento</b></label>
                <input type="date"  name="txt_fn" id="txt_fn" class="form-control" required>
                <label for="lbl_puesto" ><b>Puesto</b></label>
                <select name="drop_puesto" id="drop_puesto" class="form-control">
                    <% 
                        Puesto puesto = new Puesto();
                        HashMap<String,String> drop = puesto.drop_Puesto();
                        out.println("<option value='0'>Seleccione</option>");
                         for (String i:drop.keySet()){
                             out.println("<option value='" + i + "'>" + drop.get(i) + "</option>");
                         }
                         
                    
                    %>
                </select>
                <br>
                <label for="lbl_fechaInicio" ><b>Fecha de Inicio de Labores</b></label>
                <input type="date"  name="txt_fechaInicio" id="txt_fechaInicio" class="form-control" required>
                 <label id="lbl_fechaIngreso" ><b>Fecha de Ingreso</b></label>
                 <input type="datetime"  name="txt_fechaIngreso" id="txt_fechaIngreso" value="0" class="form-control" required><br>
                <button name="btn_agregar" id="btn_agregar"  value="agregar" class="btn btn-primary btn-lg">Agregar</button>
                <button name="btn_modificar" id="btn_modificar"  value="modificar" class="btn btn-success btn-lg">Modificar</button>
                <button name="btn_eliminar" id="btn_eliminar"  value="eliminar" class="btn btn-danger btn-lg" onclick="javascript:if(!confirm('¿Desea Eliminar?'))return false" >Eliminar</button>
                
            </form>
                <div class="container">
                  <table class="table table-striped">
    <thead>
        <tr>
        <th>Nombres</th>
        <th>Apellidos</th>
        <th>Direccion</th>
        <th>Telefono</th>
        <th>DPI</th>
        <th>Genero</th>
        <th>Fecha Nacimiento</th>
        <th>Puesto</th>
        <th>Fecha de Inicio de Labores</th>
        <th>Fecha de Inreso</th>
      </tr>
    </thead>
    <tbody id="tbl_empleados">
        <% 
        Empleado empleado = new Empleado();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = empleado.leer();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-id=" + tabla.getValueAt(t,0) + " data-id_p=" + tabla.getValueAt(t,6) + ">");
            out.println("<td>" + tabla.getValueAt(t,1) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,2) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,3) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,4) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,5) + "</td>");
             if(tabla.getValueAt(t,11).equals("1")){
                                out.println("<td>Masculino</td>");
                            }else{
                                out.println("<td>Femenino</td>");
                            }
            out.println("<td>" + tabla.getValueAt(t,8) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,7) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,9) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,10) + "</td>");
            out.println("</tr>");
        
        }
        %>
      
    </tbody>
  </table>
  </div>
        <script type="text/javascript">
            $(document).ready(function () {
            $("#lbl_fechaIngreso").hide();
                        $("#txt_fechaIngreso").hide();
                        $("#btn_agregar").show();
                        $("#btn_modificar").hide();
                        $("#btn_eliminar").hide();
                         $("#txt_genero").prop('checked',false);
      $("#txt_genero2").prop('checked',false);
    });
            
            </script>
        <script type="text/javascript">
    $('#tbl_empleados').on('click','tr td',function(evt){
       var target,id,id_p,nombres,apellidos,direccion,telefono,DPI,genero, nacimiento, fecha_inicio_labores,fechaIngreso; 
       target = $(event.target);
       $("#lbl_fechaIngreso").show();
                        $("#txt_fechaIngreso").show();
                        $("#btn_agregar").hide();
                        $("#btn_modificar").show();
                        $("#btn_eliminar").show();
       id = target.parent().data('id');
       id_p = target.parent().data('id_p'); 
       nombres= target.parent("tr").find("td").eq(0).html();
       apellidos = target.parent("tr").find("td").eq(1).html();
       direccion = target.parent("tr").find("td").eq(2).html();
       telefono = target.parent("tr").find("td").eq(3).html();
       DPI = target.parent("tr").find("td").eq(4).html();
       genero = target.parent("tr").find("td").eq(5).html();
       nacimiento = target.parent("tr").find("td").eq(6).html();
       fecha_inicio_labores = target.parent("tr").find("td").eq(8).html();
       fechaIngreso = target.parent("tr").find("td").eq(9).html();  
       if(genero==="Masculino"){
                            $("#txt_genero").prop('checked',true);
                            
                        }
                        if(genero==="Femenino"){
                            $("#txt_genero2").prop('checked',true);
                        }
       $("#txt_id").val(id);
       $("#txt_nombres").val(nombres);
       $("#txt_apellidos").val(apellidos);
       $("#txt_direccion").val(direccion);
       $("#txt_telefono").val(telefono);
       $("#txt_DPI").val(DPI);
       $("#txt_fn").val(nacimiento);
       $("#txt_fechaInicio").val(fecha_inicio_labores);
       $("#txt_fechaIngreso").val(fechaIngreso);       
       $("#drop_puesto").val(id_p);
       
    });
    
</script>
        <a href="Puestos.jsp">Puestos</a>
        <a href="Principal.jsp">Regresar</a>
    </body>
</html>
<%
   }
else{
response.sendRedirect("Error.jsp");

}
%>