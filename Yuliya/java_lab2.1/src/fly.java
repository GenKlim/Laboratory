
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.geom.AffineTransform;
import java.awt.image.AffineTransformOp;
import java.awt.image.BufferedImage;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class fly implements MouseListener
{
    private static final int step = 30;
    private final BufferedImage Image;
    private final BufferedImage Image_disable;
    private final JLabel label;
    private boolean active = true;
    private boolean isActivePero = false;
    private String trend = "Right";
    private int X;
    private int Y;

    public fly(JPanel owner, BufferedImage image, BufferedImage image_disable)
    {
        label = new JLabel();
        owner.add(label);
        
        Image = image;
        Image_disable = image_disable;
        X = (owner.getWidth() - Image.getWidth()) / 2;
        Y = (owner.getHeight() - Image.getHeight()) / 2;
        
        label.setBounds(X, Y, Image.getWidth(), Image.getHeight());
        label.setIcon(new ImageIcon(Image));
        label.addMouseListener(this);   //Пописываемся на события мыши
    }

    public void Eval(String command)  
    {
        if (!isActive())
            return;
        
        switch(command)
        {
            case "Step":
                Step();
                break;
            case "PenDown":
                isActivePero = false;
                break;
            case "PenUp":
                isActivePero = true;
                break;
            default:
                ChangeTrend(command);
                break;
        }
    }
    
    //Выполнение шага в заданном направлении
    public void Step()
    {
        switch (trend)
        {
            case "Right": X += step; break;
            case "Down": Y += step; break;
            case "Left": X -= step; break;
            case "Up": Y -= step; break;
        }
        label.setBounds(X, Y, Image.getWidth(), Image.getHeight());
    }

    public void ChangeTrend(String c)
    {
        int angie = 0;
        switch (c)
        {
            case "Right": angie=0; break;
            case "Down": angie=90; break;
            case "Left": angie=180; break;
            case "Up": angie=270; break;
        }
        
        BufferedImage img = isActive() ? Image : Image_disable; //Выбор нужной картинки (активная или нет)
        // Создаем фильтр
        AffineTransform transform = new AffineTransform();
        transform.rotate(Math.toRadians(angie), img.getWidth()/2, img.getHeight()/2);
        AffineTransformOp op = new AffineTransformOp(transform, AffineTransformOp.TYPE_BILINEAR);
        
        label.setIcon(new ImageIcon(op.filter(img, null))); //Запихиваем в jLabel картинку пропущенную через фильтр
        trend = c;
    }

    boolean isActive() {
        return active;
    }

    void setActive(boolean isActive)    //Меняет состояние
    {
        active = isActive;
        ChangeTrend(trend);
    }

    //Клик по мухе, меняем состояние
    @Override
    public void mouseClicked(MouseEvent e) {
        setActive(!isActive());
    }

    // Заглушки, интерфейс (MouseListener) должен быть реализован полностью
    
    @Override
    public void mousePressed(MouseEvent e) {
    }

    @Override
    public void mouseReleased(MouseEvent e) {
    }

    @Override
    public void mouseEntered(MouseEvent e) {
    }

    @Override
    public void mouseExited(MouseEvent e) {
    }
}