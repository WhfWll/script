.class public final enum Lcn/domob/wall/core/bean/AdInfo$AdStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/bean/AdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/wall/core/bean/AdInfo$AdStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BANNER:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

.field public static final enum HOUSE_AD:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

.field public static final enum NONE:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

.field public static final enum XX:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

.field private static final synthetic a:[Lcn/domob/wall/core/bean/AdInfo$AdStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    new-instance v0, Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/bean/AdInfo$AdStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo$AdStyle;->NONE:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    new-instance v0, Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v3}, Lcn/domob/wall/core/bean/AdInfo$AdStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo$AdStyle;->BANNER:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    new-instance v0, Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    const-string v1, "HOUSE_AD"

    invoke-direct {v0, v1, v4}, Lcn/domob/wall/core/bean/AdInfo$AdStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo$AdStyle;->HOUSE_AD:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    new-instance v0, Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    const-string v1, "XX"

    invoke-direct {v0, v1, v5}, Lcn/domob/wall/core/bean/AdInfo$AdStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo$AdStyle;->XX:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    .line 193
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$AdStyle;->NONE:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$AdStyle;->BANNER:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$AdStyle;->HOUSE_AD:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$AdStyle;->XX:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    aput-object v1, v0, v5

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo$AdStyle;->a:[Lcn/domob/wall/core/bean/AdInfo$AdStyle;

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
    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/wall/core/bean/AdInfo$AdStyle;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 193
    const-class v0, Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    return-object v0
.end method

.method public static values()[Lcn/domob/wall/core/bean/AdInfo$AdStyle;
    .registers 1

    .prologue
    .line 193
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo$AdStyle;->a:[Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    invoke-virtual {v0}, [Lcn/domob/wall/core/bean/AdInfo$AdStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    return-object v0
.end method
