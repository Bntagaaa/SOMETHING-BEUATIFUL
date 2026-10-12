package kawa;

import gnu.expr.Language;
import gnu.mapping.Environment;
import gnu.mapping.OutPort;
import java.awt.BorderLayout;
import java.awt.Menu;
import java.awt.MenuBar;
import java.awt.MenuItem;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.IOException;
import javax.swing.JFrame;
import javax.swing.JScrollPane;
import kawa.ReplDocument;

/* loaded from: classes2.dex */
public class GuiConsole extends JFrame implements ActionListener, ReplDocument.DocumentCloseListener {
    private static String CLOSE = "Close";
    private static String EXIT = "Exit";
    private static String NEW = "New";
    private static String NEW_SHARED = "New (Shared)";
    private static String PURGE_MESSAGE = "Purge Buffer";
    static int window_number;
    ReplDocument document;
    ReplPane pane;

    public static void main(String[] strArr) throws IllegalAccessException, InstantiationException, ClassNotFoundException, NumberFormatException, IOException {
        repl.noConsole = false;
        int iProcessArgs = repl.processArgs(strArr, 0, strArr.length);
        repl.getLanguage();
        repl.setArgs(strArr, iProcessArgs);
        repl.checkInitFile();
        new GuiConsole();
    }

    public GuiConsole() {
        this(Language.getDefaultLanguage(), Environment.getCurrent(), false);
    }

    public GuiConsole(ReplDocument replDocument) {
        super("Kawa");
        init(replDocument);
    }

    public void init(ReplDocument replDocument) {
        this.document = replDocument;
        replDocument.addDocumentCloseListener(this);
        this.pane = new ReplPane(this.document);
        window_number++;
        setLayout(new BorderLayout(0, 0));
        add("Center", new JScrollPane(this.pane));
        setupMenus();
        int i = window_number;
        setLocation(i * 100, i * 50);
        setSize(700, 500);
        setVisible(true);
    }

    public GuiConsole(Language language, Environment environment, boolean z) throws ClassNotFoundException {
        super("Kawa");
        repl.getLanguage();
        init(new ReplDocument(language, environment, z));
    }

    @Override // kawa.ReplDocument.DocumentCloseListener
    public void closed(ReplDocument replDocument) {
        close();
    }

    public void close() {
        this.document.removeDocumentCloseListener(this);
        dispose();
    }

    private void setupMenus() {
        WindowAdapter windowAdapter = new WindowAdapter() { // from class: kawa.GuiConsole.1
            public void windowClosing(WindowEvent windowEvent) {
                GuiConsole.this.close();
            }
        };
        MenuBar menuBar = new MenuBar();
        Menu menu = new Menu("File");
        Menu menu2 = new Menu("Utilities");
        menuBar.add(menu);
        menuBar.add(menu2);
        MenuItem menuItem = new MenuItem(NEW);
        menuItem.addActionListener(this);
        menu.add(menuItem);
        MenuItem menuItem2 = new MenuItem(NEW_SHARED);
        menuItem2.addActionListener(this);
        menu.add(menuItem2);
        MenuItem menuItem3 = new MenuItem(CLOSE);
        menuItem3.addActionListener(this);
        menu.add(menuItem3);
        MenuItem menuItem4 = new MenuItem(EXIT);
        menuItem4.addActionListener(this);
        addWindowListener(windowAdapter);
        menu.add(menuItem4);
        MenuItem menuItem5 = new MenuItem(PURGE_MESSAGE);
        menuItem5.addActionListener(this);
        menu2.add(menuItem5);
        setMenuBar(menuBar);
    }

    public void actionPerformed(ActionEvent actionEvent) {
        String actionCommand = actionEvent.getActionCommand();
        if (actionCommand.equals(NEW)) {
            new GuiConsole(this.document.language, Environment.getGlobal(), false);
            return;
        }
        if (actionCommand.equals(NEW_SHARED)) {
            ReplDocument replDocument = this.document;
            new GuiConsole(replDocument.language, replDocument.environment, true);
        } else {
            if (actionCommand.equals(EXIT)) {
                System.exit(0);
                return;
            }
            if (actionCommand.equals(CLOSE)) {
                close();
            } else if (actionCommand.equals(PURGE_MESSAGE)) {
                this.pane.document.deleteOldText();
            } else {
                OutPort.outDefault().println("Unknown menu action: ".concat(actionCommand));
            }
        }
    }
}
