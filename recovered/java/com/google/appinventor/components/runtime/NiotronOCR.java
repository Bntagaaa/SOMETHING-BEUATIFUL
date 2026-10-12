package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.text.Text;
import com.google.mlkit.vision.text.TextRecognition;
import com.google.mlkit.vision.text.TextRecognizer;
import com.google.mlkit.vision.text.latin.TextRecognizerOptions;
import java.io.PrintWriter;
import java.io.StringWriter;

@DesignerComponent(category = ComponentCategory.EXPERIMENTAL, description = "Detect Texts In Images Without Any Internet Connection", iconName = "images/ocr.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "text-recognition.aar, text-recognition.jar, play-services-mlkit-text-recognition.aar, play-services-mlkit-text-recognition.jar, text-recognition-bundled-common.aar, text-recognition-bundled-common.jar, play-services-mlkit-text-recognition-common.aar, play-services-mlkit-text-recognition-common.jar, vision-common.aar, vision-common.jar, common.aar, common.jar, transport-backend-cct.aar, transport-backend-cct.jar, firebase-encoders-json.aar, firebase-encoders-json.jar, firebase-encoders.jar, play-services-base.aar, play-services-base.jar, vision-interfaces.aar, vision-interfaces.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, transport-runtime.aar, transport-runtime.jar, transport-api.aar, transport-api.jar, firebase-components.aar, firebase-components.jar, exifinterface.aar, exifinterface.jar, annotation.jar, image-1.0.0.aar, image-1.0.0.jar, javax.inject.jar, firebase-annotations.jar, firebase-encoders-proto.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronOCR extends AndroidNonvisibleComponent {
    private Activity activity;
    private ComponentContainer container;
    private Context context;
    private TextRecognizer recognizer;

    public NiotronOCR(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
        this.recognizer = TextRecognition.getClient(TextRecognizerOptions.DEFAULT_OPTIONS);
    }

    @SimpleFunction
    public void RecognizeTextInImage(String str) {
        try {
            this.recognizer.process(InputImage.fromFilePath(this.context, Uri.fromFile(new java.io.File(str)))).addOnSuccessListener(new OnSuccessListener<Text>() { // from class: com.google.appinventor.components.runtime.NiotronOCR.2
                public void onSuccess(Text text) {
                    NiotronOCR.this.GotText(text.getText());
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.NiotronOCR.1
                public void onFailure(Exception exc) {
                    StringWriter stringWriter = new StringWriter();
                    exc.printStackTrace(new PrintWriter(stringWriter));
                    String string = stringWriter.toString();
                    NiotronOCR.this.ErrorOccurred("OnFail" + string);
                }
            });
        } catch (Exception e) {
            StringWriter stringWriter = new StringWriter();
            e.printStackTrace(new PrintWriter(stringWriter));
            ErrorOccurred("Exception" + stringWriter.toString());
        }
    }

    @SimpleFunction
    public void RecognizeTextInImageWithRotation(String str, int i) {
        try {
            this.recognizer.process(InputImage.fromBitmap(BitmapFactory.decodeFile(str), i)).addOnSuccessListener(new OnSuccessListener<Text>() { // from class: com.google.appinventor.components.runtime.NiotronOCR.4
                public void onSuccess(Text text) {
                    NiotronOCR.this.GotText(text.getText());
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.NiotronOCR.3
                public void onFailure(Exception exc) {
                    StringWriter stringWriter = new StringWriter();
                    exc.printStackTrace(new PrintWriter(stringWriter));
                    String string = stringWriter.toString();
                    NiotronOCR.this.ErrorOccurred("OnFail" + string);
                }
            });
        } catch (Exception e) {
            StringWriter stringWriter = new StringWriter();
            e.printStackTrace(new PrintWriter(stringWriter));
            ErrorOccurred("Exception" + stringWriter.toString());
        }
    }

    @SimpleEvent
    public void GotText(String str) {
        EventDispatcher.dispatchEvent(this, "GotText", str);
    }

    @SimpleEvent
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }
}
