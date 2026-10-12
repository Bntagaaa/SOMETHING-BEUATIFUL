package com.google.zxing.client.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.ClipboardManager;
import android.util.Log;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.client.android.Intents;
import com.google.zxing.client.android.camera.CameraManager;
import com.google.zxing.client.android.result.ResultHandler;
import com.google.zxing.client.android.result.ResultHandlerFactory;
import java.io.IOException;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class AppInvCaptureActivity extends Activity implements SurfaceHolder.Callback {

    /* renamed from: a, reason: collision with root package name */
    public CameraManager f5100a;

    /* renamed from: b, reason: collision with root package name */
    public CaptureActivityHandler f5101b;
    public ViewfinderView c;
    public Result d;
    public boolean e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public f f5102g;
    public EnumSet h;
    public String i;
    public LinearLayout j;
    public FrameLayout k;
    public SurfaceView l;

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    static {
        EnumSet.of(ResultMetadataType.ISSUE_NUMBER, ResultMetadataType.SUGGESTED_PRICE, ResultMetadataType.ERROR_CORRECTION_LEVEL, ResultMetadataType.POSSIBLE_COUNTRY);
    }

    public Handler getHandler() {
        return this.f5101b;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(128);
        LinearLayout linearLayout = new LinearLayout(this);
        this.j = linearLayout;
        linearLayout.setOrientation(0);
        FrameLayout frameLayout = new FrameLayout(this);
        this.k = frameLayout;
        frameLayout.addView(this.j, new ViewGroup.LayoutParams(-1, -1));
        this.k.setBackgroundColor(-1);
        setContentView(this.k);
        this.k.requestLayout();
        this.e = false;
    }

    @Override // android.app.Activity
    public void onResume() {
        int intExtra;
        int intExtra2;
        super.onResume();
        this.f5100a = new CameraManager(getApplication());
        EnumSet enumSet = null;
        ViewfinderView viewfinderView = new ViewfinderView(this, null);
        this.c = viewfinderView;
        viewfinderView.setCameraManager(this.f5100a);
        this.k.addView(this.c);
        this.f5101b = null;
        this.d = null;
        if (this.l == null) {
            SurfaceView surfaceView = new SurfaceView(this);
            this.l = surfaceView;
            this.j.addView(surfaceView);
        }
        SurfaceHolder holder = this.l.getHolder();
        if (this.e) {
            a(holder);
        } else {
            holder.addCallback(this);
            holder.setType(3);
        }
        this.l.setVisibility(0);
        Intent intent = getIntent();
        this.f = true;
        this.f5102g = f.c;
        this.h = null;
        this.i = null;
        if (intent != null) {
            String action = intent.getAction();
            intent.getDataString();
            if (Intents.Scan.ACTION.equals(action)) {
                this.f5102g = f.f5135a;
                Pattern pattern = b.f5116a;
                String stringExtra = intent.getStringExtra(Intents.Scan.FORMATS);
                List listAsList = stringExtra != null ? Arrays.asList(b.f5116a.split(stringExtra)) : null;
                String stringExtra2 = intent.getStringExtra(Intents.Scan.MODE);
                if (listAsList != null) {
                    EnumSet enumSetNoneOf = EnumSet.noneOf(BarcodeFormat.class);
                    try {
                        Iterator it = listAsList.iterator();
                        while (it.hasNext()) {
                            enumSetNoneOf.add(BarcodeFormat.valueOf((String) it.next()));
                        }
                        enumSet = enumSetNoneOf;
                    } catch (IllegalArgumentException unused) {
                    }
                    this.h = enumSet;
                    if (intent.hasExtra(Intents.Scan.WIDTH) && intent.hasExtra(Intents.Scan.HEIGHT)) {
                        intExtra = intent.getIntExtra(Intents.Scan.WIDTH, 0);
                        intExtra2 = intent.getIntExtra(Intents.Scan.HEIGHT, 0);
                        if (intExtra > 0 && intExtra2 > 0) {
                            this.f5100a.setManualFramingRect(intExtra, intExtra2);
                        }
                    }
                } else {
                    if (stringExtra2 != null) {
                        if (Intents.Scan.PRODUCT_MODE.equals(stringExtra2)) {
                            enumSet = b.f5117b;
                        } else if (Intents.Scan.QR_CODE_MODE.equals(stringExtra2)) {
                            enumSet = b.d;
                        } else if (Intents.Scan.DATA_MATRIX_MODE.equals(stringExtra2)) {
                            enumSet = b.e;
                        } else if (Intents.Scan.ONE_D_MODE.equals(stringExtra2)) {
                            enumSet = b.c;
                        }
                    }
                    this.h = enumSet;
                    if (intent.hasExtra(Intents.Scan.WIDTH)) {
                        intExtra = intent.getIntExtra(Intents.Scan.WIDTH, 0);
                        intExtra2 = intent.getIntExtra(Intents.Scan.HEIGHT, 0);
                        if (intExtra > 0) {
                            this.f5100a.setManualFramingRect(intExtra, intExtra2);
                        }
                    }
                }
            }
            this.i = intent.getStringExtra(Intents.Scan.CHARACTER_SET);
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        CaptureActivityHandler captureActivityHandler = this.f5101b;
        if (captureActivityHandler != null) {
            captureActivityHandler.quitSynchronously();
            this.f5101b = null;
        }
        this.f5100a.closeDriver();
        if (!this.e) {
            SurfaceView surfaceView = new SurfaceView(this);
            this.l = surfaceView;
            surfaceView.getHolder().removeCallback(this);
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            if (i != 27 && i != 80) {
                if (i == 24) {
                    this.f5100a.setTorch(true);
                } else if (i == 25) {
                    this.f5100a.setTorch(false);
                    return true;
                }
            }
            return true;
        }
        f fVar = this.f5102g;
        if (fVar == f.f5135a) {
            setResult(0);
            finish();
            return true;
        }
        if ((fVar == f.c || fVar == f.f5136b) && this.d != null) {
            restartPreviewAfterDelay(0L);
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        if (surfaceHolder == null) {
            Log.e("AppInvCaptureActivity", "*** WARNING *** surfaceCreated() gave us a null surface!");
        }
        if (this.e) {
            return;
        }
        this.e = true;
        a(surfaceHolder);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.e = false;
    }

    public void handleDecode(Result result, Bitmap bitmap) {
        ResultPoint[] resultPoints;
        this.d = result;
        ResultHandler resultHandlerMakeResultHandler = ResultHandlerFactory.makeResultHandler(this, result);
        int i = 0;
        boolean z = bitmap != null;
        if (z && (resultPoints = result.getResultPoints()) != null && resultPoints.length > 0) {
            Canvas canvas = new Canvas(bitmap);
            Paint paint = new Paint();
            paint.setColor(-1063662592);
            if (resultPoints.length == 2) {
                paint.setStrokeWidth(4.0f);
                ResultPoint resultPoint = resultPoints[0];
                ResultPoint resultPoint2 = resultPoints[1];
                canvas.drawLine(resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY(), paint);
            } else if (resultPoints.length == 4 && (result.getBarcodeFormat() == BarcodeFormat.UPC_A || result.getBarcodeFormat() == BarcodeFormat.EAN_13)) {
                ResultPoint resultPoint3 = resultPoints[0];
                ResultPoint resultPoint4 = resultPoints[1];
                canvas.drawLine(resultPoint3.getX(), resultPoint3.getY(), resultPoint4.getX(), resultPoint4.getY(), paint);
                ResultPoint resultPoint5 = resultPoints[2];
                ResultPoint resultPoint6 = resultPoints[3];
                canvas.drawLine(resultPoint5.getX(), resultPoint5.getY(), resultPoint6.getX(), resultPoint6.getY(), paint);
            } else {
                paint.setStrokeWidth(10.0f);
                for (ResultPoint resultPoint7 : resultPoints) {
                    canvas.drawPoint(resultPoint7.getX(), resultPoint7.getY(), paint);
                }
            }
        }
        int iOrdinal = this.f5102g.ordinal();
        if (iOrdinal != 0 && iOrdinal != 1) {
            if (iOrdinal == 3 && z) {
                Toast.makeText(this, " (bulk scan)", 0).show();
                restartPreviewAfterDelay(1000L);
                return;
            }
            return;
        }
        if (bitmap != null) {
            this.c.drawResultBitmap(bitmap);
        }
        long longExtra = getIntent() != null ? getIntent().getLongExtra(Intents.Scan.RESULT_DISPLAY_DURATION_MS, 1500L) : 1500L;
        if (this.f && !resultHandlerMakeResultHandler.areContentsSecure()) {
            ClipboardManager clipboardManager = (ClipboardManager) getSystemService("clipboard");
            CharSequence displayContents = resultHandlerMakeResultHandler.getDisplayContents();
            if (displayContents != null) {
                clipboardManager.setText(displayContents);
            }
        }
        if (this.f5102g == f.f5135a) {
            Intent intent = new Intent(getIntent().getAction());
            intent.addFlags(524288);
            intent.putExtra(Intents.Scan.RESULT, result.toString());
            intent.putExtra(Intents.Scan.RESULT_FORMAT, result.getBarcodeFormat().toString());
            byte[] rawBytes = result.getRawBytes();
            if (rawBytes != null && rawBytes.length > 0) {
                intent.putExtra(Intents.Scan.RESULT_BYTES, rawBytes);
            }
            Map<ResultMetadataType, Object> resultMetadata = result.getResultMetadata();
            if (resultMetadata != null) {
                ResultMetadataType resultMetadataType = ResultMetadataType.UPC_EAN_EXTENSION;
                if (resultMetadata.containsKey(resultMetadataType)) {
                    intent.putExtra(Intents.Scan.RESULT_UPC_EAN_EXTENSION, resultMetadata.get(resultMetadataType).toString());
                }
                Integer num = (Integer) resultMetadata.get(ResultMetadataType.ORIENTATION);
                if (num != null) {
                    intent.putExtra(Intents.Scan.RESULT_ORIENTATION, num.intValue());
                }
                String str = (String) resultMetadata.get(ResultMetadataType.ERROR_CORRECTION_LEVEL);
                if (str != null) {
                    intent.putExtra(Intents.Scan.RESULT_ERROR_CORRECTION_LEVEL, str);
                }
                Iterable iterable = (Iterable) resultMetadata.get(ResultMetadataType.BYTE_SEGMENTS);
                if (iterable != null) {
                    Iterator it = iterable.iterator();
                    while (it.hasNext()) {
                        intent.putExtra(Intents.Scan.RESULT_BYTE_SEGMENTS_PREFIX + i, (byte[]) it.next());
                        i++;
                    }
                }
            }
            Message messageObtain = Message.obtain(this.f5101b, 6, intent);
            if (longExtra > 0) {
                this.f5101b.sendMessageDelayed(messageObtain, longExtra);
            } else {
                this.f5101b.sendMessage(messageObtain);
            }
        }
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5103a;

        static {
            int[] iArr = new int[f.values().length];
            f5103a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5103a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5103a[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public final void a(SurfaceHolder surfaceHolder) {
        Log.w("AppInvCaptureActivity", "initCamera() was called");
        if (surfaceHolder == null) {
            throw new IllegalStateException("No SurfaceHolder provided");
        }
        if (this.f5100a.isOpen()) {
            Log.w("AppInvCaptureActivity", "initCamera() while already open -- late SurfaceView callback?");
            return;
        }
        try {
            this.f5100a.openDriver(surfaceHolder);
            if (this.f5101b == null) {
                this.f5101b = new CaptureActivityHandler(this, this.h, this.i, this.f5100a);
            }
        } catch (IOException e) {
            Log.w("AppInvCaptureActivity", e);
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle("Scanner");
            builder.setMessage("Camera Framework Bug");
            builder.show();
        } catch (RuntimeException e2) {
            Log.w("AppInvCaptureActivity", "Unexpected error initializing camera", e2);
            AlertDialog.Builder builder2 = new AlertDialog.Builder(this);
            builder2.setTitle("Scanner");
            builder2.setMessage("Camera Framework Bug");
            builder2.show();
        }
    }

    public void restartPreviewAfterDelay(long j) {
        CaptureActivityHandler captureActivityHandler = this.f5101b;
        if (captureActivityHandler != null) {
            captureActivityHandler.sendEmptyMessageDelayed(5, j);
        }
    }

    public void drawViewfinder() {
        this.c.drawViewfinder();
    }
}
