package com.google.appinventor.components.runtime;

import android.hardware.SensorEvent;
import com.google.appinventor.components.annotations.SimpleObject;

@SimpleObject
/* loaded from: classes.dex */
public abstract class BufferedSingleValueSensor extends SingleValueSensor {
    private AveragingBuffer buffer;

    public BufferedSingleValueSensor(ComponentContainer componentContainer, int i, int i2) {
        super(componentContainer.$form(), i);
        this.buffer = new AveragingBuffer(this, i2, 0);
    }

    @Override // com.google.appinventor.components.runtime.SingleValueSensor, android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (this.enabled && sensorEvent.sensor.getType() == this.sensorType) {
            this.buffer.insert(Float.valueOf(sensorEvent.values[0]));
            super.onSensorChanged(sensorEvent);
        }
    }

    public float getAverageValue() {
        return this.buffer.getAverage();
    }

    public class AveragingBuffer {
        private Float[] data;
        private int next;

        public /* synthetic */ AveragingBuffer(BufferedSingleValueSensor bufferedSingleValueSensor, int i, int i2) {
            this(i);
        }

        private AveragingBuffer(int i) {
            this.data = new Float[i];
            this.next = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void insert(Float f) {
            Float[] fArr = this.data;
            int i = this.next;
            int i2 = i + 1;
            this.next = i2;
            fArr[i] = f;
            if (i2 == fArr.length) {
                this.next = 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getAverage() {
            double dFloatValue = 0.0d;
            int i = 0;
            int i2 = 0;
            while (true) {
                Float[] fArr = this.data;
                if (i >= fArr.length) {
                    break;
                }
                if (fArr[i] != null) {
                    dFloatValue += r4.floatValue();
                    i2++;
                }
                i++;
            }
            if (i2 != 0) {
                dFloatValue /= i2;
            }
            return (float) dFloatValue;
        }
    }
}
