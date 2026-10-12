package gnu.kawa.lispexpr;

/* loaded from: classes2.dex */
public class ReaderMisc extends ReadTableEntry {
    int kind;

    public ReaderMisc(int i) {
        this.kind = i;
    }

    @Override // gnu.kawa.lispexpr.ReadTableEntry
    public int getKind() {
        return this.kind;
    }
}
