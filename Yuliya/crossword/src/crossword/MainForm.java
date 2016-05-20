package crossword;

import javax.swing.*;
import java.awt.*;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.text.JTextComponent;
import javax.swing.JFileChooser;

public class MainForm extends JFrame
{
    private static final int cell_size = 21;//Размер ячейки
    private int SIZE = 0;//Размер поля

    public MainForm()
    {
        initComponents();

        while(SIZE <= 0 || SIZE > 15)
            SIZE = Integer.parseInt(JOptionPane.showInputDialog("Введите размер поля: (не более 15)"));
        
        init();
    }
    
    private void init()
    {
        conColloms.removeAll();
        conRows.removeAll();
        table.removeAll();
        
        for(int x = 0; x < SIZE; x++)
        {
            for(int y = 0; y < SIZE; y++)
            {
                JPanel cell = new JPanel();//Ячейки
                cell.setBackground(new java.awt.Color(0,0,0));//Цвет
                cell.setSize(cell_size, cell_size);//Размер
                cell.setLocation(x * (cell_size+2)+1, y * (cell_size+2)+1);//Позиция
                table.add(cell);
            }
            //Вертикальная полоса с условиями
            JTextField tb = new JTextField();
            tb.setHorizontalAlignment(SwingConstants.RIGHT);
            tb.setSize(conRows.getWidth(), cell_size+2);
            tb.setLocation(0, x * (cell_size+2));
            conRows.add(tb);
            //Горизонтальная полоса с условиями
            JTextArea ta = new JTextArea();
            ta.setSize(cell_size+2, conColloms.getHeight());
            ta.setLocation(x * (cell_size+2), 0);
            conColloms.add(ta);
        }

        btn_clear_click(null);
    }
	
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        table = new javax.swing.JPanel();
        conRows = new javax.swing.JPanel();
        conColloms = new javax.swing.JPanel();
        jPanel4 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setResizable(false);

        table.setBackground(new java.awt.Color(255, 255, 255));
        table.setBorder(javax.swing.BorderFactory.createEtchedBorder(java.awt.Color.white, java.awt.Color.black));
        table.setMaximumSize(new java.awt.Dimension(345, 345));
        table.setMinimumSize(new java.awt.Dimension(345, 345));
        table.setName("table"); // NOI18N
        table.setPreferredSize(new java.awt.Dimension(345, 345));

