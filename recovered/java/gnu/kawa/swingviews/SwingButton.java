package gnu.kawa.swingviews;

import com.google.appinventor.components.common.PropertyTypeConstants;
import gnu.kawa.models.Button;
import gnu.kawa.models.Model;
import gnu.kawa.models.ModelListener;
import java.awt.Color;
import javax.swing.JButton;

/* loaded from: classes2.dex */
public class SwingButton extends JButton implements ModelListener {
    Button model;

    public SwingButton(Button button) {
        super(button.getText());
        setModel(new SwModel(button));
        this.model = button;
        Object action = button.getAction();
        if (action != null) {
            addActionListener(SwingDisplay.makeActionListener(action));
        }
        button.addListener(this);
        Color foreground = button.getForeground();
        if (foreground != null) {
            super.setBackground(foreground);
        }
        Color background = button.getBackground();
        if (background != null) {
            super.setBackground(background);
        }
    }

    public void setText(String str) {
        Button button = this.model;
        if (button == null) {
            super.setText(str);
        } else {
            button.setText(str);
        }
    }

    public void setForeground(Color color) {
        Button button = this.model;
        if (button == null) {
            super.setForeground(color);
        } else {
            button.setForeground(color);
        }
    }

    public void setBackground(Color color) {
        Button button = this.model;
        if (button == null) {
            super.setBackground(color);
        } else {
            button.setBackground(color);
        }
    }

    @Override // gnu.kawa.models.ModelListener
    public void modelUpdated(Model model, Object obj) {
        Button button;
        Button button2;
        Button button3;
        if (obj == PropertyTypeConstants.PROPERTY_TYPE_TEXT && model == (button3 = this.model)) {
            super.setText(button3.getText());
            return;
        }
        if (obj == "foreground" && model == (button2 = this.model)) {
            super.setForeground(button2.getForeground());
        } else if (obj == "background" && model == (button = this.model)) {
            super.setBackground(button.getBackground());
        }
    }
}
