.class public Lcom/MobileTicket/ScreenShotSaveImg;
.super Landroid/app/Activity;
.source "ScreenShotSaveImg.java"


# static fields
.field public static final NOTIFY_CONTENT:Ljava/lang/String; = "\u5df2\u4fdd\u5b58\u81f3\u624b\u673a/Pictures/Screenshots/\u76ee\u5f55"

.field public static final NOTIFY_ICON:I = 0x7f020031

.field public static final NOTIFY_ID:I = 0x64

.field public static final NOTIFY_MSG:Ljava/lang/String; = "\u6b63\u5728\u4fdd\u5b58\u56fe\u7247"

.field public static final NOTIFY_TITLE:Ljava/lang/String; = "\u9875\u9762\u622a\u56fe\u5df2\u4fdd\u5b58"


# instance fields
.field nM:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/MobileTicket/ScreenShotSaveImg;

    const v1, 0x11

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public native checkStat(Ljava/io/File;)V
.end method

.method public native onCreate(Landroid/os/Bundle;)V
.end method

.method public native showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
.end method
