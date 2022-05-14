
package Modelos;

public class persona {
    int ID_Persona;
    String Nombre;
    String Apellido_PA;
    String Apellido_MA;
    String Sexo;
    String DNI;
    String FechaNacimiento;

    public persona() {
    }

    public persona(String Nombre, String Apellido_PA, String Apellido_MA, String Sexo, String DNI, String FechaNacimiento) {
        this.Nombre = Nombre;
        this.Apellido_PA = Apellido_PA;
        this.Apellido_MA = Apellido_MA;
        this.Sexo = Sexo;
        this.DNI = DNI;
        this.FechaNacimiento = FechaNacimiento;

    }

    public int getID_Persona() {
        return ID_Persona;
    }

    public void setID_Persona(int ID_Persona) {
        this.ID_Persona = ID_Persona;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido_PA() {
        return Apellido_PA;
    }

    public void setApellido_PA(String Apellido_PA) {
        this.Apellido_PA = Apellido_PA;
    }

    public String getApellido_MA() {
        return Apellido_MA;
    }

    public void setApellido_MA(String Apellido_MA) {
        this.Apellido_MA = Apellido_MA;
    }

    public String getSexo() {
        return Sexo;
    }

    public void setSexo(String Sexo) {
        this.Sexo = Sexo;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public String getFechaNacimiento() {
        return FechaNacimiento;
    }

    public void setFechaNacimiento(String FechaNacimiento) {
        this.FechaNacimiento = FechaNacimiento;
    }   
}
