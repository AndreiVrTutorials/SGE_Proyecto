codeunit 50100 "CargarDatosAuto"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        InsertarDepartamentos();
        InsertarClaustro();
        AsignarDirectores();
        InsertarCursos();
        InsertarEstudiantes();
        InsertarClases();
        InsertarMatriculas();
        InsertarPersonal();
    end;

    local procedure InsertarDepartamentos()
    var
        DepartamentoRec: Record "TablaDepartamentos";
    begin
        if not DepartamentoRec.Get('INFO') then begin
            DepartamentoRec.Init();
            DepartamentoRec."Codigo dept" := 'INFO';
            DepartamentoRec."Edificio" := 'CI';
            DepartamentoRec."Despacho" := 100;
            DepartamentoRec.Insert();
        end;
        if not DepartamentoRec.Get('LET') then begin
            DepartamentoRec.Init();
            DepartamentoRec."Codigo dept" := 'LET';
            DepartamentoRec."Edificio" := 'HU';
            DepartamentoRec."Despacho" := 200;
            DepartamentoRec.Insert();
        end;
    end;

    local procedure InsertarClaustro()
    var
        ProfesorRec: Record "TablaClaustro";
    begin
        if not ProfesorRec.Get('15') then begin
            ProfesorRec.Init();
            ProfesorRec."Codigo Profesor" := '15';
            ProfesorRec."Nombre" := 'Sánchez Prieto, María';
            ProfesorRec."Direccion" := 'Plaza Madrid, 16 1º - 47001';
            ProfesorRec."Fecha contr." := DMY2DATE(1, 9, 2010);
            ProfesorRec."Num Ayudante" := 0;
            ProfesorRec."Sueldo" := 1500.00;
            ProfesorRec."Codigo dept" := 'LET';
            ProfesorRec.Insert();
        end;

        if not ProfesorRec.Get('47') then begin
            ProfesorRec.Init();
            ProfesorRec."Codigo Profesor" := '47';
            ProfesorRec."Nombre" := 'Cuesta Arriba, Tomás';
            ProfesorRec."Direccion" := 'Calle Góndola, 74 3ºB - 47014';
            ProfesorRec."Fecha contr." := DMY2DATE(30, 6, 2005);
            ProfesorRec."Num Ayudante" := 1;
            ProfesorRec."Sueldo" := 1800.00;
            ProfesorRec."Codigo dept" := 'INFO';
            ProfesorRec.Insert();
        end;

        if not ProfesorRec.Get('25') then begin
            ProfesorRec.Init();
            ProfesorRec."Codigo Profesor" := '25';
            ProfesorRec."Nombre" := 'Zalama Bueno, Inés';
            ProfesorRec."Direccion" := 'Calle Cerrada, 3 - 47012';
            ProfesorRec."Fecha contr." := DMY2DATE(25, 9, 2012);
            ProfesorRec."Num Ayudante" := 0;
            ProfesorRec."Sueldo" := 1250.00;
            ProfesorRec."Codigo dept" := 'INFO';
            ProfesorRec.Insert();
        end;
    end;

    local procedure AsignarDirectores()
    var
        DepartamentoRec: Record "TablaDepartamentos";
    begin
        if DepartamentoRec.Get('INFO') then begin
            DepartamentoRec.DIRECTOR := '47';
            DepartamentoRec.Modify();
        end;

        if DepartamentoRec.Get('LET') then begin
            DepartamentoRec.DIRECTOR := '15';
            DepartamentoRec.Modify();
        end;
    end;

    local procedure InsertarPersonal()
    var
        PersonalRec: Record "TablaPersonal";
    begin
        if not PersonalRec.Get('900') then begin
            PersonalRec.Init();
            PersonalRec."Cod. Personal" := '900';
            PersonalRec."Nombre" := 'Flores Rosas, Carmen';
            PersonalRec."Cargo" := 'Administrativo';
            PersonalRec."Sueldo" := 980.00;
            PersonalRec.Insert();
        end;

        if not PersonalRec.Get('909') then begin
            PersonalRec.Init();
            PersonalRec."Cod. Personal" := '909';
            PersonalRec."Nombre" := 'Prada Barrios, Alberto';
            PersonalRec."Cargo" := 'Ayudante';
            PersonalRec."Sueldo" := 650.00;
            PersonalRec.Insert();
        end;

        if not PersonalRec.Get('920') then begin
            PersonalRec.Init();
            PersonalRec."Cod. Personal" := '920';
            PersonalRec."Nombre" := 'Puertas Gómez, Santiago';
            PersonalRec."Cargo" := 'Conserje';
            PersonalRec."Sueldo" := 1050.00;
            PersonalRec.Insert();
        end;
    end;

    local procedure InsertarClases()
    var
        ClaseRec: Record "TablaClases";
    begin
        if not ClaseRec.Get('C10', '01') then begin
            ClaseRec.Init();
            ClaseRec."Cod. Curso" := 'C10';
            ClaseRec."Seccion" := '01';
            ClaseRec."Dia" := 'Lunes';
            ClaseRec."Hora" := 100000T;
            ClaseRec."Edificio" := 'CI';
            ClaseRec."Despacho" := 101;
            ClaseRec."Cod. Profesor" := '25';
            ClaseRec.Insert();
        end;

        if not ClaseRec.Get('C11', '01') then begin
            ClaseRec.Init();
            ClaseRec."Cod. Curso" := 'C11';
            ClaseRec."Seccion" := '01';
            ClaseRec."Dia" := 'Miércoles';
            ClaseRec."Hora" := 090000T;
            ClaseRec."Edificio" := 'CI';
            ClaseRec."Despacho" := 102;
            ClaseRec."Cod. Profesor" := '47';
            ClaseRec.Insert();
        end;

        if not ClaseRec.Get('C20', '02') then begin
            ClaseRec.Init();
            ClaseRec."Cod. Curso" := 'C20';
            ClaseRec."Seccion" := '02';
            ClaseRec."Dia" := 'Jueves';
            ClaseRec."Hora" := 090000T;
            ClaseRec."Edificio" := 'HU';
            ClaseRec."Despacho" := 201;
            ClaseRec."Cod. Profesor" := '15';
            ClaseRec.Insert();
        end;
    end;

    local procedure InsertarMatriculas()
    var
        MatriculaRec: Record "TablaMatriculas";
    begin
        if not MatriculaRec.Get('C11', '01', '123') then begin
            MatriculaRec.Init();
            MatriculaRec."Cod. Curso" := 'C11';
            MatriculaRec."Seccion" := '01';
            MatriculaRec."Cod. Estudiante" := '123';
            MatriculaRec."Fecha Matricula" := DMY2DATE(5, 9, 2021);
            MatriculaRec."Hora Matricula" := 100500T;
            MatriculaRec.Insert();
        end;
        if not MatriculaRec.Get('C11', '01', '255') then begin
            MatriculaRec.Init();
            MatriculaRec."Cod. Curso" := 'C11';
            MatriculaRec."Seccion" := '01';
            MatriculaRec."Cod. Estudiante" := '255';
            MatriculaRec."Fecha Matricula" := DMY2DATE(6, 9, 2021);
            MatriculaRec."Hora Matricula" := 103200T;
            MatriculaRec.Insert();
        end;
        if not MatriculaRec.Get('C11', '01', '789') then begin
            MatriculaRec.Init();
            MatriculaRec."Cod. Curso" := 'C11';
            MatriculaRec."Seccion" := '01';
            MatriculaRec."Cod. Estudiante" := '789';
            MatriculaRec."Fecha Matricula" := DMY2DATE(10, 9, 2021);
            MatriculaRec."Hora Matricula" := 111000T;
            MatriculaRec.Insert();
        end;
        if not MatriculaRec.Get('C20', '02', '255') then begin
            MatriculaRec.Init();
            MatriculaRec."Cod. Curso" := 'C20';
            MatriculaRec."Seccion" := '02';
            MatriculaRec."Cod. Estudiante" := '255';
            MatriculaRec."Fecha Matricula" := DMY2DATE(9, 9, 2021);
            MatriculaRec."Hora Matricula" := 130700T;
            MatriculaRec.Insert();
        end;
    end;

    local procedure InsertarEstudiantes()
    var
        EstudianteRec: Record "TablaEstudiantes";
    begin
        if not EstudianteRec.Get('123') then begin
            EstudianteRec.Init();
            EstudianteRec."Codigo estudiante" := '123';
            EstudianteRec."Nombre" := 'García García, Luis';
            EstudianteRec."Sexo" := EstudianteRec."Sexo"::H;
            EstudianteRec."Direccion" := 'Calle Norte, 25 29C - 47007';
            EstudianteRec."Telefono" := '983001122';
            EstudianteRec."Fecha nac." := DMY2DATE(2, 5, 2000);
            EstudianteRec."Cod. Tutor" := '25';
            EstudianteRec.Insert();
        end;
        if not EstudianteRec.Get('255') then begin
            EstudianteRec.Init();
            EstudianteRec."Codigo estudiante" := '255';
            EstudianteRec."Nombre" := 'Martín Pescador, Ana';
            EstudianteRec."Sexo" := EstudianteRec."Sexo"::M;
            EstudianteRec."Direccion" := 'Plaza Mayor, 14 - 47400';
            EstudianteRec."Telefono" := '600998877';
            EstudianteRec."Fecha nac." := DMY2DATE(15, 7, 1998);
            EstudianteRec."Cod. Tutor" := '25';
            EstudianteRec.Insert();
        end;

        if not EstudianteRec.Get('789') then begin
            EstudianteRec.Init();
            EstudianteRec."Codigo estudiante" := '789';
            EstudianteRec."Nombre" := 'Blanco Casas, Carlos';
            EstudianteRec."Sexo" := EstudianteRec."Sexo"::H;
            EstudianteRec."Direccion" := 'Avda. Palencia, 3 79A - 47011';
            EstudianteRec."Telefono" := '983123456';
            EstudianteRec."Fecha nac." := DMY2DATE(9, 4, 2001);
            EstudianteRec."Cod. Tutor" := '25';
            EstudianteRec.Insert();
        end;
    end;

    local procedure InsertarCursos()
    var
        CursoRec: Record "TablaCursos";
    begin
        if not CursoRec.Get('C10') then begin
            CursoRec.Init();
            CursoRec."Cod. Curso" := 'C10';
            CursoRec."Nombre curso" := 'Bases de datos';
            CursoRec."Desc. curso" := 'Imprescindible';
            CursoRec."Creditos" := 9;
            CursoRec."Tarifa" := 15.00;
            CursoRec."Cod. Departamento" := 'INFO';
            CursoRec.Insert();
        end;

        if not CursoRec.Get('C11') then begin
            CursoRec.Init();
            CursoRec."Cod. Curso" := 'C11';
            CursoRec."Nombre curso" := 'Programación';
            CursoRec."Desc. curso" := 'Imprescindible';
            CursoRec."Creditos" := 8;
            CursoRec."Tarifa" := 12.75;
            CursoRec."Cod. Departamento" := 'INFO';
            CursoRec.Insert();
        end;

        if not CursoRec.Get('C20') then begin
            CursoRec.Init();
            CursoRec."Cod. Curso" := 'C20';
            CursoRec."Nombre curso" := 'Existencialismo';
            CursoRec."Desc. curso" := 'Opcional';
            CursoRec."Creditos" := 3;
            CursoRec."Tarifa" := 0.00;
            CursoRec."Cod. Departamento" := 'LET';
            CursoRec.Insert();
        end;
    end;
}