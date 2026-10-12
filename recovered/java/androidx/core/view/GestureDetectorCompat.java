package androidx.core.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class GestureDetectorCompat {

    /* renamed from: a, reason: collision with root package name */
    public final c f1291a;

    public interface a {
        boolean isLongpressEnabled();

        boolean onTouchEvent(MotionEvent motionEvent);

        void setIsLongpressEnabled(boolean z);

        void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener);
    }

    public static class b implements a {

        /* renamed from: a, reason: collision with root package name */
        public GestureDetector.OnDoubleTapListener f1292a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f1293b;
        public boolean c;
        public MotionEvent d;
        public MotionEvent e;
        public boolean f;

        /* renamed from: g, reason: collision with root package name */
        public float f1294g;
        public float h;
        public float i;
        public float j;
        public boolean k;
        public VelocityTracker l;

        static {
            ViewConfiguration.getTapTimeout();
            ViewConfiguration.getDoubleTapTimeout();
        }

        public class a extends Handler {
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i = message.what;
                throw null;
            }
        }

        @Override // androidx.core.view.GestureDetectorCompat.a
        public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.f1292a = onDoubleTapListener;
        }

        @Override // androidx.core.view.GestureDetectorCompat.a
        public void setIsLongpressEnabled(boolean z) {
            this.k = z;
        }

        @Override // androidx.core.view.GestureDetectorCompat.a
        public boolean isLongpressEnabled() {
            return this.k;
        }

        @Override // androidx.core.view.GestureDetectorCompat.a
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (this.l == null) {
                this.l = VelocityTracker.obtain();
            }
            this.l.addMovement(motionEvent);
            int i = action & 255;
            boolean z = i == 6;
            int actionIndex = z ? motionEvent.getActionIndex() : -1;
            int pointerCount = motionEvent.getPointerCount();
            float x = 0.0f;
            float y = 0.0f;
            for (int i2 = 0; i2 < pointerCount; i2++) {
                if (actionIndex != i2) {
                    x += motionEvent.getX(i2);
                    y += motionEvent.getY(i2);
                }
            }
            float f = z ? pointerCount - 1 : pointerCount;
            float f2 = x / f;
            float f3 = y / f;
            if (i == 0) {
                if (this.f1292a != null) {
                    throw null;
                }
                this.f1294g = f2;
                this.i = f2;
                this.h = f3;
                this.j = f3;
                MotionEvent motionEvent2 = this.d;
                if (motionEvent2 != null) {
                    motionEvent2.recycle();
                }
                MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                this.d = motionEventObtain;
                this.c = true;
                this.f1293b = false;
                if (this.k) {
                    throw null;
                }
                motionEventObtain.getDownTime();
                throw null;
            }
            if (i == 1) {
                MotionEvent motionEventObtain2 = MotionEvent.obtain(motionEvent);
                if (this.f) {
                    this.f1292a.onDoubleTapEvent(motionEvent);
                } else {
                    if (this.f1293b || this.c) {
                        throw null;
                    }
                    VelocityTracker velocityTracker = this.l;
                    int pointerId = motionEvent.getPointerId(0);
                    float f4 = 0;
                    velocityTracker.computeCurrentVelocity(1000, f4);
                    float yVelocity = velocityTracker.getYVelocity(pointerId);
                    float xVelocity = velocityTracker.getXVelocity(pointerId);
                    if (Math.abs(yVelocity) > f4 || Math.abs(xVelocity) > f4) {
                        throw null;
                    }
                }
                MotionEvent motionEvent3 = this.e;
                if (motionEvent3 != null) {
                    motionEvent3.recycle();
                }
                this.e = motionEventObtain2;
                VelocityTracker velocityTracker2 = this.l;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.l = null;
                }
                this.f = false;
                throw null;
            }
            if (i != 2) {
                if (i == 3) {
                    throw null;
                }
                if (i == 5) {
                    this.f1294g = f2;
                    this.i = f2;
                    this.h = f3;
                    this.j = f3;
                    throw null;
                }
                if (i == 6) {
                    this.f1294g = f2;
                    this.i = f2;
                    this.h = f3;
                    this.j = f3;
                    this.l.computeCurrentVelocity(1000, 0);
                    int actionIndex2 = motionEvent.getActionIndex();
                    int pointerId2 = motionEvent.getPointerId(actionIndex2);
                    float xVelocity2 = this.l.getXVelocity(pointerId2);
                    float yVelocity2 = this.l.getYVelocity(pointerId2);
                    for (int i3 = 0; i3 < pointerCount; i3++) {
                        if (i3 != actionIndex2) {
                            int pointerId3 = motionEvent.getPointerId(i3);
                            if ((this.l.getYVelocity(pointerId3) * yVelocity2) + (this.l.getXVelocity(pointerId3) * xVelocity2) < 0.0f) {
                                this.l.clear();
                                return false;
                            }
                        }
                    }
                }
            } else if (!this.f1293b) {
                float f5 = this.f1294g - f2;
                float f6 = this.h - f3;
                if (this.f) {
                    return this.f1292a.onDoubleTapEvent(motionEvent);
                }
                if (this.c) {
                    int i4 = (int) (f2 - this.i);
                    int i5 = (int) (f3 - this.j);
                    if ((i5 * i5) + (i4 * i4) <= 0) {
                        return false;
                    }
                    throw null;
                }
                if (Math.abs(f5) >= 1.0f || Math.abs(f6) >= 1.0f) {
                    throw null;
                }
            }
            return false;
        }
    }

    public static class c implements a {

        /* renamed from: a, reason: collision with root package name */
        public final GestureDetector f1295a;

        public c(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            this.f1295a = new GestureDetector(context, onGestureListener, handler);
        }

        @Override // androidx.core.view.GestureDetectorCompat.a
        public boolean isLongpressEnabled() {
            return this.f1295a.isLongpressEnabled();
        }

        @Override // androidx.core.view.GestureDetectorCompat.a
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return this.f1295a.onTouchEvent(motionEvent);
        }

        @Override // androidx.core.view.GestureDetectorCompat.a
        public void setIsLongpressEnabled(boolean z) {
            this.f1295a.setIsLongpressEnabled(z);
        }

        @Override // androidx.core.view.GestureDetectorCompat.a
        public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.f1295a.setOnDoubleTapListener(onDoubleTapListener);
        }
    }

    public GestureDetectorCompat(@NonNull Context context, @NonNull GestureDetector.OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public GestureDetectorCompat(@NonNull Context context, @NonNull GestureDetector.OnGestureListener onGestureListener, @Nullable Handler handler) {
        this.f1291a = new c(context, onGestureListener, handler);
    }

    public boolean isLongpressEnabled() {
        return this.f1291a.isLongpressEnabled();
    }

    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        return this.f1291a.onTouchEvent(motionEvent);
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public void setIsLongpressEnabled(boolean z) {
        this.f1291a.setIsLongpressEnabled(z);
    }

    public void setOnDoubleTapListener(@Nullable GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f1291a.setOnDoubleTapListener(onDoubleTapListener);
    }
}
