package androidx.recyclerview.widget;

import androidx.core.util.Pools;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.s;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class a implements s.a {
    public final RecyclerView.f d;

    /* renamed from: a, reason: collision with root package name */
    public final Pools.SimplePool f2137a = new Pools.SimplePool(30);

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f2138b = new ArrayList();
    public final ArrayList c = new ArrayList();
    public int f = 0;
    public final s e = new s(this);

    /* renamed from: androidx.recyclerview.widget.a$a, reason: collision with other inner class name */
    public interface InterfaceC0031a {
        RecyclerView.ViewHolder findViewHolder(int i);

        void markViewHoldersUpdated(int i, int i2, Object obj);

        void offsetPositionsForAdd(int i, int i2);

        void offsetPositionsForMove(int i, int i2);

        void offsetPositionsForRemovingInvisible(int i, int i2);

        void offsetPositionsForRemovingLaidOutOrNewView(int i, int i2);

        void onDispatchFirstPass(b bVar);

        void onDispatchSecondPass(b bVar);
    }

    public a(RecyclerView.f fVar) {
        this.d = fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:183:0x0099 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i() {
        /*
            Method dump skipped, instructions count: 639
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.a.i():void");
    }

    public final void b() {
        ArrayList arrayList = this.c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.d.onDispatchSecondPass((b) arrayList.get(i));
        }
        j(arrayList);
        this.f = 0;
    }

    public final void d(b bVar) {
        int i;
        int i2 = bVar.f2139a;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iK = k(bVar.f2140b, i2);
        int i3 = bVar.f2140b;
        int i4 = bVar.f2139a;
        if (i4 == 2) {
            i = 0;
        } else {
            if (i4 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + bVar);
            }
            i = 1;
        }
        int i5 = 1;
        for (int i6 = 1; i6 < bVar.d; i6++) {
            int iK2 = k((i * i6) + bVar.f2140b, bVar.f2139a);
            int i7 = bVar.f2139a;
            if (i7 == 2 ? iK2 != iK : !(i7 == 4 && iK2 == iK + 1)) {
                b bVarObtainUpdateOp = obtainUpdateOp(i7, iK, i5, bVar.c);
                e(bVarObtainUpdateOp, i3);
                recycleUpdateOp(bVarObtainUpdateOp);
                if (bVar.f2139a == 4) {
                    i3 += i5;
                }
                iK = iK2;
                i5 = 1;
            } else {
                i5++;
            }
        }
        Object obj = bVar.c;
        recycleUpdateOp(bVar);
        if (i5 > 0) {
            b bVarObtainUpdateOp2 = obtainUpdateOp(bVar.f2139a, iK, i5, obj);
            e(bVarObtainUpdateOp2, i3);
            recycleUpdateOp(bVarObtainUpdateOp2);
        }
    }

    public final void e(b bVar, int i) {
        RecyclerView.f fVar = this.d;
        fVar.onDispatchFirstPass(bVar);
        int i2 = bVar.f2139a;
        if (i2 == 2) {
            fVar.offsetPositionsForRemovingInvisible(i, bVar.d);
        } else {
            if (i2 == 4) {
                fVar.markViewHoldersUpdated(i, bVar.d, bVar.c);
                return;
            }
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    public final int k(int i, int i2) {
        int i3;
        int i4;
        ArrayList arrayList = this.c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            b bVar = (b) arrayList.get(size);
            int i5 = bVar.f2139a;
            if (i5 == 8) {
                int i6 = bVar.f2140b;
                int i7 = bVar.d;
                if (i6 < i7) {
                    i4 = i6;
                    i3 = i7;
                } else {
                    i3 = i6;
                    i4 = i7;
                }
                if (i < i4 || i > i3) {
                    if (i < i6) {
                        if (i2 == 1) {
                            bVar.f2140b = i6 + 1;
                            bVar.d = i7 + 1;
                        } else if (i2 == 2) {
                            bVar.f2140b = i6 - 1;
                            bVar.d = i7 - 1;
                        }
                    }
                } else if (i4 == i6) {
                    if (i2 == 1) {
                        bVar.d = i7 + 1;
                    } else if (i2 == 2) {
                        bVar.d = i7 - 1;
                    }
                    i++;
                } else {
                    if (i2 == 1) {
                        bVar.f2140b = i6 + 1;
                    } else if (i2 == 2) {
                        bVar.f2140b = i6 - 1;
                    }
                    i--;
                }
            } else {
                int i8 = bVar.f2140b;
                if (i8 <= i) {
                    if (i5 == 1) {
                        i -= bVar.d;
                    } else if (i5 == 2) {
                        i += bVar.d;
                    }
                } else if (i2 == 1) {
                    bVar.f2140b = i8 + 1;
                } else if (i2 == 2) {
                    bVar.f2140b = i8 - 1;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            b bVar2 = (b) arrayList.get(size2);
            if (bVar2.f2139a == 8) {
                int i9 = bVar2.d;
                if (i9 == bVar2.f2140b || i9 < 0) {
                    arrayList.remove(size2);
                    recycleUpdateOp(bVar2);
                }
            } else if (bVar2.d <= 0) {
                arrayList.remove(size2);
                recycleUpdateOp(bVar2);
            }
        }
        return i;
    }

    public final boolean a(int i) {
        ArrayList arrayList = this.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = (b) arrayList.get(i2);
            int i3 = bVar.f2139a;
            if (i3 == 8) {
                if (f(bVar.d, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = bVar.f2140b;
                int i5 = bVar.d + i4;
                while (i4 < i5) {
                    if (f(i4, i2 + 1) == i) {
                        return true;
                    }
                    i4++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public final void h(b bVar) {
        this.c.add(bVar);
        int i = bVar.f2139a;
        RecyclerView.f fVar = this.d;
        if (i == 1) {
            fVar.offsetPositionsForAdd(bVar.f2140b, bVar.d);
            return;
        }
        if (i == 2) {
            fVar.offsetPositionsForRemovingLaidOutOrNewView(bVar.f2140b, bVar.d);
            return;
        }
        if (i == 4) {
            fVar.markViewHoldersUpdated(bVar.f2140b, bVar.d, bVar.c);
        } else if (i == 8) {
            fVar.offsetPositionsForMove(bVar.f2140b, bVar.d);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    public final boolean g() {
        return this.f2138b.size() > 0;
    }

    public final int f(int i, int i2) {
        ArrayList arrayList = this.c;
        int size = arrayList.size();
        while (i2 < size) {
            b bVar = (b) arrayList.get(i2);
            int i3 = bVar.f2139a;
            if (i3 == 8) {
                int i4 = bVar.f2140b;
                if (i4 == i) {
                    i = bVar.d;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (bVar.d <= i) {
                        i++;
                    }
                }
            } else {
                int i5 = bVar.f2140b;
                if (i5 > i) {
                    continue;
                } else if (i3 == 2) {
                    int i6 = bVar.d;
                    if (i < i5 + i6) {
                        return -1;
                    }
                    i -= i6;
                } else if (i3 == 1) {
                    i += bVar.d;
                }
            }
            i2++;
        }
        return i;
    }

    public final void c() {
        b();
        ArrayList arrayList = this.f2138b;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            b bVar = (b) arrayList.get(i);
            int i2 = bVar.f2139a;
            RecyclerView.f fVar = this.d;
            if (i2 == 1) {
                fVar.onDispatchSecondPass(bVar);
                fVar.offsetPositionsForAdd(bVar.f2140b, bVar.d);
            } else if (i2 == 2) {
                fVar.onDispatchSecondPass(bVar);
                fVar.offsetPositionsForRemovingInvisible(bVar.f2140b, bVar.d);
            } else if (i2 == 4) {
                fVar.onDispatchSecondPass(bVar);
                fVar.markViewHoldersUpdated(bVar.f2140b, bVar.d, bVar.c);
            } else if (i2 == 8) {
                fVar.onDispatchSecondPass(bVar);
                fVar.offsetPositionsForMove(bVar.f2140b, bVar.d);
            }
        }
        j(arrayList);
        this.f = 0;
    }

    public int applyPendingUpdatesToPosition(int i) {
        ArrayList arrayList = this.f2138b;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = (b) arrayList.get(i2);
            int i3 = bVar.f2139a;
            if (i3 != 1) {
                if (i3 == 2) {
                    int i4 = bVar.f2140b;
                    if (i4 <= i) {
                        int i5 = bVar.d;
                        if (i4 + i5 > i) {
                            return -1;
                        }
                        i -= i5;
                    } else {
                        continue;
                    }
                } else if (i3 == 8) {
                    int i6 = bVar.f2140b;
                    if (i6 == i) {
                        i = bVar.d;
                    } else {
                        if (i6 < i) {
                            i--;
                        }
                        if (bVar.d <= i) {
                            i++;
                        }
                    }
                }
            } else if (bVar.f2140b <= i) {
                i += bVar.d;
            }
        }
        return i;
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public int f2139a;

        /* renamed from: b, reason: collision with root package name */
        public int f2140b;
        public Object c;
        public int d;

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append("[");
            int i = this.f2139a;
            sb.append(i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add");
            sb.append(",s:");
            sb.append(this.f2140b);
            sb.append("c:");
            sb.append(this.d);
            sb.append(",p:");
            return _COROUTINE.a.l(sb, this.c, "]");
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            int i = this.f2139a;
            if (i != bVar.f2139a) {
                return false;
            }
            if (i == 8 && Math.abs(this.d - this.f2140b) == 1 && this.d == bVar.f2140b && this.f2140b == bVar.d) {
                return true;
            }
            if (this.d != bVar.d || this.f2140b != bVar.f2140b) {
                return false;
            }
            Object obj2 = this.c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.c)) {
                    return false;
                }
            } else if (bVar.c != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f2139a * 31) + this.f2140b) * 31) + this.d;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.s.a
    public b obtainUpdateOp(int i, int i2, int i3, Object obj) {
        b bVar = (b) this.f2137a.acquire();
        if (bVar == null) {
            b bVar2 = new b();
            bVar2.f2139a = i;
            bVar2.f2140b = i2;
            bVar2.d = i3;
            bVar2.c = obj;
            return bVar2;
        }
        bVar.f2139a = i;
        bVar.f2140b = i2;
        bVar.d = i3;
        bVar.c = obj;
        return bVar;
    }

    @Override // androidx.recyclerview.widget.s.a
    public void recycleUpdateOp(b bVar) {
        bVar.c = null;
        this.f2137a.release(bVar);
    }

    public final void j(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            recycleUpdateOp((b) arrayList.get(i));
        }
        arrayList.clear();
    }
}
