package gnu.mapping;

import gnu.lists.Consumer;
import gnu.lists.TreeList;
import gnu.text.Printable;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class Values extends TreeList implements Printable, Externalizable {
    public static final Values empty;
    public static final Object[] noArgs;

    static {
        Object[] objArr = new Object[0];
        noArgs = objArr;
        empty = new Values(objArr);
    }

    public Values() {
    }

    public Values(Object[] objArr) {
        for (Object obj : objArr) {
            writeObject(obj);
        }
    }

    public Object[] getValues() {
        return isEmpty() ? noArgs : toArray();
    }

    public static Object values(Object... objArr) {
        return make(objArr);
    }

    public static Values make() {
        return new Values();
    }

    public static Object make(Object[] objArr) {
        if (objArr.length == 1) {
            return objArr[0];
        }
        if (objArr.length == 0) {
            return empty;
        }
        return new Values(objArr);
    }

    public static Object make(List list) {
        int size = list == null ? 0 : list.size();
        if (size == 0) {
            return empty;
        }
        if (size == 1) {
            return list.get(0);
        }
        Values values = new Values();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            values.writeObject(it.next());
        }
        return values;
    }

    public static Object make(TreeList treeList) {
        return make(treeList, 0, treeList.data.length);
    }

    public static Object make(TreeList treeList, int i, int i2) {
        int iNextDataIndex;
        if (i == i2 || (iNextDataIndex = treeList.nextDataIndex(i)) <= 0) {
            return empty;
        }
        if (iNextDataIndex == i2 || treeList.nextDataIndex(iNextDataIndex) < 0) {
            return treeList.getPosNext(i << 1);
        }
        Values values = new Values();
        treeList.consumeIRange(i, i2, values);
        return values;
    }

    public final Object canonicalize() {
        if (this.gapEnd == this.data.length) {
            if (this.gapStart == 0) {
                return empty;
            }
            if (nextDataIndex(0) == this.gapStart) {
                return getPosNext(0);
            }
        }
        return this;
    }

    public Object call_with(Procedure procedure) throws Throwable {
        return procedure.applyN(toArray());
    }

    @Override // gnu.text.Printable
    public void print(Consumer consumer) {
        if (this == empty) {
            consumer.write("#!void");
            return;
        }
        int length = toArray().length;
        consumer.write("#<values");
        int i = 0;
        while (true) {
            int iNextDataIndex = nextDataIndex(i);
            if (iNextDataIndex >= 0) {
                consumer.write(32);
                int i2 = this.gapEnd;
                if (i >= i2) {
                    i -= i2 - this.gapStart;
                }
                Object posNext = getPosNext(i << 1);
                if (posNext instanceof Printable) {
                    ((Printable) posNext).print(consumer);
                } else {
                    consumer.writeObject(posNext);
                }
                i = iNextDataIndex;
            } else {
                consumer.write(62);
                return;
            }
        }
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        Object[] array = toArray();
        objectOutput.writeInt(array.length);
        for (Object obj : array) {
            objectOutput.writeObject(obj);
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        int i = objectInput.readInt();
        for (int i2 = 0; i2 < i; i2++) {
            writeObject(objectInput.readObject());
        }
    }

    public Object readResolve() throws ObjectStreamException {
        return isEmpty() ? empty : this;
    }

    public static int nextIndex(Object obj, int i) {
        if (obj instanceof Values) {
            return ((Values) obj).nextDataIndex(i);
        }
        return i == 0 ? 1 : -1;
    }

    public static Object nextValue(Object obj, int i) {
        if (!(obj instanceof Values)) {
            return obj;
        }
        Values values = (Values) obj;
        int i2 = values.gapEnd;
        if (i >= i2) {
            i -= i2 - values.gapStart;
        }
        return values.getPosNext(i << 1);
    }

    public static void writeValues(Object obj, Consumer consumer) {
        if (obj instanceof Values) {
            ((Values) obj).consume(consumer);
        } else {
            consumer.writeObject(obj);
        }
    }

    public static int countValues(Object obj) {
        if (obj instanceof Values) {
            return ((Values) obj).size();
        }
        return 1;
    }
}
