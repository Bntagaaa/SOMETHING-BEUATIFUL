package androidx.core.provider;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
class f {

    /* renamed from: a, reason: collision with root package name */
    public static final e f1172a = new e(0);

    private f() {
    }

    public static FontsContractCompat.FontFamilyResult a(Context context, CancellationSignal cancellationSignal, FontRequest fontRequest) throws PackageManager.NameNotFoundException {
        Uri uriWithAppendedId;
        ProviderInfo providerInfoB = b(context.getPackageManager(), fontRequest, context.getResources());
        Cursor cursorA = null;
        if (providerInfoB != null) {
            String str = providerInfoB.authority;
            ArrayList arrayList = new ArrayList();
            Uri uriBuild = new Uri.Builder().scheme("content").authority(str).build();
            Uri uriBuild2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
            try {
                cursorA = a.a(context.getContentResolver(), uriBuild, new String[]{"_id", FontsContractCompat.Columns.FILE_ID, FontsContractCompat.Columns.TTC_INDEX, FontsContractCompat.Columns.VARIATION_SETTINGS, FontsContractCompat.Columns.WEIGHT, FontsContractCompat.Columns.ITALIC, FontsContractCompat.Columns.RESULT_CODE}, "query = ?", new String[]{fontRequest.getQuery()}, null, cancellationSignal);
                if (cursorA != null && cursorA.getCount() > 0) {
                    int columnIndex = cursorA.getColumnIndex(FontsContractCompat.Columns.RESULT_CODE);
                    ArrayList arrayList2 = new ArrayList();
                    int columnIndex2 = cursorA.getColumnIndex("_id");
                    int columnIndex3 = cursorA.getColumnIndex(FontsContractCompat.Columns.FILE_ID);
                    int columnIndex4 = cursorA.getColumnIndex(FontsContractCompat.Columns.TTC_INDEX);
                    int columnIndex5 = cursorA.getColumnIndex(FontsContractCompat.Columns.WEIGHT);
                    int columnIndex6 = cursorA.getColumnIndex(FontsContractCompat.Columns.ITALIC);
                    while (cursorA.moveToNext()) {
                        int i = columnIndex != -1 ? cursorA.getInt(columnIndex) : 0;
                        int i2 = columnIndex4 != -1 ? cursorA.getInt(columnIndex4) : 0;
                        if (columnIndex3 == -1) {
                            uriWithAppendedId = ContentUris.withAppendedId(uriBuild, cursorA.getLong(columnIndex2));
                        } else {
                            uriWithAppendedId = ContentUris.withAppendedId(uriBuild2, cursorA.getLong(columnIndex3));
                        }
                        arrayList2.add(new FontsContractCompat.FontInfo(uriWithAppendedId, i2, columnIndex5 != -1 ? cursorA.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursorA.getInt(columnIndex6) == 1, i));
                    }
                    arrayList = arrayList2;
                }
                if (cursorA != null) {
                    cursorA.close();
                }
                return new FontsContractCompat.FontFamilyResult(0, (FontsContractCompat.FontInfo[]) arrayList.toArray(new FontsContractCompat.FontInfo[0]));
            } catch (Throwable th) {
                if (cursorA != null) {
                    cursorA.close();
                }
                throw th;
            }
        }
        return new FontsContractCompat.FontFamilyResult(1, null);
    }

    public static ProviderInfo b(PackageManager packageManager, FontRequest fontRequest, Resources resources) throws PackageManager.NameNotFoundException {
        String providerAuthority = fontRequest.getProviderAuthority();
        ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(providerAuthority, 0);
        if (providerInfoResolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException(_COROUTINE.a.i("No package found for authority: ", providerAuthority));
        }
        if (!providerInfoResolveContentProvider.packageName.equals(fontRequest.getProviderPackage())) {
            StringBuilder sbR = _COROUTINE.a.r("Found content provider ", providerAuthority, ", but package was not ");
            sbR.append(fontRequest.getProviderPackage());
            throw new PackageManager.NameNotFoundException(sbR.toString());
        }
        Signature[] signatureArr = packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures;
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        e eVar = f1172a;
        Collections.sort(arrayList, eVar);
        List<List<byte[]>> certificates = fontRequest.getCertificates() != null ? fontRequest.getCertificates() : FontResourcesParserCompat.readCerts(resources, fontRequest.getCertificatesArrayResId());
        for (int i = 0; i < certificates.size(); i++) {
            ArrayList arrayList2 = new ArrayList(certificates.get(i));
            Collections.sort(arrayList2, eVar);
            if (arrayList.size() == arrayList2.size()) {
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    if (!Arrays.equals((byte[]) arrayList.get(i2), (byte[]) arrayList2.get(i2))) {
                        break;
                    }
                }
                return providerInfoResolveContentProvider;
            }
        }
        return null;
    }

    @RequiresApi(16)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static Cursor a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, Object obj) {
            return contentResolver.query(uri, strArr, str, strArr2, str2, (CancellationSignal) obj);
        }
    }
}
