
package A3;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.swing.JOptionPane;

public class Usuario {
    private int id_usuario;
    private String nome_usuario;
    private String senha_usuario;
    private double gastos_essenciais;
    private double gastos_naoessenciais;
    private double gastos_totais;
    private double saldo_fixo;
    private double saldo_usuario;
    PreparedStatement ps5;
    ResultSet rs5;
    ConnectionFactory factory2 = new ConnectionFactory();
    LocalDateTime minhaData = LocalDateTime.now();
    DateTimeFormatter Mes = DateTimeFormatter.ofPattern("MMM");
    DateTimeFormatter Ano = DateTimeFormatter.ofPattern("yyyy");
    String formattedDate1 = minhaData.format(Ano);
    String formattedDate = minhaData.format(Mes);
    

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNome_usuario() {
        return nome_usuario;
    }

    public void setNome_usuario(String nome_usuario) {
        this.nome_usuario = nome_usuario;
    }

    public String getSenha_usuario() {
        return senha_usuario;
    }

    public void setSenha_usuario(String senha_usuario) {
        this.senha_usuario = senha_usuario;
    }

    public double getGastos_essenciais() {
        return gastos_essenciais;
    }

    public void setGastos_essenciais(double gastos_essenciais) {
        this.gastos_essenciais = gastos_essenciais;
    }

    public double getGastos_naoessenciais() {
        return gastos_naoessenciais;
    }

    public void setGastos_naoessenciais(double gastos_naoessenciais) {
        this.gastos_naoessenciais = gastos_naoessenciais;
    }

    public double getSaldo_usuario() {
        return saldo_usuario;
    }

