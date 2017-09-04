.class public Lcom/tl/uic/app/UICApplication;
.super Landroid/app/Application;
.source "UICApplication.java"


# instance fields
.field private tealeaf:Lcom/tl/uic/Tealeaf;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/app/UICApplication;

    const v1, 0x404

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final native getTealeaf()Lcom/tl/uic/Tealeaf;
.end method

.method public native onCreate()V
.end method

.method public native onLowMemory()V
.end method

.method public native onTerminate()V
.end method
