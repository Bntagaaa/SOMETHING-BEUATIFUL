package gnu.kawa.swingviews;

import javax.swing.text.BadLocationException;
import javax.swing.undo.AbstractUndoableEdit;
import javax.swing.undo.CannotRedoException;
import javax.swing.undo.CannotUndoException;

/* loaded from: classes2.dex */
class GapUndoableEdit extends AbstractUndoableEdit {
    SwingContent content;
    String data;
    boolean isInsertion;
    int nitems;
    int startOffset;

    public GapUndoableEdit(int i) {
        this.startOffset = i;
    }

    private void doit(boolean z) throws BadLocationException {
        if (z) {
            this.content.insertString(this.startOffset, this.data);
        } else {
            this.content.remove(this.startOffset, this.nitems);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.swing.undo.CannotUndoException */
    public void undo() throws CannotUndoException {
        super.undo();
        try {
            doit(!this.isInsertion);
        } catch (BadLocationException unused) {
            throw new CannotUndoException();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.swing.undo.CannotRedoException */
    public void redo() throws CannotRedoException, CannotUndoException {
        super.redo();
        try {
            doit(this.isInsertion);
        } catch (BadLocationException unused) {
            throw new CannotRedoException();
        }
    }
}
