package dictionary;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFileChooser;
import javax.swing.JList;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.event.ListSelectionEvent;
import javax.swing.filechooser.FileNameExtensionFilter;

public class InputForm extends javax.swing.JFrame
{
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
            
			// 3 - это размер n-грамма (т.е. в программе изсользуются 3-граммы, это оптимальный размер)
            Index.init(dictionary, 3);
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
        outputList = new javax.swing.JList<>();
        autoCheck = new javax.swing.JCheckBox();
        InfoBox = new javax.swing.JLabel();
        loadDictButton = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMaximumSize(new java.awt.Dimension(463, 254));
        setMinimumSize(new java.awt.Dimension(463, 254));
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

        outputBox.setViewportView(outputList);
        outputList.getAccessibleContext().setAccessibleName("");

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

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(outputBox)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(loadDictButton)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(InfoBox)
                        .addGap(0, 198, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(autoCheck))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(inputText)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(CheckButton)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
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
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(outputBox, javax.swing.GroupLayout.DEFAULT_SIZE, 153, Short.MAX_VALUE)
                .addContainerGap())
        );

        CheckButton.getAccessibleContext().setAccessibleName("CheckButton");

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

	//Проверка слова, поиск похожих
    private void CheckButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CheckButtonActionPerformed

        outputList.removeAll();	// Удаляем старое
        List<String> result = new ArrayList<>();

        String input = inputText.getText().toLowerCase();
        Set<Integer> Result = Index.Instance.search(input);	// Запрашиваем словарь

		// Переводим список индексов в список строк
        for(int index : Result)
        {
            String text = Index.Instance.getByIndex(index);

            if(text.equals(input))	//Если нашли точное совпадение, то не выводим похожие слова
                return;

            result.add(text);
        }

		//Выводим на экран
        outputList = new JList(result.toArray());
        outputList.setLayoutOrientation(JList.VERTICAL);
        outputList.addListSelectionListener((ListSelectionEvent e) -> {	// Привязка  событию к нажатия на элемент списка
            inputText.setText(outputList.getSelectedValue());	// Записываем в поле ввода выбранное слово
        });

        outputBox.setViewportView(outputList);
    }//GEN-LAST:event_CheckButtonActionPerformed

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
    private javax.swing.JButton loadDictButton;
    private javax.swing.JScrollPane outputBox;
    private javax.swing.JList<String> outputList;
    // End of variables declaration//GEN-END:variables
}
