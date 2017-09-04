.class public final enum Lcn/domob/wall/core/bean/AdInfo$AdType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/bean/AdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/wall/core/bean/AdInfo$AdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPLICATION:Lcn/domob/wall/core/bean/AdInfo$AdType;

.field public static final enum GAME:Lcn/domob/wall/core/bean/AdInfo$AdType;

.field public static final enum NONE:Lcn/domob/wall/core/bean/AdInfo$AdType;

.field private static final synthetic a:[Lcn/domob/wall/core/bean/AdInfo$AdType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    new-instance v0, Lcn/domob/wall/core/bean/AdInfo$AdType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/bean/AdInfo$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo$AdType;->NONE:Lcn/domob/wall/core/bean/AdInfo$AdType;

    new-instance v0, Lcn/domob/wall/core/bean/AdInfo$AdType;

    const-string v1, "GAME"

    invoke-direct {v0, v1, v3}, Lcn/domob/wall/core/bean/AdInfo$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo$AdType;->GAME:Lcn/domob/wall/core/bean/AdInfo$AdType;

    new-instance v0, Lcn/domob/wall/core/bean/AdInfo$AdType;

    const-string v1, "APPLICATION"

    invoke-direct {v0, v1, v4}, Lcn/domob/wall/core/bean/AdInfo$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo$AdType;->APPLICATION:Lcn/domob/wall/core/bean/AdInfo$AdType;

    .line 204
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/domob/wall/core/bean/AdInfo$AdType;

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$AdType;->NONE:Lcn/domob/wall/core/bean/AdInfo$AdType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$AdType;->GAME:Lcn/domob/wall/core/bean/AdInfo$AdType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$AdType;->APPLICATION:Lcn/domob/wall/core/bean/AdInfo$AdType;

    aput-object v1, v0, v4

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo$AdType;->a:[Lcn/domob/wall/core/bean/AdInfo$AdType;

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
    .line 204
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/wall/core/bean/AdInfo$AdType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 204
    const-class v0, Lcn/domob/wall/core/bean/AdInfo$AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo$AdType;

    return-object v0
.end method

.method public static values()[Lcn/domob/wall/core/bean/AdInfo$AdType;
    .registers 1

    .prologue
    .line 204
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo$AdType;->a:[Lcn/domob/wall/core/bean/AdInfo$AdType;

    invoke-virtual {v0}, [Lcn/domob/wall/core/bean/AdInfo$AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/wall/core/bean/AdInfo$AdType;

    return-object v0
.end method
