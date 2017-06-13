package dictionary;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.DefaultListModel;
import javax.swing.JFileChooser;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.filechooser.FileNameExtensionFilter;

public class InputForm extends javax.swing.JFrame
{
    Index Index;    // Хранилище
    
    // Модули для поиска
    SearchNGam SearchNGam; 
    SearchBKTree SearchBKTree;
    SearchEQuery SearchEQuery;
    SearchHash SearchHash;
     
    public InputForm() {
        initComponents();	// Создание пользовательского интерфейса
        InitDictionary("lang.txt");	// Загрузка словаря по умолчанию
        
        // Привязка события изменения текста, для автоматической проверки
        inputText.getDocument().addDocumentListener(new DocumentListener() {
            @Override
            public void changedUpdate(DocumentEvent e) {
              CallAutoCheck();
            }
            @Override
            public void removeUpdate(DocumentEvent e) {
               CallAutoCheck();
            }
            @Override
            public void insertUpdate(DocumentEvent e) {
               CallAutoCheck();
            }
        });
    }
    
    // Если установлен флаг, то вызывает проверку
    private void CallAutoCheck()
    {
        if(autoCheck.isSelected())
            CheckButtonActionPerformed(null);
    }
    
    // Загружает словарь из файла
    private void InitDictionary(String fileName)
    {
        try {
            // Чтаем строки из файла
            List<String> dictionary = Files.readAllLines(Paths.get(fileName), StandardCharsets.UTF_8);
            
            Index = new Index(dictionary);
            
            // Создаем структуры для поиска
            SearchNGam = new SearchNGam(Index, 3); // 3 - это размер n-грамма (т.е. в программе изсользуются 3-граммы, это оптимальный размер)
            SearchBKTree = new SearchBKTree(Index, 2);
            SearchEQuery = new SearchEQuery(Index, 2);
            SearchHash = new SearchHash(Index, 2);
            
            InfoBox.setText(String.format("Загруженно %d слов", dictionary.size()));
            
        } catch (FileNotFoundException ex) {
            Logger.getLogger(InputForm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(InputForm.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    // Создание пользовательского интерфейса, создано автоматически
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        CheckButton = new javax.swing.JButton();
        inputText = new javax.swing.JTextField();
        outputBox = new javax.swing.JScrollPane();
        outputListM1 = new javax.swing.JList<>();
        autoCheck = new javax.swing.JCheckBox();
        InfoBox = new javax.swing.JLabel();
        loadDictButton = new javax.swing.JButton();
        outputBox1 = new javax.swing.JScrollPane();
        outputListM2 = new javax.swing.JList<>();
        outputBox2 = new javax.swing.JScrollPane();
        outputListM3 = new javax.swing.JList<>();
        outputBox3 = new javax.swing.JScrollPane();
        outputListM4 = new javax.swing.JList<>();
        label1 = new java.awt.Label();
        label2 = new java.awt.Label();
        label3 = new java.awt.Label();
        label4 = new java.awt.Label();
        timeLabel1 = new java.awt.Label();
        timeLabel2 = new java.awt.Label();
        timeLabel3 = new java.awt.Label();
        timeLabel4 = new java.awt.Label();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMaximumSize(new java.awt.Dimension(463, 254));
        setMinimumSize(new java.awt.Dimension(463, 254));
        setResizable(false);
        setSize(new java.awt.Dimension(463, 254));

        CheckButton.setText("Проверить");
        CheckButton.setToolTipText("");
        CheckButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CheckButtonActionPerformed(evt);
            }
        });

        inputText.setToolTipText("");
        inputText.setName("inputText"); // NOI18N

        outputListM1.setModel(new DefaultListModel());
        outputBox.setViewportView(outputListM1);
        outputListM1.getAccessibleContext().setAccessibleName("");

        autoCheck.setSelected(true);
        autoCheck.setText("Автоматическая проверка");
        autoCheck.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        autoCheck.setHorizontalTextPosition(javax.swing.SwingConstants.LEADING);

        InfoBox.setText("Словарь не загружен");

        loadDictButton.setText("Выбрать словарь");
        loadDictButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                loadDictButtonActionPerformed(evt);
            }
        });

        outputListM2.setModel( new DefaultListModel());
        outputBox1.setViewportView(outputListM2);

        outputListM3.setModel( new DefaultListModel());
        outputBox2.setViewportView(outputListM3);

        outputListM4.setModel( new DefaultListModel());
        outputBox3.setViewportView(outputListM4);

        label1.setText("BK деревья");

        label2.setText("N-грамм");

        label3.setText("Хеширование по сигнатуре");

        label4.setText("Расширение выборки");

        timeLabel1.setText("0");

        timeLabel2.setText("0");

        timeLabel3.setText("0");

        timeLabel4.setText("0");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(autoCheck))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(inputText)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(CheckButton))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(loadDictButton)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(InfoBox)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(outputBox, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                            .addComponent(label2, javax.swing.GroupLayout.DEFAULT_SIZE, 160, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(outputBox1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                            .addComponent(label1, javax.swing.GroupLayout.DEFAULT_SIZE, 156, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(label4, javax.swing.GroupLayout.DEFAULT_SIZE, 204, Short.MAX_VALUE)
                            .addComponent(outputBox2, javax.swing.GroupLayout.PREFERRED_SIZE, 201, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(0, 0, 0)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(label3, javax.swing.GroupLayout.PREFERRED_SIZE, 181, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(outputBox3, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(2, 2, 2))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(timeLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, 163, Short.MAX_VALUE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(timeLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, 158, Short.MAX_VALUE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(timeLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, 207, Short.MAX_VALUE)
                        .addGap(0, 0, 0)
                        .addComponent(timeLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 181, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(8, 8, 8)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(InfoBox)
                    .addComponent(loadDictButton))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(autoCheck)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(inputText, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(CheckButton))
                .addGap(6, 6, 6)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(label1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(label4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(label3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(0, 0, 0)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(outputBox3, javax.swing.GroupLayout.DEFAULT_SIZE, 186, Short.MAX_VALUE)
                            .addComponent(outputBox2)
                            .addComponent(outputBox1)
                            .addComponent(outputBox)))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(label2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addGap(8, 8, 8)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(timeLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(timeLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(timeLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(timeLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(1, 1, 1))
        );

        CheckButton.getAccessibleContext().setAccessibleName("CheckButton");

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    //Проверка слова, поиск похожих
    private void CheckButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CheckButtonActionPerformed
      
        String input = inputText.getText().toLowerCase();
        
        // Запускаем поиск
        Search(SearchNGam, outputListM1, input, timeLabel1);
        Search(SearchBKTree, outputListM2, input, timeLabel2);
        Search(SearchEQuery, outputListM3, input, timeLabel3);
        Search(SearchHash, outputListM4, input, timeLabel4);
    }//GEN-LAST:event_CheckButtonActionPerformed

    // Выполняет поиск указанным алгоритмом и заносит результыты в список
    void Search(SearchAlgoritm Algoritm, javax.swing.JList<String> OutputList, String input, java.awt.Label TimeLabel)
    {
        DefaultListModel model = (DefaultListModel)OutputList.getModel();
        model.removeAllElements(); // Удаляем старые результаты

        long timeout = System.nanoTime();
        Set<Integer> Result = Algoritm.search(input);	// Запрашиваем словарь
        TimeLabel.setText(String.valueOf(System.nanoTime() - timeout) + " ns");
        
        
        // Переводим список индексов в список строк
        for(int index : Result)
        {
            String text = Index.getByIndex(index);

            if(text.equals(input)) //Если нашли точное совпадение, то не выводим похожие слова
                return;

            model.addElement(text);
        }
    }
    
    //Загружает словарь из файла
    private void loadDictButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_loadDictButtonActionPerformed

        JFileChooser fileopen = new JFileChooser();
        fileopen.setFileFilter(new FileNameExtensionFilter("txt", "txt"));
        
        if(fileopen.showDialog(null, "Выбрать словарь") == JFileChooser.APPROVE_OPTION)
        {
            InitDictionary(fileopen.getSelectedFile().getAbsolutePath());
        }
    }//GEN-LAST:event_loadDictButtonActionPerformed

    // Точка входа, создано автоматически
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
            java.util.logging.Logger.getLogger(InputForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(InputForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(InputForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(InputForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new InputForm().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton CheckButton;
    private javax.swing.JLabel InfoBox;
    private javax.swing.JCheckBox autoCheck;
    private javax.swing.JTextField inputText;
    private java.awt.Label label1;
    private java.awt.Label label2;
    private java.awt.Label label3;
    private java.awt.Label label4;
    private javax.swing.JButton loadDictButton;
    private javax.swing.JScrollPane outputBox;
    private javax.swing.JScrollPane outputBox1;
    private javax.swing.JScrollPane outputBox2;
    private javax.swing.JScrollPane outputBox3;
    private javax.swing.JList<String> outputListM1;
    private javax.swing.JList<String> outputListM2;
    private javax.swing.JList<String> outputListM3;
    private javax.swing.JList<String> outputListM4;
    private java.awt.Label timeLabel1;
    private java.awt.Label timeLabel2;
    private java.awt.Label timeLabel3;
    private java.awt.Label timeLabel4;
    // End of variables declaration//GEN-END:variables
}
