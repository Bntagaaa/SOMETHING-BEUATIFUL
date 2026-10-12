package kawa;

import gnu.expr.Language;
import gnu.expr.ModuleBody;
import gnu.kawa.swingviews.SwingContent;
import gnu.lists.CharBuffer;
import gnu.mapping.Environment;
import gnu.mapping.Future;
import gnu.mapping.Values;
import gnu.text.Path;
import gnu.text.QueueReader;
import java.awt.Color;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.util.ArrayList;
import javax.swing.JTextPane;
import javax.swing.SwingUtilities;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.text.AttributeSet;
import javax.swing.text.BadLocationException;
import javax.swing.text.DefaultStyledDocument;
import javax.swing.text.Style;
import javax.swing.text.StyleConstants;
import javax.swing.text.StyleContext;

/* loaded from: classes2.dex */
public class ReplDocument extends DefaultStyledDocument implements DocumentListener, FocusListener {
    static Style blueStyle;
    public static Style defaultStyle;
    public static Style inputStyle;
    static Style promptStyle;
    public static Style redStyle;
    public static StyleContext styles;
    Object closeListeners;
    SwingContent content;
    public int endMark;
    Environment environment;
    final ReplPaneOutPort err_stream;
    final GuiInPort in_p;
    final QueueReader in_r;
    Language language;
    int length;
    final ReplPaneOutPort out_stream;
    public int outputMark;
    JTextPane pane;
    int paneCount;
    Future thread;

    public interface DocumentCloseListener {
        void closed(ReplDocument replDocument);
    }

    static {
        StyleContext styleContext = new StyleContext();
        styles = styleContext;
        defaultStyle = styleContext.addStyle("default", (Style) null);
        inputStyle = styles.addStyle("input", (Style) null);
        redStyle = styles.addStyle("red", (Style) null);
        blueStyle = styles.addStyle("blue", (Style) null);
        promptStyle = styles.addStyle("prompt", (Style) null);
        StyleConstants.setForeground(redStyle, Color.red);
        StyleConstants.setForeground(blueStyle, Color.blue);
        StyleConstants.setForeground(promptStyle, Color.green);
        StyleConstants.setBold(inputStyle, true);
    }

    public ReplDocument(Language language, Environment environment, boolean z) {
        this(new SwingContent(), language, environment, z);
    }

