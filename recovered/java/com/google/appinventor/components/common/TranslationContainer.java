package com.google.appinventor.components.common;

import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.Texting;
import java.util.HashMap;

/* loaded from: classes.dex */
public class TranslationContainer {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f3609a;

    public TranslationContainer() {
        HashMap map = new HashMap();
        this.f3609a = map;
        map.put("Basic", "基本");
        map.put("Media", "媒体");
        map.put("Animation", "动画");
        map.put("Social", "社交的");
        map.put("Sensors", "传感器");
        map.put("Screen Arrangement", "屏幕布局");
        map.put("LEGO® MINDSTORMS®", "乐高机器人套件®");
        map.put("Other stuff", "其他东西");
        map.put("Not ready for prime time", "测试中的套件");
        map.put("Old stuff", "旧东西");
        map.put("Button", "按钮");
        map.put("Canvas", "画布");
        map.put("CheckBox", "复选框");
        map.put("Clock", "时钟");
        map.put(Component.LISTVIEW_KEY_IMAGE, "图像");
        map.put("Label", "便签");
        map.put("ListPicker", "列表选择器");
        map.put("PasswordTextBox", "密码框");
        map.put("TextBox", "文本框");
        map.put("TinyDB", "细小数据库");
        map.put("Camcorder", "摄像机");
        map.put("Camera", "相机");
        map.put("ImagePicker", "画像选择器");
        map.put("Player", "播放器");
        map.put("Sound", "声音");
        map.put("VideoPlayer", "媒体播放器");
        map.put("Ball", "球");
        map.put("ImageSprite", "图片精灵");
        map.put("ContactPicker", "联系信息选择器");
        map.put("EmailPicker", "邮件选择器");
        map.put("PhoneCall", "电话");
        map.put("PhoneNumberPicker", "电话号码选择器");
        map.put(Texting.META_DATA_SMS_VALUE, "信息");
        map.put("Twitter", "Twitter");
        map.put("AccelerometerSensor", "加速度传感器");
        map.put("LocationSensor", "位置传感器");
        map.put("OrientationSensor", "方向传感器");
        map.put("HorizontalArrangement", "水平排列");
        map.put("TableArrangement", "表安排");
        map.put("VerticalArrangement", "竖向布置");
        map.put("NxtColorSensor", "Nxt颜色传感器");
        map.put("NxtDirectCommands", "Nxt直接命令");
        map.put("NxtDrive", "Nxt驱动");
        map.put("NxtLightSensor", "Nxt光传感器");
        map.put("NxtSoundSensor", "Nxt声音传感器");
        map.put("NxtTouchSensor", "Nxt触摸传感器");
        map.put("NxtUltrasonicSensor", "Nxt超声波传感器");
        map.put("ActivityStarter", "活动启动");
        map.put("BarcodeScanner", "条码扫描器");
        map.put(PropertyTypeConstants.PROPERTY_TYPE_BLUETOOTHCLIENT, "蓝牙客户");
        map.put("BluetoothServer", "蓝牙服务器");
        map.put("Notifier", "通告人");
        map.put("SpeechRecognizer", "语音识别");
        map.put("TextToSpeech", "文本到语音");
        map.put("TinyWebDB", "细小网络数据库");
        map.put("Web", "网络");
        map.put("FusiontablesControl", "Fusiontables控制");
        map.put("GameClient", "游戏客户端");
        map.put("SoundRecorder", "声音记录器");
        map.put("Voting", "投票");
        map.put("WebViewer", "网页浏览器");
    }

    public String getCorrespondingString(String str) {
        HashMap map = this.f3609a;
        if (map.containsKey(str)) {
            return (String) map.get(str);
        }
        return "Missing name";
    }
}