    public void setSaldo_usuario(double saldo_usuario) {
        this.saldo_usuario = saldo_usuario;
    }
    
    
    public void cadastrar() throws SQLException{
        String sql = "insert into usuario(nome_usuario,senha_usuario) values(?,?)";
        ConnectionFactory factory = new ConnectionFactory();
        try(Connection con = factory.obtemConexao()){
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, getNome_usuario());
            ps.setString(2, getSenha_usuario());
            ps.execute();
            JOptionPane.showMessageDialog(null,"Cadastro Realizado com Sucesso");
            new TelaLoginUser().setVisible(true);
                
           
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        
        
    }
    public void login() throws SQLException{
        
        String sql = "select * from "+formattedDate+"tb where usuario_id= ?";
        ConnectionFactory factory = new ConnectionFactory();
        try(Connection con = factory.obtemConexao()){
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1,getId_usuario());
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                String sql1 = "select * from "+formattedDate+"tb where ano=? and usuario_id=?";
                PreparedStatement ps1 = con.prepareStatement(sql1);
                ps1.setInt(1, Integer.parseInt(formattedDate1));
                ps1.setInt(2,getId_usuario());
                ResultSet rs1 = ps1.executeQuery();
                if(rs1.next()){
                setSaldo_usuario(rs1.getDouble("saldo_flutuante"));
                setGastos_essenciais(rs1.getDouble("gasto_essencial"));
                setGastos_naoessenciais(rs1.getDouble("gasto_naoessencial"));
                setGastos_totais(rs1.getDouble("gastototal"));
                setSaldo_fixo(rs1.getDouble("saldo_inicial"));
                TelaPrincipal telaprincipal = new TelaPrincipal();
                telaprincipal.setTitle("Controle de Gastos");
                telaprincipal.setText(getNome_usuario(),getId_usuario(),getSaldo_usuario(),getGastos_essenciais(),
                getGastos_naoessenciais(),getGastos_totais());
                
                    
                } else{
                    String sql2 = "insert into "+formattedDate+"tb (usuario_id,data_gasto,mes,ano)values(?,now(),month(now()),?)";
                    PreparedStatement ps2 = con.prepareStatement(sql2);
                    ps2.setInt(1,getId_usuario());
                    ps2.setInt(2,Integer.parseInt(formattedDate1));
                    ps2.execute();  
                }
 
            } else{
                String sql3 = "insert into "+formattedDate+"tb (usuario_id,data_gasto,mes,ano)values(?,now(),month(now()),year(now()))";
                PreparedStatement ps3 = con.prepareStatement(sql3);
                ps3.setInt(1,getId_usuario());
                ps3.execute();
                
                
            }
                String sql4 = "select * from "+formattedDate+"tb where usuario_id=? and ano=?";
                PreparedStatement ps4 = con.prepareStatement(sql4);
                ps4.setInt(1,getId_usuario());
                ps4.setInt(2,Integer.parseInt(formattedDate1));
                ResultSet rs4 = ps.executeQuery();
                if(rs4.next()){
                setSaldo_usuario(rs4.getDouble("saldo_flutuante"));
                setGastos_essenciais(rs4.getDouble("gasto_essencial"));
                setGastos_naoessenciais(rs4.getDouble("gasto_naoessencial"));
                setGastos_totais(rs4.getDouble("gastototal"));
                setSaldo_fixo(rs4.getDouble("saldo_inicial"));
                TelaPrincipal telaprincipal = new TelaPrincipal();
                telaprincipal.show();
                telaprincipal.setText(getNome_usuario(),getId_usuario(),getSaldo_usuario(),getGastos_essenciais(),
                getGastos_naoessenciais(),getGastos_totais());
                
                }
                
            
            

            }catch(SQLException ex){
                ex.printStackTrace();
           
        } 
        }

    public double getGastos_totais() {
        return gastos_totais;
    }

    public void setGastos_totais(double gastos_totais) {
        this.gastos_totais = gastos_totais;
    }

    public double getSaldo_fixo() {
        return saldo_fixo;
    }

    public void setSaldo_fixo(double saldo_fixo) {
        this.saldo_fixo = saldo_fixo;
    }
    public void AdicionaSaldo()throws SQLException{

                String sql6 = "update "+formattedDate+"tb set saldo_inicial=? ,saldo_flutuante=? where usuario_id=? and ano=?";
                try(Connection con = factory2.obtemConexao()){
                    
                ps5 = con.prepareStatement(sql6);
                ps5.setDouble(1,getSaldo_fixo());
                ps5.setDouble(2,getSaldo_usuario());
                ps5.setInt(3,getId_usuario());
                ps5.setInt(4,Integer.parseInt(formattedDate1));
                JOptionPane.showMessageDialog(null,"Saldo Adicionado com Sucesso"+getSaldo_usuario());  
                ps5.execute();
                
            
        } catch(SQLException ex){
            ex.printStackTrace();
        }
    }
    public void AdicionaGastoEssencial()throws SQLException{
                String sql6 = "update "+formattedDate+"tb set saldo_flutuante=?,gasto_essencial=?,"
                        + "gastototal=? where usuario_id=? and ano=?";
                try(Connection con = factory2.obtemConexao()){
                    
                ps5 = con.prepareStatement(sql6);
                ps5.setDouble(1,getSaldo_usuario());
                ps5.setDouble(2,getGastos_essenciais());
                ps5.setDouble(3,getGastos_totais());
                ps5.setInt(4,getId_usuario());
                ps5.setInt(5,Integer.parseInt(formattedDate1));
                JOptionPane.showMessageDialog(null,"Gasto Essencial Adicionado com Sucesso"+getSaldo_usuario());  
                ps5.execute();
        
    } catch(SQLException ex){
            ex.printStackTrace();
        }
    }
    public void AdicionaGastoNaoEssencial()throws SQLException{
        String sql6 = "update "+formattedDate+"tb set saldo_flutuante=?,gasto_naoessencial=?,"
                        + "gastototal=? where usuario_id=? and ano=?";
                try(Connection con = factory2.obtemConexao()){
                    
                ps5 = con.prepareStatement(sql6);
                ps5.setDouble(1,getSaldo_usuario());
                ps5.setDouble(2,getGastos_naoessenciais());
                ps5.setDouble(3,getGastos_totais());
                ps5.setInt(4,getId_usuario());
                ps5.setInt(5,Integer.parseInt(formattedDate1));
                JOptionPane.showMessageDialog(null,"Gasto Não Essencial Adicionado com Sucesso"+getSaldo_usuario());  
                ps5.execute();
        
    } catch(SQLException ex){
            ex.printStackTrace();
        }
    }
    public void AdicionaDinheiro()throws SQLException{
        String sql7 = "update "+formattedDate+"tb set saldo_flutuante=? where usuario_id=? and ano=?";
        try(Connection con = factory2.obtemConexao()){
            ps5= con.prepareStatement(sql7);
            ps5.setDouble(1,getSaldo_usuario());
            ps5.setInt(2,getId_usuario());
            ps5.setInt(3,Integer.parseInt(formattedDate1));
            JOptionPane.showMessageDialog(null, "Dinheiro Adicionado com sucesso");
            ps5.execute();
        } catch(SQLException ex){
            ex.printStackTrace();
        }
    }

        
    }



    

