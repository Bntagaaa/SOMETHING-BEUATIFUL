package gnu.kawa.swingviews;

import gnu.kawa.models.Box;
import gnu.kawa.models.Button;
import gnu.kawa.models.Display;
import gnu.kawa.models.DrawImage;
import gnu.kawa.models.Label;
import gnu.kawa.models.Model;
import gnu.kawa.models.Paintable;
import gnu.kawa.models.Spacer;
import gnu.kawa.models.Text;
import gnu.kawa.models.Window;
import gnu.mapping.Procedure;
import java.awt.Component;
import java.awt.Container;
import java.awt.event.ActionListener;
import java.util.WeakHashMap;
import javax.swing.Box;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.text.Document;
import javax.swing.text.PlainDocument;

/* loaded from: classes2.dex */
public class SwingDisplay extends Display {
    static final SwingDisplay instance = new SwingDisplay();
    private static WeakHashMap documents = null;

    public static Display getInstance() {
        return instance;
    }

    @Override // gnu.kawa.models.Display
    public Window makeWindow() {
        SwingFrame swingFrame = new SwingFrame(null, null, null);
        swingFrame.display = this;
        return swingFrame;
    }

    @Override // gnu.kawa.models.Display
    public void addButton(Button button, Object obj) {
        addView(new SwingButton(button), obj);
    }

    @Override // gnu.kawa.models.Display
    public void addLabel(Label label, Object obj) {
        addView(new SwingLabel(label), obj);
    }

    @Override // gnu.kawa.models.Display
    public void addImage(DrawImage drawImage, Object obj) {
        addView(new JLabel(new ImageIcon(drawImage.getImage())), obj);
    }

    @Override // gnu.kawa.models.Display
    public void addText(Text text, Object obj) {
        addView(new JTextField(getSwingDocument(text), text.getText(), 50), obj);
    }

    public static synchronized Document getSwingDocument(Text text) {
        try {
            if (documents == null) {
                documents = new WeakHashMap();
            }
            Object obj = documents.get(text);
            if (obj != null) {
                return (Document) obj;
            }
            PlainDocument plainDocument = new PlainDocument(new SwingContent(text.buffer));
            documents.put(text, plainDocument);
            return plainDocument;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // gnu.kawa.models.Display
    public void addBox(Box box, Object obj) {
        addView(new SwingBox(box, this), obj);
    }

    @Override // gnu.kawa.models.Display
    public void addSpacer(Spacer spacer, Object obj) {
        addView(new Box.Filler(spacer.getMinimumSize(), spacer.getPreferredSize(), spacer.getMaximumSize()), obj);
    }

    @Override // gnu.kawa.models.Display
    public void addView(Object obj, Object obj2) {
        ((Container) obj2).add((Component) obj);
    }

    public static ActionListener makeActionListener(Object obj) {
        if (obj instanceof ActionListener) {
            return (ActionListener) obj;
        }
        return new ProcActionListener((Procedure) obj);
    }

    @Override // gnu.kawa.models.Display
    public Model coerceToModel(Object obj) {
        if (obj instanceof Component) {
            return new ComponentModel((Component) obj);
        }
        if (obj instanceof Paintable) {
            return new ComponentModel(new SwingPaintable((Paintable) obj));
        }
        return super.coerceToModel(obj);
    }
}
