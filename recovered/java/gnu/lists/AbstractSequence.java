package gnu.lists;

import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes2.dex */
public abstract class AbstractSequence {
    public int copyPos(int i) {
        return i;
    }

    public abstract int createPos(int i, boolean z);

    public int endPos() {
        return -1;
    }

    public int firstAttributePos(int i) {
        return 0;
    }

    public int firstChildPos(int i) {
        return 0;
    }

    public abstract Object get(int i);

    public Object getAttribute(int i) {
        return null;
    }

    public int getAttributeLength() {
        return 0;
    }

    public int getLowBound(int i) {
        return 0;
    }

    public String getNextTypeName(int i) {
        return null;
    }

    public Object getNextTypeObject(int i) {
        return null;
    }

    public boolean gotoAttributesStart(TreePosition treePosition) {
        return false;
    }

    public boolean isAfterPos(int i) {
        return (i & 1) != 0;
    }

    public int rank() {
        return 1;
    }

    public void releasePos(int i) {
    }

    public abstract int size();

    public int startPos() {
        return 0;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public int getEffectiveIndex(int[] iArr) {
        return iArr[0];
    }

    public Object get(int[] iArr) {
        return get(iArr[0]);
    }

    public Object set(int[] iArr, Object obj) {
        return set(iArr[0], obj);
    }

    public int getSize(int i) {
        if (i == 0) {
            return size();
        }
        return 1;
    }

    public RuntimeException unsupported(String str) {
        return unsupportedException(getClass().getName() + " does not implement " + str);
    }

    public static RuntimeException unsupportedException(String str) {
        return new UnsupportedOperationException(str);
    }

    public Object set(int i, Object obj) {
        throw unsupported("set");
    }

    public void fill(Object obj) {
        int iStartPos = startPos();
        while (true) {
            iStartPos = nextPos(iStartPos);
            if (iStartPos == 0) {
                return;
            } else {
                setPosPrevious(iStartPos, obj);
            }
        }
    }

    public void fillPosRange(int i, int i2, Object obj) {
        int iCopyPos = copyPos(i);
        while (compare(iCopyPos, i2) < 0) {
            setPosNext(iCopyPos, obj);
            iCopyPos = nextPos(iCopyPos);
        }
        releasePos(iCopyPos);
    }

    public void fill(int i, int i2, Object obj) {
        int iCreatePos = createPos(i, false);
        int iCreatePos2 = createPos(i2, true);
        while (compare(iCreatePos, iCreatePos2) < 0) {
            setPosNext(iCreatePos, obj);
            iCreatePos = nextPos(iCreatePos);
        }
        releasePos(iCreatePos);
        releasePos(iCreatePos2);
    }

    public int indexOf(Object obj) {
        int iStartPos = startPos();
        int i = 0;
        while (true) {
            iStartPos = nextPos(iStartPos);
            if (iStartPos == 0) {
                return -1;
            }
            Object posPrevious = getPosPrevious(iStartPos);
            if (obj == null) {
                if (posPrevious == null) {
                    break;
                }
                i++;
            } else {
                if (obj.equals(posPrevious)) {
                    break;
                }
                i++;
            }
        }
        releasePos(iStartPos);
        return i;
    }

    public int lastIndexOf(Object obj) {
        int size = size();
        while (true) {
            size--;
            if (size < 0) {
                return -1;
            }
            Object obj2 = get(size);
            if (obj == null) {
                if (obj2 == null) {
                    break;
                }
            } else if (obj.equals(obj2)) {
                break;
            }
        }
        return size;
    }

    public int nextMatching(int i, ItemPredicate itemPredicate, int i2, boolean z) {
        if (z) {
            throw unsupported("nextMatching with descend");
        }
        while (compare(i, i2) < 0) {
            i = nextPos(i);
            if (itemPredicate.isInstancePos(this, i)) {
                return i;
            }
        }
        return 0;
    }

    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    public boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final Enumeration elements() {
        return getIterator();
    }

    public final SeqPosition getIterator() {
        return getIterator(0);
    }

    public SeqPosition getIterator(int i) {
        return new SeqPosition(this, i, false);
    }

    public SeqPosition getIteratorAtPos(int i) {
        return new SeqPosition(this, copyPos(i));
    }

    public final Iterator iterator() {
        return getIterator();
    }

    public final ListIterator listIterator() {
        return getIterator(0);
    }

    public final ListIterator listIterator(int i) {
        return getIterator(i);
    }

    public int addPos(int i, Object obj) {
        throw unsupported("addPos");
    }

    public boolean add(Object obj) {
        addPos(endPos(), obj);
        return true;
    }

    public void add(int i, Object obj) {
        int iCreatePos = createPos(i, false);
        addPos(iCreatePos, obj);
        releasePos(iCreatePos);
    }

    public boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }

