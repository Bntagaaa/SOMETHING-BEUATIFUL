package kawa.standard;

import gnu.math.Quantity;
import gnu.math.Unit;
import kawa.lang.GenericError;

/* loaded from: classes2.dex */
public class sleep {
    public static void sleep(Quantity quantity) throws InterruptedException {
        Unit unit = quantity.unit();
        if (unit == Unit.Empty || unit.dimensions() == Unit.second.dimensions()) {
            double dDoubleValue = quantity.doubleValue();
            long j = (long) (1000.0d * dDoubleValue);
            try {
                Thread.sleep(j, (int) ((dDoubleValue * 1.0E9d) - (j * 1000000.0d)));
                return;
            } catch (InterruptedException unused) {
                throw new GenericError("sleep was interrupted");
            }
        }
        throw new GenericError("bad unit for sleep");
    }
}
