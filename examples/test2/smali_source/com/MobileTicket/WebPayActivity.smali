.class public Lcom/MobileTicket/WebPayActivity;
.super Landroid/app/Activity;
.source "WebPayActivity.java"


# static fields
.field private static callJSFlag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/MobileTicket/WebPayActivity;

    const v1, 0x16

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/MobileTicket/WebPayActivity;->callJSFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static native isCallJSFlag()Z
.end method

.method public static native setCallJSFlag(Z)V
.end method


# virtual methods
.method public native onCreate(Landroid/os/Bundle;)V
.end method
