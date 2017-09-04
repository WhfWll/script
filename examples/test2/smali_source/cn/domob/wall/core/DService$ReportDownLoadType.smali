.class public final enum Lcn/domob/wall/core/DService$ReportDownLoadType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/DService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReportDownLoadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/wall/core/DService$ReportDownLoadType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTO_RUN:Lcn/domob/wall/core/DService$ReportDownLoadType;

.field public static final enum DL_CANCEL:Lcn/domob/wall/core/DService$ReportDownLoadType;

.field public static final enum DL_FAILED:Lcn/domob/wall/core/DService$ReportDownLoadType;

.field public static final enum DL_FINISH:Lcn/domob/wall/core/DService$ReportDownLoadType;

.field public static final enum DL_REPEAT:Lcn/domob/wall/core/DService$ReportDownLoadType;

.field public static final enum DL_START:Lcn/domob/wall/core/DService$ReportDownLoadType;

.field public static final enum INSTALL_SUCCESS:Lcn/domob/wall/core/DService$ReportDownLoadType;

.field public static final enum NONE:Lcn/domob/wall/core/DService$ReportDownLoadType;

.field private static final synthetic a:[Lcn/domob/wall/core/DService$ReportDownLoadType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 293
    new-instance v0, Lcn/domob/wall/core/DService$ReportDownLoadType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcn/domob/wall/core/DService$ReportDownLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$ReportDownLoadType;->NONE:Lcn/domob/wall/core/DService$ReportDownLoadType;

    new-instance v0, Lcn/domob/wall/core/DService$ReportDownLoadType;

    const-string v1, "DL_START"

    invoke-direct {v0, v1, v4}, Lcn/domob/wall/core/DService$ReportDownLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_START:Lcn/domob/wall/core/DService$ReportDownLoadType;

    new-instance v0, Lcn/domob/wall/core/DService$ReportDownLoadType;

    const-string v1, "DL_REPEAT"

    invoke-direct {v0, v1, v5}, Lcn/domob/wall/core/DService$ReportDownLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_REPEAT:Lcn/domob/wall/core/DService$ReportDownLoadType;

    new-instance v0, Lcn/domob/wall/core/DService$ReportDownLoadType;

    const-string v1, "DL_FINISH"

    invoke-direct {v0, v1, v6}, Lcn/domob/wall/core/DService$ReportDownLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_FINISH:Lcn/domob/wall/core/DService$ReportDownLoadType;

    new-instance v0, Lcn/domob/wall/core/DService$ReportDownLoadType;

    const-string v1, "DL_FAILED"

    invoke-direct {v0, v1, v7}, Lcn/domob/wall/core/DService$ReportDownLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_FAILED:Lcn/domob/wall/core/DService$ReportDownLoadType;

    new-instance v0, Lcn/domob/wall/core/DService$ReportDownLoadType;

    const-string v1, "DL_CANCEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/DService$ReportDownLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_CANCEL:Lcn/domob/wall/core/DService$ReportDownLoadType;

    new-instance v0, Lcn/domob/wall/core/DService$ReportDownLoadType;

    const-string v1, "INSTALL_SUCCESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/DService$ReportDownLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$ReportDownLoadType;->INSTALL_SUCCESS:Lcn/domob/wall/core/DService$ReportDownLoadType;

    new-instance v0, Lcn/domob/wall/core/DService$ReportDownLoadType;

    const-string v1, "AUTO_RUN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/DService$ReportDownLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$ReportDownLoadType;->AUTO_RUN:Lcn/domob/wall/core/DService$ReportDownLoadType;

    .line 291
    const/16 v0, 0x8

    new-array v0, v0, [Lcn/domob/wall/core/DService$ReportDownLoadType;

    sget-object v1, Lcn/domob/wall/core/DService$ReportDownLoadType;->NONE:Lcn/domob/wall/core/DService$ReportDownLoadType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_START:Lcn/domob/wall/core/DService$ReportDownLoadType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_REPEAT:Lcn/domob/wall/core/DService$ReportDownLoadType;

    aput-object v1, v0, v5

    sget-object v1, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_FINISH:Lcn/domob/wall/core/DService$ReportDownLoadType;

    aput-object v1, v0, v6

    sget-object v1, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_FAILED:Lcn/domob/wall/core/DService$ReportDownLoadType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_CANCEL:Lcn/domob/wall/core/DService$ReportDownLoadType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/domob/wall/core/DService$ReportDownLoadType;->INSTALL_SUCCESS:Lcn/domob/wall/core/DService$ReportDownLoadType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/domob/wall/core/DService$ReportDownLoadType;->AUTO_RUN:Lcn/domob/wall/core/DService$ReportDownLoadType;

    aput-object v2, v0, v1

    sput-object v0, Lcn/domob/wall/core/DService$ReportDownLoadType;->a:[Lcn/domob/wall/core/DService$ReportDownLoadType;

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
    .line 291
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/wall/core/DService$ReportDownLoadType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 291
    const-class v0, Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/DService$ReportDownLoadType;

    return-object v0
.end method

.method public static values()[Lcn/domob/wall/core/DService$ReportDownLoadType;
    .registers 1

    .prologue
    .line 291
    sget-object v0, Lcn/domob/wall/core/DService$ReportDownLoadType;->a:[Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-virtual {v0}, [Lcn/domob/wall/core/DService$ReportDownLoadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/wall/core/DService$ReportDownLoadType;

    return-object v0
.end method
