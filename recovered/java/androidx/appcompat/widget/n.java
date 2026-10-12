package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;

/* loaded from: classes.dex */
final class n {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f488a;

    /* renamed from: b, reason: collision with root package name */
    public TextClassifier f489b;

    public n(TextView textView) {
        this.f488a = (TextView) Preconditions.checkNotNull(textView);
    }

    @RequiresApi(api = 26)
    public void setTextClassifier(@Nullable TextClassifier textClassifier) {
        this.f489b = textClassifier;
    }

    @NonNull
    @RequiresApi(api = 26)
    public TextClassifier getTextClassifier() {
        TextClassifier textClassifier = this.f489b;
        return textClassifier == null ? a.a(this.f488a) : textClassifier;
    }

    @RequiresApi(26)
    public static final class a {
        private a() {
        }

        @NonNull
        @DoNotInline
        public static TextClassifier a(@NonNull TextView textView) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) textView.getContext().getSystemService(TextClassificationManager.class);
            if (textClassificationManager != null) {
                return textClassificationManager.getTextClassifier();
            }
            return TextClassifier.NO_OP;
        }
    }
}
