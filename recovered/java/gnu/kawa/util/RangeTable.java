package gnu.kawa.util;

import java.util.Hashtable;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* loaded from: classes2.dex */
public class RangeTable implements Cloneable {
    Object[] index = new Object[128];
    Hashtable hash = new Hashtable(200);

    public Object lookup(int i, Object obj) {
        if ((i & WorkQueueKt.MASK) == i) {
            return this.index[i];
        }
        return this.hash.get(new Integer(i));
    }

    public void set(int i, int i2, Object obj) {
        if (i > i2) {
            return;
        }
        while (true) {
            if ((i & WorkQueueKt.MASK) == i) {
                this.index[i] = obj;
            } else {
                this.hash.put(new Integer(i), obj);
            }
            if (i == i2) {
                return;
            } else {
                i++;
            }
        }
    }

    public void set(int i, Object obj) {
        set(i, i, obj);
    }

    public void remove(int i, int i2) {
        if (i > i2) {
            return;
        }
        while (true) {
            if ((i & WorkQueueKt.MASK) == i) {
                this.index[i] = null;
            } else {
                this.hash.remove(new Integer(i));
            }
            if (i == i2) {
                return;
            } else {
                i++;
            }
        }
    }

    public void remove(int i) {
        remove(i, i);
    }

    public RangeTable copy() {
        RangeTable rangeTable = new RangeTable();
        rangeTable.index = (Object[]) this.index.clone();
        rangeTable.hash = (Hashtable) this.hash.clone();
        return rangeTable;
    }

    public Object clone() {
        return copy();
    }
}
