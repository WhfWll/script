.class public Lcom/worklight/androidgap/WLForegroundService$ForegroundBinder;
.super Landroid/os/Binder;
.source "WLForegroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/WLForegroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForegroundBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/WLForegroundService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/WLForegroundService$ForegroundBinder;

    const v1, 0x440

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/worklight/androidgap/WLForegroundService;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/worklight/androidgap/WLForegroundService$ForegroundBinder;->this$0:Lcom/worklight/androidgap/WLForegroundService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public native makeForeground(ILandroid/app/Notification;)V
.end method
