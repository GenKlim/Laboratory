/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab8;

import java.awt.*;
import javax.swing.*;
import javax.swing.Timer;
import java.awt.event.*;
import java.util.*;

public class NewJFrame extends javax.swing.JFrame
{
    // состояния, чтоб не запутся забиты в константы
    private static final int state_mine = -1;
    private static final int state_clear = 0;
    private static final int state_open = 100;  // чистая открытая клетка
    int N,M,Count,SelectCount;
    int time;
    int[][] Task;
    int[] dRow = {-1, -1, -1, 0, 1, 1, 1, 0, 0};
    int[] dCol = {-1, 0, 1, 1, 1, 0, -1, -1, 0};
    Timer timer;
    MouseListener labelMouseClickListener = new labelMouseClick();  // это луще записать в переменную, чтоб не создовать копии
    
    // просто хранит 2 числа, нужен для массива ниже
    class Point {
        int i,j;
        Point(int I, int J)
        {
            i = I;
            j = J;
        }
    }
    
    /*
        HashMap (ассоциативный массив)
        он по элементу интерфейса (JLabel) даст его координаты (Point)
        вообще это можно было и вычислить через позицию элемента на эране, но можно и так
    */
    HashMap<JLabel, Point> Positions;
    JLabel[][] Field;
    
    private class labelMouseClick extends MouseAdapter
    {
        @Override
        public void mouseClicked(MouseEvent e)
        {
            JLabel tmp = (JLabel)e.getSource();//определяем метку, для которой возникло событие
            if (e.getButton()== MouseEvent.BUTTON3 )//если нажата правая кнопка мыши
            {
                if (tmp.getIcon()==null)//если на метке нет флажка, ставим флажок
                {
                    mineTextField.setText(String.format("%03d", ++SelectCount));
                    tmp.setIcon(new ImageIcon(NewJFrame.class.getResource("flag.png")));
                    if(SelectCount == Count && checkSelect()) //Если отмечено достаточно мин и отметки верные
                        endGame(true); // Победа
                }
                else
                {
                    mineTextField.setText(String.format("%03d", --SelectCount));
                    tmp.setIcon(null);//убираем флажок
                }
            }
            else if (e.getButton()== MouseEvent.BUTTON1 )//если нажата левая кнопка мыши
            {
                Point pos = Positions.get(tmp);
                
                if (tmp.getIcon()!=null)
                {
                    mineTextField.setText(String.format("%03d", --SelectCount));
                    tmp.setIcon(null);//убираем флажок, если он был
                }
                
                switch(Task[pos.i][pos.j])
                {
                    case state_clear: // если клетка пустая
                        pingField(pos.i, pos.j); // открываем соседние клетки
                        break;
                    case state_mine:
                        endGame(false); // МИНА!
                        break;
                    case state_open:
                        break;
                    default:
                        tmp.setBorder(javax.swing.BorderFactory.createLineBorder(Color.LIGHT_GRAY));
                        tmp.setText(String.valueOf(Task[pos.i][pos.j]));
                        break;
                }
            }
        }
    }
    
    private void endGame(boolean isVictory)
    {
        if(isVictory)
            newGamebtn.setIcon(new ImageIcon(NewJFrame.class.getResource("state_vin.png")));
        else
            newGamebtn.setIcon(new ImageIcon(NewJFrame.class.getResource("state_rip.png")));
        
        timer.stop();
        
        //Отключение кнопок и установка мин, надеюсь понятно (это лямбда выражение)
        Positions.forEach((cell, pos)->
        {
            if(Task[pos.i][pos.j] == state_mine)
                cell.setIcon(new ImageIcon(NewJFrame.class.getResource("mine.png")));
            cell.removeMouseListener(labelMouseClickListener);
        });
    }
    
    // Перебор всех ячеек, проверка на корректность
    private boolean checkSelect()
    {
        int count = 0; //Привильные флажки
        for(Map.Entry<JLabel, Point> k : Positions.entrySet()) 
        {
            if(k.getKey().getIcon()!=null && Task[k.getValue().i][k.getValue().j] == state_mine) // если установлен флажок и там есть мина
                count++;
        }
        return count == Count;
    }
    
