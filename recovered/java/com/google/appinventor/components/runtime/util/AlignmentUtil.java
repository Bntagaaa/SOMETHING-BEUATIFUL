package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import com.google.appinventor.components.common.HorizontalAlignment;
import com.google.appinventor.components.common.VerticalAlignment;
import com.google.appinventor.components.runtime.LinearLayout;

/* loaded from: classes.dex */
public class AlignmentUtil {
    LinearLayout viewLayout;

    public AlignmentUtil(LinearLayout linearLayout) {
        this.viewLayout = linearLayout;
    }

    public void setHorizontalAlignment(int i) throws IllegalArgumentException {
        if (i == 1) {
            this.viewLayout.setHorizontalGravity(3);
        } else if (i == 2) {
            this.viewLayout.setHorizontalGravity(5);
        } else {
            if (i != 3) {
                throw new IllegalArgumentException(a.d(i, "Bad value to setHorizontalAlignment: "));
            }
            this.viewLayout.setHorizontalGravity(1);
        }
    }

    public void setHorizontalAlignment(HorizontalAlignment horizontalAlignment) {
        int i = AnonymousClass1.$SwitchMap$com$google$appinventor$components$common$HorizontalAlignment[horizontalAlignment.ordinal()];
        if (i == 1) {
            this.viewLayout.setHorizontalGravity(3);
            return;
        }
        if (i == 2) {
            this.viewLayout.setHorizontalGravity(1);
        } else if (i == 3) {
            this.viewLayout.setHorizontalGravity(5);
        } else {
            throw new IllegalArgumentException("Bad value to setHorizontalAlignment: " + horizontalAlignment);
        }
    }

    public void setVerticalAlignment(int i) throws IllegalArgumentException {
        if (i == 1) {
            this.viewLayout.setVerticalGravity(48);
        } else if (i == 2) {
            this.viewLayout.setVerticalGravity(16);
        } else {
            if (i != 3) {
                throw new IllegalArgumentException(a.d(i, "Bad value to setVerticalAlignment: "));
            }
            this.viewLayout.setVerticalGravity(80);
        }
    }

    /* renamed from: com.google.appinventor.components.runtime.util.AlignmentUtil$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$common$HorizontalAlignment;
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$common$VerticalAlignment;

        static {
            int[] iArr = new int[VerticalAlignment.values().length];
            $SwitchMap$com$google$appinventor$components$common$VerticalAlignment = iArr;
            try {
                iArr[VerticalAlignment.Top.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$VerticalAlignment[VerticalAlignment.Center.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$VerticalAlignment[VerticalAlignment.Bottom.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[HorizontalAlignment.values().length];
            $SwitchMap$com$google$appinventor$components$common$HorizontalAlignment = iArr2;
            try {
                iArr2[HorizontalAlignment.Left.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$HorizontalAlignment[HorizontalAlignment.Center.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$HorizontalAlignment[HorizontalAlignment.Right.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public void setVerticalAlignment(VerticalAlignment verticalAlignment) {
        int i = AnonymousClass1.$SwitchMap$com$google$appinventor$components$common$VerticalAlignment[verticalAlignment.ordinal()];
        if (i == 1) {
            this.viewLayout.setVerticalGravity(48);
            return;
        }
        if (i == 2) {
            this.viewLayout.setVerticalGravity(16);
        } else if (i == 3) {
            this.viewLayout.setVerticalGravity(80);
        } else {
            throw new IllegalArgumentException("Bad value to setVerticalAlignment: " + verticalAlignment);
        }
    }
}
