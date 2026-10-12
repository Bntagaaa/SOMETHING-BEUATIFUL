package kawa;

import gnu.kawa.models.Paintable;
import java.awt.Component;
import javax.swing.text.ComponentView;
import javax.swing.text.Element;
import javax.swing.text.StyledEditorKit;
import javax.swing.text.View;
import javax.swing.text.ViewFactory;

/* loaded from: classes2.dex */
class ReplEditorKit extends StyledEditorKit {
    ViewFactory factory;
    final ReplPane pane;
    ViewFactory styledFactory = super.getViewFactory();

    public ReplEditorKit(final ReplPane replPane) {
        this.pane = replPane;
        this.factory = new ViewFactory() { // from class: kawa.ReplEditorKit.1
            public View create(Element element) {
                String name = element.getName();
                if (name == ReplPane.ViewableElementName) {
                    return new ComponentView(element) { // from class: kawa.ReplEditorKit.1.1
                        public Component createComponent() {
                            throw null;
                        }
                    };
                }
                if (name == ReplPane.PaintableElementName) {
                    return new PaintableView(element, (Paintable) element.getAttributes().getAttribute(ReplPane.PaintableAttribute));
                }
                return ReplEditorKit.this.styledFactory.create(element);
            }
        };
    }

    public ViewFactory getViewFactory() {
        return this.factory;
    }
}
