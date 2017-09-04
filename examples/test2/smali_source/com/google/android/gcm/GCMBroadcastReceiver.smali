.class public Lcom/google/android/gcm/GCMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GCMBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GCMBroadcastReceiver"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/android/gcm/GCMBroadcastReceiver;

    const v1, 0x132

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected native getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public final native onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method
