package gnu.bytecode;

/* loaded from: classes2.dex */
public class Location {
    protected String name;
    int name_index;
    int signature_index;
    protected Type type;

    public final String getName() {
        return this.name;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setName(int i, ConstantPool constantPool) {
        if (i <= 0) {
            this.name = null;
        } else {
            this.name = ((CpoolUtf8) constantPool.getForced(i, 1)).string;
        }
        this.name_index = i;
    }

    public final Type getType() {
        return this.type;
    }

    public final void setType(Type type) {
        this.type = type;
    }

    public final String getSignature() {
        return this.type.getSignature();
    }

    public void setSignature(int i, ConstantPool constantPool) {
        CpoolUtf8 cpoolUtf8 = (CpoolUtf8) constantPool.getForced(i, 1);
        this.signature_index = i;
        this.type = Type.signatureToType(cpoolUtf8.string);
    }
}
