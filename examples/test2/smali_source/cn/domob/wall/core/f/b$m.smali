.class public final enum Lcn/domob/wall/core/f/b$m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/wall/core/f/b$m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/domob/wall/core/f/b$m;

.field public static final enum b:Lcn/domob/wall/core/f/b$m;

.field public static final enum c:Lcn/domob/wall/core/f/b$m;

.field public static final enum d:Lcn/domob/wall/core/f/b$m;

.field public static final enum e:Lcn/domob/wall/core/f/b$m;

.field private static final synthetic f:[Lcn/domob/wall/core/f/b$m;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcn/domob/wall/core/f/b$m;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/f/b$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/f/b$m;->a:Lcn/domob/wall/core/f/b$m;

    new-instance v0, Lcn/domob/wall/core/f/b$m;

    const-string v1, "LA_SUCCESS"

    invoke-direct {v0, v1, v3}, Lcn/domob/wall/core/f/b$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/f/b$m;->b:Lcn/domob/wall/core/f/b$m;

    new-instance v0, Lcn/domob/wall/core/f/b$m;

    const-string v1, "LA_FAILED"

    invoke-direct {v0, v1, v4}, Lcn/domob/wall/core/f/b$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/f/b$m;->c:Lcn/domob/wall/core/f/b$m;

    new-instance v0, Lcn/domob/wall/core/f/b$m;

    const-string v1, "LA_FAILSAFE_SUCCESS"

    invoke-direct {v0, v1, v5}, Lcn/domob/wall/core/f/b$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/f/b$m;->d:Lcn/domob/wall/core/f/b$m;

    new-instance v0, Lcn/domob/wall/core/f/b$m;

    const-string v1, "LA_FAILSAFE_FAILED"

    invoke-direct {v0, v1, v6}, Lcn/domob/wall/core/f/b$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/f/b$m;->e:Lcn/domob/wall/core/f/b$m;

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Lcn/domob/wall/core/f/b$m;

    sget-object v1, Lcn/domob/wall/core/f/b$m;->a:Lcn/domob/wall/core/f/b$m;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/wall/core/f/b$m;->b:Lcn/domob/wall/core/f/b$m;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/wall/core/f/b$m;->c:Lcn/domob/wall/core/f/b$m;

    aput-object v1, v0, v4

    sget-object v1, Lcn/domob/wall/core/f/b$m;->d:Lcn/domob/wall/core/f/b$m;

    aput-object v1, v0, v5

    sget-object v1, Lcn/domob/wall/core/f/b$m;->e:Lcn/domob/wall/core/f/b$m;

    aput-object v1, v0, v6

    sput-object v0, Lcn/domob/wall/core/f/b$m;->f:[Lcn/domob/wall/core/f/b$m;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/wall/core/f/b$m;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcn/domob/wall/core/f/b$m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/f/b$m;

    return-object v0
.end method

.method public static values()[Lcn/domob/wall/core/f/b$m;
    .registers 1

    .prologue
    .line 88
    sget-object v0, Lcn/domob/wall/core/f/b$m;->f:[Lcn/domob/wall/core/f/b$m;

    invoke-virtual {v0}, [Lcn/domob/wall/core/f/b$m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/wall/core/f/b$m;

    return-object v0
.end method
