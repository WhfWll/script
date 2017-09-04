.class public final enum Lcn/domob/android/ads/DomobAdManager$ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/DomobAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/android/ads/DomobAdManager$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

.field public static final enum INVALID_REQUEST:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

.field public static final enum NETWORK_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

.field public static final enum NO_FILL:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

.field public static final enum RT_SPLASH_TIMEOUT_LOAD_RESOURCE:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

.field public static final enum RT_SPLASH_TIMEOUT_REQUEST_AD:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

.field private static final synthetic a:[Lcn/domob/android/ads/DomobAdManager$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    new-instance v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v3}, Lcn/domob/android/ads/DomobAdManager$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    new-instance v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v1, "INVALID_REQUEST"

    invoke-direct {v0, v1, v4}, Lcn/domob/android/ads/DomobAdManager$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INVALID_REQUEST:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    new-instance v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v5}, Lcn/domob/android/ads/DomobAdManager$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->NETWORK_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    new-instance v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v1, "NO_FILL"

    invoke-direct {v0, v1, v6}, Lcn/domob/android/ads/DomobAdManager$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->NO_FILL:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    new-instance v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v1, "RT_SPLASH_TIMEOUT_LOAD_RESOURCE"

    invoke-direct {v0, v1, v7}, Lcn/domob/android/ads/DomobAdManager$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->RT_SPLASH_TIMEOUT_LOAD_RESOURCE:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    new-instance v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v1, "RT_SPLASH_TIMEOUT_REQUEST_AD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/DomobAdManager$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->RT_SPLASH_TIMEOUT_REQUEST_AD:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    .line 82
    const/4 v0, 0x6

    new-array v0, v0, [Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INVALID_REQUEST:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->NETWORK_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->NO_FILL:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->RT_SPLASH_TIMEOUT_LOAD_RESOURCE:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->RT_SPLASH_TIMEOUT_REQUEST_AD:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->a:[Lcn/domob/android/ads/DomobAdManager$ErrorCode;

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
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/android/ads/DomobAdManager$ErrorCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    const-class v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcn/domob/android/ads/DomobAdManager$ErrorCode;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->a:[Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {v0}, [Lcn/domob/android/ads/DomobAdManager$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    return-object v0
.end method
