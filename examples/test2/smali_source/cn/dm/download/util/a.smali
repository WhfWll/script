.class public final Lcn/dm/download/util/a;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# static fields
.field private static aw:Lcn/dm/download/util/a;

.field private static ax:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput v0, Lcn/dm/download/util/a;->ax:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcn/dm/download/util/a;->mContext:Landroid/content/Context;

    .line 16
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/dm/download/util/a;->mNotificationManager:Landroid/app/NotificationManager;

    .line 17
    return-void
.end method

.method private a(I)V
    .registers 6

    .prologue
    .line 27
    iget-object v0, p0, Lcn/dm/download/util/a;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_10

    .line 28
    iget-object v0, p0, Lcn/dm/download/util/a;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/dm/download/util/a;->mNotificationManager:Landroid/app/NotificationManager;

    .line 30
    :cond_10
    sget v0, Lcn/dm/download/util/a;->ax:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/dm/download/util/a;->ax:I

    .line 31
    new-instance v0, Landroid/app/Notification;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcn/dm/download/util/a;->ax:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u4e2a\u5e94\u7528\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 32
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 36
    return-void
.end method

.method private static c(Landroid/content/Context;)Lcn/dm/download/util/a;
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lcn/dm/download/util/a;->aw:Lcn/dm/download/util/a;

    if-nez v0, :cond_b

    .line 21
    new-instance v0, Lcn/dm/download/util/a;

    invoke-direct {v0, p0}, Lcn/dm/download/util/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/dm/download/util/a;->aw:Lcn/dm/download/util/a;

    .line 23
    :cond_b
    sget-object v0, Lcn/dm/download/util/a;->aw:Lcn/dm/download/util/a;

    return-object v0
.end method
