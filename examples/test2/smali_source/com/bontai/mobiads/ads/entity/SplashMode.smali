.class public final enum Lcom/bontai/mobiads/ads/entity/SplashMode;
.super Ljava/lang/Enum;
.source "SplashMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bontai/mobiads/ads/entity/SplashMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/bontai/mobiads/ads/entity/SplashMode;

.field public static final enum SplashDetailActicity:Lcom/bontai/mobiads/ads/entity/SplashMode;

.field public static final enum SplashMainActivity:Lcom/bontai/mobiads/ads/entity/SplashMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/bontai/mobiads/ads/entity/SplashMode;

    const-string v1, "SplashDetailActicity"

    invoke-direct {v0, v1, v2}, Lcom/bontai/mobiads/ads/entity/SplashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bontai/mobiads/ads/entity/SplashMode;->SplashDetailActicity:Lcom/bontai/mobiads/ads/entity/SplashMode;

    .line 6
    new-instance v0, Lcom/bontai/mobiads/ads/entity/SplashMode;

    const-string v1, "SplashMainActivity"

    invoke-direct {v0, v1, v3}, Lcom/bontai/mobiads/ads/entity/SplashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bontai/mobiads/ads/entity/SplashMode;->SplashMainActivity:Lcom/bontai/mobiads/ads/entity/SplashMode;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bontai/mobiads/ads/entity/SplashMode;

    sget-object v1, Lcom/bontai/mobiads/ads/entity/SplashMode;->SplashDetailActicity:Lcom/bontai/mobiads/ads/entity/SplashMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bontai/mobiads/ads/entity/SplashMode;->SplashMainActivity:Lcom/bontai/mobiads/ads/entity/SplashMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/bontai/mobiads/ads/entity/SplashMode;->ENUM$VALUES:[Lcom/bontai/mobiads/ads/entity/SplashMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bontai/mobiads/ads/entity/SplashMode;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/bontai/mobiads/ads/entity/SplashMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bontai/mobiads/ads/entity/SplashMode;

    return-object v0
.end method

.method public static values()[Lcom/bontai/mobiads/ads/entity/SplashMode;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/bontai/mobiads/ads/entity/SplashMode;->ENUM$VALUES:[Lcom/bontai/mobiads/ads/entity/SplashMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/bontai/mobiads/ads/entity/SplashMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
