.class public Lcom/MobileTicket/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field public static context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/MobileTicket/MyApplication;

    const v1, 0xe

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static native getContext()Landroid/content/Context;
.end method


# virtual methods
.method public native onCreate()V
.end method
