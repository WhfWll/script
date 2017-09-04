.class public Lcom/worklight/androidgap/plugin/MyBusyIndicator;
.super Lcom/worklight/androidgap/plugin/BusyIndicator;
.source "MyBusyIndicator.java"


# instance fields
.field private isShowing:Z

.field private spinnerDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;

    const v1, 0x460

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/BusyIndicator;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->isShowing:Z

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/worklight/androidgap/plugin/MyBusyIndicator;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lcom/worklight/androidgap/plugin/MyBusyIndicator;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/worklight/androidgap/plugin/MyBusyIndicator;Z)V
    .registers 2

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->isShowing:Z

    return-void
.end method


# virtual methods
.method public native hide()V
.end method

.method public native isShowing()Z
.end method

.method public native show(Ljava/lang/String;)V
.end method
