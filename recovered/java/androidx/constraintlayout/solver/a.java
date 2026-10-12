package androidx.constraintlayout.solver;

/* loaded from: classes.dex */
final class a {

    /* renamed from: androidx.constraintlayout.solver.a$a, reason: collision with other inner class name */
    public interface InterfaceC0008a<T> {
        T acquire();

        boolean release(T t);

        void releaseAll(T[] tArr, int i);
    }

    private a() {
    }

    public static class b<T> implements InterfaceC0008a<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Object[] f703a = new Object[256];

        /* renamed from: b, reason: collision with root package name */
        public int f704b;

        @Override // androidx.constraintlayout.solver.a.InterfaceC0008a
        public T acquire() {
            int i = this.f704b;
            if (i <= 0) {
                return null;
            }
            int i2 = i - 1;
            Object[] objArr = this.f703a;
            T t = (T) objArr[i2];
            objArr[i2] = null;
            this.f704b = i - 1;
            return t;
        }

        @Override // androidx.constraintlayout.solver.a.InterfaceC0008a
        public boolean release(T t) {
            int i = this.f704b;
            Object[] objArr = this.f703a;
            if (i >= objArr.length) {
                return false;
            }
            objArr[i] = t;
            this.f704b = i + 1;
            return true;
        }

        @Override // androidx.constraintlayout.solver.a.InterfaceC0008a
        public void releaseAll(T[] tArr, int i) {
            if (i > tArr.length) {
                i = tArr.length;
            }
            for (int i2 = 0; i2 < i; i2++) {
                T t = tArr[i2];
                int i3 = this.f704b;
                Object[] objArr = this.f703a;
                if (i3 < objArr.length) {
                    objArr[i3] = t;
                    this.f704b = i3 + 1;
                }
            }
        }
    }
}
