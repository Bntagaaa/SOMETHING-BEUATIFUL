package com.google.appinventor.components.runtime;

import android.content.Context;
import android.os.Handler;
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
import com.google.appinventor.components.runtime.util.YailList;
import io.socket.client.IO;
import io.socket.client.Socket;
import io.socket.emitter.Emitter;
import java.net.URISyntaxException;

@DesignerComponent(category = ComponentCategory.CONNECTIVITY, description = "", iconName = "images/socket.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "socket-io.jar, engine-io.jar, json-20090211.jar, okhttp.jar, okio-jvm.jar")
@SimpleObject
/* loaded from: classes.dex */
public class SocketIO extends AndroidNonvisibleComponent implements Component {
    private static String eventName;
    private static YailList eventnames;
    private static int i;
    private ComponentContainer container;
    private Context context;
    private Handler handler;
    private Socket mSocket;
    private String object;
    private String url;

    public SocketIO(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.container = componentContainer;
        this.context = componentContainer.$context();
        this.handler = new Handler();
    }

    private void initialize(String str) {
        try {
            this.mSocket = IO.socket(str);
        } catch (URISyntaxException unused) {
        }
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "set url of connection")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void URL(String str) {
        this.url = str;
        initialize(str);
    }

    @SimpleFunction(description = "")
    public void Connect() {
        this.mSocket.connect();
    }

    @SimpleFunction(description = "")
    public void Emit(String str, String str2) {
        this.mSocket.emit(str, new Object[]{str2});
    }

    @SimpleFunction(description = "")
    public void Disconnect() {
        this.mSocket.disconnect();
    }

    @SimpleFunction(description = "")
    public void ListenToEvent(Object obj) {
        if (obj instanceof YailList) {
            eventnames = (YailList) obj;
            for (int i2 = 0; i2 < eventnames.size(); i2++) {
                i = i2;
                this.mSocket.on(eventnames.getString(i2), new Emitter.Listener() { // from class: com.google.appinventor.components.runtime.SocketIO.1
                    public void call(Object... objArr) {
                        SocketIO.this.object = (String) objArr[0];
                        SocketIO.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.SocketIO.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                SocketIO.this.EventReceived(SocketIO.eventnames.getString(SocketIO.i), SocketIO.this.object);
                            }
                        });
                    }
                });
            }
            return;
        }
        if (obj instanceof String) {
            String string = obj.toString();
            eventName = string;
            this.mSocket.on(string, new Emitter.Listener() { // from class: com.google.appinventor.components.runtime.SocketIO.2
                public void call(Object... objArr) {
                    SocketIO.this.object = (String) objArr[0];
                    SocketIO.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.SocketIO.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            SocketIO.this.EventReceived(SocketIO.eventName.toString(), SocketIO.this.object);
                        }
                    });
                }
            });
        }
    }

    @SimpleEvent(description = "")
    public void EventReceived(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "EventReceived", str, str2);
    }
}
