package me.aemo.specialkeyboard;

import android.app.Activity;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.runtime.AndroidNonvisibleComponent;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.TextBox;
import me.aemo.specialkeyboard.addon.KeyboardChangeListener;

/* loaded from: classes2.dex */
public class SpecialKeyboard extends AndroidNonvisibleComponent {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f6744a;

    /* renamed from: b, reason: collision with root package name */
    public final Activity f6745b;

    public SpecialKeyboard(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.f6744a = componentContainer.$context();
        this.f6745b = componentContainer.$context();
        componentContainer.$form().getWindow().setSoftInputMode(16);
    }

    public class a implements KeyboardChangeListener.KeyboardListener {
        public a() {
        }

        @Override // me.aemo.specialkeyboard.addon.KeyboardChangeListener.KeyboardListener
        public void onKeyboardChange(boolean z, int i) {
            SpecialKeyboard.this.OnKeyboardChange(z, i);
        }
    }

    @SimpleFunction
    public void Initialize() {
        KeyboardChangeListener.create(this.f6745b).setKeyboardListener(new a());
    }

    @SimpleEvent
    public void OnKeyboardChange(boolean z, int i) {
        EventDispatcher.dispatchEvent(this, "OnKeyboardChange", Boolean.valueOf(z), Integer.valueOf(i));
    }

    @SimpleFunction
    public void ShowKeyboard() {
        InputMethodManager inputMethodManager = (InputMethodManager) this.f6744a.getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.toggleSoftInput(2, 0);
        }
    }

    @SimpleFunction
    public void HideKeyboard() {
        InputMethodManager inputMethodManager = (InputMethodManager) this.f6744a.getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.toggleSoftInput(1, 0);
        }
    }

    @SimpleFunction
    public void SetTextVisiblePasswordType(TextBox textBox) {
        ((EditText) textBox.getView()).setInputType(145);
    }
}
