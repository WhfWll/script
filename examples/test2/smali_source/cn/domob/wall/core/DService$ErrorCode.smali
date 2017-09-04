.class public final enum Lcn/domob/wall/core/DService$ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/DService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/wall/core/DService$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INTERNAL_ERROR:Lcn/domob/wall/core/DService$ErrorCode;

.field public static final enum INVALID_REQUEST:Lcn/domob/wall/core/DService$ErrorCode;

.field public static final enum NETWORK_ERROR:Lcn/domob/wall/core/DService$ErrorCode;

.field public static final enum NONE:Lcn/domob/wall/core/DService$ErrorCode;

.field public static final enum NO_FILL:Lcn/domob/wall/core/DService$ErrorCode;

.field private static final synthetic a:[Lcn/domob/wall/core/DService$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 280
    new-instance v0, Lcn/domob/wall/core/DService$ErrorCode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/DService$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$ErrorCode;->NONE:Lcn/domob/wall/core/DService$ErrorCode;

    new-instance v0, Lcn/domob/wall/core/DService$ErrorCode;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v3}, Lcn/domob/wall/core/DService$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$ErrorCode;->INTERNAL_ERROR:Lcn/domob/wall/core/DService$ErrorCode;

    new-instance v0, Lcn/domob/wall/core/DService$ErrorCode;

    const-string v1, "INVALID_REQUEST"

    invoke-direct {v0, v1, v4}, Lcn/domob/wall/core/DService$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$ErrorCode;->INVALID_REQUEST:Lcn/domob/wall/core/DService$ErrorCode;

    new-instance v0, Lcn/domob/wall/core/DService$ErrorCode;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v5}, Lcn/domob/wall/core/DService$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$ErrorCode;->NETWORK_ERROR:Lcn/domob/wall/core/DService$ErrorCode;

    new-instance v0, Lcn/domob/wall/core/DService$ErrorCode;

    const-string v1, "NO_FILL"

    invoke-direct {v0, v1, v6}, Lcn/domob/wall/core/DService$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/DService$ErrorCode;->NO_FILL:Lcn/domob/wall/core/DService$ErrorCode;

    .line 279
    const/4 v0, 0x5

    new-array v0, v0, [Lcn/domob/wall/core/DService$ErrorCode;

    sget-object v1, Lcn/domob/wall/core/DService$ErrorCode;->NONE:Lcn/domob/wall/core/DService$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/wall/core/DService$ErrorCode;->INTERNAL_ERROR:Lcn/domob/wall/core/DService$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/wall/core/DService$ErrorCode;->INVALID_REQUEST:Lcn/domob/wall/core/DService$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcn/domob/wall/core/DService$ErrorCode;->NETWORK_ERROR:Lcn/domob/wall/core/DService$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcn/domob/wall/core/DService$ErrorCode;->NO_FILL:Lcn/domob/wall/core/DService$ErrorCode;

    aput-object v1, v0, v6

    sput-object v0, Lcn/domob/wall/core/DService$ErrorCode;->a:[Lcn/domob/wall/core/DService$ErrorCode;

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
    .line 279
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/wall/core/DService$ErrorCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 279
    const-class v0, Lcn/domob/wall/core/DService$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/DService$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcn/domob/wall/core/DService$ErrorCode;
    .registers 1

    .prologue
    .line 279
    sget-object v0, Lcn/domob/wall/core/DService$ErrorCode;->a:[Lcn/domob/wall/core/DService$ErrorCode;

    invoke-virtual {v0}, [Lcn/domob/wall/core/DService$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/wall/core/DService$ErrorCode;

    return-object v0
.end method
