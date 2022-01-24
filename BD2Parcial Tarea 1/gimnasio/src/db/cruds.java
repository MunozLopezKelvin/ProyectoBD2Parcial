package db;

import vars.variables;
import java.sql.Connection;
import javax.swing.JOptionPane;
import java.sql.ResultSet;

public class cruds extends consql {

    java.sql.Statement st;
    ResultSet rs;
    variables var = new variables();
    
    public void insert(String NOMBRES_CLIENTE,String COD_MEMBRESIA,String CED_CLIENTE,String FECHA_REGISTRO_CLIENTE,
            String TELF_CLIENTE) {
        try {
            Connection conexion = conectar();
            st = conexion.createStatement();
            String sql = "insert into cliente(NOMBRES_CLIENTE,COD_MEMBRESIA,CED_CLIENTE,FECHA_REGISTRO_CLIENTE,TELF_CLIENTE) "
                    + "values('"+NOMBRES_CLIENTE+"','"+COD_MEMBRESIA+"','"+CED_CLIENTE+"','"+FECHA_REGISTRO_CLIENTE+"','"
                    + ""+TELF_CLIENTE+"');";
            st.execute(sql);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "El registro se guardo correctamente", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "El registro no se guardo " + e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    public void select(String CED_CLIENTE){
    try{
        Connection conexion=conectar();
        st=conexion.createStatement();
        String sql="select * from cliente where CED_CLIENTE='"+CED_CLIENTE+"';";
        rs=st.executeQuery(sql);
        if(rs.next()){
            var.setNOMBRES_CLIENTE(rs.getString("NOMBRES_CLIENTE"));
            var.setFECHA_REGISTRO_CLIENTE(rs.getString("FECHA_REGISTRO_CLIENTE"));
            var.setCOD_MEMBRESIA(rs.getString("COD_MEMBRESIA"));
            var.setTELF_CLIENTE(rs.getString("TELF_CLIENTE"));
            }else{
            var.setNOMBRES_CLIENTE(rs.getString(""));
            var.setFECHA_REGISTRO_CLIENTE(rs.getString(""));
            var.setCOD_MEMBRESIA(rs.getString(""));
            var.setTELF_CLIENTE(rs.getString(""));
            JOptionPane.showMessageDialog(null,"no se encontro registro","Sin registro",JOptionPane.INFORMATION_MESSAGE);
        }
        st.close();
        conexion.close();
    }catch (Exception e){
        JOptionPane.showMessageDialog(null,"Error en el sistema de busqueda, cédula no encontrada, verifique la cédula ingresada.",
                "Error busqueda",JOptionPane.ERROR_MESSAGE);
    }
    }
    
    
}

