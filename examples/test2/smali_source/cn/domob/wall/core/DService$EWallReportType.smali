.class public final enum Lcn/domob/wall/core/DService$EWallReportType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/DService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EWallReportType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/wall/core/DService$EWallReportType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum E_ENTRY_CLICK:Lcn/domob/wall/core/DService$EWallReportType;

.field public static final enum E_ENTRY_SHOW:Lcn/domob/wall/core/DService$EWallReportType;

.field public static final enum E_PAGE_CLICK:Lcn/domob/wall/core/DService$EWallReportType;

.field public static final enum E_PAGE_REQ:Lcn/domob/wall/core/DService$EWallReportType;

.field public static final enum E_PAGE_SHOW:Lcn/domob/wall/core/DService$EWallReportType;

.field public static final enum NONE:Lcn/domob/wall/core/DService$EWallReportType;

.field private static final synthetic a:[Lcn/domob/wall/core/DService$EWallReportType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 477
    new-instance v0, Lcn/domob/wall/core/DService$EWallReportType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcn/domob/wall/core/DService$EWallReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$EWallReportType;->NONE:Lcn/domob/wall/core/DService$EWallReportType;

    new-instance v0, Lcn/domob/wall/core/DService$EWallReportType;

    const-string v1, "E_ENTRY_SHOW"

    invoke-direct {v0, v1, v4}, Lcn/domob/wall/core/DService$EWallReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$EWallReportType;->E_ENTRY_SHOW:Lcn/domob/wall/core/DService$EWallReportType;

    new-instance v0, Lcn/domob/wall/core/DService$EWallReportType;

    const-string v1, "E_ENTRY_CLICK"

    invoke-direct {v0, v1, v5}, Lcn/domob/wall/core/DService$EWallReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$EWallReportType;->E_ENTRY_CLICK:Lcn/domob/wall/core/DService$EWallReportType;

    new-instance v0, Lcn/domob/wall/core/DService$EWallReportType;

    const-string v1, "E_PAGE_REQ"

    invoke-direct {v0, v1, v6}, Lcn/domob/wall/core/DService$EWallReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$EWallReportType;->E_PAGE_REQ:Lcn/domob/wall/core/DService$EWallReportType;

    new-instance v0, Lcn/domob/wall/core/DService$EWallReportType;

    const-string v1, "E_PAGE_SHOW"

    invoke-direct {v0, v1, v7}, Lcn/domob/wall/core/DService$EWallReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$EWallReportType;->E_PAGE_SHOW:Lcn/domob/wall/core/DService$EWallReportType;

    new-instance v0, Lcn/domob/wall/core/DService$EWallReportType;

    const-string v1, "E_PAGE_CLICK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/DService$EWallReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$EWallReportType;->E_PAGE_CLICK:Lcn/domob/wall/core/DService$EWallReportType;

    .line 476
    const/4 v0, 0x6

    new-array v0, v0, [Lcn/domob/wall/core/DService$EWallReportType;

    sget-object v1, Lcn/domob/wall/core/DService$EWallReportType;->NONE:Lcn/domob/wall/core/DService$EWallReportType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/wall/core/DService$EWallReportType;->E_ENTRY_SHOW:Lcn/domob/wall/core/DService$EWallReportType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/domob/wall/core/DService$EWallReportType;->E_ENTRY_CLICK:Lcn/domob/wall/core/DService$EWallReportType;

    aput-object v1, v0, v5

    sget-object v1, Lcn/domob/wall/core/DService$EWallReportType;->E_PAGE_REQ:Lcn/domob/wall/core/DService$EWallReportType;

    aput-object v1, v0, v6

    sget-object v1, Lcn/domob/wall/core/DService$EWallReportType;->E_PAGE_SHOW:Lcn/domob/wall/core/DService$EWallReportType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/domob/wall/core/DService$EWallReportType;->E_PAGE_CLICK:Lcn/domob/wall/core/DService$EWallReportType;

    aput-object v2, v0, v1

    sput-object v0, Lcn/domob/wall/core/DService$EWallReportType;->a:[Lcn/domob/wall/core/DService$EWallReportType;

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
    .line 476
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/wall/core/DService$EWallReportType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 476
    const-class v0, Lcn/domob/wall/core/DService$EWallReportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/DService$EWallReportType;

    return-object v0
.end method

.method public static values()[Lcn/domob/wall/core/DService$EWallReportType;
    .registers 1

    .prologue
    .line 476
    sget-object v0, Lcn/domob/wall/core/DService$EWallReportType;->a:[Lcn/domob/wall/core/DService$EWallReportType;

    invoke-virtual {v0}, [Lcn/domob/wall/core/DService$EWallReportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/wall/core/DService$EWallReportType;

    return-object v0
.end method
