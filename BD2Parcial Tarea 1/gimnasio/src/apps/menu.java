/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package apps;

/**
 *
 * @author Paul
 */
public class menu extends javax.swing.JFrame {

    /**
     * Creates new form menu
     */
    public menu() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        CURDGuardar = new javax.swing.JToggleButton();
        Transac1 = new javax.swing.JToggleButton();
        CRUDMostrar = new javax.swing.JToggleButton();
        Transac2 = new javax.swing.JToggleButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        CURDGuardar.setText("CRUD GUARDAR");
        CURDGuardar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CURDGuardarActionPerformed(evt);
            }
        });

        Transac1.setText("Transacción 1");
        Transac1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Transac1ActionPerformed(evt);
            }
        });

        CRUDMostrar.setText("CRUD MOSTRAR");
        CRUDMostrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CRUDMostrarActionPerformed(evt);
            }
        });

        Transac2.setText("Transacción 2");
        Transac2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Transac2ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(39, 39, 39)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(Transac1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(Transac2))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(CURDGuardar)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 89, Short.MAX_VALUE)
                        .addComponent(CRUDMostrar)))
                .addGap(30, 30, 30))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(45, 45, 45)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(CURDGuardar)
                    .addComponent(CRUDMostrar))
                .addGap(92, 92, 92)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(Transac1)
                    .addComponent(Transac2))
                .addContainerGap(113, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void CURDGuardarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CURDGuardarActionPerformed
       guardar guardar = new guardar();
       guardar.setVisible(true);
       guardar.setLocationRelativeTo(null);
       this.setVisible(false);
    }//GEN-LAST:event_CURDGuardarActionPerformed

    private void CRUDMostrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CRUDMostrarActionPerformed
       mostrar mostrar = new mostrar();
       mostrar.setVisible(true);
       mostrar.setLocationRelativeTo(null);
       this.setVisible(false);
    }//GEN-LAST:event_CRUDMostrarActionPerformed

    private void Transac2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Transac2ActionPerformed
       transac2 objtransac2 = new transac2();
       objtransac2.setVisible(true);
       objtransac2.setLocationRelativeTo(null);
       this.setVisible(false);
    }//GEN-LAST:event_Transac2ActionPerformed

    private void Transac1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Transac1ActionPerformed
       transac1 objtransac1 = new transac1();
       objtransac1.setVisible(true);
       objtransac1.setLocationRelativeTo(null);
       this.setVisible(false);
    }//GEN-LAST:event_Transac1ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new menu().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JToggleButton CRUDMostrar;
    private javax.swing.JToggleButton CURDGuardar;
    private javax.swing.JToggleButton Transac1;
    private javax.swing.JToggleButton Transac2;
    // End of variables declaration//GEN-END:variables
}
