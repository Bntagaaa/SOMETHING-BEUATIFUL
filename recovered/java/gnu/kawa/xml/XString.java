package gnu.kawa.xml;

/* loaded from: classes2.dex */
public class XString implements CharSequence {
    public String text;
    private XStringType type;

    public XStringType getStringType() {
        return this.type;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.text.charAt(i);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.text.length();
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.text.substring(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.text;
    }

    public XString(String str, XStringType xStringType) {
        this.text = str;
        this.type = xStringType;
    }
}
