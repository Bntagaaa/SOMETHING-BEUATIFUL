package gnu.kawa.swingviews;

import gnu.kawa.models.Paintable;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import javax.swing.JPanel;

/* loaded from: classes2.dex */
public class SwingPaintable extends JPanel {
    Dimension dim;
    Paintable paintable;

    public SwingPaintable(Paintable paintable) {
        this.paintable = paintable;
        Rectangle2D bounds2D = paintable.getBounds2D();
        this.dim = new Dimension((int) Math.ceil(bounds2D.getWidth()), (int) Math.ceil(bounds2D.getHeight()));
    }

    public void paint(Graphics graphics) {
        this.paintable.paint((Graphics2D) graphics);
    }

    public Dimension getPreferredSize() {
        return this.dim;
    }
}
