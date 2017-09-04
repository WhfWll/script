.class public Lcom/tl/uic/util/ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenReceiver.java"


# static fields
.field private static final ROTATION_18O:I = 0xb4

.field private static final ROTATION_9O:I = 0x5a

.field private static final ROTATION_NEGATIVE_9O:I = -0x5a

.field private static final ROTATION_O:I


# instance fields
.field private height:I

.field private rotation:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/ScreenReceiver;

    const v1, 0x429

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tl/uic/util/ScreenReceiver;->rotation:I

    .line 55
    invoke-direct {p0}, Lcom/tl/uic/util/ScreenReceiver;->screenUpdate()Landroid/view/Display;

    .line 56
    return-void
.end method

.method private native screenUpdate()Landroid/view/Display;
.end method


# virtual methods
.method public final native getHeight()I
.end method

.method public final native getRotation()I
.end method

.method public final native getWidth()I
.end method

.method public final native onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method
