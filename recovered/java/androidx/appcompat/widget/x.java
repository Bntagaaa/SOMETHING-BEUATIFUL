package androidx.appcompat.widget;

/* loaded from: classes.dex */
class x {

    /* renamed from: a, reason: collision with root package name */
    public int f511a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f512b = 0;
    public int c = Integer.MIN_VALUE;
    public int d = Integer.MIN_VALUE;
    public int e = 0;
    public int f = 0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f513g = false;
    public boolean h = false;

    public int getLeft() {
        return this.f511a;
    }

    public int getRight() {
        return this.f512b;
    }

    public int getStart() {
        return this.f513g ? this.f512b : this.f511a;
    }

    public int getEnd() {
        return this.f513g ? this.f511a : this.f512b;
    }

    public void setRelative(int i, int i2) {
        this.c = i;
        this.d = i2;
        this.h = true;
        if (this.f513g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f511a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f512b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f511a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f512b = i2;
        }
    }

    public void setAbsolute(int i, int i2) {
        this.h = false;
        if (i != Integer.MIN_VALUE) {
            this.e = i;
            this.f511a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f = i2;
            this.f512b = i2;
        }
    }

    public void setDirection(boolean z) {
        if (z == this.f513g) {
            return;
        }
        this.f513g = z;
        if (!this.h) {
            this.f511a = this.e;
            this.f512b = this.f;
            return;
        }
        if (z) {
            int i = this.d;
            if (i == Integer.MIN_VALUE) {
                i = this.e;
            }
            this.f511a = i;
            int i2 = this.c;
            if (i2 == Integer.MIN_VALUE) {
                i2 = this.f;
            }
            this.f512b = i2;
            return;
        }
        int i3 = this.c;
        if (i3 == Integer.MIN_VALUE) {
            i3 = this.e;
        }
        this.f511a = i3;
        int i4 = this.d;
        if (i4 == Integer.MIN_VALUE) {
            i4 = this.f;
        }
        this.f512b = i4;
    }
}
