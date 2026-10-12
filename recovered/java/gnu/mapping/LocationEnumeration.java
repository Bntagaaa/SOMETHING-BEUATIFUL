package gnu.mapping;

import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public class LocationEnumeration implements Iterator<Location>, Enumeration<Location> {
    NamedLocation[] bindings;
    SimpleEnvironment env;
    int index;
    LocationEnumeration inherited;
    NamedLocation nextLoc;
    NamedLocation prevLoc;

    public LocationEnumeration(NamedLocation[] namedLocationArr, int i) {
        this.bindings = namedLocationArr;
        this.index = i;
    }

    public LocationEnumeration(SimpleEnvironment simpleEnvironment) {
        this(simpleEnvironment.table, 1 << simpleEnvironment.log2Size);
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        return this.env.hasMoreElements(this);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Enumeration
    public Location nextElement() {
        return nextLocation();
    }

    public Location nextLocation() {
        NamedLocation namedLocation;
        NamedLocation namedLocation2;
        if (this.nextLoc == null && !hasMoreElements()) {
            throw new NoSuchElementException();
        }
        if (this.prevLoc == null && this.nextLoc != (namedLocation2 = this.bindings[this.index])) {
            this.prevLoc = namedLocation2;
        }
        while (true) {
            NamedLocation namedLocation3 = this.prevLoc;
            if (namedLocation3 == null || (namedLocation = namedLocation3.next) == this.nextLoc) {
                break;
            }
            this.prevLoc = namedLocation;
        }
        NamedLocation namedLocation4 = this.nextLoc;
        this.nextLoc = namedLocation4.next;
        return namedLocation4;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return hasMoreElements();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public Location next() {
        return nextElement();
    }

    @Override // java.util.Iterator
    public void remove() {
        NamedLocation namedLocation = this.prevLoc;
        NamedLocation namedLocation2 = namedLocation != null ? namedLocation.next : this.bindings[this.index];
        if (namedLocation2 != null) {
            NamedLocation namedLocation3 = namedLocation2.next;
            NamedLocation namedLocation4 = this.nextLoc;
            if (namedLocation3 == namedLocation4) {
                namedLocation2.next = null;
                if (namedLocation != null) {
                    namedLocation.next = namedLocation4;
                } else {
                    this.bindings[this.index] = namedLocation4;
                }
                SimpleEnvironment simpleEnvironment = this.env;
                simpleEnvironment.num_bindings--;
                return;
            }
        }
        throw new IllegalStateException();
    }
}
