.class public Lcn/dm/download/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static DefaultStorageFile:Ljava/lang/String; = null

.field public static final DownloadErrorFlag_NoSDCard:I = 0x1

.field public static final DownloadStatus_CanUpdate:I = 0x6

.field public static final DownloadStatus_Failed:I = 0x8

.field public static final DownloadStatus_Finished:I = 0x4

.field public static final DownloadStatus_Installed:I = 0x5

.field public static final DownloadStatus_NotStart:I = 0x0

.field public static final DownloadStatus_NotWaiting:I = 0x7

.field public static final DownloadStatus_Paused:I = 0x3

.field public static final DownloadStatus_Started:I = 0x2

.field public static final DownloadStatus_Uninstalled:I = 0x9

.field public static final DownloadStatus_WaitingStart:I = 0x1

.field public static DownloadUrlWrong:I = 0x0

.field public static final Download_IsThirdInstalled:I = 0x1

.field public static MaxDownloadThread:I

.field public static Unfinished_Sign:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4
    const/4 v0, 0x2

    sput v0, Lcn/dm/download/util/Constants;->MaxDownloadThread:I

    .line 5
    const/4 v0, -0x1

    sput v0, Lcn/dm/download/util/Constants;->DownloadUrlWrong:I

    .line 6
    const-string v0, ".temp"

    sput-object v0, Lcn/dm/download/util/Constants;->Unfinished_Sign:Ljava/lang/String;

    .line 7
    const-string v0, "DMDownload"

    sput-object v0, Lcn/dm/download/util/Constants;->DefaultStorageFile:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
