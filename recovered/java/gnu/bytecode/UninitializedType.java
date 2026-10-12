package gnu.bytecode;

import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class UninitializedType extends ObjectType {
    ClassType ctype;
    Label label;

    public UninitializedType(ClassType classType) {
        super(classType.getName());
        setSignature(classType.getSignature());
        this.ctype = classType;
    }

    public UninitializedType(ClassType classType, Label label) {
        this(classType);
        this.label = label;
    }

    public static UninitializedType uninitializedThis(ClassType classType) {
        return new UninitializedType(classType);
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public Type getImplementationType() {
        return this.ctype;
    }

    @Override // gnu.bytecode.Type
    public String toString() {
        return "Uninitialized<" + this.ctype.getName() + Typography.greater;
    }
}
