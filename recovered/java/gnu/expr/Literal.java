package gnu.expr;

import gnu.bytecode.Field;
import gnu.bytecode.Type;

/* loaded from: classes2.dex */
public class Literal {
    static final int CYCLIC = 4;
    static final int EMITTED = 8;
    static final int WRITING = 1;
    static final int WRITTEN = 2;
    public static final Literal nullLiteral = new Literal((Object) null, Type.nullType);
    Type[] argTypes;
    Object[] argValues;
    public Field field;
    public int flags;
    int index;
    Literal next;
    public Type type;
    Object value;

    public final Object getValue() {
        return this.value;
    }

    public void assign(LitTable litTable) {
        assign((String) null, litTable);
    }

    public void assign(String str, LitTable litTable) {
        int i = litTable.comp.immediate ? 9 : 24;
        if (str == null) {
            int i2 = litTable.literalsCount;
            litTable.literalsCount = i2 + 1;
            this.index = i2;
            str = "Lit" + this.index;
        } else {
            i |= 1;
        }
        assign(litTable.mainClass.addField(str, this.type, i), litTable);
    }

    public void assign(Field field, LitTable litTable) {
        this.next = litTable.literalsChain;
        litTable.literalsChain = this;
        this.field = field;
    }

    public Literal(Object obj, LitTable litTable) {
        this(obj, (String) null, litTable);
    }

    public Literal(Object obj, String str, LitTable litTable) {
        this.value = obj;
        litTable.literalTable.put(obj, this);
        this.type = Type.make(obj.getClass());
        assign(str, litTable);
    }

    public Literal(Object obj, Field field, LitTable litTable) {
        this.value = obj;
        litTable.literalTable.put(obj, this);
        this.field = field;
        this.type = field.getType();
        this.flags = 10;
    }

    public Literal(Object obj, Type type, LitTable litTable) {
        this.value = obj;
        litTable.literalTable.put(obj, this);
        this.type = type;
    }

    public Literal(Object obj, Type type) {
        this.value = obj;
        this.type = type;
    }
}
