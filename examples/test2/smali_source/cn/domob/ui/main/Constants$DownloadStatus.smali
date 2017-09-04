.class public final enum Lcn/domob/ui/main/Constants$DownloadStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/main/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/ui/main/Constants$DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/domob/ui/main/Constants$DownloadStatus;

.field public static final enum DOWNLOADCANCEL:Lcn/domob/ui/main/Constants$DownloadStatus;

.field public static final enum DOWNLOADFAILED:Lcn/domob/ui/main/Constants$DownloadStatus;

.field public static final enum DOWNLOADPAUSE:Lcn/domob/ui/main/Constants$DownloadStatus;

.field public static final enum DOWNLOADRESUME:Lcn/domob/ui/main/Constants$DownloadStatus;

.field public static final enum DOWNLOADSTART:Lcn/domob/ui/main/Constants$DownloadStatus;

.field public static final enum DOWNLOADSUCCESS:Lcn/domob/ui/main/Constants$DownloadStatus;

.field public static final enum DOWNLOADWAITING:Lcn/domob/ui/main/Constants$DownloadStatus;

.field public static final enum INSTALLSUCCESS:Lcn/domob/ui/main/Constants$DownloadStatus;

.field public static final enum PROGRESSCHANGE:Lcn/domob/ui/main/Constants$DownloadStatus;

.field public static final enum UNINSTALLSUCCESS:Lcn/domob/ui/main/Constants$DownloadStatus;

.field public static final enum UNKNOWN:Lcn/domob/ui/main/Constants$DownloadStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcn/domob/ui/main/Constants$DownloadStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcn/domob/ui/main/Constants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->UNKNOWN:Lcn/domob/ui/main/Constants$DownloadStatus;

    .line 7
    new-instance v0, Lcn/domob/ui/main/Constants$DownloadStatus;

    const-string v1, "DOWNLOADSTART"

    invoke-direct {v0, v1, v4}, Lcn/domob/ui/main/Constants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADSTART:Lcn/domob/ui/main/Constants$DownloadStatus;

    .line 8
    new-instance v0, Lcn/domob/ui/main/Constants$DownloadStatus;

    const-string v1, "DOWNLOADSUCCESS"

    invoke-direct {v0, v1, v5}, Lcn/domob/ui/main/Constants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADSUCCESS:Lcn/domob/ui/main/Constants$DownloadStatus;

    .line 9
    new-instance v0, Lcn/domob/ui/main/Constants$DownloadStatus;

    const-string v1, "DOWNLOADPAUSE"

    invoke-direct {v0, v1, v6}, Lcn/domob/ui/main/Constants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADPAUSE:Lcn/domob/ui/main/Constants$DownloadStatus;

    .line 10
    new-instance v0, Lcn/domob/ui/main/Constants$DownloadStatus;

    const-string v1, "DOWNLOADCANCEL"

    invoke-direct {v0, v1, v7}, Lcn/domob/ui/main/Constants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADCANCEL:Lcn/domob/ui/main/Constants$DownloadStatus;

    .line 11
    new-instance v0, Lcn/domob/ui/main/Constants$DownloadStatus;

    const-string v1, "DOWNLOADRESUME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/domob/ui/main/Constants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADRESUME:Lcn/domob/ui/main/Constants$DownloadStatus;

    .line 12
    new-instance v0, Lcn/domob/ui/main/Constants$DownloadStatus;

    const-string v1, "DOWNLOADWAITING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/domob/ui/main/Constants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADWAITING:Lcn/domob/ui/main/Constants$DownloadStatus;

    .line 13
    new-instance v0, Lcn/domob/ui/main/Constants$DownloadStatus;

    const-string v1, "DOWNLOADFAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcn/domob/ui/main/Constants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADFAILED:Lcn/domob/ui/main/Constants$DownloadStatus;

    .line 14
    new-instance v0, Lcn/domob/ui/main/Constants$DownloadStatus;

    const-string v1, "INSTALLSUCCESS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcn/domob/ui/main/Constants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->INSTALLSUCCESS:Lcn/domob/ui/main/Constants$DownloadStatus;

    .line 15
    new-instance v0, Lcn/domob/ui/main/Constants$DownloadStatus;

    const-string v1, "UNINSTALLSUCCESS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcn/domob/ui/main/Constants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->UNINSTALLSUCCESS:Lcn/domob/ui/main/Constants$DownloadStatus;

    .line 16
    new-instance v0, Lcn/domob/ui/main/Constants$DownloadStatus;

    const-string v1, "PROGRESSCHANGE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcn/domob/ui/main/Constants$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->PROGRESSCHANGE:Lcn/domob/ui/main/Constants$DownloadStatus;

    .line 5
    const/16 v0, 0xb

    new-array v0, v0, [Lcn/domob/ui/main/Constants$DownloadStatus;

    sget-object v1, Lcn/domob/ui/main/Constants$DownloadStatus;->UNKNOWN:Lcn/domob/ui/main/Constants$DownloadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADSTART:Lcn/domob/ui/main/Constants$DownloadStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADSUCCESS:Lcn/domob/ui/main/Constants$DownloadStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADPAUSE:Lcn/domob/ui/main/Constants$DownloadStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADCANCEL:Lcn/domob/ui/main/Constants$DownloadStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADRESUME:Lcn/domob/ui/main/Constants$DownloadStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADWAITING:Lcn/domob/ui/main/Constants$DownloadStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADFAILED:Lcn/domob/ui/main/Constants$DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcn/domob/ui/main/Constants$DownloadStatus;->INSTALLSUCCESS:Lcn/domob/ui/main/Constants$DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcn/domob/ui/main/Constants$DownloadStatus;->UNINSTALLSUCCESS:Lcn/domob/ui/main/Constants$DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcn/domob/ui/main/Constants$DownloadStatus;->PROGRESSCHANGE:Lcn/domob/ui/main/Constants$DownloadStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->$VALUES:[Lcn/domob/ui/main/Constants$DownloadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/ui/main/Constants$DownloadStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/main/Constants$DownloadStatus;

    return-object v0
.end method

.method public static values()[Lcn/domob/ui/main/Constants$DownloadStatus;
    .registers 1

    .prologue
    .line 5
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->$VALUES:[Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-virtual {v0}, [Lcn/domob/ui/main/Constants$DownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/ui/main/Constants$DownloadStatus;

    return-object v0
.end method
