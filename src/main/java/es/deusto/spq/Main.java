package es.deusto.spq;

/*public class Main {
    public static void main(String[] args) {
        ServerSocket server = null;
        Socket sc = null;

        DataInputStream in;
        DataOutputStream out;


        final int PORT = 5000;


        try {
            server = new ServerSocket(PORT);
            System.out.println("servidor iniciado");

            while(true) {
                sc = server.accept();

                in = new DataInputStream(sc.getInputStream());
                out = new DataOutputStream(sc.getOutputStream());

                String mensaje = in.readUTF();
                System.out.println(mensaje);

                out.writeUTF("Hola Mundo desde el servidor");
                sc.close();
                System.out.println("Cliente desconectado");
            

            }

        } catch (IOException e) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, e);
            e.printStackTrace();
        }

        
    }
    

    public static void crearJuego() {
        ArrayList<String> tipos = new ArrayList<>();
        ArrayList<String> regiones = new ArrayList<>();
        ArrayList<String> lateral = new ArrayList<>();
        ArrayList<String> arriba = new ArrayList<>();


        for (int i = 0; i < 3; i++) {
            int randomIndex = (int) (Math.random() * tipos.size());
            int randomLista = (int) (Math.random() * 2);
            String tipo = tipos.get(randomIndex);
            arriba.add(tipo);
            tipos.remove(randomIndex);
            if (randomLista == 0) {
                int randomTipo = (int) (Math.random() * tipos.size());
                String tipo1 = tipos.get(randomTipo);
                lateral.add(tipo1);
                tipos.remove(randomTipo);
            } else {
                int randomRegion = (int) (Math.random() * regiones.size());
                String region = regiones.get(randomRegion);
                lateral.add(region);
                regiones.remove(randomRegion);
            }
        }

        System.out.println("Arriba: " + arriba);
        System.out.println("Lateral: " + lateral);

        for (String arribaElement : arriba) {
            for (String lateralElement : lateral) {
                //List<String> listaPokemons = obtenerLista(arribaElement, lateralElement);
                //System.out.println(listaPokemons);
            }
        }


        
        // Rest of the code hd
    }

    /* 
    public static List<String> obtenerLista(String condicionArriba, String condicionLateral) {
        List<String> lista = new ArrayList<>();

        // Add your logic here to populate the list based on the conditions
        // For example:
        String sql;
        if (esRegion(condicionLateral)) {
            sql = "SELECT * FROM pokemon WHERE (tipo1 = ? OR tipo2 = ?) AND region = ?";
        } else {
            sql = "SELECT * FROM pokemon WHERE (tipo1 = ? AND tipo2 = ?) OR (tipo1 = ? AND tipo2 = ?)";
        }

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, condicionArriba);
            statement.setString(2, condicionArriba);
            statement.setString(3, condicionLateral);
            statement.setString(4, condicionLateral);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                // Process each row of the result set
                // For example:
                String nombre = resultSet.getString("nombre");
                int nivel = resultSet.getInt("nivel");
                // ...
                // Do something with the data
            }

            resultSet.close();
        } catch (SQLException e) {
            // Handle the exception
        }

        return lista;
    }

    private static boolean esRegion(String condicionLateral) {
        // Add your logic here to determine if the condition is a region
        // For example:
        return condicionLateral.equals("Kanto") || condicionLateral.equals("Johto");
    }
        String sql = "SELECT * FROM pokemon WHERE (tipo1 = ? AND tipo2 = ?) OR (tipo1 = ? AND tipo2 = ?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, condicionArriba);
        statement.setString(2, condicionLateral);
        statement.setString(3, condicionLateral);
        statement.setString(4, condicionArriba);
        ResultSet resultSet = statement.executeQuery();

        while (resultSet.next()) {
            // Process each row of the result set
            // For example:
            String nombre = resultSet.getString("nombre");
            int nivel = resultSet.getInt("nivel");
            // ...
            // Do something with the data
        }

        resultSet.close();
        statement.close();

        return lista;
    }
}
*/




