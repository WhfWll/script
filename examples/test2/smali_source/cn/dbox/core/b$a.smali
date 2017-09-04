.class public final enum Lcn/dbox/core/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/dbox/core/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/dbox/core/b$a;

.field public static final enum b:Lcn/dbox/core/b$a;

.field public static final enum c:Lcn/dbox/core/b$a;

.field public static final enum d:Lcn/dbox/core/b$a;

.field private static final synthetic e:[Lcn/dbox/core/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    new-instance v0, Lcn/dbox/core/b$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcn/dbox/core/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$a;->a:Lcn/dbox/core/b$a;

    new-instance v0, Lcn/dbox/core/b$a;

    const-string v1, "AD_IMP"

    invoke-direct {v0, v1, v3}, Lcn/dbox/core/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$a;->b:Lcn/dbox/core/b$a;

    new-instance v0, Lcn/dbox/core/b$a;

    const-string v1, "AD_CLK"

    invoke-direct {v0, v1, v4}, Lcn/dbox/core/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$a;->c:Lcn/dbox/core/b$a;

    new-instance v0, Lcn/dbox/core/b$a;

    const-string v1, "LANDING"

    invoke-direct {v0, v1, v5}, Lcn/dbox/core/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$a;->d:Lcn/dbox/core/b$a;

    .line 219
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/dbox/core/b$a;

    sget-object v1, Lcn/dbox/core/b$a;->a:Lcn/dbox/core/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcn/dbox/core/b$a;->b:Lcn/dbox/core/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcn/dbox/core/b$a;->c:Lcn/dbox/core/b$a;

    aput-object v1, v0, v4

    sget-object v1, Lcn/dbox/core/b$a;->d:Lcn/dbox/core/b$a;

    aput-object v1, v0, v5

    sput-object v0, Lcn/dbox/core/b$a;->e:[Lcn/dbox/core/b$a;

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
    .line 219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/dbox/core/b$a;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 219
    const-class v0, Lcn/dbox/core/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/b$a;

    return-object v0
.end method

.method public static values()[Lcn/dbox/core/b$a;
    .registers 1

    .prologue
    .line 219
    sget-object v0, Lcn/dbox/core/b$a;->e:[Lcn/dbox/core/b$a;

    invoke-virtual {v0}, [Lcn/dbox/core/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/dbox/core/b$a;

    return-object v0
.end method
