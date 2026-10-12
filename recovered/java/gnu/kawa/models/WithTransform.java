package gnu.kawa.models;

import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;

/* loaded from: classes2.dex */
public class WithTransform implements Paintable {
    Paintable paintable;
    AffineTransform transform;

    public WithTransform(Paintable paintable, AffineTransform affineTransform) {
        this.paintable = paintable;
        this.transform = affineTransform;
    }

    @Override // gnu.kawa.models.Paintable
    public void paint(Graphics2D graphics2D) {
        AffineTransform transform = graphics2D.getTransform();
        try {
            graphics2D.transform(this.transform);
            this.paintable.paint(graphics2D);
        } finally {
            graphics2D.setTransform(transform);
        }
    }

    @Override // gnu.kawa.models.Paintable
    public Rectangle2D getBounds2D() {
        return this.transform.createTransformedShape(this.paintable.getBounds2D()).getBounds2D();
    }

    @Override // gnu.kawa.models.Paintable
    public Paintable transform(AffineTransform affineTransform) {
        AffineTransform affineTransform2 = new AffineTransform(this.transform);
        affineTransform2.concatenate(affineTransform);
        return new WithTransform(this.paintable, affineTransform2);
    }
}
