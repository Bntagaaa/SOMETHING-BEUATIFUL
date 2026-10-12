package gnu.lists;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;

/* loaded from: classes2.dex */
public class Pair extends LList implements Externalizable {
    protected Object car;
    protected Object cdr;

    @Override // gnu.lists.LList, gnu.lists.AbstractSequence, gnu.lists.Sequence, java.util.List, java.util.Collection
    public boolean isEmpty() {
        return false;
    }

    @Override // gnu.lists.LList
    public Object readResolve() throws ObjectStreamException {
        return this;
    }

    public Pair(Object obj, Object obj2) {
        this.car = obj;
        this.cdr = obj2;
    }

    public Pair() {
    }

    public Object getCar() {
        return this.car;
    }

    public Object getCdr() {
        return this.cdr;
    }

    public void setCar(Object obj) {
        this.car = obj;
    }

    public void setCdr(Object obj) {
        this.cdr = obj;
    }

    public void setCdrBackdoor(Object obj) {
        this.cdr = obj;
    }

    @Override // gnu.lists.LList, gnu.lists.AbstractSequence, gnu.lists.Sequence, java.util.List, java.util.Collection, com.google.appinventor.components.runtime.util.YailObject
    public int size() {
        int iListLength = LList.listLength(this, true);
        if (iListLength >= 0) {
            return iListLength;
        }
        if (iListLength == -1) {
            return Integer.MAX_VALUE;
        }
        throw new RuntimeException("not a true list");
    }

    public int length() {
        int i = 0;
        Object obj = this;
        Object obj2 = obj;
        while (true) {
            LList lList = LList.Empty;
            if (obj == lList) {
                return i;
            }
            if (!(obj instanceof Pair)) {
                if (!(obj instanceof Sequence)) {
                    return -2;
                }
                int size = ((Sequence) obj).size();
                return size >= 0 ? i + size : size;
            }
            Object obj3 = ((Pair) obj).cdr;
            if (obj3 == lList) {
                return i + 1;
            }
            if (obj == obj2 && i > 0) {
                return -1;
            }
            if (!(obj3 instanceof Pair)) {
                i++;
                obj = obj3;
            } else {
                if (!(obj2 instanceof Pair)) {
                    return -2;
                }
                obj2 = ((Pair) obj2).cdr;
                obj = ((Pair) obj3).cdr;
                i += 2;
            }
        }
    }

    @Override // gnu.lists.LList, gnu.lists.AbstractSequence
    public boolean hasNext(int i) {
        if (i <= 0) {
            return i == 0;
        }
        return PositionManager.getPositionObject(i).hasNext();
    }

    @Override // gnu.lists.LList, gnu.lists.AbstractSequence
    public int nextPos(int i) {
        if (i <= 0) {
            if (i < 0) {
                return 0;
            }
            return PositionManager.manager.register(new LListPosition(this, 1, true));
        }
        if (((LListPosition) PositionManager.getPositionObject(i)).gotoNext()) {
            return i;
        }
        return 0;
    }

    @Override // gnu.lists.LList, gnu.lists.AbstractSequence
    public Object getPosNext(int i) {
        if (i <= 0) {
            return i == 0 ? this.car : Sequence.eofValue;
        }
        return PositionManager.getPositionObject(i).getNext();
    }

    @Override // gnu.lists.LList, gnu.lists.AbstractSequence
    public Object getPosPrevious(int i) {
        if (i <= 0) {
            return i == 0 ? Sequence.eofValue : lastPair().car;
        }
        return PositionManager.getPositionObject(i).getPrevious();
    }

    public final Pair lastPair() {
        Pair pair = this;
        while (true) {
            Object obj = pair.cdr;
            if (!(obj instanceof Pair)) {
                return pair;
            }
            pair = (Pair) obj;
        }
    }

