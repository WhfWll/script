.class public Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;
.super Ljava/lang/Object;
.source "WLDroidGap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/WLDroidGap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrepackagedAssetsManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$Checksum;
    }
.end annotation


# static fields
.field private static final APP_INSTALL_TIME_KEY:Ljava/lang/String; = "appInstallTime"

.field private static final RESOURCES_ZIP:Ljava/lang/String; = "resources.zip"


# instance fields
.field private appInstallTime:J

.field final synthetic this$0:Lcom/worklight/androidgap/WLDroidGap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;

    const v1, 0x43e

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/worklight/androidgap/WLDroidGap;)V
    .registers 4

    .prologue
    .line 435
    iput-object p1, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->appInstallTime:J

    .line 637
    return-void
.end method

.method static synthetic access$400(Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->copyPrepackagedAssetsToLocalCopyIfNeeded()V

    return-void
.end method

.method private native copyPrepackagedAssetsToLocalCopyIfNeeded()V
.end method

.method private native deleteOldAssets()V
.end method

.method private native handleNotEnoughSpace(Ljava/lang/Long;J)V
.end method

.method private native isNewInstallOrUpgrade()Z
.end method

.method private native isResourcesZippedInBundle()Z
.end method

.method private native setNewInstallTime()V
.end method

.method private native unzipAssetsToLocalCopy()Z
.end method
