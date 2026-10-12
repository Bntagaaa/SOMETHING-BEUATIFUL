package gnu.kawa.models;

import gnu.lists.FString;
import gnu.mapping.ThreadLocation;
import gnu.mapping.WrappedException;
import java.awt.Dimension;
import java.awt.geom.Dimension2D;

/* loaded from: classes2.dex */
public abstract class Display {
    public static ThreadLocation myDisplay = new ThreadLocation("my-display");

    public abstract void addBox(Box box, Object obj);

    public abstract void addButton(Button button, Object obj);

    public abstract void addImage(DrawImage drawImage, Object obj);

    public abstract void addLabel(Label label, Object obj);

    public abstract void addView(Object obj, Object obj2);

    public abstract Window makeWindow();

    public static Display getInstance() {
        String strSubstring;
        Object obj = myDisplay.get(null);
        if (obj instanceof Display) {
            return (Display) obj;
        }
        String string = obj == null ? "swing" : obj.toString();
        Class<?>[] clsArr = new Class[0];
        while (true) {
            int iIndexOf = string.indexOf(44);
            if (iIndexOf >= 0) {
                strSubstring = string.substring(iIndexOf + 1);
                string = string.substring(0, iIndexOf);
            } else {
                strSubstring = null;
            }
            if (string.equals("swing")) {
                string = "gnu.kawa.swingviews.SwingDisplay";
            } else if (string.equals("swt")) {
                string = "gnu.kawa.swtviews.SwtDisplay";
            } else if (string.equals("echo2")) {
                string = "gnu.kawa.echo2.Echo2Display";
            }
            try {
                return (Display) Class.forName(string).getDeclaredMethod("getInstance", clsArr).invoke(null, new Object[0]);
            } catch (ClassNotFoundException unused) {
                if (strSubstring == null) {
                    throw new RuntimeException("no display toolkit: " + obj);
                }
                string = strSubstring;
            } catch (Throwable th) {
                throw WrappedException.wrapIfNeeded(th);
            }
        }
    }

    public void addText(Text text, Object obj) {
        throw new Error("makeView called on Text");
    }

    public void addSpacer(Spacer spacer, Object obj) {
        throw new Error("makeView called on Spacer");
    }

    public static Dimension asDimension(Dimension2D dimension2D) {
        if ((dimension2D instanceof Dimension) || dimension2D == null) {
            return (Dimension) dimension2D;
        }
        return new Dimension((int) (dimension2D.getWidth() + 0.5d), (int) (dimension2D.getHeight() + 0.5d));
    }

    public Model coerceToModel(Object obj) {
        if ((obj instanceof FString) || (obj instanceof String)) {
            return new Label(obj.toString());
        }
        return (Model) obj;
    }
}