    // открывает свободные клетки
    private void pingField(int i, int j)
    {
        for (int k=0; k<9;k++)
        {
            int ii = i+dRow[k];
            int jj = j+dCol[k];
            if(ii < 0 || ii >= N || jj < 0 || jj >= M) // если вылезли за граници поля
                continue;
            
            Field[ii][jj].setBorder(javax.swing.BorderFactory.createLineBorder(Color.LIGHT_GRAY));
            
            if (Task[ii][jj]==state_clear)
            {
                Task[ii][jj] = state_open;
                pingField(ii, jj);
            }else
            {
                if(Task[ii][jj]!=state_open)
                    Field[ii][jj].setText(String.valueOf(Task[ii][jj]));
            }
        }
    }
    /**
     * Creates new form NewJFrame
     */
    public NewJFrame() {
        initComponents();
        newGamebtnActionPerformed(null);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        gameStatePanel = new javax.swing.JPanel();
        newGamebtn = new javax.swing.JButton();
        mineTextField = new javax.swing.JTextField();
        timeTextField = new javax.swing.JTextField();
        gamePanel = new javax.swing.JPanel();
        jMenuBar1 = new javax.swing.JMenuBar();
        jMenu1 = new javax.swing.JMenu();
        gameLavelMI = new javax.swing.JMenuItem();
        jSeparator1 = new javax.swing.JPopupMenu.Separator();
        jMenu3 = new javax.swing.JMenu();
        lowMI = new javax.swing.JRadioButtonMenuItem();
        midMI = new javax.swing.JRadioButtonMenuItem();
        highMI = new javax.swing.JRadioButtonMenuItem();
        jSeparator2 = new javax.swing.JPopupMenu.Separator();
        exitMI = new javax.swing.JMenuItem();
        jMenu2 = new javax.swing.JMenu();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        gameStatePanel.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        newGamebtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                newGamebtnActionPerformed(evt);
            }
        });

        mineTextField.setBackground(new java.awt.Color(0, 0, 0));
        mineTextField.setFont(new java.awt.Font("Trebuchet MS", 1, 18)); // NOI18N
        mineTextField.setForeground(new java.awt.Color(255, 51, 51));
        mineTextField.setText("000");

        timeTextField.setBackground(new java.awt.Color(0, 0, 0));
        timeTextField.setFont(new java.awt.Font("Trebuchet MS", 1, 18)); // NOI18N
        timeTextField.setForeground(new java.awt.Color(255, 51, 51));
        timeTextField.setText("000");

        javax.swing.GroupLayout gameStatePanelLayout = new javax.swing.GroupLayout(gameStatePanel);
        gameStatePanel.setLayout(gameStatePanelLayout);
        gameStatePanelLayout.setHorizontalGroup(
            gameStatePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(gameStatePanelLayout.createSequentialGroup()
                .addGap(28, 28, 28)
                .addComponent(mineTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 113, Short.MAX_VALUE)
                .addComponent(newGamebtn, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 104, Short.MAX_VALUE)
                .addComponent(timeTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(28, 28, 28))
        );
        gameStatePanelLayout.setVerticalGroup(
            gameStatePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(gameStatePanelLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(gameStatePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(gameStatePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(newGamebtn, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(mineTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(timeTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(18, Short.MAX_VALUE))
        );

        gamePanel.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        javax.swing.GroupLayout gamePanelLayout = new javax.swing.GroupLayout(gamePanel);
        gamePanel.setLayout(gamePanelLayout);
        gamePanelLayout.setHorizontalGroup(
            gamePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );
        gamePanelLayout.setVerticalGroup(
            gamePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 198, Short.MAX_VALUE)
        );

        jMenu1.setText("Игра");

        gameLavelMI.setText("Новая игра");
        gameLavelMI.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                newGamebtnActionPerformed(evt);
            }
        });
        jMenu1.add(gameLavelMI);
        jMenu1.add(jSeparator1);

        jMenu3.setText("Уровень сложности");

        buttonGroup1.add(lowMI);
        lowMI.setSelected(true);
        lowMI.setText("Новичок");
        lowMI.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                newGamebtnActionPerformed(evt);
            }
        });
        jMenu3.add(lowMI);

        buttonGroup1.add(midMI);
        midMI.setText("Любитель");
        midMI.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                newGamebtnActionPerformed(evt);
            }
        });
        jMenu3.add(midMI);

        buttonGroup1.add(highMI);
        highMI.setText("Профессионал");
        highMI.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                newGamebtnActionPerformed(evt);
            }
        });
        jMenu3.add(highMI);

        jMenu1.add(jMenu3);
        jMenu1.add(jSeparator2);

        exitMI.setText("Выход");
        exitMI.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                exitMIActionPerformed(evt);
            }
        });
        jMenu1.add(exitMI);

        jMenuBar1.add(jMenu1);

        jMenu2.setText("Справка");
        jMenuBar1.add(jMenu2);

        setJMenuBar(jMenuBar1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(gameStatePanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(gamePanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(gameStatePanel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(gamePanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void newGamebtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_newGamebtnActionPerformed
        if (lowMI.isSelected()){
            N=9;
            M=9;
            Count=2;
        }
        if (midMI.isSelected()){
            N=16;
            M=16;
            Count=40;   
        }
        if (highMI.isSelected()){
            N=16;
            M=30;
            Count=50;          
        }
        
        time = 0;
        if(timer == null)
            timer = new Timer(1000, e->timeTextField.setText(String.format("%03d", ++time)));
        timer.start();
        
        SelectCount = 0;
        mineTextField.setText("000");
        newGamebtn.setIcon(new ImageIcon(NewJFrame.class.getResource("state_normal.png")));
        
        fillTask();
        makeField();
    }//GEN-LAST:event_newGamebtnActionPerformed

    private void exitMIActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_exitMIActionPerformed
        dispose();
    }//GEN-LAST:event_exitMIActionPerformed

    private void fillTask()
    {
        Task = new int[N][M];
        for (int i=0; i<N; i++)
            for (int j=0; j<M;j++)
                Task[i][j]=state_clear;
        
        putMines();//процедура расстановки мин
        fillOtherCells();//процедура заполнения остальной части массива
    }
    
    private void putMines()
    {
        for (int k=0; k<Count;k++)
        {
            int x,y;
            do
            {
                 x=(int)(Math.random()*N);
                 y=(int)(Math.random()*M);
            }
            while (Task[x][y] != state_clear);
            Task[x][y] = state_mine;
        }
    }
    
    private void fillOtherCells()
    {
        for (int i=0; i<N;i++)
            for (int j=0; j<M; j++)
            {
                if (Task[i][j] != state_mine)
                    Task[i][j] = sumCells(i,j);
            }
    }
    
    private int sumCells(int i, int j)
    {
        int sum=0;
        for (int k=0; k<8;k++)
        {
            int ii = i+dRow[k];
            int jj = j+dCol[k];
            if(ii < 0 || ii >= N || jj < 0 || jj >= M) // если вылезли за граници поля
                continue;
            
            if (Task[ii][jj]==state_mine)
                sum++;
        }
        return sum;
    }
    
    private void makeField()
    {
        final int R = 25;
        
        Positions = new HashMap<>();
        Field = new JLabel[N][M];
        gamePanel.setSize(M*(R+2), N*(R+2));//изменяем размеры панели
        //задаем табличное расположение компонентов на панели
        gamePanel.setLayout(new GridLayout(N,M,1,1));
        gamePanel.removeAll(); // удаляем все с панели
        //изменяемразмерыформы
        this.setSize(gamePanel.getWidth(),gamePanel.getY()*2+gamePanel.getHeight()+5);
        for (int i=0; i<N;i++)
            for (int j=0;j<M;j++)
            {
                JLabel cell = new JLabel();//создаемметку
                cell.setSize(R,R);//задаемразмерыметки
                cell.setFont(new java.awt.Font("Arial", 1, 12));//задаем шрифт
                cell.setHorizontalAlignment(javax.swing.SwingConstants.CENTER); //устанавливаемвыравниваниепоцентру
                cell.setBorder(BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED)); //задаемрамку у метки
                cell.addMouseListener(labelMouseClickListener);
                Positions.put(cell, new Point(i, j));
                gamePanel.add(cell);//добавляем метку на панель
                Field[i][j] = cell;
            }
        
        gamePanel.revalidate();//перерисовываем панель
    }

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
            java.util.logging.Logger.getLogger(NewJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(NewJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(NewJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(NewJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new NewJFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JMenuItem exitMI;
    private javax.swing.JMenuItem gameLavelMI;
    private javax.swing.JPanel gamePanel;
    private javax.swing.JPanel gameStatePanel;
    private javax.swing.JRadioButtonMenuItem highMI;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenu jMenu2;
    private javax.swing.JMenu jMenu3;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JPopupMenu.Separator jSeparator1;
    private javax.swing.JPopupMenu.Separator jSeparator2;
    private javax.swing.JRadioButtonMenuItem lowMI;
    private javax.swing.JRadioButtonMenuItem midMI;
    private javax.swing.JTextField mineTextField;
    private javax.swing.JButton newGamebtn;
    private javax.swing.JTextField timeTextField;
    // End of variables declaration//GEN-END:variables
}
