package gnu.kawa.xml;

import _COROUTINE.a;
import gnu.bytecode.Type;
import gnu.kawa.reflect.OccurrenceType;

/* loaded from: classes2.dex */
public class NodeSetType extends OccurrenceType {
    public NodeSetType(Type type) {
        super(type, 0, -1);
    }

    public static Type getInstance(Type type) {
        return new NodeSetType(type);
    }

    @Override // gnu.kawa.reflect.OccurrenceType, gnu.bytecode.Type
    public String toString() {
        return a.m(new StringBuilder(), super.toString(), "node-set");
    }
}
