package com.google.appinventor.components.runtime;

import android.animation.Animator;
import android.content.Context;
import android.view.View;
import android.widget.Toast;
import com.airbnb.lottie.LottieAnimationView;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.QUtil;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

@DesignerComponent(androidMinSdk = 16, category = ComponentCategory.ANIMATION, description = "Lottie Animation lets you add Custom Animation from Lottie. <br>The Source File should be a .json file or a Url Pointing to it. <br> SDK Version: 3.5.0", iconName = "images/lottie Animation.png", nonVisible = false, version = 1)
@UsesLibraries(libraries = "lottie.jar,lottie.aar,okio-jvm.jar")
@SimpleObject
/* loaded from: classes.dex */
public class LottieAnimation extends AndroidViewComponent {
    private float animationSpeed;
    private Context context;
    private boolean looP;
    private LottieAnimationView lottie;
    private float scale;

    public LottieAnimation(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.looP = false;
        this.animationSpeed = 1.0f;
        this.scale = 1.0f;
        this.context = componentContainer.$context();
        this.lottie = new LottieAnimationView(this.context);
        componentContainer.$add(this);
        this.lottie.addAnimatorListener(new Animator.AnimatorListener() { // from class: com.google.appinventor.components.runtime.LottieAnimation.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                LottieAnimation.this.AnimationCanceled();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                LottieAnimation.this.AnimationEnded();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                LottieAnimation.this.AnimationRepeated();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                LottieAnimation.this.AnimationStarted();
            }
        });
        this.lottie.setOnClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.LottieAnimation.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LottieAnimation.this.Click();
            }
        });
        EndFrame(100);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.lottie;
    }

    @SimpleFunction(description = "Returns the current frame")
    public int GetCurrentFrame() {
        return this.lottie.getFrame();
    }

    @SimpleFunction(description = "Cancels the animation")
    public void CancelAnimation() {
        this.lottie.cancelAnimation();
    }

    @SimpleFunction(description = "Checks if the amination is going on")
    public boolean IsAnimating() {
        return this.lottie.isAnimating();
    }

    @SimpleFunction(description = "Pauses the animation")
    public void PauseAnimation() {
        this.lottie.pauseAnimation();
    }

    @SimpleFunction(description = "Resumes the animation")
    public void ResumeAnimation() {
        this.lottie.resumeAnimation();
    }

    @SimpleFunction(description = "Sets the animation frame")
    public void SetAnimationFrame(int i) {
        this.lottie.setFrame(i);
    }

    @SimpleFunction(description = "Starts the animation")
    public void StartAnimation() {
        this.lottie.setRepeatMode(this.looP ? 1 : 0);
        this.lottie.setSpeed(this.animationSpeed);
        this.lottie.playAnimation();
        this.lottie.setScale(this.scale);
    }

    @SimpleEvent(description = "Cancels the animation")
    public void AnimationCanceled() {
        EventDispatcher.dispatchEvent(this, "AnimationCanceled", new Object[0]);
    }

    @SimpleEvent(description = "Animation ended")
    public void AnimationEnded() {
        EventDispatcher.dispatchEvent(this, "AnimationEnded", new Object[0]);
    }

    @SimpleEvent(description = "Animation repeated")
    public void AnimationRepeated() {
        EventDispatcher.dispatchEvent(this, "AnimationRepeated", new Object[0]);
    }

    @SimpleEvent(description = "Animation started")
    public void AnimationStarted() {
        EventDispatcher.dispatchEvent(this, "AnimationStarted", new Object[0]);
    }

    @SimpleEvent(description = "Animation clicked")
    public final void Click() {
        EventDispatcher.dispatchEvent(this, "Click", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set the speed of the animation.")
    @DesignerProperty(defaultValue = "1.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public final void AnimationSpeed(float f) {
        this.animationSpeed = f;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set the Scale of the animation")
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public final void Scale(float f) {
        this.scale = f;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set the Ending Frame")
    @DesignerProperty(defaultValue = "120", editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public final void EndFrame(int i) {
        this.lottie.setMaxFrame(i);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set Animation Loop")
    @DesignerProperty(defaultValue = "false", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public final void Loop(boolean z) {
        this.looP = z;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set The Json File URL")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public final void Source(String str) throws IOException {
        if (str.startsWith("http://") || str.startsWith("https://")) {
            this.lottie.setAnimationFromUrl(str);
            return;
        }
        try {
            if (this.container.$form() instanceof ReplForm) {
                String strAbsoluteFileName = AbsoluteFileName(str, false);
                StringBuilder sb = new StringBuilder();
                try {
                    BufferedReader bufferedReader = new BufferedReader(new FileReader(strAbsoluteFileName));
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line != null) {
                            sb.append(line);
                            sb.append('\n');
                        } else {
                            bufferedReader.close();
                            this.lottie.setAnimationFromJson(sb.toString());
                            return;
                        }
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                    Toast.makeText(this.context, "Json file not found", 0).show();
                }
            } else {
                this.lottie.setAnimation(str);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            Toast.makeText(this.context, "Json file not found", 0).show();
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set the Starting Frame")
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public final void StartFrame(int i) {
        this.lottie.setMinFrame(i);
    }

    @SimpleEvent(description = "Called when Some Error Happens")
    @Deprecated
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }

    private String AbsoluteFileName(String str, boolean z) {
        if (str.startsWith("/")) {
            return _COROUTINE.a.z(QUtil.getExternalStoragePath(this.container.$form(), false, z), str);
        }
        java.io.File file = this.container.$form().isRepl() ? new java.io.File(QUtil.getReplAssetPath(this.container.$form(), false)) : this.container.$form().getFilesDir();
        if (!file.exists()) {
            file.mkdirs();
        }
        return _COROUTINE.a.j(file.getPath(), "/", str);
    }
}
