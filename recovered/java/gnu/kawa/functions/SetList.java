package gnu.kawa.functions;

import gnu.bytecode.Type;
import gnu.mapping.Procedure2;
import gnu.mapping.Values;
import java.util.List;

/* loaded from: classes2.dex */
class SetList extends Procedure2 {
    Type elementType;
    List list;

    public SetList(List list) {
        this.list = list;
    }

    @Override // gnu.mapping.Procedure2, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) {
        this.list.set(((Number) obj).intValue(), obj2);
        return Values.empty;
    }
}
