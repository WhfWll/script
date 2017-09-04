.class public final enum Lcn/dbox/core/b/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/dbox/core/b/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/dbox/core/b/d$a;

.field public static final enum b:Lcn/dbox/core/b/d$a;

.field public static final enum c:Lcn/dbox/core/b/d$a;

.field public static final enum d:Lcn/dbox/core/b/d$a;

.field private static final synthetic e:[Lcn/dbox/core/b/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    new-instance v0, Lcn/dbox/core/b/d$a;

    const-string v1, "none"

    invoke-direct {v0, v1, v2}, Lcn/dbox/core/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b/d$a;->a:Lcn/dbox/core/b/d$a;

    new-instance v0, Lcn/dbox/core/b/d$a;

    const-string v1, "flat"

    invoke-direct {v0, v1, v3}, Lcn/dbox/core/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b/d$a;->b:Lcn/dbox/core/b/d$a;

    new-instance v0, Lcn/dbox/core/b/d$a;

    const-string v1, "card"

    invoke-direct {v0, v1, v4}, Lcn/dbox/core/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b/d$a;->c:Lcn/dbox/core/b/d$a;

    new-instance v0, Lcn/dbox/core/b/d$a;

    const-string v1, "list"

    invoke-direct {v0, v1, v5}, Lcn/dbox/core/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b/d$a;->d:Lcn/dbox/core/b/d$a;

    .line 175
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/dbox/core/b/d$a;

    sget-object v1, Lcn/dbox/core/b/d$a;->a:Lcn/dbox/core/b/d$a;

    aput-object v1, v0, v2

    sget-object v1, Lcn/dbox/core/b/d$a;->b:Lcn/dbox/core/b/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lcn/dbox/core/b/d$a;->c:Lcn/dbox/core/b/d$a;

    aput-object v1, v0, v4

    sget-object v1, Lcn/dbox/core/b/d$a;->d:Lcn/dbox/core/b/d$a;

    aput-object v1, v0, v5

    sput-object v0, Lcn/dbox/core/b/d$a;->e:[Lcn/dbox/core/b/d$a;

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
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/dbox/core/b/d$a;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    const-class v0, Lcn/dbox/core/b/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/b/d$a;

    return-object v0
.end method

.method public static values()[Lcn/dbox/core/b/d$a;
    .registers 1

    .prologue
    .line 175
    sget-object v0, Lcn/dbox/core/b/d$a;->e:[Lcn/dbox/core/b/d$a;

    invoke-virtual {v0}, [Lcn/dbox/core/b/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/dbox/core/b/d$a;

    return-object v0
.end method
