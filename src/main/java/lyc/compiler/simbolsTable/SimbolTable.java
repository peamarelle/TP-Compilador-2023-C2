package lyc.compiler.simbolsTable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SimbolTable {
  ArrayList<SimbolRow> simbols;
  private static SimbolTable simbolTable;
  
  // El constructor es privado, no permite que se genere un constructor por defecto.
  private SimbolTable() {
      this.simbols = new ArrayList<SimbolRow>(); 
      System.out.println("Inicializando Tabla de Simbolos");
  }

  public static SimbolTable getSingletonInstance() {
      if (simbolTable == null){
          simbolTable = new SimbolTable();
      }
      
      return simbolTable;
  }

  // Setter
  public void setSimbol(SimbolRow simbolRow) {

    boolean simbolDuplicated = this.simbols.stream()
              .filter(o -> o.getNombre().equals(simbolRow.getNombre()))
              .findFirst().isPresent();
    if(simbolDuplicated && simbolRow.getTipo() == "Id" ) {
      System.out.println("\nError: simbolo duplicado: '" + simbolRow.getNombre() + "'\n");
      System.exit(0);
    }
    this.simbols.add(simbolRow);
  }

  public List<SimbolRow> getListaSimbolos() {
    return this.simbols;
  }

  public void add(String nombre, DataType tipo, String valor, Integer longitud) {
    if (!isInTable(nombre)) {
        this.simbols.add(new SimbolRow(nombre, (tipo !=null ) ?tipo.toString(): null , valor, longitud));
    }
  }

  // public void add(String nombre, String tipo, String valor, Integer longitud) {
  //   if (!isInTable(nombre)) {
  //       this.simbols.add(new SimbolRow(nombre, tipo, valor, longitud));
  //   }
  // }

  public void addIdentifiers(ArrayList<String> identifiers, DataType dataType) {
    Iterator<String> i = identifiers.iterator();
    while (i.hasNext()) {
        // must be called before you can call i.remove()
        String id = i.next();
        if (!(isInTable(id))) {
            this.add(id, dataType, "?", null);
        } else {
            throw new Error("Error de sintaxis: la variable '" + id + "' ya habia sido declarada.");
        }
        // Remove identifier from list
        i.remove();
    }
}



public Boolean isInTable(String nombre) {
    return simbols.stream().anyMatch(symbol -> symbol.getNombre().equals(nombre));
}

  public void print() {
    System.out.println(
      String.format("%-20s%-20s%-20s%-20s\n", "NOMBRE", "TIPODATO", "VALOR", "LONGITUD"));
    
      for (SimbolRow row : simbols) {
        System.out.println(
        String.format("%-20s%-20s%-20s%-20s",
        row.getNombre(),
        row.getTipo(),
        row.getValor(),
        row.getLongitud() == null? "" : row.getLongitud()
        ));
      }
  }

  @Override
  public String toString() {
    String result = String.format("%-20s%-20s%-20s%-20s\n", "NOMBRE", "TIPODATO", "VALOR", "LONGITUD");
    for (SimbolRow row : simbols) {
      result += 
      String.format("%-20s%-20s%-20s%-20s\n",
      row.getTipo(),
      row.getNombre(),
      row.getValor(), row.getLongitud() == null? "" : row.getLongitud()
      );
    }
    return result;
  }


    public void setearTipoAIds (ArrayList<String>ele,String tipo){

        //SimbolRow = simbols.stream().anyMatch(symbol -> symbol.getNombre().equals(nombre));
        Iterator<String> i = ele.iterator();
        while (i.hasNext()) {
            //System.out.println("iterador"+i.next());
            SimbolRow t = new SimbolRow(i.next(),null,null,null);

            int indice = simbols.indexOf(t);
            simbols.get(indice).setTipo(tipo);
            System.out.println(simbols.get(indice).toString());
        }
    }
}