    @Override // gnu.lists.AbstractSequence, java.util.List, java.util.Collection
    public int hashCode() {
        int iHashCode = 1;
        Object obj = this;
        while (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            Object obj2 = pair.car;
            iHashCode = (iHashCode * 31) + (obj2 == null ? 0 : obj2.hashCode());
            obj = pair.cdr;
        }
        return (obj == LList.Empty || obj == null) ? iHashCode : iHashCode ^ obj.hashCode();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0018, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean equals(gnu.lists.Pair r4, gnu.lists.Pair r5) {
        /*
            r0 = 1
            if (r4 != r5) goto L4
            return r0
        L4:
            r1 = 0
            if (r4 == 0) goto L38
            if (r5 != 0) goto La
            goto L38
        La:
            java.lang.Object r2 = r4.car
            java.lang.Object r3 = r5.car
            if (r2 == r3) goto L19
            if (r2 == 0) goto L18
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L19
        L18:
            return r1
        L19:
            java.lang.Object r4 = r4.cdr
            java.lang.Object r5 = r5.cdr
            if (r4 != r5) goto L20
            return r0
        L20:
            if (r4 == 0) goto L38
            if (r5 != 0) goto L25
            goto L38
        L25:
            boolean r2 = r4 instanceof gnu.lists.Pair
            if (r2 == 0) goto L33
            boolean r2 = r5 instanceof gnu.lists.Pair
            if (r2 != 0) goto L2e
            goto L33
        L2e:
            gnu.lists.Pair r4 = (gnu.lists.Pair) r4
            gnu.lists.Pair r5 = (gnu.lists.Pair) r5
            goto La
        L33:
            boolean r4 = r4.equals(r5)
            return r4
        L38:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.lists.Pair.equals(gnu.lists.Pair, gnu.lists.Pair):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x003e, code lost:
    
        return ((java.lang.Comparable) r5).compareTo((java.lang.Comparable) r6);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int compareTo(gnu.lists.Pair r5, gnu.lists.Pair r6) {
        /*
            r0 = 0
            if (r5 != r6) goto L4
            return r0
        L4:
            r1 = -1
            if (r5 != 0) goto L8
            return r1
        L8:
            r2 = 1
            if (r6 != 0) goto Lc
            return r2
        Lc:
            java.lang.Object r3 = r5.car
            java.lang.Object r4 = r6.car
            java.lang.Comparable r3 = (java.lang.Comparable) r3
            java.lang.Comparable r4 = (java.lang.Comparable) r4
            int r3 = r3.compareTo(r4)
            if (r3 == 0) goto L1b
            return r3
        L1b:
            java.lang.Object r5 = r5.cdr
            java.lang.Object r6 = r6.cdr
            if (r5 != r6) goto L22
            return r0
        L22:
            if (r5 != 0) goto L25
            return r1
        L25:
            if (r6 != 0) goto L28
            return r2
        L28:
            boolean r3 = r5 instanceof gnu.lists.Pair
            if (r3 == 0) goto L36
            boolean r3 = r6 instanceof gnu.lists.Pair
            if (r3 != 0) goto L31
            goto L36
        L31:
            gnu.lists.Pair r5 = (gnu.lists.Pair) r5
            gnu.lists.Pair r6 = (gnu.lists.Pair) r6
            goto Lc
        L36:
            java.lang.Comparable r5 = (java.lang.Comparable) r5
            java.lang.Comparable r6 = (java.lang.Comparable) r6
            int r5 = r5.compareTo(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.lists.Pair.compareTo(gnu.lists.Pair, gnu.lists.Pair):int");
    }

    @Override // gnu.lists.LList, java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj == LList.Empty) {
            return 1;
        }
        return compareTo(this, (Pair) obj);
    }

    @Override // gnu.lists.LList, gnu.lists.AbstractSequence
    public Object get(int i) {
        Pair pair = this;
        while (true) {
            if (i <= 0) {
                break;
            }
            i--;
            Object obj = pair.cdr;
            if (obj instanceof Pair) {
                pair = (Pair) obj;
            } else if (obj instanceof Sequence) {
                return ((Sequence) obj).get(i);
            }
        }
        if (i == 0) {
            return pair.car;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // gnu.lists.LList, gnu.lists.AbstractSequence, java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Pair)) {
            return false;
        }
        return equals(this, (Pair) obj);
    }

    public static Pair make(Object obj, Object obj2) {
        return new Pair(obj, obj2);
    }

    @Override // gnu.lists.AbstractSequence, java.util.List, java.util.Collection
    public Object[] toArray() {
        int size = size();
        Object[] objArr = new Object[size];
        int i = 0;
        Sequence sequence = this;
        while (i < size && (sequence instanceof Pair)) {
            Pair pair = (Pair) sequence;
            objArr[i] = pair.car;
            sequence = (Sequence) pair.cdr;
            i++;
        }
        for (int i2 = i; i2 < size; i2++) {
            objArr[i2] = sequence.get(i2 - i);
        }
        return objArr;
    }

    @Override // gnu.lists.AbstractSequence, java.util.List, java.util.Collection
    public Object[] toArray(Object[] objArr) {
        int length = objArr.length;
        int length2 = length();
        if (length2 > length) {
            objArr = new Object[length2];
            length = length2;
        }
        int i = 0;
        Sequence sequence = this;
        while (i < length2 && (sequence instanceof Pair)) {
            Pair pair = (Pair) sequence;
            objArr[i] = pair.car;
            sequence = (Sequence) pair.cdr;
            i++;
        }
        for (int i2 = i; i2 < length2; i2++) {
            objArr[i2] = sequence.get(i2 - i);
        }
        if (length2 < length) {
            objArr[length2] = null;
        }
        return objArr;
    }

    @Override // gnu.lists.LList, java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.car);
        objectOutput.writeObject(this.cdr);
    }

    @Override // gnu.lists.LList, java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.car = objectInput.readObject();
        this.cdr = objectInput.readObject();
    }
}
