package com.google.appinventor.components.runtime;

import android.util.Log;
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
import java.util.ArrayList;
import java.util.Properties;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

@DesignerComponent(category = ComponentCategory.EXPERIMENTAL, description = "A component for sending e-mail through SMTP server programmatically from device", iconName = "images/niotronSMTP.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "android-mail.jar, android-activation.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronSMTP extends AndroidNonvisibleComponent {
    private static final String LOG_TAG = "NiotronSMTP";
    private String body;
    private String email;
    private ArrayList<String> fileNames;
    private ArrayList<String> filePaths;
    private String from;
    private boolean html;
    private Message message;
    private String password;
    private Properties smtpProperty;
    private String subject;
    private String to;

    public NiotronSMTP(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.email = "";
        this.password = "";
        this.smtpProperty = new Properties();
        this.from = "";
        this.subject = "";
        this.body = "";
        this.to = "";
        this.filePaths = new ArrayList<>();
        this.fileNames = new ArrayList<>();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Sender username")
    @DesignerProperty(alwaysSend = true, defaultValue = "Email", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void UserName(String str) {
        this.email = str;
        Log.d(LOG_TAG, "Username set");
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Sender password")
    @DesignerProperty(alwaysSend = true, defaultValue = "Password", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Password(String str) {
        this.password = str;
        Log.d(LOG_TAG, "Password set");
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "SMTP auth enabled")
    @DesignerProperty(alwaysSend = true, defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Auth(boolean z) {
        this.smtpProperty.put("mail.smtp.auth", z ? "true" : "false");
        Log.d(LOG_TAG, "Auth value set");
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "TLS enabled")
    @DesignerProperty(alwaysSend = true, defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void TLSEnabled(boolean z) {
        this.smtpProperty.put("mail.smtp.starttls.enable", z ? "true" : "false");
        Log.d(LOG_TAG, "TLSEnabled value set");
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set host")
    @DesignerProperty(alwaysSend = true, defaultValue = "smtp.gmail.com", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Host(String str) {
        this.smtpProperty.put("mail.smtp.host", str);
        Log.d(LOG_TAG, "Host value set");
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set port")
    @DesignerProperty(alwaysSend = true, defaultValue = "587", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Port(String str) {
        this.smtpProperty.put("mail.smtp.port", str);
        Log.d(LOG_TAG, "Port value set");
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "Set which email to be shown in receiver's message")
    @DesignerProperty(alwaysSend = true, defaultValue = "From Email", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void From(String str) {
        this.from = str;
        Log.d(LOG_TAG, "From value set");
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set which email to be shown in receiver's message")
    @DesignerProperty(alwaysSend = true, defaultValue = "To Email", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void To(String str) {
        this.to = str;
        Log.d(LOG_TAG, "To value set");
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "Set the mail title (subject)")
    @DesignerProperty(alwaysSend = true, defaultValue = "Subject", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Subject(String str) {
        this.subject = str;
        Log.d(LOG_TAG, "Subject value set");
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "Set the mail message body")
    @DesignerProperty(alwaysSend = true, defaultValue = "Body", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Body(String str) {
        this.body = str;
        Log.d(LOG_TAG, "Body value set");
    }

    @SimpleFunction(description = "Set the mail message body")
    public void Attachment(String str, String str2) {
        this.filePaths.add(str);
        this.fileNames.add(str2);
        int size = this.filePaths.size();
        StringBuilder sb = new StringBuilder();
        sb.append(size);
        Log.d(LOG_TAG, sb.toString());
        int size2 = this.filePaths.size();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(size2);
        Log.d(LOG_TAG, sb2.toString());
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "Set the mail message body")
    @DesignerProperty(alwaysSend = true, defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void HTML(boolean z) {
        this.html = z;
        Log.d(LOG_TAG, "HTML value set");
    }

    @SimpleFunction(description = "Send the email")
    public void Send() {
        sendMail();
    }

    @SimpleEvent(description = "Invoked after email sent successfully ")
    public void Sent() {
        EventDispatcher.dispatchEvent(this, "Sent", new Object[0]);
    }

    @SimpleEvent(description = "Invoked when email sent fails ")
    public void Error(String str) {
        EventDispatcher.dispatchEvent(this, "Error", str);
    }

    private void sendMail() {
        Log.d(LOG_TAG, this.filePaths.size() + " 2");
        Log.d(LOG_TAG, this.filePaths.size() + " 2");
        try {
            MimeMessage mimeMessage = new MimeMessage(Session.getDefaultInstance(this.smtpProperty, new Authenticator() { // from class: com.google.appinventor.components.runtime.NiotronSMTP.1
                public PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(NiotronSMTP.this.email, NiotronSMTP.this.password);
                }
            }));
            this.message = mimeMessage;
            mimeMessage.setFrom(new InternetAddress(this.email));
            this.message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(this.to));
            this.message.setSubject(this.subject);
            this.message.setText(this.body);
            MimeMultipart mimeMultipart = new MimeMultipart();
            int i = 0;
            if (this.filePaths.size() != 0) {
                Log.d(LOG_TAG, "So there is actually some attachments");
                for (int i2 = 0; i2 < this.filePaths.size(); i2++) {
                    MimeBodyPart mimeBodyPart = new MimeBodyPart();
                    String str = this.filePaths.get(i2);
                    String str2 = this.fileNames.get(i2);
                    mimeBodyPart.setDataHandler(new DataHandler(new FileDataSource(str)));
                    mimeBodyPart.setFileName(str2);
                    mimeMultipart.addBodyPart(mimeBodyPart);
                }
            }
            if (this.html) {
                Log.d(LOG_TAG, "So html also exist");
                MimeBodyPart mimeBodyPart2 = new MimeBodyPart();
                mimeBodyPart2.setContent(this.body, "text/html; charset=ISO-8859-1");
                mimeMultipart.addBodyPart(mimeBodyPart2);
            }
            this.message.setContent(mimeMultipart);
            new SendEmail(this, i).execute(this.message);
        } catch (MessagingException e) {
            e.printStackTrace();
            Log.d(LOG_TAG, e.toString());
            Error(e.toString());
        }
    }

    public class SendEmail extends android.os.AsyncTask<Message, String, String> {
        public /* synthetic */ SendEmail(NiotronSMTP niotronSMTP, int i) {
            this();
        }

        private SendEmail() {
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            super.onPreExecute();
            Log.d(NiotronSMTP.LOG_TAG, "Sending mail");
        }

        @Override // android.os.AsyncTask
        public String doInBackground(Message... messageArr) {
            try {
                Transport.send(messageArr[0]);
                return "Success";
            } catch (MessagingException e) {
                e.printStackTrace();
                Log.d("SMTP", e.toString());
                return e.toString();
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            super.onPostExecute((SendEmail) str);
            Log.d(NiotronSMTP.LOG_TAG, str);
            if (str.equalsIgnoreCase("Success")) {
                NiotronSMTP.this.Sent();
            } else {
                NiotronSMTP.this.Error(str);
            }
        }
    }
}
