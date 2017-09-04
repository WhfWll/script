.class public final enum Lcn/dbox/ui/DBoxManager$BannerRatio;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/ui/DBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BannerRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/dbox/ui/DBoxManager$BannerRatio;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NONE:Lcn/dbox/ui/DBoxManager$BannerRatio;

.field public static final enum SIXTEENFIVE:Lcn/dbox/ui/DBoxManager$BannerRatio;

.field public static final enum THIRTYTWOFIVE:Lcn/dbox/ui/DBoxManager$BannerRatio;

.field private static final synthetic a:[Lcn/dbox/ui/DBoxManager$BannerRatio;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 360
    new-instance v0, Lcn/dbox/ui/DBoxManager$BannerRatio;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcn/dbox/ui/DBoxManager$BannerRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/ui/DBoxManager$BannerRatio;->NONE:Lcn/dbox/ui/DBoxManager$BannerRatio;

    new-instance v0, Lcn/dbox/ui/DBoxManager$BannerRatio;

    const-string v1, "SIXTEENFIVE"

    invoke-direct {v0, v1, v3}, Lcn/dbox/ui/DBoxManager$BannerRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/ui/DBoxManager$BannerRatio;->SIXTEENFIVE:Lcn/dbox/ui/DBoxManager$BannerRatio;

    new-instance v0, Lcn/dbox/ui/DBoxManager$BannerRatio;

    const-string v1, "THIRTYTWOFIVE"

    invoke-direct {v0, v1, v4}, Lcn/dbox/ui/DBoxManager$BannerRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/ui/DBoxManager$BannerRatio;->THIRTYTWOFIVE:Lcn/dbox/ui/DBoxManager$BannerRatio;

    .line 359
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/dbox/ui/DBoxManager$BannerRatio;

    sget-object v1, Lcn/dbox/ui/DBoxManager$BannerRatio;->NONE:Lcn/dbox/ui/DBoxManager$BannerRatio;

    aput-object v1, v0, v2

    sget-object v1, Lcn/dbox/ui/DBoxManager$BannerRatio;->SIXTEENFIVE:Lcn/dbox/ui/DBoxManager$BannerRatio;

    aput-object v1, v0, v3

    sget-object v1, Lcn/dbox/ui/DBoxManager$BannerRatio;->THIRTYTWOFIVE:Lcn/dbox/ui/DBoxManager$BannerRatio;

    aput-object v1, v0, v4

    sput-object v0, Lcn/dbox/ui/DBoxManager$BannerRatio;->a:[Lcn/dbox/ui/DBoxManager$BannerRatio;

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
    .line 359
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/dbox/ui/DBoxManager$BannerRatio;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 359
    const-class v0, Lcn/dbox/ui/DBoxManager$BannerRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/dbox/ui/DBoxManager$BannerRatio;

    return-object v0
.end method

.method public static values()[Lcn/dbox/ui/DBoxManager$BannerRatio;
    .registers 1

    .prologue
    .line 359
    sget-object v0, Lcn/dbox/ui/DBoxManager$BannerRatio;->a:[Lcn/dbox/ui/DBoxManager$BannerRatio;

    invoke-virtual {v0}, [Lcn/dbox/ui/DBoxManager$BannerRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/dbox/ui/DBoxManager$BannerRatio;

    return-object v0
.end method
