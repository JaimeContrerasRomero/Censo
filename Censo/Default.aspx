<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Censo.Default" %>

<!DOCTYPE html>

<html lang="es-MX" xml:lang="es-MX">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/favicon.ico">

    <title>Cuestionario Censo 2019</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png" />
    <link rel="icon" type="image/png" href="assets/img/favicon.png" />

    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/material-bootstrap-wizard.css" rel="stylesheet" />

    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assets/css/demo.css" rel="stylesheet" />
</head>

<body>
    <div class="image-container set-full-height" style="background-image: url('assets/img/fondo.jpg')">

        <div class="loader"></div>

        <!--   Creative Tim Branding   -->
        <a href="https://www.itsav.edu.mx/">
            <div class="logo-container">
                <div class="logo">
                    <img src="assets/img/ITSAV.jpg">
                </div>
                <div class="brand">
                    ITSAV
	           
                </div>
            </div>
        </a>

        <!--   Big container   -->
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <!--      Wizard container        -->
                    <div class="wizard-container">
                        <div class="card wizard-card" data-color="green" id="wizardProfile">
                            <form action="" method="" runat="server">
                                <!--        You can switch " data-color="purple" "  with one of the next bright colors: "green", "orange", "red", "blue"       -->
                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Always" runat="server">
                                    <ContentTemplate>

                                        <div class="wizard-header">
                                            <h3 class="wizard-title">CUESTIONARIO CENSO 2019
		                        	</h3>
                                            <h5>Censo de población a persona con síndrome de Down.</h5>
                                        </div>
                                        <div class="wizard-navigation">
                                            <ul>
                                                <li><a href="#about" data-toggle="tab">Padre o tutor</a></li>
                                                <li><a href="#account" data-toggle="tab">Persona Down</a></li>
                                                <li><a href="#address" data-toggle="tab">Actividades</a></li>
                                            </ul>
                                        </div>

                                        <div class="tab-content">
                                            <div class="tab-pane" id="about">
                                                <div class="row">
                                                    <h4 class="info-text">Comencemos con la información básica (con validación)</h4>
                                                    <div class="col-sm-4 col-sm-offset-1">
                                                        <div class="picture-container">
                                                            <div class="picture">
                                                                <asp:Image ID="wizardPicturePreview" runat="server" src="assets/img/default-avatar.png" class="picture-src" title="" />
                                                                <%--<img src="assets/img/default-avatar.png" class="picture-src" id="wizardPicturePreview" title="" />--%>
                                                                <%--<input type="file" id="wizard-picture">--%>
                                                                <asp:FileUpload ID="wizardpicture" runat="server" />
                                                            </div>
                                                            <h6>Elegir la foto</h6>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">face</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Nombre del padre o tutor <small>(requerido)</small></label>
                                                                <asp:TextBox ID="txtNombreTutor" runat="server" class="form-control"></asp:TextBox>
                                                                <%--<input name="firstname" type="text" class="form-control">--%>
                                                            </div>
                                                        </div>

                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">record_voice_over</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Edad <small>(requerido)</small></label>
                                                                <asp:TextBox ID="txtEdad" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
                                                                <%--<input name="lastname" type="text" class="form-control">--%>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-5 col-sm-offset-1">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">wc</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Sexo</label>
                                                                <asp:DropDownList ID="cboSexo" runat="server" class="form-control">
                                                                    <asp:ListItem Text="HOMBRE" Value="1"></asp:ListItem>
                                                                    <asp:ListItem Text="MUJER" Value="2"></asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-5">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">phone</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Telefono</label>
                                                                <asp:TextBox ID="txtTelefono" runat="server" class="form-control" TextMode="Phone"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-5 col-sm-offset-1">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">phone_iphone</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Celuar</label>
                                                                <asp:TextBox ID="txtCelular" runat="server" class="form-control" TextMode="Phone"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-5">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">email</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Email <small>(requerido)</small></label>
                                                                <asp:TextBox ID="txtEmail" runat="server" class="form-control" TextMode="Email"></asp:TextBox>
                                                                <%--<input name="email" type="email" class="form-control">--%>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-10 col-sm-offset-1">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">map</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Domicilio</label>
                                                                <asp:TextBox ID="txtDomicilio" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-5 col-sm-offset-1">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">question_answer</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Estado Civil</label>
                                                                <asp:DropDownList ID="cboEstadoCivil" runat="server" class="form-control">
                                                                    <asp:ListItem Text="SOLTERO(A)" Value="1"></asp:ListItem>
                                                                    <asp:ListItem Text="CASADO(A)" Value="2"></asp:ListItem>
                                                                    <asp:ListItem Text="UNIÓN LIBRE" Value="3"></asp:ListItem>
                                                                    <asp:ListItem Text="DIVORCIADO(A)" Value="4"></asp:ListItem>
                                                                    <asp:ListItem Text="VIUDO(A)" Value="5"></asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-5">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">child_friendly</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Numero de hijos</label>
                                                                <asp:TextBox ID="txtNoHijos" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
                                                                <%--<input name="email" type="email" class="form-control">--%>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-5 col-sm-offset-1">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">child_care</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Edad de hijos</label>
                                                                <asp:TextBox ID="txtEdadHijos" runat="server" class="form-control"></asp:TextBox>
                                                                <%--<input name="email" type="email" class="form-control">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-5">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">accessibility_new</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Actividad que realiza</label>
                                                                <asp:TextBox ID="txtActividad" runat="server" class="form-control"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-5 col-sm-offset-1">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">account_box</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Horario de trabajo</label>
                                                                <asp:TextBox ID="txtHorarioTrabajo" runat="server" class="form-control"></asp:TextBox>
                                                                <%--<input name="email" type="email" class="form-control">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-5">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">blur_on</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Enfermedad que padezca</label>
                                                                <asp:TextBox ID="txtEnfermedad" runat="server" class="form-control"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="account">
                                                <h4 class="info-text">Identificación de persona Down</h4>
                                                <div class="row">
                                                    <div class="col-sm-10 col-sm-offset-1">
                                                        <div class="picture-container">
                                                            <div class="picture">
                                                                <asp:Image ID="wizardPicturePreview1" runat="server" src="assets/img/default-avatar.png" class="picture-src" title="" />
                                                                <%--<img src="assets/img/default-avatar.png" class="picture-src" id="wizardPicturePreview" title="" />--%>
                                                                <%--<input type="file" id="wizard-picture1">--%>
                                                                <asp:FileUpload ID="wizardpicture1" runat="server" />
                                                            </div>
                                                            <h6>Elegir la foto</h6>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-5 col-sm-offset-1">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">face</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Nombre <small>(requerido)</small></label>
                                                                <asp:TextBox ID="txtNombreD" runat="server" class="form-control"></asp:TextBox>
                                                                <%--<input name="firstname" type="text" class="form-control">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-5">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">how_to_reg</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Primer Apellido <small>(requerido)</small></label>
                                                                <asp:TextBox ID="txtPrimerApellidoD" runat="server" class="form-control"></asp:TextBox>
                                                                <%--<input name="firstname" type="text" class="form-control">--%>
                                                            </div>
                                                        </div>

                                                    </div>

                                                    <div class="col-sm-5 col-sm-offset-1">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">how_to_reg</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Segundo Apellido</label>
                                                                <asp:TextBox ID="txtSegundoApellidoD" runat="server" class="form-control"></asp:TextBox>
                                                                <%--<input name="firstname" type="text" class="form-control">--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-5">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">date_range</i>
                                                            </span>
                                                            <div class="form-group">
                                                                <label class="control-label">Fecha de nacimiento</label>
                                                                <asp:TextBox ID="txtFechaNacimientoD" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                                                                <%--<input name="lastname" type="text" class="form-control">--%>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-5 col-sm-offset-1">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">wc</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Sexo</label>
                                                                <asp:DropDownList ID="cboSexoD" runat="server" class="form-control">
                                                                    <asp:ListItem Text="HOMBRE" Value="1"></asp:ListItem>
                                                                    <asp:ListItem Text="MUJER" Value="2"></asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-5">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="material-icons">apartment</i>
                                                            </span>
                                                            <div class="form-group label-floating">
                                                                <label class="control-label">Institución de Seguridad Social</label>
                                                                <asp:TextBox ID="txtInstSegSocialD" runat="server" class="form-control"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-sm-5 col-sm-offset-1">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="material-icons">accessible</i>
                                                                </span>
                                                                <div class="form-group">
                                                                    <label class="control-label">Cuenta con alguna discapacidad</label>
                                                                    <asp:DropDownList ID="cboDiscapacidadD" runat="server" class="form-control">
                                                                        <asp:ListItem Text="VISUAL" Value="1"></asp:ListItem>
                                                                        <asp:ListItem Text="AUDITIVA" Value="2"></asp:ListItem>
                                                                        <asp:ListItem Text="COLUMNA" Value="3"></asp:ListItem>
                                                                        <asp:ListItem Text="OTRO" Value="4"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <div id="dvOtroDiscapacidadD" style="display: none">
                                                                        <asp:TextBox ID="txtOtroDiscapacidadD" runat="server" class="form-control"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-5">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="material-icons">accessible_forward</i>
                                                                </span>
                                                                <div class="form-group">
                                                                    <label class="control-label">Cuenta con algun padecimiento</label>
                                                                    <asp:DropDownList ID="cboPadecimientoD" runat="server" class="form-control">
                                                                        <asp:ListItem Text="TRANSTORNO DEL SUEÑO" Value="1"></asp:ListItem>
                                                                        <asp:ListItem Text="AUDITIVA" Value="2"></asp:ListItem>
                                                                        <asp:ListItem Text="OTRO" Value="3"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <div id="dvOtroTranstornoD" style="display: none">
                                                                        <asp:TextBox ID="txtOtroTranstornoD" runat="server" class="form-control"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-sm-5 col-sm-offset-1">
                                                            <div class="input-group">
                                                                <span class="input-group-addon label-floating">
                                                                    <i class="material-icons">access_time</i>
                                                                </span>
                                                                <div class="form-group">
                                                                    <label class="control-label">Frecuencia con la asiste a revisión médica</label>
                                                                    <asp:TextBox ID="txtRevisionMeidcaD" runat="server" class="form-control"></asp:TextBox>
                                                                    <%--<input name="lastname" type="text" class="form-control">--%>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-5">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="material-icons">directions_run</i>
                                                                </span>
                                                                <div class="form-group">
                                                                    <label class="control-label">Asiste a terapia</label>
                                                                    <asp:DropDownList ID="cboTerapiaD" runat="server" class="form-control">
                                                                        <asp:ListItem Text="NO" Value="0"></asp:ListItem>
                                                                        <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <div id="dvTerapiaD" style="display: none">
                                                                        <div class="form-group label-floating">
                                                                            <label class="control-label">¿Que terapia recibe?</label>
                                                                            <asp:TextBox ID="txtTerapiaD" runat="server" class="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-sm-5 col-sm-offset-1">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="material-icons">business_center</i>
                                                                </span>
                                                                <div class="form-group">
                                                                    <label class="control-label">Asiste a terapia educativa</label>
                                                                    <asp:DropDownList ID="cboTerapiaEducativaD" runat="server" class="form-control">
                                                                        <asp:ListItem Text="NO" Value="0"></asp:ListItem>
                                                                        <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <div id="dvTerapiaEducativaD" style="display: none">
                                                                        <div class="form-group label-floating">
                                                                            <label class="control-label">¿Cuál es la escuela?</label>
                                                                            <asp:TextBox ID="txtEscuelaTerapia" runat="server" class="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-5">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="material-icons">attach_money</i>
                                                                </span>
                                                                <div class="form-group">
                                                                    <label class="control-label">Cuenta con algun apoyo social</label>
                                                                    <asp:DropDownList ID="cboApoyoD" runat="server" class="form-control">
                                                                        <asp:ListItem Text="NO" Value="0"></asp:ListItem>
                                                                        <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <div id="dvApoyoD" style="display: none">
                                                                        <div class="form-group label-floating">
                                                                            <label class="control-label">¿Cuál es?</label>
                                                                            <asp:TextBox ID="txtApoyoD" runat="server" class="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="address">
                                                <h4 class="info-text">Actividades Complementarias</h4>
                                                <div class="row">
                                                    <div class="row">
                                                        <div class="col-sm-5 col-sm-offset-1">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="material-icons">accessibility_new</i>
                                                                </span>
                                                                <div class="form-group">
                                                                    <label class="control-label">¿Que actividades realizaría?</label>
                                                                    <asp:DropDownList ID="cboActividades" runat="server" class="form-control">
                                                                        <asp:ListItem Text="NATACIÓN" Value="1"></asp:ListItem>
                                                                        <asp:ListItem Text="REPOSTERÍA" Value="2"></asp:ListItem>
                                                                        <asp:ListItem Text="MANUALIDADES" Value="3"></asp:ListItem>
                                                                        <asp:ListItem Text="OTRA" Value="4"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <div id="dvOtraActividad" style="display: none">
                                                                        <asp:TextBox ID="txtOtraActividad" runat="server" class="form-control"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-5">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="material-icons">announcement</i>
                                                                </span>
                                                                <div class="form-group">
                                                                    <label class="control-label">¿Asistiría a pláticas de higiene y cuidado personal?</label>
                                                                    <asp:DropDownList ID="cboPlatica" runat="server" class="form-control">
                                                                        <asp:ListItem Text="NO" Value="0"></asp:ListItem>
                                                                        <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-sm-5 col-sm-offset-1">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="material-icons">insert_comment</i>
                                                                </span>
                                                                <div class="form-group">
                                                                    <label class="control-label">¿Asistiría a pláticas de educación sexual?</label>
                                                                    <asp:DropDownList ID="cboEducacionSexual" runat="server" class="form-control">
                                                                        <asp:ListItem Text="NO" Value="0"></asp:ListItem>
                                                                        <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-5">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="material-icons">business_center</i>
                                                                </span>
                                                                <div class="form-group">
                                                                    <label class="control-label">¿Le gustaría trabajar en una empresa?</label>
                                                                    <asp:DropDownList ID="cboEmpresa" runat="server" class="form-control">
                                                                        <asp:ListItem Text="NO" Value="0"></asp:ListItem>
                                                                        <asp:ListItem Text="SI" Value="1"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="wizard-footer">
                                            <div class="pull-right">
                                                <input type='button' class='btn btn-next btn-fill btn-success btn-wd' name='next' value='Siguiente' />

                                                <button type="button" id="finish" class="btn btn-finish btn-fill btn-success btn-wd" onclick="guardar()" name='finish'>
                                                    Finalizar
                                                </button>

                                                <%--<asp:LinkButton ID="btnGuardar" class='btn btn-finish btn-fill btn-success btn-wd' name='finish' runat="server" OnClick="finish_Click" Style="display: none;">Finalizar</asp:LinkButton>--%>

                                                 <asp:Button ID="btnGuardar" runat="server" Text="Button" Style="display: none;" OnClick="finish_Click" />


                                            </div>

                                            <div class="pull-left">
                                                <input type='button' class='btn btn-previous btn-fill btn-default btn-wd' name='previous' value='Atras' />

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:PostBackTrigger ControlID="btnGuardar" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </form>
                        </div>
                    </div>
                    <!-- wizard container -->
                </div>
            </div>
            <!-- end row -->
        </div>
        <!--  big container -->

        <div class="footer">
            <div class="text-center">
                <img class="img-rounded" src="assets/img/LOGODIF.jpeg" style="width: 50%">
            </div>

            <div class="container text-center">
                Desarrollado <i class="fa fa-heart heart"></i>por <a href="#">Docentes del ITSAV</a>. Para conocer mas ir <a href="https://www.itsav.edu.mx/">aquí.</a>
            </div>
        </div>
    </div>

</body>
<!--   Core JS Files   -->
<script src="assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.bootstrap.js" type="text/javascript"></script>

<!--  Plugin for the Wizard -->
<script src="assets/js/material-bootstrap-wizard.js"></script>

<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
<script src="assets/js/jquery.validate.min.js"></script>

<script type="text/javascript">
    $(window).load(function () {
        $(".loader").fadeOut("slow");
        //$(".loader").show();
    });

    function guardar() {
        //debugger;
        $(".loader").show();
            <%=this.btnGuardar.ClientID%>.click();
    }

    function CerrarLoading() {
        $(".loader").fadeOut("slow");
    }

</script>

</html>
