package lyc.compiler.simbolsTable;

public class SimbolRow {

    private String tipo;
    private String nombre;
    private String valor; 
    private Integer longitud;

    public SimbolRow(String nombre, String tipo, String valor, Integer longitud) {
        this.nombre = nombre;
        this.tipo = tipo;
        this.valor = valor;
        this.longitud = longitud;
    }

    public String getTipo() {
        if (tipo == null) {
            return "";
        }
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getNombre() {
        if (nombre == null) {
            return "";
        }
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }


    public String getValor() {
        if (valor == null) {
            return "";
        }
        return valor; 
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

    public Integer getLongitud() {
        return longitud;
    }

    public void setLongitud(Integer longitud) {
        this.longitud = longitud;
    }

    @Override
    public boolean equals(Object object) {
        SimbolRow simbolRow = (SimbolRow) object;
        if (object == null || getClass() != object.getClass()) {System.out.println("false");return true;}
        return  java.util.Objects.equals(nombre, simbolRow.nombre) ;
    }

    public int hashCode() {
        return java.util.Objects.hash(super.hashCode(), tipo, nombre, valor, longitud);
    }

    @java.lang.Override
    public java.lang.String toString() {
        return "SimbolRow{" +
                "tipo='" + tipo + '\'' +
                ", nombre='" + nombre + '\'' +
                ", valor='" + valor + '\'' +
                ", longitud=" + longitud +
                '}';
    }
}
