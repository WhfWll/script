.class public final enum Lcn/domob/wall/core/bean/AdInfo$ClickActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/bean/AdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClickActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/wall/core/bean/AdInfo$ClickActionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOWNLOAD:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

.field public static final enum EXTERNAL_BROWSER:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

.field public static final enum INSTALL:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

.field public static final enum INTERNAL_BROWSER:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

.field public static final enum LAUNCH:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

.field public static final enum NONE:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

.field public static final enum UPDATE:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

.field private static final synthetic a:[Lcn/domob/wall/core/bean/AdInfo$ClickActionType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 198
    new-instance v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->NONE:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    new-instance v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v4}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->DOWNLOAD:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    new-instance v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    const-string v1, "INTERNAL_BROWSER"

    invoke-direct {v0, v1, v5}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->INTERNAL_BROWSER:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    new-instance v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    const-string v1, "EXTERNAL_BROWSER"

    invoke-direct {v0, v1, v6}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->EXTERNAL_BROWSER:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    new-instance v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    const-string v1, "LAUNCH"

    invoke-direct {v0, v1, v7}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->LAUNCH:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    new-instance v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    const-string v1, "UPDATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->UPDATE:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    new-instance v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    const-string v1, "INSTALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->INSTALL:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    .line 197
    const/4 v0, 0x7

    new-array v0, v0, [Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->NONE:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->DOWNLOAD:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->INTERNAL_BROWSER:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->EXTERNAL_BROWSER:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->LAUNCH:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->UPDATE:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->INSTALL:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->a:[Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

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
    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/wall/core/bean/AdInfo$ClickActionType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 197
    const-class v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    return-object v0
.end method

.method public static values()[Lcn/domob/wall/core/bean/AdInfo$ClickActionType;
    .registers 1

    .prologue
    .line 197
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->a:[Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-virtual {v0}, [Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    return-object v0
.end method
