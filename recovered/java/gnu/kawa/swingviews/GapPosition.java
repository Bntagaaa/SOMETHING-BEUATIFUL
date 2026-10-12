package gnu.kawa.swingviews;

import gnu.lists.CharBuffer;
import gnu.lists.SeqPosition;
import javax.swing.text.Position;

/* loaded from: classes2.dex */
class GapPosition extends SeqPosition implements Position {
    public GapPosition(CharBuffer charBuffer, int i) {
        super(charBuffer, i, i != 0);
    }

    public int getOffset() {
        return nextIndex();
    }
}