        javax.swing.GroupLayout tableLayout = new javax.swing.GroupLayout(table);
        table.setLayout(tableLayout);
        tableLayout.setHorizontalGroup(
            tableLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 341, Short.MAX_VALUE)
        );
        tableLayout.setVerticalGroup(
            tableLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 341, Short.MAX_VALUE)
        );

        conRows.setName("conRows"); // NOI18N

        javax.swing.GroupLayout conRowsLayout = new javax.swing.GroupLayout(conRows);
        conRows.setLayout(conRowsLayout);
        conRowsLayout.setHorizontalGroup(
            conRowsLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 147, Short.MAX_VALUE)
        );
        conRowsLayout.setVerticalGroup(
            conRowsLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );

        conColloms.setName("conColloms"); // NOI18N

        javax.swing.GroupLayout conCollomsLayout = new javax.swing.GroupLayout(conColloms);
        conColloms.setLayout(conCollomsLayout);
        conCollomsLayout.setHorizontalGroup(
            conCollomsLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );
        conCollomsLayout.setVerticalGroup(
            conCollomsLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 117, Short.MAX_VALUE)
        );

        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(""));

        jButton1.setText("Очистить");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_clear_click(evt);
            }
        });

        jButton2.setText("Решить");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_build_click(evt);
            }
        });

        jButton3.setText("Открыть");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 113, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 110, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 106, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jButton1, javax.swing.GroupLayout.DEFAULT_SIZE, 34, Short.MAX_VALUE)
            .addComponent(jButton2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jButton3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        jButton3.getAccessibleContext().setAccessibleName("Открыть");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(conRows, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(table, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(conColloms, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                    .addComponent(jPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(conColloms, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(table, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(conRows, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap(15, Short.MAX_VALUE))
        );

        table.getAccessibleContext().setAccessibleName("");

        pack();
    }// </editor-fold>//GEN-END:initComponents


    private void btn_build_click(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_build_click
        List<Automate> automatesHList = getAutomates(conRows, " ");//список автоматов для строк
        List<Automate> automatesVList = getAutomates(conColloms, "\n");//список автоматов для столбцов
        
        //список со списками состояний ячеек
        List<List<StatusObject>> mapH = new ArrayList<>();//По номеру строки и столбца
        List<List<StatusObject>> mapV = new ArrayList<>();//По номеру столбца и строки

        //цикл для заполнения клеток поля
        for(int x = 0; x < SIZE; x++)
        {
            List<StatusObject> row = new ArrayList<>();
            for(int y = 0; y < SIZE; y++)
                row.add(new StatusObject().setNone());
            mapH.add(row);
        }
        for(int y = 0; y < SIZE; y++)
        {
            List<StatusObject> coll = new ArrayList<>();
            for(int x = 0; x < SIZE; x++)
                coll.add(mapH.get(x).get(y));
            mapV.add(coll);
        }

        boolean notEnd = true;//переменная, которая определяет, есть ли ещё не заполненные ячейки
        

        while(notEnd)
        {
            boolean changed = false;//переменная, определяющая, изменена ли ячейка
            notEnd = false;

            for(int y = 0; y < SIZE; y++)
            {
                List<StatusObject> row = mapH.get(y);//Строка с ячейками
                Automate automateH = automatesHList.get(y);//Строка с автоматами
                for(int x = 0; x < SIZE; x++)
                {
                    StatusObject cell = row.get(x);//Ячейка
                    if(!cell.isNone())//если ячейка установлена, то её пропускаем
                        continue;

                    List<StatusObject> coll = mapV.get(x);//Столбец с ячейками
                    Automate automateV = automatesVList.get(x);//Столбец с автоматами

                    cell.setWhite();//Устанавливаем ячейку в белый цвет
                    boolean isWhite = automateH.IsValid(row) && automateV.IsValid(coll);//Проверяем строку и столбец на корректность
                    cell.setBalck();//Устанавливаем ячейку в черный цвет
                    boolean isBlack = automateH.IsValid(row) && automateV.IsValid(coll);//Проверяем строку и столбец на корректность


                    if(isWhite && !isBlack)
                    {
                        cell.setWhite();
                        changed = true;//Изменили яейку
                    } else if(!isWhite && isBlack)
                    {
                        cell.setBalck();
                        changed = true;//Изменили яейку
                    } else if(isWhite)
                    {
                        cell.setNone();
                        notEnd = true;//Есть еще не тронутые ячейки
                    } else
                    {
                        JOptionPane.showMessageDialog(this, "Ошибка! В условие найдено противоречие.");
                        return;
                    }
                }
            }
            if(notEnd && !changed)//Остались не тронутые ячейки, но за цикл не было произведенно изменений
            {

                JOptionPane.showMessageDialog(this, "Ошибка! Не нахожу решение.");
                return;
            }
        }

        int x = 0;
        int y = 0;
        for(Component c : table.getComponents())
        {
            c.setVisible(mapH.get(x).get(y).isWhite());
            x++;
            if(x == SIZE)
            {
                x = 0;
                y++;
            }
        }
    }//GEN-LAST:event_btn_build_click

    //метод для очистки панели
    private void btn_clear_click(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_clear_click
        for(Component comp1 : table.getComponents())
            comp1.setVisible(false);
        for(Component c : conRows.getComponents())
            ((JTextComponent) c).setText("");
        for(Component c : conColloms.getComponents())
            ((JTextComponent) c).setText("");
    }//GEN-LAST:event_btn_clear_click

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        JFileChooser openFile = new JFileChooser();//Диалоговое окно
       
        if(openFile.showOpenDialog(this) == JFileChooser.APPROVE_OPTION)//Если выбрали файл
        {
            btn_clear_click(null);//Отчистка полей
            try //Обработчик ошибок try/catch, он тут необходим
            {
                Path path = Paths.get(openFile.getSelectedFile().getPath());//Путь к файлу
                List<String> data = Files.readAllLines(path);//Читаем все строки из файла
                SIZE = Integer.parseInt(data.get(0));//Получаем размер (первое число в файле)
                init();//Пересоздаем панельки

                int index = 1;//Индекс строки в файле
                for(Component c : conRows.getComponents())//Перебрать все поля на горизонтальной панели
                {
                    //Преобразуем элемент к JTextComponent (текстовое поле) и записываем текст из нужной строки
                    ((JTextComponent) c).setText(data.get(index));
                    index++;
                }
                for(Component c : conColloms.getComponents())//Перебрать все поля на вертикальной панели
                {
                    String text = data.get(index).replace(' ', '\n');//В тексте заменяем пробелы на символы новой строки
                    ((JTextComponent) c).setText(text);
                    index++;
                }
            } catch (IOException ex) {//Обработчик ошибок, среда сама их пишет
                Logger.getLogger(MainForm.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }//GEN-LAST:event_jButton3ActionPerformed

    //Возвращает список автоматов
    private List<Automate> getAutomates(JPanel panel, String spliter)
    {
        List<Automate> automates = new ArrayList<>();
        for(Component c : panel.getComponents())
        {

            String[] text = ((JTextComponent) c).getText().split(spliter);
            List<Integer> row = new ArrayList<>();
            for(String s : text)
            {
                if(s.length()!=0)
                    row.add(Integer.parseInt(s));
            }
            automates.add(new Automate(row, SIZE));//Создаем автомат
        }
        return automates;
    }


    public static void main(String args[])
    {
        try
        {
            for(javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels())
            {
                if("Nimbus".equals(info.getName()))
                {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        }
        catch(ClassNotFoundException | InstantiationException | IllegalAccessException | javax.swing.UnsupportedLookAndFeelException ex)
        {
            java.util.logging.Logger.getLogger(MainForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        
        java.awt.EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                new MainForm().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel conColloms;
    private javax.swing.JPanel conRows;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel table;
    // End of variables declaration//GEN-END:variables
}
