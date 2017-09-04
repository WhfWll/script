.class public Lcom/tl/uic/util/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryReceiver.java"


# instance fields
.field private health:I

.field private plugged:I

.field private present:Z

.field private scale:I

.field private status:I

.field private technology:Ljava/lang/String;

.field private temperature:I

.field private value:I

.field private voltage:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/BatteryReceiver;

    const v1, 0x41c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->value:I

    .line 16
    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->health:I

    .line 17
    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->plugged:I

    .line 18
    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->status:I

    .line 19
    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->temperature:I

    .line 20
    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->voltage:I

    .line 21
    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->scale:I

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tl/uic/util/BatteryReceiver;->present:Z

    .line 14
    return-void
.end method


# virtual methods
.method public final native getHealth()I
.end method

.method public final native getPlugged()I
.end method

.method public final native getScale()I
.end method

.method public final native getStatus()I
.end method

.method public final native getTechnology()Ljava/lang/String;
.end method

.method public final native getTemperature()I
.end method

.method public final native getValue()I
.end method

.method public final native getVoltage()I
.end method

.method public final native isPresent()Z
.end method

.method public final native onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method
