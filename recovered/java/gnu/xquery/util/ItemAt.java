package gnu.xquery.util;

import gnu.mapping.Procedure2;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class ItemAt extends Procedure2 {
    public static final ItemAt itemAt = new ItemAt();

    public static Object itemAt(Object obj, int i) {
        if (!(obj instanceof Values)) {
            if (i == 1) {
                return obj;
            }
            throw new IndexOutOfBoundsException();
        }
        Values values = (Values) obj;
        if (values.isEmpty()) {
            return Values.empty;
        }
        return values.get(i - 1);
    }

    @Override // gnu.mapping.Procedure2, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) {
        return itemAt(obj, ((Number) obj2).intValue());
    }
}
