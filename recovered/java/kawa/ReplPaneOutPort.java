package kawa;

import gnu.kawa.models.Paintable;
import gnu.kawa.models.Viewable;
import gnu.mapping.OutPort;
import gnu.text.Path;
import java.awt.Component;
import java.io.IOException;
import javax.swing.text.AttributeSet;
import javax.swing.text.MutableAttributeSet;
import javax.swing.text.SimpleAttributeSet;
import javax.swing.text.StyleConstants;

/* loaded from: classes2.dex */
public class ReplPaneOutPort extends OutPort {
    ReplDocument document;
    String str;
    AttributeSet style;
    TextPaneWriter tout;

    public ReplPaneOutPort(ReplDocument replDocument, String str, AttributeSet attributeSet) {
        this(new TextPaneWriter(replDocument, attributeSet), replDocument, str, attributeSet);
    }

    public ReplPaneOutPort(TextPaneWriter textPaneWriter, ReplDocument replDocument, String str, AttributeSet attributeSet) {
        super(textPaneWriter, true, true, Path.valueOf(str));
        this.str = "";
        this.tout = textPaneWriter;
        this.document = replDocument;
        this.style = attributeSet;
    }

    public void write(String str, MutableAttributeSet mutableAttributeSet) throws IOException {
        flush();
        this.document.write(str, mutableAttributeSet);
        setColumnNumber(1);
    }

    public synchronized void write(Component component) {
        SimpleAttributeSet simpleAttributeSet = new SimpleAttributeSet();
        StyleConstants.setComponent(simpleAttributeSet, component);
        write(" ", simpleAttributeSet);
    }

    @Override // gnu.mapping.OutPort, java.io.PrintWriter
    public void print(Object obj) throws IOException {
        if (obj instanceof Component) {
            write((Component) obj);
            return;
        }
        if (obj instanceof Paintable) {
            SimpleAttributeSet simpleAttributeSet = new SimpleAttributeSet();
            simpleAttributeSet.addAttribute("$ename", ReplPane.PaintableElementName);
            simpleAttributeSet.addAttribute(ReplPane.PaintableAttribute, obj);
            write(" ", simpleAttributeSet);
            return;
        }
        if (obj instanceof Viewable) {
            SimpleAttributeSet simpleAttributeSet2 = new SimpleAttributeSet();
            simpleAttributeSet2.addAttribute("$ename", ReplPane.ViewableElementName);
            simpleAttributeSet2.addAttribute(ReplPane.ViewableAttribute, obj);
            write(" ", simpleAttributeSet2);
            return;
        }
        super.print(obj);
    }
}
