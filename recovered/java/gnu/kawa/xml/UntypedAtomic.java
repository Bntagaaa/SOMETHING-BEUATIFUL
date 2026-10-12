package gnu.kawa.xml;

/* loaded from: classes2.dex */
public class UntypedAtomic {
    String text;

    public String toString() {
        return this.text;
    }

    public UntypedAtomic(String str) {
        this.text = str;
    }

    public int hashCode() {
        return this.text.hashCode();
    }

    public boolean equals(Object obj) {
        return (obj instanceof UntypedAtomic) && this.text.equals(((UntypedAtomic) obj).text);
    }
}
