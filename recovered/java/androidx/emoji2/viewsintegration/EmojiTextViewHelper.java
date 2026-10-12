package androidx.emoji2.viewsintegration;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;

/* loaded from: classes.dex */
public final class EmojiTextViewHelper {

    /* renamed from: a, reason: collision with root package name */
    public final b f1586a;

    public static class b {
        public InputFilter[] a(InputFilter[] inputFilterArr) {
            return inputFilterArr;
        }

        public void b(boolean z) {
        }

        public void c(boolean z) {
        }

        public void d() {
        }

        public TransformationMethod e(TransformationMethod transformationMethod) {
            return transformationMethod;
        }

        public boolean isEnabled() {
            return false;
        }
    }

    public EmojiTextViewHelper(@NonNull TextView textView) {
        this(textView, true);
    }

    public EmojiTextViewHelper(@NonNull TextView textView, boolean z) {
        Preconditions.checkNotNull(textView, "textView cannot be null");
        if (!z) {
            this.f1586a = new c(textView);
        } else {
            this.f1586a = new a(textView);
        }
    }

    public void updateTransformationMethod() {
        this.f1586a.d();
    }

    @NonNull
    public InputFilter[] getFilters(@NonNull InputFilter[] inputFilterArr) {
        return this.f1586a.a(inputFilterArr);
    }

    @Nullable
    public TransformationMethod wrapTransformationMethod(@Nullable TransformationMethod transformationMethod) {
        return this.f1586a.e(transformationMethod);
    }

    public void setEnabled(boolean z) {
        this.f1586a.c(z);
    }

    public void setAllCaps(boolean z) {
        this.f1586a.b(z);
    }

    public boolean isEnabled() {
        return this.f1586a.isEnabled();
    }

    @RequiresApi(19)
    public static class c extends b {

        /* renamed from: a, reason: collision with root package name */
        public final a f1589a;

        public c(TextView textView) {
            this.f1589a = new a(textView);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.b
        public final InputFilter[] a(InputFilter[] inputFilterArr) {
            return !EmojiCompat.isConfigured() ? inputFilterArr : this.f1589a.a(inputFilterArr);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.b
        public final void b(boolean z) {
            if (EmojiCompat.isConfigured()) {
                this.f1589a.b(z);
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.b
        public final void c(boolean z) {
            boolean zIsConfigured = EmojiCompat.isConfigured();
            a aVar = this.f1589a;
            if (zIsConfigured) {
                aVar.c(z);
            } else {
                aVar.c = z;
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.b
        public final void d() {
            if (EmojiCompat.isConfigured()) {
                this.f1589a.d();
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.b
        public final TransformationMethod e(TransformationMethod transformationMethod) {
            return !EmojiCompat.isConfigured() ? transformationMethod : this.f1589a.e(transformationMethod);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.b
        public boolean isEnabled() {
            return this.f1589a.isEnabled();
        }
    }

    @RequiresApi(19)
    public static class a extends b {

        /* renamed from: a, reason: collision with root package name */
        public final TextView f1587a;

        /* renamed from: b, reason: collision with root package name */
        public final androidx.emoji2.viewsintegration.b f1588b;
        public boolean c = true;

        public a(TextView textView) {
            this.f1587a = textView;
            this.f1588b = new androidx.emoji2.viewsintegration.b(textView);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.b
        public final void d() {
            TextView textView = this.f1587a;
            textView.setTransformationMethod(e(textView.getTransformationMethod()));
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.b
        public final InputFilter[] a(InputFilter[] inputFilterArr) {
            if (this.c) {
                int length = inputFilterArr.length;
                int i = 0;
                while (true) {
                    androidx.emoji2.viewsintegration.b bVar = this.f1588b;
                    if (i < length) {
                        if (inputFilterArr[i] == bVar) {
                            return inputFilterArr;
                        }
                        i++;
                    } else {
                        InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length + 1];
                        System.arraycopy(inputFilterArr, 0, inputFilterArr2, 0, length);
                        inputFilterArr2[length] = bVar;
                        return inputFilterArr2;
                    }
                }
            } else {
                SparseArray sparseArray = new SparseArray(1);
                for (int i2 = 0; i2 < inputFilterArr.length; i2++) {
                    InputFilter inputFilter = inputFilterArr[i2];
                    if (inputFilter instanceof androidx.emoji2.viewsintegration.b) {
                        sparseArray.put(i2, inputFilter);
                    }
                }
                if (sparseArray.size() == 0) {
                    return inputFilterArr;
                }
                int length2 = inputFilterArr.length;
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length - sparseArray.size()];
                int i3 = 0;
                for (int i4 = 0; i4 < length2; i4++) {
                    if (sparseArray.indexOfKey(i4) < 0) {
                        inputFilterArr3[i3] = inputFilterArr[i4];
                        i3++;
                    }
                }
                return inputFilterArr3;
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.b
        public final TransformationMethod e(TransformationMethod transformationMethod) {
            return this.c ? ((transformationMethod instanceof d) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new d(transformationMethod) : transformationMethod instanceof d ? ((d) transformationMethod).getOriginalTransformationMethod() : transformationMethod;
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.b
        public final void b(boolean z) {
            if (z) {
                d();
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.b
        public final void c(boolean z) {
            this.c = z;
            d();
            TextView textView = this.f1587a;
            textView.setFilters(a(textView.getFilters()));
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.b
        public boolean isEnabled() {
            return this.c;
        }
    }
}
