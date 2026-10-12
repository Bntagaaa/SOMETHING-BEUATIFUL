package androidx.core.location;

import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.os.Build;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.util.Iterator;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
class b extends GnssStatusCompat {

    /* renamed from: a, reason: collision with root package name */
    public final GpsStatus f1099a;

    /* renamed from: b, reason: collision with root package name */
    public int f1100b;
    public Iterator c;
    public int d;
    public GpsSatellite e;

    public static int a(int i) {
        if (i > 0 && i <= 32) {
            return 1;
        }
        if (i >= 33 && i <= 64) {
            return 2;
        }
        if (i > 64 && i <= 88) {
            return 3;
        }
        if (i <= 200 || i > 235) {
            return (i < 193 || i > 200) ? 0 : 4;
        }
        return 5;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasBasebandCn0DbHz(int i) {
        return false;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasCarrierFrequencyHz(int i) {
        return false;
    }

    public b(GpsStatus gpsStatus) {
        GpsStatus gpsStatus2 = (GpsStatus) Preconditions.checkNotNull(gpsStatus);
        this.f1099a = gpsStatus2;
        this.f1100b = -1;
        this.c = gpsStatus2.getSatellites().iterator();
        this.d = -1;
        this.e = null;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getSatelliteCount() {
        int i;
        synchronized (this.f1099a) {
            try {
                if (this.f1100b == -1) {
                    for (GpsSatellite gpsSatellite : this.f1099a.getSatellites()) {
                        this.f1100b++;
                    }
                    this.f1100b++;
                }
                i = this.f1100b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getConstellationType(int i) {
        if (Build.VERSION.SDK_INT < 24) {
            return 1;
        }
        return a(b(i).getPrn());
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getSvid(int i) {
        if (Build.VERSION.SDK_INT < 24) {
            return b(i).getPrn();
        }
        int prn = b(i).getPrn();
        int iA = a(prn);
        return iA != 2 ? iA != 3 ? iA != 5 ? prn : prn - 200 : prn - 64 : prn + 87;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getCn0DbHz(int i) {
        return b(i).getSnr();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getElevationDegrees(int i) {
        return b(i).getElevation();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getAzimuthDegrees(int i) {
        return b(i).getAzimuth();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasEphemerisData(int i) {
        return b(i).hasEphemeris();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasAlmanacData(int i) {
        return b(i).hasAlmanac();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean usedInFix(int i) {
        return b(i).usedInFix();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getCarrierFrequencyHz(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getBasebandCn0DbHz(int i) {
        throw new UnsupportedOperationException();
    }

    public final GpsSatellite b(int i) {
        GpsSatellite gpsSatellite;
        synchronized (this.f1099a) {
            try {
                if (i < this.d) {
                    this.c = this.f1099a.getSatellites().iterator();
                    this.d = -1;
                }
                while (true) {
                    int i2 = this.d;
                    if (i2 >= i) {
                        break;
                    }
                    this.d = i2 + 1;
                    if (!this.c.hasNext()) {
                        this.e = null;
                        break;
                    }
                    this.e = (GpsSatellite) this.c.next();
                }
                gpsSatellite = this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return (GpsSatellite) Preconditions.checkNotNull(gpsSatellite);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return this.f1099a.equals(((b) obj).f1099a);
        }
        return false;
    }

    public int hashCode() {
        return this.f1099a.hashCode();
    }
}
