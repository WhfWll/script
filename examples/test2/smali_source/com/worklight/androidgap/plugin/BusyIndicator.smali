.class public Lcom/worklight/androidgap/plugin/BusyIndicator;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "BusyIndicator.java"


# static fields
.field public static final ACTION_HIDE:Ljava/lang/String; = "hide"

.field public static final ACTION_SHOW:Ljava/lang/String; = "show"


# instance fields
.field private isShowing:Z

.field private spinnerDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/BusyIndicator;

    const v1, 0x459

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->isShowing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/worklight/androidgap/plugin/BusyIndicator;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/BusyIndicator;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/worklight/androidgap/plugin/BusyIndicator;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/BusyIndicator;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$102(Lcom/worklight/androidgap/plugin/BusyIndicator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/BusyIndicator;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->isShowing:Z

    return p1
.end method


# virtual methods
.method public native execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public native hide()V
.end method

.method public native isShowing()Z
.end method

.method public native show(Ljava/lang/String;)V
.end method
