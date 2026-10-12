package kawa;

import gnu.lists.CharBuffer;
import gnu.mapping.OutPort;
import gnu.text.QueueReader;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import javax.swing.JTextPane;
import javax.swing.text.EditorKit;
import javax.swing.text.Element;
import javax.swing.text.MutableAttributeSet;

/* loaded from: classes2.dex */
public class ReplPane extends JTextPane implements KeyListener {
    ReplDocument document;
    public static final String ViewableElementName = "Viewable";
    public static final Object ViewableAttribute = new String(ViewableElementName);
    public static final String PaintableElementName = "Paintable";
    public static final Object PaintableAttribute = new String(PaintableElementName);

    public void keyReleased(KeyEvent keyEvent) {
    }

    public void keyTyped(KeyEvent keyEvent) {
    }

    public ReplPane(ReplDocument replDocument) {
        super(replDocument);
        this.document = replDocument;
        replDocument.pane = this;
        replDocument.paneCount++;
        addKeyListener(this);
        addFocusListener(replDocument);
        getEditorKit();
        setCaretPosition(replDocument.outputMark);
    }

    public EditorKit createDefaultEditorKit() {
        return new ReplEditorKit(this);
    }

    public void removeNotify() throws InterruptedException {
        super.removeNotify();
        ReplDocument replDocument = this.document;
        int i = replDocument.paneCount - 1;
        replDocument.paneCount = i;
        if (i == 0) {
            replDocument.close();
        }
    }

    public void enter() {
        String strSubstring;
        int caretPosition = getCaretPosition();
        CharBuffer charBuffer = this.document.content.buffer;
        int length = charBuffer.length();
        int i = length - 1;
        ReplDocument replDocument = this.document;
        replDocument.endMark = -1;
        if (caretPosition >= replDocument.outputMark) {
            int iIndexOf = charBuffer.indexOf(10, caretPosition);
            if (iIndexOf == i) {
                if (i <= this.document.outputMark || charBuffer.charAt(length - 2) != '\n') {
                    this.document.insertString(i, "\n", null);
                } else {
                    iIndexOf--;
                }
            }
            ReplDocument replDocument2 = this.document;
            replDocument2.endMark = iIndexOf;
            synchronized (replDocument2.in_r) {
                this.document.in_r.notifyAll();
            }
            if (caretPosition <= iIndexOf) {
                setCaretPosition(iIndexOf + 1);
                return;
            }
            return;
        }
        int iLastIndexOf = caretPosition == 0 ? 0 : charBuffer.lastIndexOf(10, caretPosition - 1) + 1;
        Element characterElement = this.document.getCharacterElement(iLastIndexOf);
        int iIndexOf2 = charBuffer.indexOf(10, caretPosition);
        if (characterElement.getAttributes().isEqual(ReplDocument.promptStyle)) {
            iLastIndexOf = characterElement.getEndOffset();
        }
        if (iIndexOf2 < 0) {
            strSubstring = charBuffer.substring(iLastIndexOf, i) + '\n';
        } else {
            strSubstring = charBuffer.substring(iLastIndexOf, iIndexOf2 + 1);
        }
        setCaretPosition(this.document.outputMark);
        this.document.write(strSubstring, ReplDocument.inputStyle);
        QueueReader queueReader = this.document.in_r;
        if (queueReader != null) {
            queueReader.append((CharSequence) strSubstring, 0, strSubstring.length());
        }
    }

    public MutableAttributeSet getInputAttributes() {
        return ReplDocument.inputStyle;
    }

    public void keyPressed(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 10) {
            enter();
            keyEvent.consume();
        }
    }

    public OutPort getStdout() {
        return this.document.out_stream;
    }

    public OutPort getStderr() {
        return this.document.err_stream;
    }
}
