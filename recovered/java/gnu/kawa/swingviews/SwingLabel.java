package gnu.kawa.swingviews;

import com.google.appinventor.components.common.PropertyTypeConstants;
import gnu.kawa.models.Label;
import gnu.kawa.models.Model;
import gnu.kawa.models.ModelListener;
import javax.swing.JLabel;

/* loaded from: classes2.dex */
class SwingLabel extends JLabel implements ModelListener {
    Label model;

    public SwingLabel(Label label) {
        this.model = label;
        String text = label.getText();
        if (text != null) {
            super.setText(text);
        }
        label.addListener(this);
    }

    @Override // gnu.kawa.models.ModelListener
    public void modelUpdated(Model model, Object obj) {
        Label label;
        if (obj == PropertyTypeConstants.PROPERTY_TYPE_TEXT && model == (label = this.model)) {
            super.setText(label.getText());
        }
    }

    public void setText(String str) {
        Label label = this.model;
        if (label == null) {
            super.setText(str);
        } else {
            label.setText(str);
        }
    }
}
