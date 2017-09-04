.class final enum Lcn/domob/android/ads/g$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/android/ads/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/domob/android/ads/g$a;

.field public static final enum b:Lcn/domob/android/ads/g$a;

.field private static final synthetic c:[Lcn/domob/android/ads/g$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcn/domob/android/ads/g$a;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/g$a;->a:Lcn/domob/android/ads/g$a;

    new-instance v0, Lcn/domob/android/ads/g$a;

    const-string v1, "OVERLAY"

    invoke-direct {v0, v1, v3}, Lcn/domob/android/ads/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/g$a;->b:Lcn/domob/android/ads/g$a;

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/domob/android/ads/g$a;

    sget-object v1, Lcn/domob/android/ads/g$a;->a:Lcn/domob/android/ads/g$a;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/android/ads/g$a;->b:Lcn/domob/android/ads/g$a;

    aput-object v1, v0, v3

    sput-object v0, Lcn/domob/android/ads/g$a;->c:[Lcn/domob/android/ads/g$a;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/android/ads/g$a;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    const-class v0, Lcn/domob/android/ads/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/g$a;

    return-object v0
.end method

.method public static values()[Lcn/domob/android/ads/g$a;
    .registers 1

    .prologue
    .line 115
    sget-object v0, Lcn/domob/android/ads/g$a;->c:[Lcn/domob/android/ads/g$a;

    invoke-virtual {v0}, [Lcn/domob/android/ads/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/android/ads/g$a;

    return-object v0
.end method
