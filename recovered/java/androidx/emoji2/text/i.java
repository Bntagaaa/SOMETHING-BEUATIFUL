package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.util.SparseArray;
import android.view.KeyEvent;
import androidx.annotation.AnyThread;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.MetadataRepo;
import java.util.Arrays;

@AnyThread
@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
final class i {

    /* renamed from: a, reason: collision with root package name */
    public final MetadataRepo f1563a;

    /* renamed from: b, reason: collision with root package name */
    public final EmojiCompat.GlyphChecker f1564b;
    public final boolean c;
    public final int[] d;

    public i(MetadataRepo metadataRepo, EmojiCompat.d dVar, EmojiCompat.GlyphChecker glyphChecker, boolean z, int[] iArr) {
        this.f1563a = metadataRepo;
        this.f1564b = glyphChecker;
        this.c = z;
        this.d = iArr;
    }

    public final int b(CharSequence charSequence, int i) {
        b bVar = new b(this.f1563a.c, this.c, this.d);
        int length = charSequence.length();
        int iCharCount = 0;
        int i2 = 0;
        int i3 = 0;
        while (iCharCount < length) {
            int iCodePointAt = Character.codePointAt(charSequence, iCharCount);
            int iA = bVar.a(iCodePointAt);
            EmojiMetadata emojiMetadata = bVar.c.f1520b;
            if (iA == 1) {
                iCharCount += Character.charCount(iCodePointAt);
                i3 = 0;
            } else if (iA == 2) {
                iCharCount += Character.charCount(iCodePointAt);
            } else if (iA == 3) {
                emojiMetadata = bVar.d.f1520b;
                if (emojiMetadata.getCompatAdded() <= i) {
                    i2++;
                }
            }
            if (emojiMetadata != null && emojiMetadata.getCompatAdded() <= i) {
                i3++;
            }
        }
        if (i2 == 0) {
            if (bVar.f1565a == 2 && bVar.c.f1520b != null && ((bVar.f > 1 || bVar.c()) && bVar.c.f1520b.getCompatAdded() <= i)) {
                return 1;
            }
            if (i3 == 0) {
                return 0;
            }
        }
        return 2;
    }

    public static boolean a(Editable editable, KeyEvent keyEvent, boolean z) {
        EmojiSpan[] emojiSpanArr;
        if (KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (emojiSpanArr = (EmojiSpan[]) editable.getSpans(selectionStart, selectionEnd, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
                for (EmojiSpan emojiSpan : emojiSpanArr) {
                    int spanStart = editable.getSpanStart(emojiSpan);
                    int spanEnd = editable.getSpanEnd(emojiSpan);
                    if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                        editable.delete(spanStart, spanEnd);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public int f1565a = 1;

        /* renamed from: b, reason: collision with root package name */
        public final MetadataRepo.a f1566b;
        public MetadataRepo.a c;
        public MetadataRepo.a d;
        public int e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public final boolean f1567g;
        public final int[] h;

        public b(MetadataRepo.a aVar, boolean z, int[] iArr) {
            this.f1566b = aVar;
            this.c = aVar;
            this.f1567g = z;
            this.h = iArr;
        }

        public final int a(int i) {
            SparseArray sparseArray = this.c.f1519a;
            MetadataRepo.a aVar = sparseArray == null ? null : (MetadataRepo.a) sparseArray.get(i);
            int i2 = 1;
            if (this.f1565a == 2) {
                if (aVar != null) {
                    this.c = aVar;
                    this.f++;
                } else if (i == 65038) {
                    b();
                } else if (i != 65039) {
                    MetadataRepo.a aVar2 = this.c;
                    if (aVar2.f1520b != null) {
                        if (this.f == 1) {
                            if (c()) {
                                this.d = this.c;
                                b();
                            } else {
                                b();
                            }
                        } else {
                            this.d = aVar2;
                            b();
                        }
                        i2 = 3;
                    } else {
                        b();
                    }
                }
                i2 = 2;
            } else if (aVar == null) {
                b();
            } else {
                this.f1565a = 2;
                this.c = aVar;
                this.f = 1;
                i2 = 2;
            }
            this.e = i;
            return i2;
        }

        public final void b() {
            this.f1565a = 1;
            this.c = this.f1566b;
            this.f = 0;
        }

        public final boolean c() {
            int[] iArr;
            if (this.c.f1520b.isDefaultEmoji() || this.e == 65039) {
                return true;
            }
            return this.f1567g && ((iArr = this.h) == null || Arrays.binarySearch(iArr, this.c.f1520b.getCodepointAt(0)) < 0);
        }
    }

    @RequiresApi(19)
    public static final class a {
        private a() {
        }
    }
}