    public boolean addAll(int i, Collection collection) {
        boolean z = false;
        int iCreatePos = createPos(i, false);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            iCreatePos = addPos(iCreatePos, it.next());
            z = true;
        }
        releasePos(iCreatePos);
        return z;
    }

    public void removePos(int i, int i2) {
        int iCreateRelativePos = createRelativePos(i, i2, false);
        if (i2 >= 0) {
            removePosRange(i, iCreateRelativePos);
        } else {
            removePosRange(iCreateRelativePos, i);
        }
        releasePos(iCreateRelativePos);
    }

    public void removePosRange(int i, int i2) {
        throw unsupported("removePosRange");
    }

    public Object remove(int i) {
        if (i < 0 || i >= size()) {
            throw new IndexOutOfBoundsException();
        }
        int iCreatePos = createPos(i, false);
        Object posNext = getPosNext(iCreatePos);
        removePos(iCreatePos, 1);
        releasePos(iCreatePos);
        return posNext;
    }

    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        int iCreatePos = createPos(iIndexOf, false);
        removePos(iCreatePos, 1);
        releasePos(iCreatePos);
        return true;
    }

    public boolean removeAll(Collection collection) {
        int iStartPos = startPos();
        boolean z = false;
        while (true) {
            iStartPos = nextPos(iStartPos);
            if (iStartPos == 0) {
                return z;
            }
            if (collection.contains(getPosPrevious(iStartPos))) {
                removePos(iStartPos, -1);
                z = true;
            }
        }
    }

    public boolean retainAll(Collection collection) {
        int iStartPos = startPos();
        boolean z = false;
        while (true) {
            iStartPos = nextPos(iStartPos);
            if (iStartPos == 0) {
                return z;
            }
            if (!collection.contains(getPosPrevious(iStartPos))) {
                removePos(iStartPos, -1);
                z = true;
            }
        }
    }

    public void clear() {
        removePos(startPos(), endPos());
    }

    public int createRelativePos(int i, int i2, boolean z) {
        return createPos(nextIndex(i) + i2, z);
    }

    public int getIndexDifference(int i, int i2) {
        return nextIndex(i) - nextIndex(i2);
    }

    public int nextIndex(int i) {
        return getIndexDifference(i, startPos());
    }

    public int fromEndIndex(int i) {
        return size() - nextIndex(i);
    }

    public int getContainingSequenceSize(int i) {
        return size();
    }

    public boolean hasNext(int i) {
        return nextIndex(i) != size();
    }

    public int getNextKind(int i) {
        return hasNext(i) ? 32 : 0;
    }

    public boolean hasPrevious(int i) {
        return nextIndex(i) != 0;
    }

    public int nextPos(int i) {
        if (!hasNext(i)) {
            return 0;
        }
        int iCreateRelativePos = createRelativePos(i, 1, true);
        releasePos(i);
        return iCreateRelativePos;
    }

    public int previousPos(int i) {
        if (!hasPrevious(i)) {
            return 0;
        }
        int iCreateRelativePos = createRelativePos(i, -1, false);
        releasePos(i);
        return iCreateRelativePos;
    }

    public final boolean gotoChildrenStart(TreePosition treePosition) {
        int iFirstChildPos = firstChildPos(treePosition.getPos());
        if (iFirstChildPos == 0) {
            return false;
        }
        treePosition.push(this, iFirstChildPos);
        return true;
    }

    public int firstChildPos(int i, ItemPredicate itemPredicate) {
        int iFirstChildPos = firstChildPos(i);
        if (iFirstChildPos == 0) {
            return 0;
        }
        return itemPredicate.isInstancePos(this, iFirstChildPos) ? iFirstChildPos : nextMatching(iFirstChildPos, itemPredicate, endPos(), false);
    }

    public int parentPos(int i) {
        return endPos();
    }

    public boolean gotoParent(TreePosition treePosition) {
        if (treePosition.depth < 0) {
            return false;
        }
        treePosition.pop();
        return true;
    }

    public Object getPosNext(int i) {
        if (!hasNext(i)) {
            return Sequence.eofValue;
        }
        return get(nextIndex(i));
    }

    public Object getPosPrevious(int i) {
        int iNextIndex = nextIndex(i);
        if (iNextIndex <= 0) {
            return Sequence.eofValue;
        }
        return get(iNextIndex - 1);
    }

    public void setPosNext(int i, Object obj) {
        int iNextIndex = nextIndex(i);
        if (iNextIndex >= size()) {
            throw new IndexOutOfBoundsException();
        }
        set(iNextIndex, obj);
    }

    public void setPosPrevious(int i, Object obj) {
        int iNextIndex = nextIndex(i);
        if (iNextIndex == 0) {
            throw new IndexOutOfBoundsException();
        }
        set(iNextIndex - 1, obj);
    }

    public final int nextIndex(SeqPosition seqPosition) {
        return nextIndex(seqPosition.ipos);
    }

    public boolean equals(int i, int i2) {
        return compare(i, i2) == 0;
    }

    public int compare(int i, int i2) {
        int iNextIndex = nextIndex(i);
        int iNextIndex2 = nextIndex(i2);
        if (iNextIndex < iNextIndex2) {
            return -1;
        }
        return iNextIndex > iNextIndex2 ? 1 : 0;
    }

    public final int compare(SeqPosition seqPosition, SeqPosition seqPosition2) {
        return compare(seqPosition.ipos, seqPosition2.ipos);
    }

    public Object[] toArray() {
        Object[] objArr = new Object[size()];
        int iStartPos = startPos();
        int i = 0;
        while (true) {
            iStartPos = nextPos(iStartPos);
            if (iStartPos == 0) {
                return objArr;
            }
            objArr[i] = getPosPrevious(iStartPos);
            i++;
        }
    }

    public Object[] toArray(Object[] objArr) {
        int length = objArr.length;
        int size = size();
        if (size > length) {
            objArr = (Object[]) java.lang.reflect.Array.newInstance(objArr.getClass().getComponentType(), size);
            length = size;
        }
        int iStartPos = startPos();
        int i = 0;
        while (true) {
            iStartPos = nextPos(iStartPos);
            if (iStartPos == 0) {
                break;
            }
            objArr[i] = getPosPrevious(iStartPos);
            i++;
        }
        if (size < length) {
            objArr[size] = null;
        }
        return objArr;
    }

    public int stableCompare(AbstractSequence abstractSequence) {
        int iIdentityHashCode = System.identityHashCode(this);
        int iIdentityHashCode2 = System.identityHashCode(abstractSequence);
        if (iIdentityHashCode < iIdentityHashCode2) {
            return -1;
        }
        return iIdentityHashCode > iIdentityHashCode2 ? 1 : 0;
    }

    public static int compare(AbstractSequence abstractSequence, int i, AbstractSequence abstractSequence2, int i2) {
        if (abstractSequence == abstractSequence2) {
            return abstractSequence.compare(i, i2);
        }
        return abstractSequence.stableCompare(abstractSequence2);
    }

    public int hashCode() {
        int iStartPos = startPos();
        int iHashCode = 1;
        while (true) {
            iStartPos = nextPos(iStartPos);
            if (iStartPos == 0) {
                return iHashCode;
            }
            Object posPrevious = getPosPrevious(iStartPos);
            iHashCode = (iHashCode * 31) + (posPrevious == null ? 0 : posPrevious.hashCode());
        }
    }

    public boolean equals(Object obj) {
        if (!(this instanceof List) || !(obj instanceof List)) {
            return this == obj;
        }
        Iterator it = iterator();
        Iterator it2 = ((List) obj).iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (zHasNext != it2.hasNext()) {
                return false;
            }
            if (!zHasNext) {
                return true;
            }
            Object next = it.next();
            Object next2 = it2.next();
            if (next == null) {
                if (next2 != null) {
                    return false;
                }
            } else if (!next.equals(next2)) {
                return false;
            }
        }
    }

    public Sequence subSequence(SeqPosition seqPosition, SeqPosition seqPosition2) {
        return subSequencePos(seqPosition.ipos, seqPosition2.ipos);
    }

    public Sequence subSequencePos(int i, int i2) {
        return new SubSequence(this, i, i2);
    }

    public List subList(int i, int i2) {
        return subSequencePos(createPos(i, false), createPos(i2, true));
    }

    public boolean consumeNext(int i, Consumer consumer) {
        int iNextPos = nextPos(i);
        if (iNextPos == 0) {
            return false;
        }
        consumePosRange(i, iNextPos, consumer);
        return true;
    }

    public void consumePosRange(int i, int i2, Consumer consumer) {
        if (consumer.ignoring()) {
            return;
        }
        int iCopyPos = copyPos(i);
        while (!equals(iCopyPos, i2)) {
            if (!hasNext(iCopyPos)) {
                throw new RuntimeException();
            }
            consumer.writeObject(getPosNext(iCopyPos));
            iCopyPos = nextPos(iCopyPos);
        }
        releasePos(iCopyPos);
    }

    public void consume(Consumer consumer) {
        boolean z = this instanceof Sequence;
        if (z) {
            consumer.startElement("#sequence");
        }
        consumePosRange(startPos(), endPos(), consumer);
        if (z) {
            consumer.endElement();
        }
    }

    public void toString(String str, StringBuffer stringBuffer) {
        int iStartPos = startPos();
        boolean z = false;
        while (true) {
            iStartPos = nextPos(iStartPos);
            if (iStartPos == 0) {
                return;
            }
            if (z) {
                stringBuffer.append(str);
            } else {
                z = true;
            }
            stringBuffer.append(getPosPrevious(iStartPos));
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(100);
        boolean z = this instanceof Sequence;
        if (z) {
            stringBuffer.append('[');
        }
        toString(", ", stringBuffer);
        if (z) {
            stringBuffer.append(']');
        }
        return stringBuffer.toString();
    }
}
