.class public final Lcom/worklight/utils/WLAlertDialog;
.super Ljava/lang/Object;
.source "WLAlertDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final exitListener:Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private clickListener:Landroid/content/DialogInterface$OnClickListener;

.field private message:Ljava/lang/String;

.field private positiveButtonText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/utils/WLAlertDialog;

    const v1, 0x4c2

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    new-instance v0, Lcom/worklight/utils/WLAlertDialog$1;

    invoke-direct {v0}, Lcom/worklight/utils/WLAlertDialog$1;-><init>()V

    sput-object v0, Lcom/worklight/utils/WLAlertDialog;->exitListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "WLClient.close"

    invoke-direct {p0, p1, p2, v0}, Lcom/worklight/utils/WLAlertDialog;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "positiveButtonText"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/worklight/utils/WLAlertDialog;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private native init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public native getClickListener()Landroid/content/DialogInterface$OnClickListener;
.end method

.method public native getMessage()Ljava/lang/String;
.end method

.method public native getPositiveButtonText()Ljava/lang/String;
.end method

.method public native getTitle()Ljava/lang/String;
.end method

.method public native run()V
.end method

.method public native setClickListener(Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method public native setMessage(Ljava/lang/String;)V
.end method

.method public native setPositiveButtonText(Ljava/lang/String;)V
.end method

.method public native setTitle(Ljava/lang/String;)V
.end method

.method public native show()V
.end method
