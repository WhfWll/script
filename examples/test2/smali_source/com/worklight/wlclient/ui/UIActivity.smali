.class public Lcom/worklight/wlclient/ui/UIActivity;
.super Landroid/app/Activity;
.source "UIActivity.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/ui/UIActivity;

    const v1, 0x4ee

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/worklight/wlclient/ui/UIActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/worklight/wlclient/ui/UIActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/ui/UIActivity;->openURL(Ljava/lang/String;)V

    return-void
.end method

.method private native createAndShowDialogue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method private native exitApplication()V
.end method

.method private native handleDialogue(Ljava/lang/String;)V
.end method

.method private native handleExitDialogue(Landroid/content/Intent;)V
.end method

.method private native handleNotifyDialogue(Landroid/content/Intent;)V
.end method

.method private native handleRemoteDisableDialogue(Landroid/content/Intent;)V
.end method

.method private native openURL(Ljava/lang/String;)V
.end method


# virtual methods
.method public native onCreate(Landroid/os/Bundle;)V
.end method

.method public native onCreateOptionsMenu(Landroid/view/Menu;)Z
.end method