    private ReplDocument(SwingContent swingContent, Language language, Environment environment, final boolean z) {
        super(swingContent, styles);
        this.outputMark = 0;
        this.endMark = -1;
        this.length = 0;
        this.content = swingContent;
        ModuleBody.exitIncrement();
        addDocumentListener(this);
        this.language = language;
        QueueReader queueReader = new QueueReader() { // from class: kawa.ReplDocument.1
            @Override // gnu.text.QueueReader
            public void checkAvailable() {
                ReplDocument.this.checkingPendingInput();
            }
        };
        this.in_r = queueReader;
        ReplPaneOutPort replPaneOutPort = new ReplPaneOutPort(this, "/dev/stdout", defaultStyle);
        this.out_stream = replPaneOutPort;
        ReplPaneOutPort replPaneOutPort2 = new ReplPaneOutPort(this, "/dev/stderr", redStyle);
        this.err_stream = replPaneOutPort2;
        GuiInPort guiInPort = new GuiInPort(queueReader, Path.valueOf("/dev/stdin"), replPaneOutPort, this);
        this.in_p = guiInPort;
        Future futureMake = Future.make(new repl(language) { // from class: kawa.ReplDocument.2
            @Override // kawa.repl, gnu.mapping.Procedure0or1, gnu.mapping.Procedure
            public Object apply0() {
                Environment current = Environment.getCurrent();
                if (z) {
                    current.setIndirectDefines();
                }
                ReplDocument.this.environment = current;
                Shell.run(this.language, current);
                SwingUtilities.invokeLater(new Runnable() { // from class: kawa.ReplDocument.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ReplDocument.this.fireDocumentClosed();
                    }
                });
                return Values.empty;
            }
        }, environment, guiInPort, replPaneOutPort, replPaneOutPort2);
        this.thread = futureMake;
        futureMake.start();
    }

    public synchronized void deleteOldText() {
        try {
            String text = getText(0, this.outputMark);
            int i = this.outputMark;
            remove(0, i <= 0 ? 0 : text.lastIndexOf(10, i - 1) + 1);
        } catch (BadLocationException e) {
            throw new Error((Throwable) e);
        }
    }

    public void insertString(int i, String str, AttributeSet attributeSet) {
        try {
            super.insertString(i, str, attributeSet);
        } catch (BadLocationException e) {
            throw new Error((Throwable) e);
        }
    }

    public void write(final String str, final AttributeSet attributeSet) {
        SwingUtilities.invokeLater(new Runnable() { // from class: kawa.ReplDocument.3
            @Override // java.lang.Runnable
            public void run() {
                JTextPane jTextPane = ReplDocument.this.pane;
                boolean z = jTextPane != null && jTextPane.getCaretPosition() == ReplDocument.this.outputMark;
                ReplDocument replDocument = ReplDocument.this;
                replDocument.insertString(replDocument.outputMark, str, attributeSet);
                int length = str.length();
                ReplDocument replDocument2 = ReplDocument.this;
                int i = replDocument2.outputMark + length;
                replDocument2.outputMark = i;
                if (z) {
                    replDocument2.pane.setCaretPosition(i);
                }
            }
        });
    }

    public void checkingPendingInput() {
        SwingUtilities.invokeLater(new Runnable() { // from class: kawa.ReplDocument.4
            @Override // java.lang.Runnable
            public void run() {
                ReplDocument replDocument = ReplDocument.this;
                int i = replDocument.outputMark;
                if (i <= replDocument.endMark) {
                    CharBuffer charBuffer = replDocument.content.buffer;
                    int iIndexOf = charBuffer.indexOf(10, i);
                    ReplDocument replDocument2 = ReplDocument.this;
                    if (iIndexOf == replDocument2.endMark) {
                        replDocument2.endMark = -1;
                    }
                    if (i == replDocument2.outputMark) {
                        replDocument2.outputMark = iIndexOf + 1;
                    }
                    QueueReader queueReader = replDocument2.in_r;
                    if (queueReader != null) {
                        synchronized (queueReader) {
                            ReplDocument.this.in_r.append((CharSequence) charBuffer, i, iIndexOf + 1);
                            ReplDocument.this.in_r.notifyAll();
                        }
                    }
                }
            }
        });
    }

    public void focusGained(FocusEvent focusEvent) {
        Object source = focusEvent.getSource();
        boolean z = source instanceof ReplPane;
        if (z) {
            this.pane = (ReplPane) source;
        } else {
            this.pane = null;
        }
        this.pane = z ? (ReplPane) source : null;
    }

    public void focusLost(FocusEvent focusEvent) {
        this.pane = null;
    }

    public void changedUpdate(DocumentEvent documentEvent) {
        textValueChanged(documentEvent);
    }

    public void insertUpdate(DocumentEvent documentEvent) {
        textValueChanged(documentEvent);
    }

    public void removeUpdate(DocumentEvent documentEvent) {
        textValueChanged(documentEvent);
    }

    public synchronized void textValueChanged(DocumentEvent documentEvent) {
        try {
            int offset = documentEvent.getOffset();
            int length = getLength();
            int i = this.length;
            int i2 = length - i;
            this.length = i + i2;
            int i3 = this.outputMark;
            if (offset < i3) {
                this.outputMark = i3 + i2;
            } else if (offset - i2 < i3) {
                this.outputMark = offset;
            }
            int i4 = this.endMark;
            if (i4 >= 0) {
                if (offset < i4) {
                    this.endMark = i4 + i2;
                } else if (offset - i2 < i4) {
                    this.endMark = offset;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void close() throws InterruptedException {
        this.in_r.appendEOF();
        try {
            Thread.sleep(100L);
        } catch (InterruptedException unused) {
        }
        this.thread.stop();
        fireDocumentClosed();
        ModuleBody.exitDecrement();
    }

    public void addDocumentCloseListener(DocumentCloseListener documentCloseListener) {
        ArrayList arrayList;
        Object obj = this.closeListeners;
        if (obj == null) {
            this.closeListeners = documentCloseListener;
            return;
        }
        if (obj instanceof ArrayList) {
            arrayList = (ArrayList) obj;
        } else {
            arrayList = new ArrayList(10);
            arrayList.add(this.closeListeners);
            this.closeListeners = arrayList;
        }
        arrayList.add(documentCloseListener);
    }

    public void removeDocumentCloseListener(DocumentCloseListener documentCloseListener) {
        Object obj = this.closeListeners;
        if (obj instanceof DocumentCloseListener) {
            if (obj == documentCloseListener) {
                this.closeListeners = null;
            }
        } else if (obj != null) {
            ArrayList arrayList = (ArrayList) obj;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                } else if (arrayList.get(size) == documentCloseListener) {
                    arrayList.remove(size);
                }
            }
            if (arrayList.size() == 0) {
                this.closeListeners = null;
            }
        }
    }

    public void fireDocumentClosed() {
        Object obj = this.closeListeners;
        if (obj instanceof DocumentCloseListener) {
            ((DocumentCloseListener) obj).closed(this);
            return;
        }
        if (obj == null) {
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                ((DocumentCloseListener) arrayList.get(size)).closed(this);
            }
        }
    }
}
